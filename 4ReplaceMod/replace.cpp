#include "llvm/Pass.h"
#include "llvm/PassAnalysisSupport.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/InstIterator.h"
#include "llvm/IR/User.h"
#include "llvm/IR/Constants.h"
#include "llvm/ADT/APInt.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/ADT/Twine.h"
#include "llvm/IR/Instruction.def"
#include "llvm/IR/InstrTypes.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "list"

using namespace llvm;


namespace {
    class ReplaceMod : public FunctionPass{
        public:
            static char ID;
            ReplaceMod():FunctionPass(ID){}

            virtual bool runOnFunction(Function &F){
                std::list<Instruction*> instToRemove; 
                for( inst_iterator I = inst_begin(F), E = inst_end(F); I != E; ++I){
                    if( I->getOpcode() == Instruction::URem ){
                        instToRemove.push_back(&*I); 
                    }
                }

                std::list<Instruction*>::iterator it,end;

                for( it = instToRemove.begin(), end = instToRemove.end(); it != end; ++it){	
                    Instruction *inst = *it;
                    IRBuilder<> builder(inst);
                    Value *v1 = inst->getOperand(0);
                    Value *v2 = inst->getOperand(1);

                    if (ConstantInt* CI = dyn_cast<ConstantInt>(v2)) {
                        APInt op_val = CI->getValue();

                        if( op_val.isPowerOf2() ){
                            APInt modify = APInt( op_val.getBitWidth(),( 1 << op_val.countTrailingZeros() ) - 1,false);

                            if(ConstantInt* CI2 = dyn_cast<ConstantInt>(v1)){//First Operand is also constant

                                APInt opcode1 = CI2->getValue();
                                APInt result = opcode1 & modify;
                                errs() << "ANS::"<<result.getLimitedValue();
                                Constant* op2 = ConstantInt::get(CI->getType(),result);
                                Value* vop = dyn_cast<Value> (op2);
                                inst->replaceAllUsesWith(vop);
                            }else{//First opcode is undef, Therefore Modify Instruction

                                LLVMContext LC;
                                Constant* op2 = ConstantInt::get(CI->getType(),modify);
                                Value *v2 = dyn_cast<Value>(op2);
                                Value *v1 = dyn_cast<Value>(CI);
                                inst->setOperand(1,op2);
                                inst->replaceAllUsesWith(BinaryOperator::Create(Instruction::And,v1,v2,Twine("andinst"),inst));
                            }
                        }

                    }else {//Second argument is not Constant. Insert If Else Then 

                        uint64_t val = 1;
                        Constant* cTemp = ConstantInt::get(v2->getType(),val,false);
                        Value *vTemp = dyn_cast<Value>(cTemp);
                        val = 0; 
                        Constant* cZero = ConstantInt::get(v2->getType(),val,false);

                        Value* subV = builder.CreateSub(v2,vTemp,"sub");
                        Value* andV = builder.CreateAnd(v2,subV,"and");
                        vTemp = dyn_cast<Value>(cZero);
                        Value* equalVal = builder.CreateICmpEQ(andV,vTemp,"cmp0with");
                        PHINode *pNode = builder.CreatePHI(inst->getType(),2,"phians");  

                        BasicBlock* block = inst->getParent();
                        BasicBlock* ifend = block->splitBasicBlock(dyn_cast<Instruction>(pNode),"ifend");                    
                        BasicBlock* oldBlock = dyn_cast<Instruction>(equalVal)->getParent();
                        Instruction* oldHead = oldBlock->getTerminator();

                        BasicBlock* iftrue = BasicBlock::Create(getGlobalContext(),"if.then",&F,ifend);
                        BasicBlock* iffalse = BasicBlock::Create(getGlobalContext(),"if.else",&F,ifend);

                        BranchInst *newHead = BranchInst::Create(iftrue,iffalse,equalVal); 
                        ReplaceInstWithInst(oldHead,newHead);

                        builder.SetInsertPoint(iftrue);
                        Value* oInst1 = builder.CreateAnd(v1,subV,"and");    
                        builder.CreateBr(ifend);

                        builder.SetInsertPoint(iffalse);
                        Value* oInst2 = builder.CreateURem(v1,v2,"urem");
                        builder.CreateBr(ifend);

                        builder.SetInsertPoint(ifend);
                        pNode->addIncoming(oInst1, iftrue);
                        pNode->addIncoming(oInst2, iffalse); 

                        inst->replaceAllUsesWith(pNode); 
                    }
                    inst->eraseFromParent();
                }	
                return instToRemove.size();
            }

    };

}	


char ReplaceMod::ID = 0;
static RegisterPass<ReplaceMod> X("replacemod","Replace MODULUS for UNSIGNED Integers",false,false);


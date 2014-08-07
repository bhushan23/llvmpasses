#include "llvm/ADT/APFloat.h"
#include "llvm/Pass.h"
#include "llvm/PassAnalysisSupport.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/Dominators.h"
#include "llvm/Support/CFG.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Support/InstIterator.h"
#include "llvm/IR/User.h"
#include "llvm/IR/Constants.h"
#include "llvm/ADT/APInt.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/ADT/Twine.h"
#include "llvm/IR/Instruction.def"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "list"

using namespace llvm;


namespace {
    class ReplaceMod : public FunctionPass{
        public:
            static char ID;
            /*	virtual void getAnalysisUsage(AnalysisUsage &AU) const {

                }*/

            ReplaceMod():FunctionPass(ID){}

            virtual bool runOnFunction(Function &F){
                bool changed = false;
                std::list<Instruction*> instToRemove; 
                for( inst_iterator I = inst_begin(F), E = inst_end(F); I != E; ++I){
                    //  errs() << "  " << I-> getOpcode() ;
                    if( I->getOpcode() == 17 ){//18: opcode enum for srem
                        //errs() << I->getOpcode() << "   " << I->getOpcodeName() << "  " << *(I->getOperand(0)) << " " << *(I->getOperand(1))<<"\n";
                        Instruction *inst = &*I;
                        Value *v1 = I->getOperand(0);
                        Value *v2 = I->getOperand(1);
                        errs() << *v1  ;
                        if (ConstantInt* CI = dyn_cast<ConstantInt>(v2)) {
                            errs() << "\nconst found";
                            APInt op_val = CI->getValue();

                            if(op_val.isPowerOf2()){

                                //errs() << "\n:::POWER 2 " << op_val.countTrailingZeros()  <<"  " << op_val.getBitWidth();	
                                APInt modify = APInt(op_val.getBitWidth(),(1<<op_val.countTrailingZeros()) - 1,false);
                                if(ConstantInt* CI2 = dyn_cast<ConstantInt>(v2)){//First Operand is also constant
                                    APInt opcode1 = CI2->getValue();
                                    APInt result = opcode1 & modify;
                                    errs() << "ANS::"<<result.getLimitedValue();
                                    Constant* op2 = ConstantInt::get(CI->getType(),result);
                                    I->replaceAllUsesWith(op2);

                                }else{//First opcode is undef, Therefore Modify Instruction

                                    LLVMContext LC;
                                    Constant* op2 = ConstantInt::get(CI->getType(),modify);
                                    Value *v2 = dyn_cast<Value>(op2);
                                    Value *v1 = dyn_cast<Value>(CI);
                                    I->setOperand(1,op2);
                                    Instruction *inst = &*I;
                                    I->replaceAllUsesWith(BinaryOperator::Create(Instruction::And,v1,v2,Twine("ANDINST"),inst));
                                    changed = true;
                                    instToRemove.push_back(inst);
                                    errs() << "setting ";			

                                }
                            }	
                        }else {
                            errs() << "\nInserting If Else ";
                            uint64_t val = 1;
                            Constant* cTemp = ConstantInt::get(v2->getType(),val,false);
                            Value *vTemp = dyn_cast<Value>(cTemp);
                            BinaryOperator::Create(Instruction::Sub,v2,vTemp,Twine("Sub"),inst);
                            changed = true;
                        }
                    }
                }
                std::list<Instruction*>::iterator it,end;
                for( it = instToRemove.begin(), end = instToRemove.end(); it != end; ++it){	
                    Instruction *inst = *it;
                    inst->eraseFromParent();
                }	
                return changed;
            }

    };

}	


char ReplaceMod::ID = 0;
static RegisterPass<ReplaceMod> X("replacemod","Replace MODULUS for UNSIGNED Integers",false,false);


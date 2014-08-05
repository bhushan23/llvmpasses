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
#include "vector"

using namespace llvm;


namespace {
		  class ReplaceMod : public FunctionPass{
					 public:
								static char ID;
								virtual void getAnalysisUsage(AnalysisUsage &AU) const {

								}

								ReplaceMod():FunctionPass(ID){}

								virtual bool runOnFunction(Function &F){
										  for( inst_iterator I = inst_begin(F), E = inst_end(F); I != E; ++I){
													 //  errs() << "  " << I-> getOpcode() ;
													 if( I->getOpcode() == 17 ){//18: opcode enum for srem
																//	errs() << I->getOpcode() << "   " << I->getOpcodeName() << "  " << *(I->getOperand(0)) << " " << *(I->getOperand(1))<<"\n";
																int op1;
																Value *v1 = I->getOperand(1);
																Value *v2 = I->getOperand(0);
																errs() << *v1  ;
																if (ConstantInt* CI = dyn_cast<ConstantInt>(v1)) {
																		  errs() << "\nconst found";
																		  //uint64_t constIntValue = CI->getZExtValue();
																		  //errs() << "Value " << constIntValue << "\n"; 
																		  APInt op_val = CI->getValue();
																		  if(op_val.isPowerOf2()){

																					 errs() << "\n:::POWER 2 " << op_val.countTrailingZeros()  <<"  " << op_val.getBitWidth();	
																					 APInt modify = APInt(op_val.getBitWidth(),(1<<op_val.countTrailingZeros()) - 1,false);
																					 errs() << ":::::" << *(modify.getRawData());
																					 if(ConstantInt* CI2 = dyn_cast<ConstantInt>(v2)){//First Operand is also constant
																								APInt opcode1 = CI2->getValue();
																								APInt result = opcode1 & modify;
																								errs() << "ANS::"<<result.getLimitedValue();
																								//Value* val= dyn_cast <Value> (result);	

																					 }else{//First opcode is undef, Therefore Modify Instruction
																									
																								ConstantInt op1 = ConstantInt.get(CI->getType(),modify);
																								I->setOperand(1,op1);

																					errs() << "setting ";			
																					 }

																		  }	



																}
																else {
																		  errs() << "\nNot const found";
																}
													 }
										  }

										  return false;
								}

		  };

}	


char ReplaceMod::ID = 0;
static RegisterPass<ReplaceMod> X("replacemod","Replace MODULUS for UNSIGNED Integers",false,false);


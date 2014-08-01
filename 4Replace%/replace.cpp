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
										if( I->getOpcode() == 18 ){//18: opcode enum for srem
												errs() << I->getOpcode() << "   " << I->getOpcodeName()<<"\n";
											/*	for( op_iterator OI = I->op_begin(), OE = I->op_end(); OI != OE; ++OI){
																errs() << *OI;

												}*/
												 errs() << dyn_cast<llvm::ConstantInt>(I->getOperand(0));
												errs() << "  " ;
												//:w
												//I->getOperand(1)->print(errs);
										}
								}

								return false;
						}

		};

}	


char ReplaceMod::ID = 0;
static RegisterPass<ReplaceMod> X("replacemod","Replace MODULUS for UNSIGNED Integers",false,false);


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
										//  errs() << "  " << I-> getOpcode() ;
										if( I->getOpcode() == 17 ){//18: opcode enum for srem
												errs() << I->getOpcode() << "   " << I->getOpcodeName() << "  " << *(I->getOperand(0)) << " " << *(I->getOperand(1))<<"\n";
												int op1;
												Value *v1 = I->getOperand(0);
												llvm::ConstantInt* CI = dyn_cast<llvm::ConstantInt> (v1);
												errs() << "got 1 operand " << *CI;
											//	if( ( dyn_cast<ConstantInt>(*(I->getOperand(1))) & dyn_cast<ConstantInt>(*(I->getOperand(1)-1)) ) == 0 ){
											//		errs() << "Oeprand is multiple\n";
											//	}
										}
								}

								return false;
						}

		};

}	


char ReplaceMod::ID = 0;
static RegisterPass<ReplaceMod> X("replacemod","Replace MODULUS for UNSIGNED Integers",false,false);


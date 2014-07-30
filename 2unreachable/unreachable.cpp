#include "llvm/Pass.h"
#include "llvm/PassAnalysisSupport.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/Dominators.h"
#include "llvm/Support/CFG.h"
#include "llvm/Analysis/LoopInfo.h"
#include "vector"
using namespace llvm;


namespace {

	/*
	 * Algorithm: 
	 * 	1) For each Function 
	 * 	2) Iterate Through Basic Block 
	 * 	3) Check if Current Basic Block is reachable from Function Entry Basic Block
	 * 		4) If YES goto 2)
	 * 		5) If NO add Current basic Block into TOBE_DELETE Buffer and go to 2)
	 * 	6) Iterate through TOBE_DELETE Buffer
	 * 		7) delete Basic Block
	 */


	class unreachable : public FunctionPass {   
		public:
			static char ID;
			virtual void getAnalysisUsage(AnalysisUsage &au) const {
				au.addRequired<DominatorTree>();
				au.addRequired<LoopInfo>();				
			}


			unreachable() : FunctionPass(ID){}

			virtual bool runOnFunction(Function &F){
				bool flag=false;
				int size=0;    
				errs() << "Processing Function: ";

				std::vector<BasicBlock*> DeadBlocks;
				DominatorTree &DT = getAnalysis<DominatorTree>();
				LoopInfo &LI = getAnalysis<LoopInfo>();
				for(Function::iterator bbi = F.begin(), bbie = F.end(); bbi != bbie; ++bbi){
					BasicBlock *BBI = bbi;
					errs() << "Block : ";

					if( !DT.isReachableFromEntry(BBI)){
						errs() << "Not reachable\n";
						DeadBlocks.push_back(BBI);	
					}else{
						errs() << "Block reachable\n";
					}

				}


				size = DeadBlocks.size();
				if( size > 0)
					flag=true;
				for(int i = 0;i < size; ++i){
					errs() << "Removing Block\n";
					DeadBlocks[i]->eraseFromParent();
				}
				errs() << "\n: Please use < -S -o OUT.ll > to get Optimized Code \n";
				return flag;

			}
	};
}

char unreachable::ID = 0;
static RegisterPass<unreachable> X("unreach","Remove Unreachable Code",false,false);


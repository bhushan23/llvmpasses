#include "llvm/Pass.h"
#include "llvm/PassAnalysisSupport.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/Dominators.h"
#include "llvm/Support/CFG.h"
#include "llvm/ADT/DepthFirstIterator.h"
using namespace llvm;

namespace {
  class unreachable : public FunctionPass {
    
	public:
		static char ID;

	 virtual void getAnalysisUsage(AnalysisUsage &AU) const {
	      AU.addRequired<DominatorTree>();
    	}

    	unreachable() : FunctionPass(ID){}
   	virtual bool runOnFunction(Function &F){
     		errs() << "Processing Function: ";
		DominatorTree& DT = getAnalysis<DominatorTree>();
		for(DominatorTree::iterator it = nodes_begin(DT); it != nodes_end(DT); ++it){
			errs() << "iterating tree\n";
		}
	for(Function::iterator fI = F.begin(); fI != F.end(); ++fI){
			BasicBlock *BB=fI;
	/*		if( !isReachableFromEntry(*BB) ){
				errs() << "Unreachble\n";
			}
	*/	}	

/*	for(Function::iterator fI = F.begin(); fI != F.end(); ++fI){
		BasicBlock *BB=fI;
		if (BB->getSinglePredecessor() != NULL) /// one predecessor
		{
			errs() << "\n one predecessor";
		 } 
		else 
		{  
		errs() <<" \n more than 1 pred  ";
		if(pred_begin(BB) == pred_end(BB) )
			errs() << "Unreachable basic block\n";	

		}
	}*/

 		

   		return false;
    }
  };
}

char unreachable::ID = 0;
static RegisterPass<unreachable> X("unreach","Hello Function Pass",false,false);










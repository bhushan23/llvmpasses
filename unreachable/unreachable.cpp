#include "llvm/Pass.h"
#include "llvm/PassAnalysisSupport.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/Dominators.h"
#include "llvm/Support/CFG.h"
#include "vector"
using namespace llvm;


namespace {
  class unreachable : public FunctionPass {   
  public:
    static char ID;

    virtual void getAnalysisUsage(AnalysisUsage &au) const {
      au.addRequired<DominatorTree>();
    }
    unreachable() : FunctionPass(ID){}

    virtual bool runOnFunction(Function &F){
      bool flag=false;
      int size=0;    
      errs() << "Processing Function: ";
      std::vector<BasicBlock*> DeadBlocks;
         
      DominatorTree &DT = getAnalysis<DominatorTree>();
     
      for(Function::iterator bbi = F.begin(), bbie = F.end(); bbi != bbie; bbi++){
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
     
      return flag;

    }
  };
}

char unreachable::ID = 0;
static RegisterPass<unreachable> X("unreach","Hello Function Pass",false,false);










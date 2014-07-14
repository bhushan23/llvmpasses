#include "llvm/Pass.h"
#include "llvm/ADT/SmallPtrSet.h"
#include "llvm/PassAnalysisSupport.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/Dominators.h"
#include "llvm/Support/CFG.h"
#include "llvm/ADT/DepthFirstIterator.h"
#include "llvm/ADT/SmallSet.h"
#include "vector"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/CFG.h"
#include "llvm/Analysis/Dominators.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/MemoryDependenceAnalysis.h"
#include "llvm/IR/Constant.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/Type.h"
#include "llvm/Support/ErrorHandling.h"
#include "llvm/Support/ValueHandle.h"
#include "llvm/Transforms/Scalar.h"
#include "llvm/Transforms/Utils/Local.h"
#include <algorithm>

using namespace llvm;


namespace {
  class unreachable : public FunctionPass {   
  public:
    static char ID;

    virtual void getAnalysisUsage(AnalysisUsage &au) const {
      au.addRequired<DominatorTree>();
    }
   unreachable() : FunctionPass(ID){}

void DeleteDeadBlock(BasicBlock *BB) {
  assert((pred_begin(BB) == pred_end(BB) ||
         // Can delete self loop.
         BB->getSinglePredecessor() == BB) && "Block is not dead!");
  TerminatorInst *BBTerm = BB->getTerminator();

  // Loop through all of our successors and make sure they know that one
  // of their predecessors is going away.
  for (unsigned i = 0, e = BBTerm->getNumSuccessors(); i != e; ++i)
    BBTerm->getSuccessor(i)->removePredecessor(BB);

  // Zap all the instructions in the block.
  while (!BB->empty()) {
    Instruction &I = BB->back();
    // If this instruction is used, replace uses with an arbitrary value.
    // Because control flow can't get here, we don't care what we replace the
    // value with.  Note that since this block is unreachable, and all values
    // contained within it must dominate their uses, that all uses will
    // eventually be removed (they are themselves dead).
    if (!I.use_empty())
      I.replaceAllUsesWith(UndefValue::get(I.getType()));
    BB->getInstList().pop_back();
  }

  // Zap the block!
  BB->eraseFromParent();
}
    virtual bool runOnFunction(Function &F){
	bool flag=false;    
  errs() << "Processing Function: ";
    //  std::set <BasicBlock> visited;		
     // SmallSet <BasicBlock*,5 > visited;
    std::vector<BasicBlock*> DeadBlocks;
         
      DominatorTree &DT = getAnalysis<DominatorTree>();
      BasicBlock *Broot = DT.getRoot();
     for(Function::iterator bbi = F.begin(), bbie = F.end(); bbi != bbie; bbi++){
	BasicBlock *BBI = bbi;
	errs() << "Block : ";
	
	if( !DT.isReachableFromEntry(BBI)){
	
	  errs() << "Not reachable\n";
	 // BBI->removeFromParent();	
	DeadBlocks.push_back(BBI);	
	}else{
	errs() << "Block reachable\n";
	}
               
      }
	
		

	if(DeadBlocks.size() > 0)
		flag=true;
      for(int i = 0;i < DeadBlocks.size(); ++i){
	errs() << "RemovingBlock\n";
	DeadBlocks[i]->eraseFromParent();
	//DeleteDeadBlock(DeadBlocks[i]);
      }
      /*
	for(SmallSet<BasicBlock*,5>  :: iterator it = visited.begin(); it != visited.end(); ++it){

	it->eraseFromParent();
	}	*/

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

		}*/
     return flag;
/*	SmallPtrSet<BasicBlock*, 8> Reachable;
 
   // Mark all reachable blocks.
   for (df_ext_iterator<Function*, SmallPtrSet<BasicBlock*, 8> > I =
        df_ext_begin(&F, Reachable), E = df_ext_end(&F, Reachable); I != E; ++I)
  */   /* Mark all reachable blocks */;
/* 
   // Loop over all dead blocks, remembering them and deleting all instructions
   // in them.
   std::vector<BasicBlock*> DeadBlocks;
   for (Function::iterator I = F.begin(), E = F.end(); I != E; ++I)
     if (!Reachable.count(I)) {
       BasicBlock *BB = I;
       DeadBlocks.push_back(BB);
       while (PHINode *PN = dyn_cast<PHINode>(BB->begin())) {
         PN->replaceAllUsesWith(Constant::getNullValue(PN->getType()));
         BB->getInstList().pop_front();
       }
       for (succ_iterator SI = succ_begin(BB), E = succ_end(BB); SI != E; ++SI)
         (*SI)->removePredecessor(BB);
       BB->dropAllReferences();
     }
 
   // Actually remove the blocks now.
   for (unsigned i = 0, e = DeadBlocks.size(); i != e; ++i) {
     DeadBlocks[i]->eraseFromParent();
	errs() <<"removing\n";
   }
 
   return DeadBlocks.size();
*/
    }
  };
}

char unreachable::ID = 0;
static RegisterPass<unreachable> X("unreach","Hello Function Pass",false,false);










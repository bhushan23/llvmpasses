// UnreachableBlockElim.cpp - Remove unreachable blocks for codegen --===//
 //
 //                     The LLVM Compiler Infrastructure
 //
 // This file is distributed under the University of Illinois Open Source
 // License. See LICENSE.TXT for details.
 //
 //===----------------------------------------------------------------------===//
 //
 // This pass is an extremely simple version of the SimplifyCFG pass.  Its sole
 // job is to delete LLVM basic blocks that are not reachable from the entry
 // node.  To do this, it performs a simple depth first traversal of the CFG,
 // then deletes any unvisited nodes.
 //
 // Note that this pass is really a hack.  In particular, the instruction
 // selectors for various targets should just not generate code for unreachable
 // blocks.  Until LLVM has a more systematic way of defining instruction
 // selectors, however, we cannot really expect them to handle additional
 // complexity.
 //
 //===----------------------------------------------------------------------===//
 
 #include "llvm/CodeGen/Passes.h"
 #include "llvm/ADT/DepthFirstIterator.h"
 #include "llvm/ADT/SmallPtrSet.h"
 #include "llvm/CodeGen/MachineDominators.h"
 #include "llvm/CodeGen/MachineFunctionPass.h"
 #include "llvm/CodeGen/MachineLoopInfo.h"
 #include "llvm/CodeGen/MachineModuleInfo.h"
 #include "llvm/CodeGen/MachineRegisterInfo.h"
 #include "llvm/Analysis/CFG.h"
 #include "llvm/IR/Constant.h"
 #include "llvm/Analysis/Dominators.h"
 #include "llvm/IR/Function.h"
 #include "llvm/IR/Instructions.h"
 #include "llvm/IR/Type.h"
 #include "llvm/Pass.h"
 #include "llvm/Target/TargetInstrInfo.h"
 using namespace llvm;
 
 namespace {
   class UnreachableBlockElim : public FunctionPass {
   public:
     static char ID; // Pass identification, replacement for typeid
     UnreachableBlockElim() : FunctionPass(ID) {
       initializeUnreachableBlockElimPass(*PassRegistry::getPassRegistry());
     }
 
     void getAnalysisUsage(AnalysisUsage &AU) const override {
       AU.addPreserved<DominatorTreeWrapperPass>();
     }
char UnreachableBlockElim::ID = 0;
 INITIALIZE_PASS(UnreachableBlockElim, "unreachableblockelim",
                 "Remove unreachable blocks from the CFG", false, false)
bool runOnFunction(Function &F) {
   SmallPtrSet<BasicBlock*, 8> Reachable;
 
   // Mark all reachable blocks.
   for (df_ext_iterator<Function*, SmallPtrSet<BasicBlock*, 8> > I =
        df_ext_begin(&F, Reachable), E = df_ext_end(&F, Reachable); I != E; ++I)
     /* Mark all reachable blocks */;
 
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
   }
 
   return DeadBlocks.size();
 }
   };
 }
char UnreachableBlockElim ::ID = 0;
static RegisterPass<UnreachableBlockElim> X("unreachx","Hello Function Pass",false,false);

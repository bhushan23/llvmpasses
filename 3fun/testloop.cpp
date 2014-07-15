#include "llvm/IR/Constants.h"
#include "llvm/Support/Debug.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/ADT/StringExtras.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Support/Compiler.h"
#include "llvm/Support/Debug.h"


#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {
  class ModuleLoop : public ModulePass {
   public:
     static char ID; // Pass identification, replacement for typeid
     virtual bool runOnModule(Module &M);
     virtual void getAnalysisUsage(AnalysisUsage &AU) const;
     ModuleLoop() : ModulePass(&ID) {}
 };
}

char ModuleLoop::ID = 0;
static RegisterPass<ModuleLoop> X("moduleloop", "LoopPass within ModulePass");

// ***************************************************************************

void ModuleLoop::getAnalysisUsage(AnalysisUsage &AU) const {
 AU.setPreservesAll();
 AU.addRequired<LoopInfo>();
}


bool ModuleLoop::runOnModule(Module &M) {

 for (Module::iterator func_iter = M.begin(), func_iter_end = M.end();
     func_iter != func_iter_end; ++func_iter) {
   Function &F = *func_iter;

   if (!F.isDeclaration()) {
     LoopInfo &LI = getAnalysis<LoopInfo>(F);
     for (Function::const_iterator bb_it = func_iter->begin(), bb_ite = func_iter->end(); bb_it != bb_ite;  ++bb_it) 
       errs() << bb_it->getName() << " " <<  LI.getLoopDepth(bb_it) << "\n";
   }
 }
 return false;


}

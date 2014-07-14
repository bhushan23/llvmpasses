#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/InstIterator.h"
using namespace llvm;


namespace {
  struct fncount : public FunctionPass{
    static char ID;
    fncount() : FunctionPass(ID){}

    virtual bool runOnFunction(Function &F){
      errs() << "hello Fun: ";
      errs().write_escaped(F.getName()) << '\n';
      for(inst_iterator I = inst_begin(F); I != inst_end(F); ++I){
	errs() << I->getOpcodeName() << "  " << I->hasMetadata() << "\n";
	}      	      
      
      return false;
    }
  };
}

char fncount::ID = 0;
static RegisterPass<fncount> X("fncnt","Hello Function Pass",false,false);











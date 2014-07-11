#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
using namespace llvm;

namespace {
  struct Hellofun : public FunctionPass{
    static char ID;
    Hellofun() : FunctionPass(ID){}

    virtual bool runOnFunction(Function &F){
      errs() << "hello Fun: ";
      errs().write_escaped(F.getName()) << '\n';
      return false;
    }
  };
}

char Hellofun::ID = 0;
static RegisterPass<Hellofun> X("hellofunx","Hello Function Pass",false,false);











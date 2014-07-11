#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
using namespace llvm;

namespace {
  struct Hellofun3 : public FunctionPass{
    static char ID;
    Hellofun3() : FunctionPass(ID){}

    virtual bool runOnFunction(Function &F){
      errs() << "hello Fun: ";
      errs().write_escaped(F.getName()) << '\n';
      return false;
    }
  };
}

char Hellofun3::ID = 0;
static RegisterPass<Hellofun3> X("hellofun","Hello Function Pass",false,false);











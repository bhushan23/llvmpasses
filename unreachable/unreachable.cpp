#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
using namespace llvm;

namespace {
  class unreachable : public FunctionPass{
    
	public:
		static char ID;
    	unreachable() : FunctionPass(ID){}

    	virtual bool runOnFunction(Function &F){
     		errs() << "hello Fun: ";
      		errs().write_escaped(F.getName()) << '\n';

     		return false;
    }
  };
}

char unreachable::ID = 0;
static RegisterPass<unreachable> X("unreach","Hello Function Pass",false,false);











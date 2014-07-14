#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/InstIterator.h"
#include "llvm/IR/Value.h"
using namespace llvm;


namespace {
  struct fncount : public ModulePass{
    static char ID;
    fncount() : ModulePass(ID){}

    virtual bool runOnModule(Module &M){
      errs() << "hello Fun: ";
      int count;
     for(Module :: iterator it = M.begin(); it != M.end(); ++it){
       errs().write_escaped(it->getName()) ;
       count = 0;
        for(Value::use_iterator i = it-> use_begin() ; i != it->use_end(); ++i){
		count++;
	}	
	errs() << count <<"\n";
      }
    /*  for(inst_iterator I = inst_begin(F); I != inst_end(F); ++I){
	errs() << I->getOpcodeName() << "  " << I->hasMetadata() << "\n";
      }*/      
							      
      return false;
    }
  };
}

char fncount::ID = 0;
static RegisterPass<fncount> X("fncnt","Hello Module Pass",false,false);












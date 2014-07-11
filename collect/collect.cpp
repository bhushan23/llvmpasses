#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Module.h"

using namespace llvm;

namespace {
	class Collect : public ModulePass{
		public:
			static char ID;
			Collect() : ModulePass(ID){}

			virtual bool runOnModule(Module &M){
				errs() << "Processing Module\n";
			/*for(FunctionListType::iterator fI = M.begin(); fI != M.end(); ++fI){
					errs() << "Function : ";
					errs().write_escaped(*fI->getName()) << '\n';	
				}*/
			FunctionListType flist = M.getFunctionList();				
				return false;
			}
	};	
}

char Collect::ID = 0;
static RegisterPass<Collect> X("bcollect","Collect Function,basic Blocks and Instruction Info",false,false);

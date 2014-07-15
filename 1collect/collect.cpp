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
				int total_bb,total_inst,total_fun,block_inst;
				total_fun = M.size();
				total_bb=0;
				total_inst=0;
				for(Module::iterator fI = M.begin(); fI != M.end(); ++fI){
					Function &fun = *fI;
					errs() << "\n\n::Function : ";
					errs().write_escaped(fun.getName()) << '\n';	
					total_bb += fun.size();
					block_inst = 0;
					for(Function::iterator bI = fun.begin(); bI != fun.end(); ++bI){
						BasicBlock &block = *bI;

						block_inst += block.size();
						total_inst += block.size();

						//errs() << "\tBlock contents: " << block.size() << " instructions"; 	
					}
					int avg_inst = (fun.size() == 0 ? 0 : block_inst / fun.size());

					errs() << "Total basic blocks = " << fun.size() << "\t AVG Instruction / B Block = " 
						<< 	avg_inst;
				}
				errs() << "\n\n:::: MODULE SCAN COMPLETE :::: \n Total Functions = " << total_fun
					<< "  AVG BBlock per function =  " << total_bb / total_fun << " \nTotal instructions = " << total_inst << '\n' ;
				return false;
			}
	};	
}

char Collect::ID = 0;
static RegisterPass<Collect> X("bcollect","Collect Function,basic Blocks and Instruction Info",false,false);

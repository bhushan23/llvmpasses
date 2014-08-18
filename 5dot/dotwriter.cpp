#include "llvm/Pass.h"
#include "llvm/PassAnalysisSupport.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/Dominators.h"
#include "llvm/Support/CFG.h"
#include "llvm/Analysis/LoopInfo.h"
#include "vector"
#include "clang/Analysis/CFG.h"
#include "llvm/Support/CFG.h"
#include "llvm/ADT/DepthFirstIterator.h"
#include "llvm/ADT/GraphTraits.h"
#include "llvm/Support/GraphWriter.h"
#include "llvm/Support/FileSystem.h"
#include "stdio.h"
//#include "llvm/Analysis/CFGPrinter.h"
#include "llvm/Support/raw_ostream.h"
using namespace llvm;


namespace {
    class dotmaker : public FunctionPass {   
        public:
            static char ID;
            /* virtual void getAnalysisUsage(AnalysisUsage &au) const {
            //   au.addRequired<CFG>();
            //   au.addRequired<LoopInfo>();				
            }*/


            dotmaker() : FunctionPass(ID){}

            virtual bool runOnFunction(Function &F){

                errs() << "Processing Function: ";
                std::string Filename = "cfg4." + F.getName().str() + ".dot";
                errs() << "Writing '" << Filename << "'...";
               
                std::string ErrorInfo;
                raw_fd_ostream File(Filename.c_str(), ErrorInfo, sys::fs::F_Excl );
                //GraphWriter<Function> gw(File, F,false);
                //gw.writeGraph("Hello");
                //errs() << 
               if (ErrorInfo.empty())
                    WriteGraph(File, (const Function*)&F,false,"Main Function");
                else
                    errs() << "  error opening file for writing!";
                errs() << "\n";
                return false;
            }
    };
}

char dotmaker::ID = 0;
static RegisterPass<dotmaker> X("dotmaker","Remove Unreachable Code",false,false);


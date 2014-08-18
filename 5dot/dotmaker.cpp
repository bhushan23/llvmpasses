#include "llvm/Pass.h"
#include "llvm/PassAnalysisSupport.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/Dominators.h"
#include "llvm/Support/CFG.h"
#include "clang/Analysis/CFG.h"
#include "llvm/Support/CFG.h"
#include "llvm/ADT/DepthFirstIterator.h"
#include "llvm/Support/raw_ostream.h"
using namespace llvm;
namespace {
    class DotMaker : public FunctionPass {   
        public:
            static char ID;
            DotMaker() : FunctionPass(ID){}

            virtual bool runOnFunction(Function &F){
                std::string Filename = "cfg." + F.getName().str() + ".dot";
                std::string ErrorInfo;
                raw_fd_ostream ost(Filename.c_str(), ErrorInfo, sys::fs::F_Excl );

                ost <<"digraph \"CFG for 'main' function\" {\n label=\"CFG for 'main' function\";\n";
                for (Function::iterator BB = F.begin(), bbie = F.end(); BB != bbie; ++BB){
                    ost << "\nNode" << BB << " [shape=record,label=\"{";
                    ost << BB->getName() << ":";
                    for (BasicBlock::iterator it = BB->begin(), end = BB->end(); it != end; ++it) {
                        ost << "\\l";
                        it->print(ost);
                    } 
                    ost << "}\"];";
                    for (succ_iterator SI = succ_begin(BB), E = succ_end(BB); SI != E;  ++SI) {
                        BasicBlock *succN = *SI;
                        ost << "\n";
                        ost <<"Node" << BB <<" -> "<<"Node" << succN <<";";
                    } 
                }

                ost << "}\n";
                return false;

            }
    };
}

char DotMaker::ID = 0;
static RegisterPass<DotMaker> X("dotmaker","Create Dot file from llvm IR",false,false);


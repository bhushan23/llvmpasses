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
#include "fstream"
#include "stdio.h"
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
                bool flag=false;
                errs() << "Processing Function: ";
                std::string fileerr;
                /*std::filebuf fb;
                fb.open("graph.dot",std::ios::out);
                std::ostream ost(&fb);
*/
                //raw_fd_ostream graphfile("graph.dot",fileerr,sys::fs::OpenFlags::F_Append); 
                //FILE* dotFile = fopen("graph","w");
                //int cnode = 0;
               //fprintf(dotFile,"%s","digraph \"CFG for 'main' function\" {\n label=\"CFG for 'main' function\";\n");
               errs()<<"CFG for 'main' function\" {\n label=\"CFG for 'main' function\";\n";
                for(Function::iterator bbi = F.begin(), bbie = F.end(); bbi != bbie; ++bbi){
                    BasicBlock *BB = bbi;
                    errs() << "\nNode" << BB << " [shape=record,label=\"{";
                    BB->dump();
                    errs() << "}\"];";
                   /* for(BasicBlock::iterator it = BB->begin(), end = BB->end(); it != end; ++it){
                        //fprintf(dotFile,"%s",);
                    }*/ 

                    //fprintf(dotFile,"%s%d%s","\nNode",cnode++,"[shape=record,label=");  
                    //errs() << " Succc ";
                    for (succ_iterator SI = succ_begin(BB), E = succ_end(BB); SI != E;  ++SI) {
                       BasicBlock *succN = *SI;
                       //succN->dump();
                       //errs()<<"--------------------";
                       } 
                    errs() << "END";
                }

                errs() << "}\n";
                return flag;

            }
    };
}

char dotmaker::ID = 0;
static RegisterPass<dotmaker> X("dotmaker","Remove Unreachable Code",false,false);


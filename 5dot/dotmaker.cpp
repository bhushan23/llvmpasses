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
#include "llvm/IR/Constants.h"
using namespace llvm;
namespace {
    class DotMaker : public FunctionPass {   
        public:
            static char ID;
            DotMaker() : FunctionPass(ID){}

            virtual bool runOnFunction(Function &F){
                int sucCnt = 0, i;
                BasicBlock* succN;
                std::string Filename = "cfg." + F.getName().str() + ".dot";
                std::string ErrorInfo;
                raw_fd_ostream ost(Filename.c_str(), ErrorInfo, sys::fs::F_Excl );

                ost <<"digraph \"CFG for '" <<F.getName().str() << "' function\" {\n label=\"CFG for '" <<F.getName().str()<< "' function\";\n";
                for (Function::iterator BB = F.begin(), bbie = F.end(); BB != bbie; ++BB){
                    ost << "\nNode" << BB << " [shape=record,label=\"{";
                    ost << BB->getName() << ":";
                    Instruction *bI = BB->getTerminator();

                    for (BasicBlock::iterator it = BB->begin(), end = BB->end(); it != end; ++it) {
                        ost << "\\l";
                        it->print(ost);
                    } 

                    if (bI->getOpcode() == Instruction::Br && bI->getNumOperands() > 1){//Branch Instruction with more than 1 operand
                        ost<<"\\l|{<s0>True|<s1>False}}\"];";
                        succN = dyn_cast<BasicBlock>(bI->getOperand(2));  

                        ost << "\n";
                        ost <<"Node" << BB <<":s0 -> "<<"Node" << succN <<";";

                        succN = dyn_cast<BasicBlock>(bI->getOperand(1));  
                        ost << "\n";
                        ost <<"Node" << BB <<":s1 -> "<<"Node" << succN <<";";


                    }else if(bI->getOpcode() == Instruction::Switch){//switch instruction
                        sucCnt = bI->getNumOperands();

                        ost << "\\l|{";
                        ost << "<s0>def|";//def is always present
                        for(i = 2; i < sucCnt - 2 ; i+=2){//display inside predecessor's block
                            ost << "<s" << i << ">";
                            if(ConstantInt* CI = dyn_cast<ConstantInt>(bI->getOperand(i))){
                                APInt ap = CI->getValue();
                                ost << ap;
                            }else //in case could not retrieve ConstantInt
                                ost << *(bI->getOperand(i));
                            ost << "|";
                        }
                        ost << "<s" << i << ">";
                        if(ConstantInt* CI = dyn_cast<ConstantInt>(bI->getOperand(i))){
                            APInt ap = CI->getValue();
                            ost << ap;
                        }else
                            ost << *(bI->getOperand(i));

                        ost << "}}\"];";

                        for(i = 1; i < sucCnt; i+=2){//create edge between blocks
                            succN = dyn_cast<BasicBlock>(bI->getOperand(i));  
                            ost << "\n";
                            ost <<"Node" << BB <<":s" << i-1 << " -> "<<"Node" << succN <<";";
                        }

                    }else{
                        ost << "}\"];";
                        for (succ_iterator SI = succ_begin(BB), E = succ_end(BB); SI != E;  ++SI) {//do we really need this loop?
                            succN = *SI;
                            ost << "\n";
                            ost <<"Node" << BB <<" -> "<<"Node" << succN <<";";
                        } 
                    }
                }

                ost << "}\n";
                return false;

            }
    };
}

char DotMaker::ID = 0;
static RegisterPass<DotMaker> X("dotmaker","Create Dot file from llvm IR",false,false);


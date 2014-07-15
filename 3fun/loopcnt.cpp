
#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/InstIterator.h"
#include "llvm/IR/Value.h"
#include "llvm/PassAnalysisSupport.h"
#include "llvm/Analysis/LoopInfo.h" 
#include "llvm/Support/CFG.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"

using namespace llvm;

STATISTIC(HelloCounter, "Counts number of functions greeted");

namespace {

struct Hello: public FunctionPass {
	static char ID; // Pass identification, replacement for typeid
	Hello() : FunctionPass(ID) {}
virtual bool runOnFunction(Function &F) {
                        LoopInfo &LI = getAnalysis<LoopInfo>();
                        CFGInstCounter++;
                        std::string fname = F.getName();
                        EscapeString(fname);
                        cerr << "Function " << fname;

                        if (LI.empty())
                                cout << " doesn't have loops" << endl;
                        else
                                cout << " has " << LI.end() -
LI.begin() << " loops" << endl;

                        int ii = 0;
                        for (LoopInfo::iterator i = LI.begin(), e =
LI.end(); i != e; ++i) {
                                Loop *TLL = *i;
                                cout << "loop_trip_count is " <<
TLL->getSmallConstantTripCount();
                                Value* v = TLL->getTripCount();
                                if (v != 0)
                                {
                                        cout << "value=" << *v << endl;
                                }
                                else
                                {
                                        cout << "\n could not get the
trip count" << endl;
                                }

   }
};
}

char Hello::ID = 0;
static RegisterPass<Hello> Y("fncnt",
		"Hello World Pass (with getAnalysisUsage implemented)");

#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Value.h"
#include "llvm/PassAnalysisSupport.h"
#include "llvm/Analysis/LoopInfo.h" 
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/ADT/StringRef.h"

using namespace llvm;

namespace {

  class fun_data{
  public:
    std :: vector <llvm::StringRef> fun_name;
    std :: vector <int> fun_count ;	
    void add_fun(llvm::StringRef in_fun,int count ){
      int i;			
      bool flag = true;
      for(i = 0; i < fun_name.size(); ++i){
	if( in_fun.equals(fun_name[i]) ){
	  fun_count[i] += count;
	  flag=false;
	  break;
	}
      }	
      if(flag){
	fun_name.push_back(in_fun);
	fun_count.push_back(count);
      }
			
    }
    void print_fun_count(){
      int i,size;
      size = fun_count.size();
      for(i = 0;i < size; ++i){
	errs() << fun_name[i] << " : " << fun_count[i] << "\n";
      }
    }
  };
  class  fncount : public ModulePass{
  public:  
    static char ID;
    bool initflag;
    fncount() : ModulePass(ID){}
    bool comparestr (llvm::StringRef, llvm :: StringRef){
	
    }
    virtual void getAnalysisUsage(AnalysisUsage &au) const{
      au.setPreservesCFG();
      au.addRequired<LoopInfo>();
      au.addRequired<ScalarEvolution>();
    }
    virtual bool runOnModule(Module &M){
      bool flag=false;
      fun_data fd;
      for (Module::iterator func_it = M.begin(), func_it_end = M.end();  func_it != func_it_end; ++func_it) {
	
	fd.add_fun(func_it->getName(), 0 );
	for(Value::use_iterator i = func_it->use_begin() ; i != func_it->use_end(); ++i){
	  if (Instruction *Inst = dyn_cast<Instruction>(*i)) {
	    BasicBlock* BB = Inst->getParent();
	    Function* Finst = BB->getParent();
	    Function& Fin = *Finst;
	    LoopInfo& LI = getAnalysis<LoopInfo>(Fin);
	    ScalarEvolution *SE = &getAnalysis<ScalarEvolution>(Fin);
	    if( LI.getLoopDepth(BB) == 0 ){
	      errs() << "Function Call: " << func_it->getName()<<"\n";	
	      fd.add_fun(func_it->getName(),1); 	
				
	    }else{

	      int loopcnt = LI.getLoopDepth(BB);	
	      int tcnt = 1;
		
	      Loop *inloop = LI.getLoopFor(BB);
	      BasicBlock *LatchBlock = inloop->getLoopLatch();
	      if (LatchBlock) {
		while(loopcnt--)
		  tcnt *= ((int) SE->getSmallConstantTripCount(inloop,LatchBlock) - 1);	
		fd.add_fun(func_it->getName(),tcnt); 	
		errs() << "Function Call in Loop: " << func_it->getName()<<"  "<< tcnt<<" times\n";
	      }
	    }	  	
	  }
	}
      }

      errs() <<"\nFunction :  No. of Calls\n";
      fd.print_fun_count(); 
      return flag;
    }

  };
}

char fncount::ID = 0;
static RegisterPass<fncount> X("fncnt","Hello Module Pass",false,false);












#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/InstIterator.h"
#include "llvm/IR/Value.h"
#include "llvm/PassAnalysisSupport.h"
#include "llvm/Analysis/LoopInfo.h" 
#include "llvm/Support/CFG.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "map"
#include "llvm/ADT/StringRef.h"
#include "llvm/Analysis/ScalarEvolutionExpressions.h"
using namespace llvm;

namespace {

	class fun_data{
		public:
		std :: vector <llvm::StringRef> fun_name;
	      	std :: vector <int> fun_count ;	
		void add_fun(llvm::StringRef in_fun,int count ){
			bool flag = true;
			for(int i = 0; i < fun_name.size(); ++i){
				if( in_fun.equals(fun_name[i]) ){
					fun_count[i] += count;
					flag=false;
				}
			}	
			if(flag){
				fun_name.push_back(in_fun);
				fun_count.push_back(count);
			}
			errs() << in_fun <<": Function added  " << count <<"\n";
		}
		void print_fun_count(){
			int i,size;
			size = fun_count.size();
			for(i = 0;i < size; ++i){
				errs() << fun_name[i] << " : " << fun_count[i] << "\n";
			}
		}
	};
  class  fncount : public FunctionPass{
	  public:  
    static char ID;
   bool initflag;
    fncount() : FunctionPass(ID){}
    bool comparestr (llvm::StringRef, llvm :: StringRef){
	
    }
   // std :: map<llvm::StringRef,int,bool comparestr(llvm::StringRef, llvm :: StringRef)> funcount; 


    virtual void getAnalysisUsage(AnalysisUsage &au) const{
      au.setPreservesCFG();
      au.addRequired<LoopInfo>();
      au.addRequired<ScalarEvolution>();
      //au.addPreserved<LoopInfo>();
    }
    virtual bool runOnFunction(Function &F){
      bool flag=true;
      static fun_data fd;
      int count = 0;
	
      if (!F.isDeclaration()) {
	LoopInfo &LI = getAnalysis<LoopInfo>();
	ScalarEvolution *SE = &getAnalysis<ScalarEvolution>();
	Module *M = F.getParent();
//	char* tmch = F.getName();
	int t1 = F.getNumUses();
	fd.add_fun(F.getName(),t1 );
	/*if( funcount.find(F.getName()) == funcount.end() ){
		errs() << "Not in Map\n";
	//	char *=F.getName();
		//funcount.insert(std :: pair <char*,int>(F.getName() , 0)); 
	
	}*/
for (Module::iterator func_it = M->begin(), func_it_end = M->end();  func_it != func_it_end; ++func_it) {
	 errs() << "\nFor Fun : "<<func_it->getName() << "\n"; 
		fd.add_fun(func_it->getName(), 0 );
	
		for(Value::use_iterator i = func_it->use_begin() ; i != func_it->use_end(); ++i){

	    //errs() << *i <<".... \n";

	
	    if (Instruction *Inst = dyn_cast<Instruction>(*i)) {
	
	      //errs() << F1.getName() << " is used in instruction:\n";
	      BasicBlock* BB = Inst->getParent();
	    
	      if( LI.getLoopDepth(BB) == 0 ){//inloop == NULL){
		errs() << "No Looop...\n";	
		fd.add_fun(func_it->getName(),1); 	
				
	      }else{
		errs() << "Loop \n";
		  Loop *inloop = LI.getLoopFor(BB);
		BasicBlock *LatchBlock = inloop->getLoopLatch();
		if (LatchBlock) {
		  int tcnt = (int) SE->getSmallConstantTripCount(inloop,LatchBlock);	
		  // errs() << tcnt  << " ......        " << *SE->getBackedgeTakenCount(inloop);//->getType();  	
		  //errs() << "Trip count: " <<tcount  << "\n";
		fd.add_fun(func_it->getName(),tcnt-1); 	
		}
	      }	  	
	      //errs() << *Inst << "\n";
	    }
	  }
	  errs() << "\n" << F.getName() << " " <<count;
	  //  for (Function::const_iterator bb_it = func_iter->begin(), bb_ite = func_iter->end(); bb_it != bb_ite;  ++bb_it) 
	  //   errs() << bb_it->getName() << " " <<  LI.getLoopDepth(bb_it) << "\n";
  
	}
      }else{
	errs() << "\ndeclar   " << F.getName();
      }
fd.print_fun_count(); 
      return flag;
    }
    /*
      errs() << "hello Fun: ";
      int count;
  
		
      for(Module :: iterator it = M.begin(); it != M.end(); ++it){
      errs().write_escaped(it->getName()) ;
      Function * F = M.getFunction (it->getName());
      LoopInfo &LI = getAnalysis<LoopInfo>(*F);	       
      count = 0;
      //       LoopInfo &LI = getAnalysis<LoopInfo>(*it);
      errs() << it->getNumUses();
      //for(POIterator lit = it->        
      /*for(Value::use_iterator i = it-> use_begin() ; i != it->use_end(); ++i){
      //errs() << i->getParent() <<" \n";
      /*	Loop *inloop = lp.getLoopFor(*i);
      if(inloop == NULL){
      errs() << "Function call No Looop\n";
      count++;
      }else{
      errs() << "Loop \n";
      }


      }	*/
    //	errs() << count <<"\n";
    // }
    /*  for(inst_iterator I = inst_begin(F); I != inst_end(F); ++I){
	errs() << I->getOpcodeName() << "  " << I->hasMetadata() << "\n";
	}*/      
							      
    //  return false;
    //}
  };
}

char fncount::ID = 0;
static RegisterPass<fncount> X("fncnt","Hello Module Pass",false,false);












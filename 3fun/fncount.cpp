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
	/*
	 * Class Fun_data keeps track of functionname and its count of call
	 */
	class fun_data{
		public:
			std :: vector <llvm::StringRef> fun_name;
			std :: vector <int> fun_count ;	
			std :: vector <bool> unpredicatable;
			void add_fun(llvm::StringRef in_fun,int count ){
				int i;			
				bool flag = true;	
				int size = fun_count.size();
				for(i = 0; i < size; ++i){
					if( in_fun.equals(fun_name[i]) ){
						fun_count[i] += count;
						flag=false;
						break;
					}
				}	
				if(flag){
					fun_name.push_back(in_fun);
					fun_count.push_back(count);
					unpredicatable.push_back(false);
				}

			}
			void set_unpredicatable_flag(llvm::StringRef st){
				int size = fun_count.size();	
				for(int i = 0; i < size; ++i){
					if( st.equals(fun_name[i]) ){
						unpredicatable[i] = true;
						break;
					}
				}
			}
			void print_fun_count(){
				int i,size;
				size = fun_count.size();
				for(i = 0;i < size; ++i){
					errs() << fun_name[i] << " : " << fun_count[i];
					if(unpredicatable[i] == true ){
						errs() << " + UNKNOWN ";
					}	
					errs() << '\n';
				}
			}
	};

	/*
	 * Algorithm : 
	 * 	1) for FUN all functions
	 *  	2) Iterate Through Def-Use Chain
	 *  	3) Check if Use is under Loop? If not got to 4 other wise 5
	 *  	4) Increment count of function by 1 and goto 6
	 *  	5) Count number of times loop is excuted and increment count by that
	 *  6) Print all function's Count
	 */ 	 
	class  fncount : public ModulePass{
		public:  
			static char ID;
			bool initflag;
			fncount() : ModulePass(ID){}

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
									while(loopcnt--){
										int temp= ((int) SE->getSmallConstantTripCount(inloop,LatchBlock) - 1);	
										if(temp == -1){ //Loop is un predictable probably dependent on User Input
											tcnt=0;
											fd.set_unpredicatable_flag(func_it->getName());	
											break;	
										}else{	
											tcnt*=temp;
											inloop = inloop-> getParentLoop();
										}
									}
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












#Makefile: makefile for outof tree build
LLVM_CONFIG?=/home/bsonawane/bin/bin/llvm-config

# Location of the source, useful if you want separate source and object
# directories.
SRC_DIR?=$(PWD)

ifndef VERBOSE
	QUIET:=@
endif

COMMON_FLAGS=-Wall -Wextra -fvisibility=hidden
CFLAGS+=$(COMMON_FLAGS) $(shell $(LLVM_CONFIG) --cflags)
CXXFLAGS+=$(COMMON_FLAGS) $(shell $(LLVM_CONFIG) --cxxflags)

ifeq ($(shell uname),Darwin)
LOADABLE_MODULE_OPTIONS=-bundle -undefined dynamic_lookup
else
LOADABLE_MODULE_OPTIONS=-shared -Wl,-O1
endif

EXTRACT=hellofun.cpp
EXTRACT_OBJECTS=hellofun.o
#FILTER=filter
#FILTER_OBJECTS=Filter.o 
PLUGIN=harvest.so
PLUGIN_OBJECTS=Harvest.o 
#PRINT=print
#PRINT_OBJECTS=Node.o 
#SIMPLIFY=simplify
#SIMPLIFY_OBJECTS=Evaluator.o ExprFactory.o HardRules.o InputParser.o lex.o \
	 Node.o Operation.o parser.o Rule.o Search.o Simplify.o \
	 SubExprFinder.o TypeResolver.o UnusedVarFinder.o
ALL_OBJECTS=$(EXTRACT_OBJECTS) $(FILTER_OBJECTS) $(PLUGIN_OBJECTS) \
            $(PRINT_OBJECTS) $(SIMPLIFY_OBJECTS) lex.o parser.o
ALL_TARGETS=$(EXTRACT) $(FILTER) $(PLUGIN) $(PRINT) $(SIMPLIFY)

CPP_OPTIONS+=$(CPPFLAGS) $(shell $(LLVM_CONFIG) --cppflags) \
	     -MD -MP -I$(SRC_DIR)

LD_OPTIONS+=$(LDFLAGS) $(shell $(LLVM_CONFIG) --ldflags)

default: $(ALL_TARGETS)

%.o : $(SRC_DIR)/%.c
	@echo Compiling $*.c
	$(QUIET)$(CC) -c $(CPP_OPTIONS) $(CFLAGS) $<

%.o : $(SRC_DIR)/%.cpp
	@echo Compiling $*.cpp
	$(QUIET)$(CXX) -c $(CPP_OPTIONS) $(CXXFLAGS) $<

$(EXTRACT): $(EXTRACT_OBJECTS)
	@echo Linking $@
	$(QUIET)$(CXX) -o $@ $(CXXFLAGS) $^ `$(LLVM_CONFIG) --libs Support` $(LD_OPTIONS)

$(#FILTER): $(FILTER_OBJECTS)
	@echo Linking $@
	$(QUIET)$(CXX) -o $@ $(CXXFLAGS) $^ `$(LLVM_CONFIG) --libs Support` $(LD_OPTIONS)

$(PLUGIN): $(PLUGIN_OBJECTS)
	@echo Linking $@
	$(QUIET)$(CXX) -o $@ $(LOADABLE_MODULE_OPTIONS) $(CXXFLAGS) \
	$(PLUGIN_OBJECTS) $(LD_OPTIONS)

$(SIMPLIFY): $(SIMPLIFY_OBJECTS)
	@echo Linking $@
	$(QUIET)$(CXX) -o $@ $(CXXFLAGS) $^ `$(LLVM_CONFIG) --libs Support` $(LD_OPTIONS)

$(PRINT): $(PRINT_OBJECTS)
	@echo Linking $@
	$(QUIET)$(CXX) -o $@ $(CXXFLAGS) $^ `$(LLVM_CONFIG) --libs Support` $(LD_OPTIONS)

parser.o: parser.tab.c lex.h
	@echo Compiling parser.tab.c
	$(QUIET)$(CXX) $(CXX_FLAGS) -Wno-write-strings -c $(CPP_OPTIONS) \
parser.tab.c -o parser.o

lex.o:	parser.tab.h lex.yybe.c 
	@echo Compiling lex.yybe.c
	$(QUIET)$(CXX) $(CXX_FLAGS) -Wno-write-strings -c $(CPP_OPTIONS) \
lex.yybe.c -o lex.o 

parser.tab.c parser.tab.h: $(SRC_DIR)/parser.y
	@echo Generating parser with bison
	$(QUIET)bison -v --name-prefix=yybe -d $(SRC_DIR)/parser.y

lex.h lex.yybe.c: $(SRC_DIR)/lex.l
	@echo Generating lexer with flex
	$(QUIET)flex -Pyybe --header-file=lex.h $(SRC_DIR)/lex.l

clean::
	$(QUIET)rm -f $(ALL_OBJECTS) *.d $(PLUGIN) $(PRINT) $(SIMPLIFY) parser.tab.c parser.tab.h lex.h lex.yybe.c parser.output


-include $(ALL_OBJECTS:.o=.d)

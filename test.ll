; ModuleID = 'dominator_frontier.cpp'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type { i32 (...)**, i32 }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type { [12 x i8], %struct.__locale_struct*, i8, i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { [12 x i8], [4 x i8] }
%"class.std::num_get" = type { [12 x i8], [4 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }
%class.graph = type { %"class.std::vector", %"class.std::vector.5", %"class.std::vector.9", %"class.std::vector.9", %"class.std::vector.0", %"class.std::vector.9", i32 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl" = type { %"class.std::vector.0"*, %"class.std::vector.0"*, %"class.std::vector.0"* }
%"class.std::vector.5" = type { %"struct.std::_Bvector_base" }
%"struct.std::_Bvector_base" = type { %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl" }
%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl" = type { %"struct.std::_Bit_iterator", %"struct.std::_Bit_iterator", i64* }
%"struct.std::_Bit_iterator" = type { [12 x i8], [4 x i8] }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" = type { i32*, i32*, i32* }
%"class.std::vector.9" = type { %"struct.std::_Vector_base.10" }
%"struct.std::_Vector_base.10" = type { %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl" }
%"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl" = type { %"class.std::set"*, %"class.std::set"*, %"class.std::set"* }
%"class.std::set" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl" }
%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl" = type { %"struct.std::less", %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_node_base" = type { i32, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"class.__gnu_cxx::__normal_iterator.29" = type { %"class.std::vector.0"* }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.28" = type { %"class.std::set"* }
%"class.std::allocator.11" = type { i8 }
%"struct.std::_Bit_reference" = type { i64*, i64 }
%"struct.std::_Bit_iterator_base" = type { i64*, i32 }
%"class.__gnu_cxx::__normal_iterator" = type { i32* }
%"class.std::allocator.2" = type { i8 }
%"struct.std::_Rb_tree_const_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"struct.std::_Rb_tree_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"struct.std::pair" = type { %"struct.std::_Rb_tree_const_iterator", i8 }
%"struct.std::pair.27" = type { %"struct.std::_Rb_tree_iterator", i8 }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", i32 }
%"class.std::insert_iterator" = type { %"class.std::set"*, %"struct.std::_Rb_tree_const_iterator" }
%"class.std::allocator.18" = type { i8 }
%"class.std::queue" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl" }
%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl" = type { i32**, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { i32*, i32*, i32*, i32** }
%"class.__gnu_cxx::new_allocator.19" = type { i8 }
%"struct.std::pair.21" = type { %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator" }
%"class.__gnu_cxx::new_allocator.3" = type { i8 }
%"class.std::allocator.14" = type { i8 }
%"class.__gnu_cxx::new_allocator.15" = type { i8 }
%"struct.std::_Identity" = type { i8 }
%"class.std::allocator.22" = type { i8 }
%"class.__gnu_cxx::new_allocator.23" = type { i8 }
%"struct.std::_Deque_iterator.25" = type { i32*, i32*, i32*, i32** }
%"class.std::allocator.6" = type { i8 }
%"class.__gnu_cxx::new_allocator.7" = type { i8 }
%"struct.std::iterator" = type { i8 }
%"struct.std::pair.26" = type { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"struct.std::iterator.17" = type { i8 }
%"class.__gnu_cxx::new_allocator.12" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"struct.std::_Bit_const_iterator" = type { [12 x i8], [4 x i8] }
%"class.__gnu_cxx::__normal_iterator.30" = type { i32* }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZSt4cout = external global %"class.std::basic_ostream"
@.str = private unnamed_addr constant [22 x i8] c"Node : Its Dominators\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"\0A Loop \00", align 1
@.str5 = private unnamed_addr constant [8 x i8] c"\0AIdom \0A\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"DF \0A\00", align 1
@.str7 = private unnamed_addr constant [11 x i8] c"inloop.txt\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external global %struct._IO_FILE*
@_ZSt3cin = external global %"class.std::basic_istream"
@.str9 = private unnamed_addr constant [22 x i8] c"vector::_M_insert_aux\00", align 1
@.str10 = private unnamed_addr constant [28 x i8] c"vector<bool>::_M_insert_aux\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

@_ZN5graphC1Ei = alias void (%class.graph*, i32)* @_ZN5graphC2Ei

define internal void @__cxx_global_var_init() section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #1
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #0

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #0

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #1

; Function Attrs: uwtable
define void @_ZN5graph11create_nodeEv(%class.graph* %this) #2 align 2 {
  %1 = alloca %class.graph*, align 8
  %temp = alloca %"class.std::vector.0", align 8
  %stemp = alloca %"class.std::set", align 8
  %2 = alloca i8*
  %3 = alloca i32
  %4 = alloca i32, align 4
  store %class.graph* %this, %class.graph** %1, align 8
  %5 = load %class.graph** %1
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %temp)
  invoke void @_ZNSt3setIiSt4lessIiESaIiEEC2Ev(%"class.std::set"* %stemp)
          to label %6 unwind label %18

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %class.graph* %5, i32 0, i32 0
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_(%"class.std::vector"* %7, %"class.std::vector.0"* %temp)
          to label %8 unwind label %22

; <label>:8                                       ; preds = %6
  %9 = getelementptr inbounds %class.graph* %5, i32 0, i32 2
  invoke void @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE9push_backERKS4_(%"class.std::vector.9"* %9, %"class.std::set"* %stemp)
          to label %10 unwind label %22

; <label>:10                                      ; preds = %8
  %11 = getelementptr inbounds %class.graph* %5, i32 0, i32 1
  invoke void @_ZNSt6vectorIbSaIbEE9push_backEb(%"class.std::vector.5"* %11, i1 zeroext false)
          to label %12 unwind label %22

; <label>:12                                      ; preds = %10
  %13 = getelementptr inbounds %class.graph* %5, i32 0, i32 4
  store i32 -1, i32* %4
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.0"* %13, i32* %4)
          to label %14 unwind label %22

; <label>:14                                      ; preds = %12
  %15 = getelementptr inbounds %class.graph* %5, i32 0, i32 5
  invoke void @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE9push_backERKS4_(%"class.std::vector.9"* %15, %"class.std::set"* %stemp)
          to label %16 unwind label %22

; <label>:16                                      ; preds = %14
  invoke void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(%"class.std::set"* %stemp)
          to label %17 unwind label %18

; <label>:17                                      ; preds = %16
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %temp)
  ret void

; <label>:18                                      ; preds = %16, %0
  %19 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %2
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %3
  br label %27

; <label>:22                                      ; preds = %14, %12, %10, %8, %6
  %23 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %24 = extractvalue { i8*, i32 } %23, 0
  store i8* %24, i8** %2
  %25 = extractvalue { i8*, i32 } %23, 1
  store i32 %25, i32* %3
  invoke void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(%"class.std::set"* %stemp)
          to label %26 unwind label %34

; <label>:26                                      ; preds = %22
  br label %27

; <label>:27                                      ; preds = %26, %18
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %temp)
          to label %28 unwind label %34

; <label>:28                                      ; preds = %27
  br label %29

; <label>:29                                      ; preds = %28
  %30 = load i8** %2
  %31 = load i32* %3
  %32 = insertvalue { i8*, i32 } undef, i8* %30, 0
  %33 = insertvalue { i8*, i32 } %32, i32 %31, 1
  resume { i8*, i32 } %33

; <label>:34                                      ; preds = %27, %22
  %35 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %36 = extractvalue { i8*, i32 } %35, 0
  call void @__clang_call_terminate(i8* %36) #12
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  %2 = load %"class.std::vector.0"** %1
  %3 = bitcast %"class.std::vector.0"* %2 to %"struct.std::_Vector_base.1"*
  call void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base.1"* %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt3setIiSt4lessIiESaIiEEC2Ev(%"class.std::set"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %this, %"class.std::set"** %1, align 8
  %2 = load %"class.std::set"** %1
  %3 = getelementptr inbounds %"class.std::set"* %2, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEEC2Ev(%"class.std::_Rb_tree"* %3)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_(%"class.std::vector"* %this, %"class.std::vector.0"* %__x) #2 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store %"class.std::vector.0"* %__x, %"class.std::vector.0"** %2, align 8
  %4 = load %"class.std::vector"** %1
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %6, i32 0, i32 1
  %8 = load %"class.std::vector.0"** %7, align 8
  %9 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %10, i32 0, i32 2
  %12 = load %"class.std::vector.0"** %11, align 8
  %13 = icmp ne %"class.std::vector.0"* %8, %12
  br i1 %13, label %14, label %28

; <label>:14                                      ; preds = %0
  %15 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %16 = getelementptr inbounds %"struct.std::_Vector_base"* %15, i32 0, i32 0
  %17 = bitcast %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %16 to %"class.std::allocator"*
  %18 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base"* %18, i32 0, i32 0
  %20 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %19, i32 0, i32 1
  %21 = load %"class.std::vector.0"** %20, align 8
  %22 = load %"class.std::vector.0"** %2, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorIiSaIiEEEE9constructIS3_EEvRS4_PS3_RKT_(%"class.std::allocator"* %17, %"class.std::vector.0"* %21, %"class.std::vector.0"* %22)
  %23 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %24 = getelementptr inbounds %"struct.std::_Vector_base"* %23, i32 0, i32 0
  %25 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %24, i32 0, i32 1
  %26 = load %"class.std::vector.0"** %25, align 8
  %27 = getelementptr inbounds %"class.std::vector.0"* %26, i32 1
  store %"class.std::vector.0"* %27, %"class.std::vector.0"** %25, align 8
  br label %34

; <label>:28                                      ; preds = %0
  %29 = call %"class.std::vector.0"* @_ZNSt6vectorIS_IiSaIiEESaIS1_EE3endEv(%"class.std::vector"* %4)
  %30 = getelementptr %"class.__gnu_cxx::__normal_iterator.29"* %3, i32 0, i32 0
  store %"class.std::vector.0"* %29, %"class.std::vector.0"** %30
  %31 = load %"class.std::vector.0"** %2, align 8
  %32 = getelementptr %"class.__gnu_cxx::__normal_iterator.29"* %3, i32 0, i32 0
  %33 = load %"class.std::vector.0"** %32
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_(%"class.std::vector"* %4, %"class.std::vector.0"* %33, %"class.std::vector.0"* %31)
  br label %34

; <label>:34                                      ; preds = %28, %14
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE9push_backERKS4_(%"class.std::vector.9"* %this, %"class.std::set"* %__x) #2 align 2 {
  %1 = alloca %"class.std::vector.9"*, align 8
  %2 = alloca %"class.std::set"*, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.28", align 8
  store %"class.std::vector.9"* %this, %"class.std::vector.9"** %1, align 8
  store %"class.std::set"* %__x, %"class.std::set"** %2, align 8
  %4 = load %"class.std::vector.9"** %1
  %5 = bitcast %"class.std::vector.9"* %4 to %"struct.std::_Vector_base.10"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.10"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %6, i32 0, i32 1
  %8 = load %"class.std::set"** %7, align 8
  %9 = bitcast %"class.std::vector.9"* %4 to %"struct.std::_Vector_base.10"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base.10"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %10, i32 0, i32 2
  %12 = load %"class.std::set"** %11, align 8
  %13 = icmp ne %"class.std::set"* %8, %12
  br i1 %13, label %14, label %28

; <label>:14                                      ; preds = %0
  %15 = bitcast %"class.std::vector.9"* %4 to %"struct.std::_Vector_base.10"*
  %16 = getelementptr inbounds %"struct.std::_Vector_base.10"* %15, i32 0, i32 0
  %17 = bitcast %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %16 to %"class.std::allocator.11"*
  %18 = bitcast %"class.std::vector.9"* %4 to %"struct.std::_Vector_base.10"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base.10"* %18, i32 0, i32 0
  %20 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %19, i32 0, i32 1
  %21 = load %"class.std::set"** %20, align 8
  %22 = load %"class.std::set"** %2, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaISt3setIiSt4lessIiESaIiEEEE9constructIS5_EEvRS6_PS5_RKT_(%"class.std::allocator.11"* %17, %"class.std::set"* %21, %"class.std::set"* %22)
  %23 = bitcast %"class.std::vector.9"* %4 to %"struct.std::_Vector_base.10"*
  %24 = getelementptr inbounds %"struct.std::_Vector_base.10"* %23, i32 0, i32 0
  %25 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %24, i32 0, i32 1
  %26 = load %"class.std::set"** %25, align 8
  %27 = getelementptr inbounds %"class.std::set"* %26, i32 1
  store %"class.std::set"* %27, %"class.std::set"** %25, align 8
  br label %34

; <label>:28                                      ; preds = %0
  %29 = call %"class.std::set"* @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE3endEv(%"class.std::vector.9"* %4)
  %30 = getelementptr %"class.__gnu_cxx::__normal_iterator.28"* %3, i32 0, i32 0
  store %"class.std::set"* %29, %"class.std::set"** %30
  %31 = load %"class.std::set"** %2, align 8
  %32 = getelementptr %"class.__gnu_cxx::__normal_iterator.28"* %3, i32 0, i32 0
  %33 = load %"class.std::set"** %32
  call void @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS4_S6_EERKS4_(%"class.std::vector.9"* %4, %"class.std::set"* %33, %"class.std::set"* %31)
  br label %34

; <label>:34                                      ; preds = %28, %14
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE9push_backEb(%"class.std::vector.5"* %this, i1 zeroext %__x) #2 align 2 {
  %1 = alloca %"class.std::vector.5"*, align 8
  %2 = alloca i8, align 1
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  %4 = alloca %"struct.std::_Bit_reference", align 8
  %5 = alloca %"struct.std::_Bit_iterator", align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %1, align 8
  %6 = zext i1 %__x to i8
  store i8 %6, i8* %2, align 1
  %7 = load %"class.std::vector.5"** %1
  %8 = bitcast %"class.std::vector.5"* %7 to %"struct.std::_Bvector_base"*
  %9 = getelementptr inbounds %"struct.std::_Bvector_base"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %9, i32 0, i32 1
  %11 = bitcast %"struct.std::_Bit_iterator"* %10 to %"struct.std::_Bit_iterator_base"*
  %12 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %11, i32 0, i32 0
  %13 = load i64** %12, align 8
  %14 = bitcast %"class.std::vector.5"* %7 to %"struct.std::_Bvector_base"*
  %15 = getelementptr inbounds %"struct.std::_Bvector_base"* %14, i32 0, i32 0
  %16 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %15, i32 0, i32 2
  %17 = load i64** %16, align 8
  %18 = icmp ne i64* %13, %17
  br i1 %18, label %19, label %38

; <label>:19                                      ; preds = %0
  %20 = bitcast %"class.std::vector.5"* %7 to %"struct.std::_Bvector_base"*
  %21 = getelementptr inbounds %"struct.std::_Bvector_base"* %20, i32 0, i32 0
  %22 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %21, i32 0, i32 1
  %23 = call { i64, i64 } @_ZNSt13_Bit_iteratorppEi(%"struct.std::_Bit_iterator"* %22, i32 0)
  %24 = bitcast %"struct.std::_Bit_iterator"* %3 to { i64, i64 }*
  %25 = getelementptr { i64, i64 }* %24, i32 0, i32 0
  %26 = extractvalue { i64, i64 } %23, 0
  store i64 %26, i64* %25, align 1
  %27 = getelementptr { i64, i64 }* %24, i32 0, i32 1
  %28 = extractvalue { i64, i64 } %23, 1
  store i64 %28, i64* %27, align 1
  %29 = call { i64*, i64 } @_ZNKSt13_Bit_iteratordeEv(%"struct.std::_Bit_iterator"* %3)
  %30 = bitcast %"struct.std::_Bit_reference"* %4 to { i64*, i64 }*
  %31 = getelementptr { i64*, i64 }* %30, i32 0, i32 0
  %32 = extractvalue { i64*, i64 } %29, 0
  store i64* %32, i64** %31, align 1
  %33 = getelementptr { i64*, i64 }* %30, i32 0, i32 1
  %34 = extractvalue { i64*, i64 } %29, 1
  store i64 %34, i64* %33, align 1
  %35 = load i8* %2, align 1
  %36 = trunc i8 %35 to i1
  %37 = call %"struct.std::_Bit_reference"* @_ZNSt14_Bit_referenceaSEb(%"struct.std::_Bit_reference"* %4, i1 zeroext %36)
  br label %52

; <label>:38                                      ; preds = %0
  %39 = call { i64, i64 } @_ZNSt6vectorIbSaIbEE3endEv(%"class.std::vector.5"* %7)
  %40 = bitcast %"struct.std::_Bit_iterator"* %5 to { i64, i64 }*
  %41 = getelementptr { i64, i64 }* %40, i32 0, i32 0
  %42 = extractvalue { i64, i64 } %39, 0
  store i64 %42, i64* %41, align 1
  %43 = getelementptr { i64, i64 }* %40, i32 0, i32 1
  %44 = extractvalue { i64, i64 } %39, 1
  store i64 %44, i64* %43, align 1
  %45 = load i8* %2, align 1
  %46 = trunc i8 %45 to i1
  %47 = bitcast %"struct.std::_Bit_iterator"* %5 to { i64, i64 }*
  %48 = getelementptr { i64, i64 }* %47, i32 0, i32 0
  %49 = load i64* %48, align 1
  %50 = getelementptr { i64, i64 }* %47, i32 0, i32 1
  %51 = load i64* %50, align 1
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(%"class.std::vector.5"* %7, i64 %49, i64 %51, i1 zeroext %46)
  br label %52

; <label>:52                                      ; preds = %38, %19
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.0"* %this, i32* %__x) #2 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  store i32* %__x, i32** %2, align 8
  %4 = load %"class.std::vector.0"** %1
  %5 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.1"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %6, i32 0, i32 1
  %8 = load i32** %7, align 8
  %9 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base.1"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %10, i32 0, i32 2
  %12 = load i32** %11, align 8
  %13 = icmp ne i32* %8, %12
  br i1 %13, label %14, label %28

; <label>:14                                      ; preds = %0
  %15 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %16 = getelementptr inbounds %"struct.std::_Vector_base.1"* %15, i32 0, i32 0
  %17 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %16 to %"class.std::allocator.2"*
  %18 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base.1"* %18, i32 0, i32 0
  %20 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %19, i32 0, i32 1
  %21 = load i32** %20, align 8
  %22 = load i32** %2, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE9constructIiEEvRS1_PiRKT_(%"class.std::allocator.2"* %17, i32* %21, i32* %22)
  %23 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %24 = getelementptr inbounds %"struct.std::_Vector_base.1"* %23, i32 0, i32 0
  %25 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %24, i32 0, i32 1
  %26 = load i32** %25, align 8
  %27 = getelementptr inbounds i32* %26, i32 1
  store i32* %27, i32** %25, align 8
  br label %34

; <label>:28                                      ; preds = %0
  %29 = call i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector.0"* %4)
  %30 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  store i32* %29, i32** %30
  %31 = load i32** %2, align 8
  %32 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %33 = load i32** %32
  call void @_ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi(%"class.std::vector.0"* %4, i32* %33, i32* %31)
  br label %34

; <label>:34                                      ; preds = %28, %14
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(%"class.std::set"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %this, %"class.std::set"** %1, align 8
  %2 = load %"class.std::set"** %1
  %3 = getelementptr inbounds %"class.std::set"* %2, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEED2Ev(%"class.std::_Rb_tree"* %3)
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #4 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #1
  call void @_ZSt9terminatev() #12
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  %4 = load %"class.std::vector.0"** %1
  %5 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.1"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %6, i32 0, i32 0
  %8 = load i32** %7, align 8
  %9 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base.1"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %10, i32 0, i32 1
  %12 = load i32** %11, align 8
  %13 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %14 = invoke %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %13)
          to label %15 unwind label %18

; <label>:15                                      ; preds = %0
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %8, i32* %12, %"class.std::allocator.2"* %14)
          to label %16 unwind label %18

; <label>:16                                      ; preds = %15
  %17 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base.1"* %17)
  ret void

; <label>:18                                      ; preds = %15, %0
  %19 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %2
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %3
  %22 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  invoke void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base.1"* %22)
          to label %23 unwind label %29

; <label>:23                                      ; preds = %18
  br label %24

; <label>:24                                      ; preds = %23
  %25 = load i8** %2
  %26 = load i32* %3
  %27 = insertvalue { i8*, i32 } undef, i8* %25, 0
  %28 = insertvalue { i8*, i32 } %27, i32 %26, 1
  resume { i8*, i32 } %28

; <label>:29                                      ; preds = %18
  %30 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %31 = extractvalue { i8*, i32 } %30, 0
  call void @__clang_call_terminate(i8* %31) #12
  unreachable
}

; Function Attrs: uwtable
define zeroext i1 @_ZN5graph15dominator_checkEii(%class.graph* %this, i32 %tocheck, i32 %inset) #2 align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %class.graph*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %6 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  store %class.graph* %this, %class.graph** %2, align 8
  store i32 %tocheck, i32* %3, align 4
  store i32 %inset, i32* %4, align 4
  %7 = load %class.graph** %2
  %8 = getelementptr inbounds %class.graph* %7, i32 0, i32 2
  %9 = load i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = call %"class.std::set"* @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EEixEm(%"class.std::vector.9"* %8, i64 %10)
  %12 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3setIiSt4lessIiESaIiEE4findERKi(%"class.std::set"* %11, i32* %3)
  %13 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %5, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %12, %"struct.std::_Rb_tree_node_base"** %13
  %14 = getelementptr inbounds %class.graph* %7, i32 0, i32 2
  %15 = load i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = call %"class.std::set"* @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EEixEm(%"class.std::vector.9"* %14, i64 %16)
  %18 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIiSt4lessIiESaIiEE3endEv(%"class.std::set"* %17)
  %19 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %6, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %18, %"struct.std::_Rb_tree_node_base"** %19
  %20 = call zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorIiEeqERKS0_(%"struct.std::_Rb_tree_const_iterator"* %5, %"struct.std::_Rb_tree_const_iterator"* %6)
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %0
  store i1 false, i1* %1
  br label %23

; <label>:22                                      ; preds = %0
  store i1 true, i1* %1
  br label %23

; <label>:23                                      ; preds = %22, %21
  %24 = load i1* %1
  ret i1 %24
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::set"* @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EEixEm(%"class.std::vector.9"* %this, i64 %__n) #5 align 2 {
  %1 = alloca %"class.std::vector.9"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::vector.9"* %this, %"class.std::vector.9"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::vector.9"** %1
  %4 = bitcast %"class.std::vector.9"* %3 to %"struct.std::_Vector_base.10"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.10"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %5, i32 0, i32 0
  %7 = load %"class.std::set"** %6, align 8
  %8 = load i64* %2, align 8
  %9 = getelementptr inbounds %"class.std::set"* %7, i64 %8
  ret %"class.std::set"* %9
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt3setIiSt4lessIiESaIiEE4findERKi(%"class.std::set"* %this, i32* %__x) #2 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %2 = alloca %"class.std::set"*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  store %"class.std::set"* %this, %"class.std::set"** %2, align 8
  store i32* %__x, i32** %3, align 8
  %5 = load %"class.std::set"** %2
  %6 = getelementptr inbounds %"class.std::set"* %5, i32 0, i32 0
  %7 = load i32** %3, align 8
  %8 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE4findERKi(%"class.std::_Rb_tree"* %6, i32* %7)
  %9 = getelementptr %"struct.std::_Rb_tree_iterator"* %4, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %8, %"struct.std::_Rb_tree_node_base"** %9
  call void @_ZNSt23_Rb_tree_const_iteratorIiEC2ERKSt17_Rb_tree_iteratorIiE(%"struct.std::_Rb_tree_const_iterator"* %1, %"struct.std::_Rb_tree_iterator"* %4)
  %10 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %1, i32 0, i32 0
  %11 = load %"struct.std::_Rb_tree_node_base"** %10
  ret %"struct.std::_Rb_tree_node_base"* %11
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorIiEeqERKS0_(%"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"* %__x) #5 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %1, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %__x, %"struct.std::_Rb_tree_const_iterator"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_const_iterator"** %1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = load %"struct.std::_Rb_tree_const_iterator"** %2, align 8
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %6, i32 0, i32 0
  %8 = load %"struct.std::_Rb_tree_node_base"** %7, align 8
  %9 = icmp eq %"struct.std::_Rb_tree_node_base"* %5, %8
  ret i1 %9
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIiSt4lessIiESaIiEE3endEv(%"class.std::set"* %this) #2 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %2 = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %this, %"class.std::set"** %2, align 8
  %3 = load %"class.std::set"** %2
  %4 = getelementptr inbounds %"class.std::set"* %3, i32 0, i32 0
  %5 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE3endEv(%"class.std::_Rb_tree"* %4)
  %6 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %5, %"struct.std::_Rb_tree_node_base"** %6
  %7 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %1, i32 0, i32 0
  %8 = load %"struct.std::_Rb_tree_node_base"** %7
  ret %"struct.std::_Rb_tree_node_base"* %8
}

; Function Attrs: uwtable
define void @_ZN5graphC2Ei(%class.graph* %this, i32 %n) unnamed_addr #2 align 2 {
  %1 = alloca %class.graph*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*
  %4 = alloca i32
  %i = alloca i32, align 4
  %5 = alloca %"struct.std::pair", align 8
  store %class.graph* %this, %class.graph** %1, align 8
  store i32 %n, i32* %2, align 4
  %6 = load %class.graph** %1
  %7 = getelementptr inbounds %class.graph* %6, i32 0, i32 0
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2Ev(%"class.std::vector"* %7)
  %8 = getelementptr inbounds %class.graph* %6, i32 0, i32 1
  invoke void @_ZNSt6vectorIbSaIbEEC2Ev(%"class.std::vector.5"* %8)
          to label %9 unwind label %41

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %class.graph* %6, i32 0, i32 2
  invoke void @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EEC2Ev(%"class.std::vector.9"* %10)
          to label %11 unwind label %45

; <label>:11                                      ; preds = %9
  %12 = getelementptr inbounds %class.graph* %6, i32 0, i32 3
  invoke void @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EEC2Ev(%"class.std::vector.9"* %12)
          to label %13 unwind label %49

; <label>:13                                      ; preds = %11
  %14 = getelementptr inbounds %class.graph* %6, i32 0, i32 4
  invoke void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %14)
          to label %15 unwind label %53

; <label>:15                                      ; preds = %13
  %16 = getelementptr inbounds %class.graph* %6, i32 0, i32 5
  invoke void @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EEC2Ev(%"class.std::vector.9"* %16)
          to label %17 unwind label %57

; <label>:17                                      ; preds = %15
  %18 = getelementptr inbounds %class.graph* %6, i32 0, i32 6
  store i32 0, i32* %18, align 4
  store i32 0, i32* %i, align 4
  br label %19

; <label>:19                                      ; preds = %38, %17
  %20 = load i32* %i, align 4
  %21 = load i32* %2, align 4
  %22 = add nsw i32 %21, 1
  %23 = icmp sle i32 %20, %22
  br i1 %23, label %24, label %65

; <label>:24                                      ; preds = %19
  invoke void @_ZN5graph11create_nodeEv(%class.graph* %6)
          to label %25 unwind label %61

; <label>:25                                      ; preds = %24
  %26 = getelementptr inbounds %class.graph* %6, i32 0, i32 2
  %27 = load i32* %i, align 4
  %28 = sext i32 %27 to i64
  %29 = invoke %"class.std::set"* @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EEixEm(%"class.std::vector.9"* %26, i64 %28)
          to label %30 unwind label %61

; <label>:30                                      ; preds = %25
  %31 = invoke { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt3setIiSt4lessIiESaIiEE6insertERKi(%"class.std::set"* %29, i32* %i)
          to label %32 unwind label %61

; <label>:32                                      ; preds = %30
  %33 = bitcast %"struct.std::pair"* %5 to { %"struct.std::_Rb_tree_node_base"*, i8 }*
  %34 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %33, i32 0, i32 0
  %35 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %31, 0
  store %"struct.std::_Rb_tree_node_base"* %35, %"struct.std::_Rb_tree_node_base"** %34, align 1
  %36 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %33, i32 0, i32 1
  %37 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %31, 1
  store i8 %37, i8* %36, align 1
  br label %38

; <label>:38                                      ; preds = %32
  %39 = load i32* %i, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %i, align 4
  br label %19

; <label>:41                                      ; preds = %0
  %42 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %43 = extractvalue { i8*, i32 } %42, 0
  store i8* %43, i8** %3
  %44 = extractvalue { i8*, i32 } %42, 1
  store i32 %44, i32* %4
  br label %75

; <label>:45                                      ; preds = %9
  %46 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %47 = extractvalue { i8*, i32 } %46, 0
  store i8* %47, i8** %3
  %48 = extractvalue { i8*, i32 } %46, 1
  store i32 %48, i32* %4
  br label %73

; <label>:49                                      ; preds = %11
  %50 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %51 = extractvalue { i8*, i32 } %50, 0
  store i8* %51, i8** %3
  %52 = extractvalue { i8*, i32 } %50, 1
  store i32 %52, i32* %4
  br label %71

; <label>:53                                      ; preds = %13
  %54 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %55 = extractvalue { i8*, i32 } %54, 0
  store i8* %55, i8** %3
  %56 = extractvalue { i8*, i32 } %54, 1
  store i32 %56, i32* %4
  br label %69

; <label>:57                                      ; preds = %15
  %58 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %59 = extractvalue { i8*, i32 } %58, 0
  store i8* %59, i8** %3
  %60 = extractvalue { i8*, i32 } %58, 1
  store i32 %60, i32* %4
  br label %67

; <label>:61                                      ; preds = %30, %25, %24
  %62 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %63 = extractvalue { i8*, i32 } %62, 0
  store i8* %63, i8** %3
  %64 = extractvalue { i8*, i32 } %62, 1
  store i32 %64, i32* %4
  invoke void @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EED2Ev(%"class.std::vector.9"* %16)
          to label %66 unwind label %82

; <label>:65                                      ; preds = %19
  ret void

; <label>:66                                      ; preds = %61
  br label %67

; <label>:67                                      ; preds = %66, %57
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %14)
          to label %68 unwind label %82

; <label>:68                                      ; preds = %67
  br label %69

; <label>:69                                      ; preds = %68, %53
  invoke void @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EED2Ev(%"class.std::vector.9"* %12)
          to label %70 unwind label %82

; <label>:70                                      ; preds = %69
  br label %71

; <label>:71                                      ; preds = %70, %49
  invoke void @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EED2Ev(%"class.std::vector.9"* %10)
          to label %72 unwind label %82

; <label>:72                                      ; preds = %71
  br label %73

; <label>:73                                      ; preds = %72, %45
  invoke void @_ZNSt6vectorIbSaIbEED2Ev(%"class.std::vector.5"* %8)
          to label %74 unwind label %82

; <label>:74                                      ; preds = %73
  br label %75

; <label>:75                                      ; preds = %74, %41
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(%"class.std::vector"* %7)
          to label %76 unwind label %82

; <label>:76                                      ; preds = %75
  br label %77

; <label>:77                                      ; preds = %76
  %78 = load i8** %3
  %79 = load i32* %4
  %80 = insertvalue { i8*, i32 } undef, i8* %78, 0
  %81 = insertvalue { i8*, i32 } %80, i32 %79, 1
  resume { i8*, i32 } %81

; <label>:82                                      ; preds = %75, %73, %71, %69, %67, %61
  %83 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %84 = extractvalue { i8*, i32 } %83, 0
  call void @__clang_call_terminate(i8* %84) #12
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2Ev(%"class.std::vector"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2Ev(%"struct.std::_Vector_base"* %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEEC2Ev(%"class.std::vector.5"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %1, align 8
  %2 = load %"class.std::vector.5"** %1
  %3 = bitcast %"class.std::vector.5"* %2 to %"struct.std::_Bvector_base"*
  call void @_ZNSt13_Bvector_baseISaIbEEC2Ev(%"struct.std::_Bvector_base"* %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EEC2Ev(%"class.std::vector.9"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::vector.9"*, align 8
  store %"class.std::vector.9"* %this, %"class.std::vector.9"** %1, align 8
  %2 = load %"class.std::vector.9"** %1
  %3 = bitcast %"class.std::vector.9"* %2 to %"struct.std::_Vector_base.10"*
  call void @_ZNSt12_Vector_baseISt3setIiSt4lessIiESaIiEESaIS4_EEC2Ev(%"struct.std::_Vector_base.10"* %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt3setIiSt4lessIiESaIiEE6insertERKi(%"class.std::set"* %this, i32* %__x) #2 align 2 {
  %1 = alloca %"struct.std::pair", align 8
  %2 = alloca %"class.std::set"*, align 8
  %3 = alloca i32*, align 8
  %__p = alloca %"struct.std::pair.27", align 8
  %4 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  store %"class.std::set"* %this, %"class.std::set"** %2, align 8
  store i32* %__x, i32** %3, align 8
  %5 = load %"class.std::set"** %2
  %6 = getelementptr inbounds %"class.std::set"* %5, i32 0, i32 0
  %7 = load i32** %3, align 8
  %8 = call { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE16_M_insert_uniqueERKi(%"class.std::_Rb_tree"* %6, i32* %7)
  %9 = bitcast %"struct.std::pair.27"* %__p to { %"struct.std::_Rb_tree_node_base"*, i8 }*
  %10 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %9, i32 0, i32 0
  %11 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %8, 0
  store %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::_Rb_tree_node_base"** %10, align 1
  %12 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %9, i32 0, i32 1
  %13 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %8, 1
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %"struct.std::pair.27"* %__p, i32 0, i32 0
  call void @_ZNSt23_Rb_tree_const_iteratorIiEC2ERKSt17_Rb_tree_iteratorIiE(%"struct.std::_Rb_tree_const_iterator"* %4, %"struct.std::_Rb_tree_iterator"* %14)
  %15 = getelementptr inbounds %"struct.std::pair.27"* %__p, i32 0, i32 1
  call void @_ZNSt4pairISt23_Rb_tree_const_iteratorIiEbEC2ERKS1_RKb(%"struct.std::pair"* %1, %"struct.std::_Rb_tree_const_iterator"* %4, i8* %15)
  %16 = bitcast %"struct.std::pair"* %1 to { %"struct.std::_Rb_tree_node_base"*, i8 }*
  %17 = load { %"struct.std::_Rb_tree_node_base"*, i8 }* %16, align 1
  ret { %"struct.std::_Rb_tree_node_base"*, i8 } %17
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EED2Ev(%"class.std::vector.9"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::vector.9"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"class.std::vector.9"* %this, %"class.std::vector.9"** %1, align 8
  %4 = load %"class.std::vector.9"** %1
  %5 = bitcast %"class.std::vector.9"* %4 to %"struct.std::_Vector_base.10"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.10"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %6, i32 0, i32 0
  %8 = load %"class.std::set"** %7, align 8
  %9 = bitcast %"class.std::vector.9"* %4 to %"struct.std::_Vector_base.10"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base.10"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %10, i32 0, i32 1
  %12 = load %"class.std::set"** %11, align 8
  %13 = bitcast %"class.std::vector.9"* %4 to %"struct.std::_Vector_base.10"*
  %14 = invoke %"class.std::allocator.11"* @_ZNSt12_Vector_baseISt3setIiSt4lessIiESaIiEESaIS4_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.10"* %13)
          to label %15 unwind label %18

; <label>:15                                      ; preds = %0
  invoke void @_ZSt8_DestroyIPSt3setIiSt4lessIiESaIiEES4_EvT_S6_RSaIT0_E(%"class.std::set"* %8, %"class.std::set"* %12, %"class.std::allocator.11"* %14)
          to label %16 unwind label %18

; <label>:16                                      ; preds = %15
  %17 = bitcast %"class.std::vector.9"* %4 to %"struct.std::_Vector_base.10"*
  call void @_ZNSt12_Vector_baseISt3setIiSt4lessIiESaIiEESaIS4_EED2Ev(%"struct.std::_Vector_base.10"* %17)
  ret void

; <label>:18                                      ; preds = %15, %0
  %19 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %2
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %3
  %22 = bitcast %"class.std::vector.9"* %4 to %"struct.std::_Vector_base.10"*
  invoke void @_ZNSt12_Vector_baseISt3setIiSt4lessIiESaIiEESaIS4_EED2Ev(%"struct.std::_Vector_base.10"* %22)
          to label %23 unwind label %29

; <label>:23                                      ; preds = %18
  br label %24

; <label>:24                                      ; preds = %23
  %25 = load i8** %2
  %26 = load i32* %3
  %27 = insertvalue { i8*, i32 } undef, i8* %25, 0
  %28 = insertvalue { i8*, i32 } %27, i32 %26, 1
  resume { i8*, i32 } %28

; <label>:29                                      ; preds = %18
  %30 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %31 = extractvalue { i8*, i32 } %30, 0
  call void @__clang_call_terminate(i8* %31) #12
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEED2Ev(%"class.std::vector.5"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %1, align 8
  %2 = load %"class.std::vector.5"** %1
  %3 = bitcast %"class.std::vector.5"* %2 to %"struct.std::_Bvector_base"*
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(%"struct.std::_Bvector_base"* %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(%"class.std::vector"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %4 = load %"class.std::vector"** %1
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %6, i32 0, i32 0
  %8 = load %"class.std::vector.0"** %7, align 8
  %9 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %10, i32 0, i32 1
  %12 = load %"class.std::vector.0"** %11, align 8
  %13 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %14 = invoke %"class.std::allocator"* @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %13)
          to label %15 unwind label %18

; <label>:15                                      ; preds = %0
  invoke void @_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E(%"class.std::vector.0"* %8, %"class.std::vector.0"* %12, %"class.std::allocator"* %14)
          to label %16 unwind label %18

; <label>:16                                      ; preds = %15
  %17 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev(%"struct.std::_Vector_base"* %17)
  ret void

; <label>:18                                      ; preds = %15, %0
  %19 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %2
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %3
  %22 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  invoke void @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev(%"struct.std::_Vector_base"* %22)
          to label %23 unwind label %29

; <label>:23                                      ; preds = %18
  br label %24

; <label>:24                                      ; preds = %23
  %25 = load i8** %2
  %26 = load i32* %3
  %27 = insertvalue { i8*, i32 } undef, i8* %25, 0
  %28 = insertvalue { i8*, i32 } %27, i32 %26, 1
  resume { i8*, i32 } %28

; <label>:29                                      ; preds = %18
  %30 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %31 = extractvalue { i8*, i32 } %30, 0
  call void @__clang_call_terminate(i8* %31) #12
  unreachable
}

; Function Attrs: uwtable
define i32 @_ZN5graph8get_destEii(%class.graph* %this, i32 %i, i32 %j) #2 align 2 {
  %1 = alloca i32, align 4
  %2 = alloca %class.graph*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %class.graph* %this, %class.graph** %2, align 8
  store i32 %i, i32* %3, align 4
  store i32 %j, i32* %4, align 4
  %5 = load %class.graph** %2
  %6 = load i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %class.graph* %5, i32 0, i32 0
  %9 = load i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = call %"class.std::vector.0"* @_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm(%"class.std::vector"* %8, i64 %10)
  %12 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %11)
  %13 = icmp ult i64 %7, %12
  br i1 %13, label %14, label %23

; <label>:14                                      ; preds = %0
  %15 = getelementptr inbounds %class.graph* %5, i32 0, i32 0
  %16 = load i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = call %"class.std::vector.0"* @_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm(%"class.std::vector"* %15, i64 %17)
  %19 = load i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = call i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %18, i64 %20)
  %22 = load i32* %21
  store i32 %22, i32* %1
  br label %24

; <label>:23                                      ; preds = %0
  store i32 -1, i32* %1
  br label %24

; <label>:24                                      ; preds = %23, %14
  %25 = load i32* %1
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::vector.0"* @_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm(%"class.std::vector"* %this, i64 %__n) #5 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::vector"** %1
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %5, i32 0, i32 0
  %7 = load %"class.std::vector.0"** %6, align 8
  %8 = load i64* %2, align 8
  %9 = getelementptr inbounds %"class.std::vector.0"* %7, i64 %8
  ret %"class.std::vector.0"* %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %this) #5 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  %2 = load %"class.std::vector.0"** %1
  %3 = bitcast %"class.std::vector.0"* %2 to %"struct.std::_Vector_base.1"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %4, i32 0, i32 1
  %6 = load i32** %5, align 8
  %7 = bitcast %"class.std::vector.0"* %2 to %"struct.std::_Vector_base.1"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base.1"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %8, i32 0, i32 0
  %10 = load i32** %9, align 8
  %11 = ptrtoint i32* %6 to i64
  %12 = ptrtoint i32* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 4
  ret i64 %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %this, i64 %__n) #5 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::vector.0"** %1
  %4 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %5, i32 0, i32 0
  %7 = load i32** %6, align 8
  %8 = load i64* %2, align 8
  %9 = getelementptr inbounds i32* %7, i64 %8
  ret i32* %9
}

; Function Attrs: uwtable
define void @_ZN5graph11create_edgeEii(%class.graph* %this, i32 %src, i32 %dest) #2 align 2 {
  %1 = alloca %class.graph*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %class.graph* %this, %class.graph** %1, align 8
  store i32 %src, i32* %2, align 4
  store i32 %dest, i32* %3, align 4
  %4 = load %class.graph** %1
  %5 = getelementptr inbounds %class.graph* %4, i32 0, i32 0
  %6 = load i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = call %"class.std::vector.0"* @_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm(%"class.std::vector"* %5, i64 %7)
  call void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.0"* %8, i32* %3)
  ret void
}

; Function Attrs: uwtable
define i32 @_ZN5graph9list_sizeEi(%class.graph* %this, i32 %i) #2 align 2 {
  %1 = alloca %class.graph*, align 8
  %2 = alloca i32, align 4
  store %class.graph* %this, %class.graph** %1, align 8
  store i32 %i, i32* %2, align 4
  %3 = load %class.graph** %1
  %4 = getelementptr inbounds %class.graph* %3, i32 0, i32 0
  %5 = load i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = call %"class.std::vector.0"* @_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm(%"class.std::vector"* %4, i64 %6)
  %8 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %7)
  %9 = trunc i64 %8 to i32
  ret i32 %9
}

; Function Attrs: uwtable
define void @_ZN5graph15print_dominatorEv(%class.graph* %this) #2 align 2 {
  %1 = alloca %class.graph*, align 8
  %i = alloca i32, align 4
  %total = alloca i32, align 4
  %it = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %it_end = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  store %class.graph* %this, %class.graph** %1, align 8
  %4 = load %class.graph** %1
  call void @_ZNSt23_Rb_tree_const_iteratorIiEC2Ev(%"struct.std::_Rb_tree_const_iterator"* %it)
  call void @_ZNSt23_Rb_tree_const_iteratorIiEC2Ev(%"struct.std::_Rb_tree_const_iterator"* %it_end)
  %5 = getelementptr inbounds %class.graph* %4, i32 0, i32 2
  %6 = call i64 @_ZNKSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE4sizeEv(%"class.std::vector.9"* %5)
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %total, align 4
  %8 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([22 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %9

; <label>:9                                       ; preds = %44, %0
  %10 = load i32* %i, align 4
  %11 = load i32* %total, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %47

; <label>:13                                      ; preds = %9
  %14 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  %15 = load i32* %i, align 4
  %16 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %14, i32 %15)
  %17 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %16, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0))
  %18 = getelementptr inbounds %class.graph* %4, i32 0, i32 2
  %19 = load i32* %i, align 4
  %20 = sext i32 %19 to i64
  %21 = call %"class.std::set"* @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EEixEm(%"class.std::vector.9"* %18, i64 %20)
  %22 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIiSt4lessIiESaIiEE3endEv(%"class.std::set"* %21)
  %23 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %2, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %22, %"struct.std::_Rb_tree_node_base"** %23
  %24 = bitcast %"struct.std::_Rb_tree_const_iterator"* %it_end to i8*
  %25 = bitcast %"struct.std::_Rb_tree_const_iterator"* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 8, i32 8, i1 false)
  %26 = getelementptr inbounds %class.graph* %4, i32 0, i32 2
  %27 = load i32* %i, align 4
  %28 = sext i32 %27 to i64
  %29 = call %"class.std::set"* @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EEixEm(%"class.std::vector.9"* %26, i64 %28)
  %30 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIiSt4lessIiESaIiEE5beginEv(%"class.std::set"* %29)
  %31 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %30, %"struct.std::_Rb_tree_node_base"** %31
  %32 = bitcast %"struct.std::_Rb_tree_const_iterator"* %it to i8*
  %33 = bitcast %"struct.std::_Rb_tree_const_iterator"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 8, i32 8, i1 false)
  br label %34

; <label>:34                                      ; preds = %41, %13
  %35 = call zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorIiEneERKS0_(%"struct.std::_Rb_tree_const_iterator"* %it, %"struct.std::_Rb_tree_const_iterator"* %it_end)
  br i1 %35, label %36, label %43

; <label>:36                                      ; preds = %34
  %37 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0))
  %38 = call i32* @_ZNKSt23_Rb_tree_const_iteratorIiEdeEv(%"struct.std::_Rb_tree_const_iterator"* %it)
  %39 = load i32* %38
  %40 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %37, i32 %39)
  br label %41

; <label>:41                                      ; preds = %36
  %42 = call %"struct.std::_Rb_tree_const_iterator"* @_ZNSt23_Rb_tree_const_iteratorIiEppEv(%"struct.std::_Rb_tree_const_iterator"* %it)
  br label %34

; <label>:43                                      ; preds = %34
  br label %44

; <label>:44                                      ; preds = %43
  %45 = load i32* %i, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %i, align 4
  br label %9

; <label>:47                                      ; preds = %9
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt23_Rb_tree_const_iteratorIiEC2Ev(%"struct.std::_Rb_tree_const_iterator"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_const_iterator"** %1
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %2, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE4sizeEv(%"class.std::vector.9"* %this) #5 align 2 {
  %1 = alloca %"class.std::vector.9"*, align 8
  store %"class.std::vector.9"* %this, %"class.std::vector.9"** %1, align 8
  %2 = load %"class.std::vector.9"** %1
  %3 = bitcast %"class.std::vector.9"* %2 to %"struct.std::_Vector_base.10"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base.10"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %4, i32 0, i32 1
  %6 = load %"class.std::set"** %5, align 8
  %7 = bitcast %"class.std::vector.9"* %2 to %"struct.std::_Vector_base.10"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base.10"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %8, i32 0, i32 0
  %10 = load %"class.std::set"** %9, align 8
  %11 = ptrtoint %"class.std::set"* %6 to i64
  %12 = ptrtoint %"class.std::set"* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 48
  ret i64 %14
}

declare %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"*, i8*) #0

declare %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIiSt4lessIiESaIiEE5beginEv(%"class.std::set"* %this) #2 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %2 = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %this, %"class.std::set"** %2, align 8
  %3 = load %"class.std::set"** %2
  %4 = getelementptr inbounds %"class.std::set"* %3, i32 0, i32 0
  %5 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5beginEv(%"class.std::_Rb_tree"* %4)
  %6 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %5, %"struct.std::_Rb_tree_node_base"** %6
  %7 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %1, i32 0, i32 0
  %8 = load %"struct.std::_Rb_tree_node_base"** %7
  ret %"struct.std::_Rb_tree_node_base"* %8
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorIiEneERKS0_(%"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"* %__x) #5 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %1, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %__x, %"struct.std::_Rb_tree_const_iterator"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_const_iterator"** %1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = load %"struct.std::_Rb_tree_const_iterator"** %2, align 8
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %6, i32 0, i32 0
  %8 = load %"struct.std::_Rb_tree_node_base"** %7, align 8
  %9 = icmp ne %"struct.std::_Rb_tree_node_base"* %5, %8
  ret i1 %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNKSt23_Rb_tree_const_iteratorIiEdeEv(%"struct.std::_Rb_tree_const_iterator"* %this) #5 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_const_iterator"** %1
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %2, i32 0, i32 0
  %4 = load %"struct.std::_Rb_tree_node_base"** %3, align 8
  %5 = bitcast %"struct.std::_Rb_tree_node_base"* %4 to %"struct.std::_Rb_tree_node"*
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node"* %5, i32 0, i32 1
  ret i32* %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_const_iterator"* @_ZNSt23_Rb_tree_const_iteratorIiEppEv(%"struct.std::_Rb_tree_const_iterator"* %this) #5 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_const_iterator"** %1
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %2, i32 0, i32 0
  %4 = load %"struct.std::_Rb_tree_node_base"** %3, align 8
  %5 = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %4) #13
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %2, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %5, %"struct.std::_Rb_tree_node_base"** %6, align 8
  ret %"struct.std::_Rb_tree_const_iterator"* %2
}

; Function Attrs: uwtable
define void @_Z9print_setSt23_Rb_tree_const_iteratorIiES0_(%"struct.std::_Rb_tree_node_base"* %it.coerce, %"struct.std::_Rb_tree_node_base"* %end.coerce) #2 {
  %it = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %end = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %1 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %it, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %it.coerce, %"struct.std::_Rb_tree_node_base"** %1
  %2 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %end, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %end.coerce, %"struct.std::_Rb_tree_node_base"** %2
  br label %3

; <label>:3                                       ; preds = %10, %0
  %4 = call zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorIiEneERKS0_(%"struct.std::_Rb_tree_const_iterator"* %it, %"struct.std::_Rb_tree_const_iterator"* %end)
  br i1 %4, label %5, label %12

; <label>:5                                       ; preds = %3
  %6 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0))
  %7 = call i32* @_ZNKSt23_Rb_tree_const_iteratorIiEdeEv(%"struct.std::_Rb_tree_const_iterator"* %it)
  %8 = load i32* %7
  %9 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %6, i32 %8)
  br label %10

; <label>:10                                      ; preds = %5
  %11 = call %"struct.std::_Rb_tree_const_iterator"* @_ZNSt23_Rb_tree_const_iteratorIiEppEv(%"struct.std::_Rb_tree_const_iterator"* %it)
  br label %3

; <label>:12                                      ; preds = %3
  ret void
}

; Function Attrs: uwtable
define zeroext i1 @_ZN5graph19intersect_dominatorEv(%class.graph* %this) #2 align 2 {
  %1 = alloca %class.graph*, align 8
  %total = alloca i32, align 4
  %total_pred = alloca i32, align 4
  %pred = alloca i32, align 4
  %j = alloca i32, align 4
  %change_flag = alloca i8, align 1
  %i = alloca i32, align 4
  %result_set = alloca %"class.std::set", align 8
  %2 = alloca i8*
  %3 = alloca i32
  %4 = alloca %"struct.std::_Bit_reference", align 8
  %5 = alloca %"class.std::set", align 8
  %k = alloca i32, align 4
  %it = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %itend = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %temp = alloca %"class.std::set", align 8
  %temp1 = alloca %"class.std::set", align 8
  %6 = alloca %"struct.std::_Bit_reference", align 8
  %7 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %8 = alloca %"class.std::set", align 8
  %9 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %10 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %11 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %12 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %13 = alloca %"class.std::insert_iterator", align 8
  %14 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %15 = alloca %"class.std::insert_iterator", align 8
  %16 = alloca %"struct.std::pair", align 8
  %17 = alloca %"struct.std::_Bit_reference", align 8
  store %class.graph* %this, %class.graph** %1, align 8
  %18 = load %class.graph** %1
  %19 = getelementptr inbounds %class.graph* %18, i32 0, i32 0
  %20 = call i64 @_ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv(%"class.std::vector"* %19)
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %total, align 4
  store i8 0, i8* %change_flag, align 1
  %22 = getelementptr inbounds %class.graph* %18, i32 0, i32 6
  %23 = load i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  store i32 0, i32* %i, align 4
  br label %25

; <label>:25                                      ; preds = %252, %0
  %26 = load i32* %i, align 4
  %27 = load i32* %total, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %257

; <label>:29                                      ; preds = %25
  call void @_ZNSt3setIiSt4lessIiESaIiEEC2Ev(%"class.std::set"* %result_set)
  %30 = getelementptr inbounds %class.graph* %18, i32 0, i32 0
  %31 = load i32* %i, align 4
  %32 = sext i32 %31 to i64
  %33 = invoke %"class.std::vector.0"* @_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm(%"class.std::vector"* %30, i64 %32)
          to label %34 unwind label %79

; <label>:34                                      ; preds = %29
  %35 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %33)
          to label %36 unwind label %79

; <label>:36                                      ; preds = %34
  %37 = trunc i64 %35 to i32
  store i32 %37, i32* %total_pred, align 4
  store i32 0, i32* %j, align 4
  br label %38

; <label>:38                                      ; preds = %89, %36
  %39 = load i32* %j, align 4
  %40 = load i32* %total_pred, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %92

; <label>:42                                      ; preds = %38
  %43 = getelementptr inbounds %class.graph* %18, i32 0, i32 1
  %44 = getelementptr inbounds %class.graph* %18, i32 0, i32 0
  %45 = load i32* %i, align 4
  %46 = sext i32 %45 to i64
  %47 = invoke %"class.std::vector.0"* @_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm(%"class.std::vector"* %44, i64 %46)
          to label %48 unwind label %79

; <label>:48                                      ; preds = %42
  %49 = load i32* %j, align 4
  %50 = sext i32 %49 to i64
  %51 = invoke i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %47, i64 %50)
          to label %52 unwind label %79

; <label>:52                                      ; preds = %48
  %53 = load i32* %51
  %54 = sext i32 %53 to i64
  %55 = invoke { i64*, i64 } @_ZNSt6vectorIbSaIbEEixEm(%"class.std::vector.5"* %43, i64 %54)
          to label %56 unwind label %79

; <label>:56                                      ; preds = %52
  %57 = bitcast %"struct.std::_Bit_reference"* %4 to { i64*, i64 }*
  %58 = getelementptr { i64*, i64 }* %57, i32 0, i32 0
  %59 = extractvalue { i64*, i64 } %55, 0
  store i64* %59, i64** %58, align 1
  %60 = getelementptr { i64*, i64 }* %57, i32 0, i32 1
  %61 = extractvalue { i64*, i64 } %55, 1
  store i64 %61, i64* %60, align 1
  %62 = invoke zeroext i1 @_ZNKSt14_Bit_referencecvbEv(%"struct.std::_Bit_reference"* %4)
          to label %63 unwind label %79

; <label>:63                                      ; preds = %56
  br i1 %62, label %64, label %88

; <label>:64                                      ; preds = %63
  %65 = getelementptr inbounds %class.graph* %18, i32 0, i32 0
  %66 = load i32* %i, align 4
  %67 = sext i32 %66 to i64
  %68 = invoke %"class.std::vector.0"* @_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm(%"class.std::vector"* %65, i64 %67)
          to label %69 unwind label %79

; <label>:69                                      ; preds = %64
  %70 = load i32* %j, align 4
  %71 = sext i32 %70 to i64
  %72 = invoke i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %68, i64 %71)
          to label %73 unwind label %79

; <label>:73                                      ; preds = %69
  %74 = load i32* %72
  invoke void @_ZN5graph18get_dominator_listEi(%"class.std::set"* sret %5, %class.graph* %18, i32 %74)
          to label %75 unwind label %79

; <label>:75                                      ; preds = %73
  %76 = invoke %"class.std::set"* @_ZNSt3setIiSt4lessIiESaIiEEaSERKS3_(%"class.std::set"* %result_set, %"class.std::set"* %5)
          to label %77 unwind label %83

; <label>:77                                      ; preds = %75
  invoke void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(%"class.std::set"* %5)
          to label %78 unwind label %79

; <label>:78                                      ; preds = %77
  br label %92

; <label>:79                                      ; preds = %244, %239, %236, %231, %230, %225, %221, %219, %209, %207, %198, %101, %100, %99, %77, %73, %69, %64, %56, %52, %48, %42, %34, %29
  %80 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %81 = extractvalue { i8*, i32 } %80, 0
  store i8* %81, i8** %2
  %82 = extractvalue { i8*, i32 } %80, 1
  store i32 %82, i32* %3
  br label %255

; <label>:83                                      ; preds = %75
  %84 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %85 = extractvalue { i8*, i32 } %84, 0
  store i8* %85, i8** %2
  %86 = extractvalue { i8*, i32 } %84, 1
  store i32 %86, i32* %3
  invoke void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(%"class.std::set"* %5)
          to label %87 unwind label %265

; <label>:87                                      ; preds = %83
  br label %255

; <label>:88                                      ; preds = %63
  br label %89

; <label>:89                                      ; preds = %88
  %90 = load i32* %j, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %j, align 4
  br label %38

; <label>:92                                      ; preds = %78, %38
  %93 = load i32* %j, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %k, align 4
  br label %95

; <label>:95                                      ; preds = %200, %92
  %96 = load i32* %k, align 4
  %97 = load i32* %total_pred, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %207

; <label>:99                                      ; preds = %95
  invoke void @_ZNSt23_Rb_tree_const_iteratorIiEC2Ev(%"struct.std::_Rb_tree_const_iterator"* %it)
          to label %100 unwind label %79

; <label>:100                                     ; preds = %99
  invoke void @_ZNSt23_Rb_tree_const_iteratorIiEC2Ev(%"struct.std::_Rb_tree_const_iterator"* %itend)
          to label %101 unwind label %79

; <label>:101                                     ; preds = %100
  invoke void @_ZNSt3setIiSt4lessIiESaIiEEC2Ev(%"class.std::set"* %temp)
          to label %102 unwind label %79

; <label>:102                                     ; preds = %101
  invoke void @_ZNSt3setIiSt4lessIiESaIiEEC2Ev(%"class.std::set"* %temp1)
          to label %103 unwind label %184

; <label>:103                                     ; preds = %102
  %104 = getelementptr inbounds %class.graph* %18, i32 0, i32 0
  %105 = load i32* %i, align 4
  %106 = sext i32 %105 to i64
  %107 = invoke %"class.std::vector.0"* @_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm(%"class.std::vector"* %104, i64 %106)
          to label %108 unwind label %188

; <label>:108                                     ; preds = %103
  %109 = load i32* %k, align 4
  %110 = sext i32 %109 to i64
  %111 = invoke i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %107, i64 %110)
          to label %112 unwind label %188

; <label>:112                                     ; preds = %108
  %113 = load i32* %111
  store i32 %113, i32* %pred, align 4
  %114 = getelementptr inbounds %class.graph* %18, i32 0, i32 1
  %115 = load i32* %pred, align 4
  %116 = sext i32 %115 to i64
  %117 = invoke { i64*, i64 } @_ZNSt6vectorIbSaIbEEixEm(%"class.std::vector.5"* %114, i64 %116)
          to label %118 unwind label %188

; <label>:118                                     ; preds = %112
  %119 = bitcast %"struct.std::_Bit_reference"* %6 to { i64*, i64 }*
  %120 = getelementptr { i64*, i64 }* %119, i32 0, i32 0
  %121 = extractvalue { i64*, i64 } %117, 0
  store i64* %121, i64** %120, align 1
  %122 = getelementptr { i64*, i64 }* %119, i32 0, i32 1
  %123 = extractvalue { i64*, i64 } %117, 1
  store i64 %123, i64* %122, align 1
  %124 = invoke zeroext i1 @_ZNKSt14_Bit_referencecvbEv(%"struct.std::_Bit_reference"* %6)
          to label %125 unwind label %188

; <label>:125                                     ; preds = %118
  br i1 %124, label %126, label %197

; <label>:126                                     ; preds = %125
  %127 = load i32* %pred, align 4
  %128 = invoke %"struct.std::_Rb_tree_node_base"* @_ZN5graph17get_end_dominatorEi(%class.graph* %18, i32 %127)
          to label %129 unwind label %188

; <label>:129                                     ; preds = %126
  %130 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %7, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %128, %"struct.std::_Rb_tree_node_base"** %130
  %131 = bitcast %"struct.std::_Rb_tree_const_iterator"* %itend to i8*
  %132 = bitcast %"struct.std::_Rb_tree_const_iterator"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %131, i8* %132, i64 8, i32 8, i1 false)
  %133 = load i32* %pred, align 4
  invoke void @_ZN5graph18get_dominator_listEi(%"class.std::set"* sret %8, %class.graph* %18, i32 %133)
          to label %134 unwind label %188

; <label>:134                                     ; preds = %129
  %135 = invoke %"class.std::set"* @_ZNSt3setIiSt4lessIiESaIiEEaSERKS3_(%"class.std::set"* %temp, %"class.std::set"* %8)
          to label %136 unwind label %192

; <label>:136                                     ; preds = %134
  invoke void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(%"class.std::set"* %8)
          to label %137 unwind label %188

; <label>:137                                     ; preds = %136
  %138 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIiSt4lessIiESaIiEE5beginEv(%"class.std::set"* %result_set)
          to label %139 unwind label %188

; <label>:139                                     ; preds = %137
  %140 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %9, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %138, %"struct.std::_Rb_tree_node_base"** %140
  %141 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIiSt4lessIiESaIiEE3endEv(%"class.std::set"* %result_set)
          to label %142 unwind label %188

; <label>:142                                     ; preds = %139
  %143 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %10, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %141, %"struct.std::_Rb_tree_node_base"** %143
  %144 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIiSt4lessIiESaIiEE5beginEv(%"class.std::set"* %temp)
          to label %145 unwind label %188

; <label>:145                                     ; preds = %142
  %146 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %11, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %144, %"struct.std::_Rb_tree_node_base"** %146
  %147 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIiSt4lessIiESaIiEE3endEv(%"class.std::set"* %temp)
          to label %148 unwind label %188

; <label>:148                                     ; preds = %145
  %149 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %12, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %147, %"struct.std::_Rb_tree_node_base"** %149
  %150 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIiSt4lessIiESaIiEE5beginEv(%"class.std::set"* %temp1)
          to label %151 unwind label %188

; <label>:151                                     ; preds = %148
  %152 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %14, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %150, %"struct.std::_Rb_tree_node_base"** %152
  %153 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %14, i32 0, i32 0
  %154 = load %"struct.std::_Rb_tree_node_base"** %153
  %155 = invoke { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* } @_ZSt8inserterISt3setIiSt4lessIiESaIiEESt23_Rb_tree_const_iteratorIiEESt15insert_iteratorIT_ERS8_T0_(%"class.std::set"* %temp1, %"struct.std::_Rb_tree_node_base"* %154)
          to label %156 unwind label %188

; <label>:156                                     ; preds = %151
  %157 = bitcast %"class.std::insert_iterator"* %13 to { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* }*
  %158 = getelementptr { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* }* %157, i32 0, i32 0
  %159 = extractvalue { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* } %155, 0
  store %"class.std::set"* %159, %"class.std::set"** %158, align 1
  %160 = getelementptr { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* }* %157, i32 0, i32 1
  %161 = extractvalue { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* } %155, 1
  store %"struct.std::_Rb_tree_node_base"* %161, %"struct.std::_Rb_tree_node_base"** %160, align 1
  %162 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %9, i32 0, i32 0
  %163 = load %"struct.std::_Rb_tree_node_base"** %162
  %164 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %10, i32 0, i32 0
  %165 = load %"struct.std::_Rb_tree_node_base"** %164
  %166 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %11, i32 0, i32 0
  %167 = load %"struct.std::_Rb_tree_node_base"** %166
  %168 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %12, i32 0, i32 0
  %169 = load %"struct.std::_Rb_tree_node_base"** %168
  %170 = bitcast %"class.std::insert_iterator"* %13 to { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* }*
  %171 = getelementptr { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* }* %170, i32 0, i32 0
  %172 = load %"class.std::set"** %171, align 1
  %173 = getelementptr { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* }* %170, i32 0, i32 1
  %174 = load %"struct.std::_Rb_tree_node_base"** %173, align 1
  %175 = invoke { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* } @_ZSt16set_intersectionISt23_Rb_tree_const_iteratorIiES1_St15insert_iteratorISt3setIiSt4lessIiESaIiEEEET1_T_SA_T0_SB_S9_(%"struct.std::_Rb_tree_node_base"* %163, %"struct.std::_Rb_tree_node_base"* %165, %"struct.std::_Rb_tree_node_base"* %167, %"struct.std::_Rb_tree_node_base"* %169, %"class.std::set"* %172, %"struct.std::_Rb_tree_node_base"* %174)
          to label %176 unwind label %188

; <label>:176                                     ; preds = %156
  %177 = bitcast %"class.std::insert_iterator"* %15 to { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* }*
  %178 = getelementptr { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* }* %177, i32 0, i32 0
  %179 = extractvalue { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* } %175, 0
  store %"class.std::set"* %179, %"class.std::set"** %178, align 1
  %180 = getelementptr { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* }* %177, i32 0, i32 1
  %181 = extractvalue { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* } %175, 1
  store %"struct.std::_Rb_tree_node_base"* %181, %"struct.std::_Rb_tree_node_base"** %180, align 1
  %182 = invoke %"class.std::set"* @_ZNSt3setIiSt4lessIiESaIiEEaSERKS3_(%"class.std::set"* %result_set, %"class.std::set"* %temp1)
          to label %183 unwind label %188

; <label>:183                                     ; preds = %176
  br label %197

; <label>:184                                     ; preds = %197, %102
  %185 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %186 = extractvalue { i8*, i32 } %185, 0
  store i8* %186, i8** %2
  %187 = extractvalue { i8*, i32 } %185, 1
  store i32 %187, i32* %3
  br label %205

; <label>:188                                     ; preds = %176, %156, %151, %148, %145, %142, %139, %137, %136, %129, %126, %118, %112, %108, %103
  %189 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %190 = extractvalue { i8*, i32 } %189, 0
  store i8* %190, i8** %2
  %191 = extractvalue { i8*, i32 } %189, 1
  store i32 %191, i32* %3
  br label %203

; <label>:192                                     ; preds = %134
  %193 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %194 = extractvalue { i8*, i32 } %193, 0
  store i8* %194, i8** %2
  %195 = extractvalue { i8*, i32 } %193, 1
  store i32 %195, i32* %3
  invoke void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(%"class.std::set"* %8)
          to label %196 unwind label %265

; <label>:196                                     ; preds = %192
  br label %203

; <label>:197                                     ; preds = %183, %125
  invoke void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(%"class.std::set"* %temp1)
          to label %198 unwind label %184

; <label>:198                                     ; preds = %197
  invoke void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(%"class.std::set"* %temp)
          to label %199 unwind label %79

; <label>:199                                     ; preds = %198
  br label %200

; <label>:200                                     ; preds = %199
  %201 = load i32* %k, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %k, align 4
  br label %95

; <label>:203                                     ; preds = %196, %188
  invoke void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(%"class.std::set"* %temp1)
          to label %204 unwind label %265

; <label>:204                                     ; preds = %203
  br label %205

; <label>:205                                     ; preds = %204, %184
  invoke void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(%"class.std::set"* %temp)
          to label %206 unwind label %265

; <label>:206                                     ; preds = %205
  br label %255

; <label>:207                                     ; preds = %95
  %208 = invoke { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt3setIiSt4lessIiESaIiEE6insertERKi(%"class.std::set"* %result_set, i32* %i)
          to label %209 unwind label %79

; <label>:209                                     ; preds = %207
  %210 = bitcast %"struct.std::pair"* %16 to { %"struct.std::_Rb_tree_node_base"*, i8 }*
  %211 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %210, i32 0, i32 0
  %212 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %208, 0
  store %"struct.std::_Rb_tree_node_base"* %212, %"struct.std::_Rb_tree_node_base"** %211, align 1
  %213 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %210, i32 0, i32 1
  %214 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %208, 1
  store i8 %214, i8* %213, align 1
  %215 = getelementptr inbounds %class.graph* %18, i32 0, i32 2
  %216 = load i32* %i, align 4
  %217 = sext i32 %216 to i64
  %218 = invoke %"class.std::set"* @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EEixEm(%"class.std::vector.9"* %215, i64 %217)
          to label %219 unwind label %79

; <label>:219                                     ; preds = %209
  %220 = invoke i64 @_ZNKSt3setIiSt4lessIiESaIiEE4sizeEv(%"class.std::set"* %218)
          to label %221 unwind label %79

; <label>:221                                     ; preds = %219
  %222 = invoke i64 @_ZNKSt3setIiSt4lessIiESaIiEE4sizeEv(%"class.std::set"* %result_set)
          to label %223 unwind label %79

; <label>:223                                     ; preds = %221
  %224 = icmp ne i64 %220, %222
  br i1 %224, label %225, label %239

; <label>:225                                     ; preds = %223
  store i8 1, i8* %change_flag, align 1
  %226 = getelementptr inbounds %class.graph* %18, i32 0, i32 2
  %227 = load i32* %i, align 4
  %228 = sext i32 %227 to i64
  %229 = invoke %"class.std::set"* @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EEixEm(%"class.std::vector.9"* %226, i64 %228)
          to label %230 unwind label %79

; <label>:230                                     ; preds = %225
  invoke void @_ZNSt3setIiSt4lessIiESaIiEE5clearEv(%"class.std::set"* %229)
          to label %231 unwind label %79

; <label>:231                                     ; preds = %230
  %232 = getelementptr inbounds %class.graph* %18, i32 0, i32 2
  %233 = load i32* %i, align 4
  %234 = sext i32 %233 to i64
  %235 = invoke %"class.std::set"* @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EEixEm(%"class.std::vector.9"* %232, i64 %234)
          to label %236 unwind label %79

; <label>:236                                     ; preds = %231
  %237 = invoke %"class.std::set"* @_ZNSt3setIiSt4lessIiESaIiEEaSERKS3_(%"class.std::set"* %235, %"class.std::set"* %result_set)
          to label %238 unwind label %79

; <label>:238                                     ; preds = %236
  br label %239

; <label>:239                                     ; preds = %238, %223
  %240 = getelementptr inbounds %class.graph* %18, i32 0, i32 1
  %241 = load i32* %i, align 4
  %242 = sext i32 %241 to i64
  %243 = invoke { i64*, i64 } @_ZNSt6vectorIbSaIbEEixEm(%"class.std::vector.5"* %240, i64 %242)
          to label %244 unwind label %79

; <label>:244                                     ; preds = %239
  %245 = bitcast %"struct.std::_Bit_reference"* %17 to { i64*, i64 }*
  %246 = getelementptr { i64*, i64 }* %245, i32 0, i32 0
  %247 = extractvalue { i64*, i64 } %243, 0
  store i64* %247, i64** %246, align 1
  %248 = getelementptr { i64*, i64 }* %245, i32 0, i32 1
  %249 = extractvalue { i64*, i64 } %243, 1
  store i64 %249, i64* %248, align 1
  %250 = invoke %"struct.std::_Bit_reference"* @_ZNSt14_Bit_referenceaSEb(%"struct.std::_Bit_reference"* %17, i1 zeroext true)
          to label %251 unwind label %79

; <label>:251                                     ; preds = %244
  call void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(%"class.std::set"* %result_set)
  br label %252

; <label>:252                                     ; preds = %251
  %253 = load i32* %i, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %i, align 4
  br label %25

; <label>:255                                     ; preds = %206, %87, %79
  invoke void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(%"class.std::set"* %result_set)
          to label %256 unwind label %265

; <label>:256                                     ; preds = %255
  br label %260

; <label>:257                                     ; preds = %25
  %258 = load i8* %change_flag, align 1
  %259 = trunc i8 %258 to i1
  ret i1 %259

; <label>:260                                     ; preds = %256
  %261 = load i8** %2
  %262 = load i32* %3
  %263 = insertvalue { i8*, i32 } undef, i8* %261, 0
  %264 = insertvalue { i8*, i32 } %263, i32 %262, 1
  resume { i8*, i32 } %264

; <label>:265                                     ; preds = %255, %205, %203, %192, %83
  %266 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %267 = extractvalue { i8*, i32 } %266, 0
  call void @__clang_call_terminate(i8* %267) #12
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv(%"class.std::vector"* %this) #5 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %4, i32 0, i32 1
  %6 = load %"class.std::vector.0"** %5, align 8
  %7 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %8, i32 0, i32 0
  %10 = load %"class.std::vector.0"** %9, align 8
  %11 = ptrtoint %"class.std::vector.0"* %6 to i64
  %12 = ptrtoint %"class.std::vector.0"* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 24
  ret i64 %14
}

; Function Attrs: uwtable
define linkonce_odr { i64*, i64 } @_ZNSt6vectorIbSaIbEEixEm(%"class.std::vector.5"* %this, i64 %__n) #2 align 2 {
  %1 = alloca %"struct.std::_Bit_reference", align 8
  %2 = alloca %"class.std::vector.5"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %"struct.std::_Bit_iterator", align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %2, align 8
  store i64 %__n, i64* %3, align 8
  %5 = load %"class.std::vector.5"** %2
  %6 = bitcast %"class.std::vector.5"* %5 to %"struct.std::_Bvector_base"*
  %7 = getelementptr inbounds %"struct.std::_Bvector_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %7, i32 0, i32 0
  %9 = bitcast %"struct.std::_Bit_iterator"* %8 to %"struct.std::_Bit_iterator_base"*
  %10 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %9, i32 0, i32 0
  %11 = load i64** %10, align 8
  %12 = load i64* %3, align 8
  %13 = udiv i64 %12, 64
  %14 = getelementptr inbounds i64* %11, i64 %13
  %15 = load i64* %3, align 8
  %16 = urem i64 %15, 64
  %17 = trunc i64 %16 to i32
  call void @_ZNSt13_Bit_iteratorC2EPmj(%"struct.std::_Bit_iterator"* %4, i64* %14, i32 %17)
  %18 = call { i64*, i64 } @_ZNKSt13_Bit_iteratordeEv(%"struct.std::_Bit_iterator"* %4)
  %19 = bitcast %"struct.std::_Bit_reference"* %1 to { i64*, i64 }*
  %20 = getelementptr { i64*, i64 }* %19, i32 0, i32 0
  %21 = extractvalue { i64*, i64 } %18, 0
  store i64* %21, i64** %20, align 1
  %22 = getelementptr { i64*, i64 }* %19, i32 0, i32 1
  %23 = extractvalue { i64*, i64 } %18, 1
  store i64 %23, i64* %22, align 1
  %24 = bitcast %"struct.std::_Bit_reference"* %1 to { i64*, i64 }*
  %25 = load { i64*, i64 }* %24, align 1
  ret { i64*, i64 } %25
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt14_Bit_referencecvbEv(%"struct.std::_Bit_reference"* %this) #5 align 2 {
  %1 = alloca %"struct.std::_Bit_reference"*, align 8
  store %"struct.std::_Bit_reference"* %this, %"struct.std::_Bit_reference"** %1, align 8
  %2 = load %"struct.std::_Bit_reference"** %1
  %3 = getelementptr inbounds %"struct.std::_Bit_reference"* %2, i32 0, i32 0
  %4 = load i64** %3, align 8
  %5 = load i64* %4, align 8
  %6 = getelementptr inbounds %"struct.std::_Bit_reference"* %2, i32 0, i32 1
  %7 = load i64* %6, align 8
  %8 = and i64 %5, %7
  %9 = icmp ne i64 %8, 0
  %10 = xor i1 %9, true
  %11 = xor i1 %10, true
  ret i1 %11
}

; Function Attrs: uwtable
define linkonce_odr %"class.std::set"* @_ZNSt3setIiSt4lessIiESaIiEEaSERKS3_(%"class.std::set"* %this, %"class.std::set"* %__x) #2 align 2 {
  %1 = alloca %"class.std::set"*, align 8
  %2 = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %this, %"class.std::set"** %1, align 8
  store %"class.std::set"* %__x, %"class.std::set"** %2, align 8
  %3 = load %"class.std::set"** %1
  %4 = getelementptr inbounds %"class.std::set"* %3, i32 0, i32 0
  %5 = load %"class.std::set"** %2, align 8
  %6 = getelementptr inbounds %"class.std::set"* %5, i32 0, i32 0
  %7 = call %"class.std::_Rb_tree"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEEaSERKS5_(%"class.std::_Rb_tree"* %4, %"class.std::_Rb_tree"* %6)
  ret %"class.std::set"* %3
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN5graph18get_dominator_listEi(%"class.std::set"* noalias sret %agg.result, %class.graph* %this, i32 %i) #2 align 2 {
  %1 = alloca %class.graph*, align 8
  %2 = alloca i32, align 4
  store %class.graph* %this, %class.graph** %1, align 8
  store i32 %i, i32* %2, align 4
  %3 = load %class.graph** %1
  %4 = getelementptr inbounds %class.graph* %3, i32 0, i32 2
  %5 = load i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = call %"class.std::set"* @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EEixEm(%"class.std::vector.9"* %4, i64 %6)
  call void @_ZNSt3setIiSt4lessIiESaIiEEC2ERKS3_(%"class.std::set"* %agg.result, %"class.std::set"* %7)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZN5graph17get_end_dominatorEi(%class.graph* %this, i32 %i) #2 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %2 = alloca %class.graph*, align 8
  %3 = alloca i32, align 4
  store %class.graph* %this, %class.graph** %2, align 8
  store i32 %i, i32* %3, align 4
  %4 = load %class.graph** %2
  %5 = getelementptr inbounds %class.graph* %4, i32 0, i32 2
  %6 = load i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = call %"class.std::set"* @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EEixEm(%"class.std::vector.9"* %5, i64 %7)
  %9 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIiSt4lessIiESaIiEE3endEv(%"class.std::set"* %8)
  %10 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"** %10
  %11 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %1, i32 0, i32 0
  %12 = load %"struct.std::_Rb_tree_node_base"** %11
  ret %"struct.std::_Rb_tree_node_base"* %12
}

; Function Attrs: uwtable
define linkonce_odr { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* } @_ZSt16set_intersectionISt23_Rb_tree_const_iteratorIiES1_St15insert_iteratorISt3setIiSt4lessIiESaIiEEEET1_T_SA_T0_SB_S9_(%"struct.std::_Rb_tree_node_base"* %__first1.coerce, %"struct.std::_Rb_tree_node_base"* %__last1.coerce, %"struct.std::_Rb_tree_node_base"* %__first2.coerce, %"struct.std::_Rb_tree_node_base"* %__last2.coerce, %"class.std::set"* %__result.coerce0, %"struct.std::_Rb_tree_node_base"* %__result.coerce1) #2 {
  %1 = alloca %"class.std::insert_iterator", align 8
  %__first1 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %__last1 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %__first2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %__last2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %__result = alloca %"class.std::insert_iterator", align 8
  %2 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %__first1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__first1.coerce, %"struct.std::_Rb_tree_node_base"** %2
  %3 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %__last1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__last1.coerce, %"struct.std::_Rb_tree_node_base"** %3
  %4 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %__first2, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__first2.coerce, %"struct.std::_Rb_tree_node_base"** %4
  %5 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %__last2, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__last2.coerce, %"struct.std::_Rb_tree_node_base"** %5
  %6 = bitcast %"class.std::insert_iterator"* %__result to { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* }*
  %7 = getelementptr { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* }* %6, i32 0, i32 0
  store %"class.std::set"* %__result.coerce0, %"class.std::set"** %7
  %8 = getelementptr { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* }* %6, i32 0, i32 1
  store %"struct.std::_Rb_tree_node_base"* %__result.coerce1, %"struct.std::_Rb_tree_node_base"** %8
  br label %9

; <label>:9                                       ; preds = %39, %0
  %10 = call zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorIiEneERKS0_(%"struct.std::_Rb_tree_const_iterator"* %__first1, %"struct.std::_Rb_tree_const_iterator"* %__last1)
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %9
  %12 = call zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorIiEneERKS0_(%"struct.std::_Rb_tree_const_iterator"* %__first2, %"struct.std::_Rb_tree_const_iterator"* %__last2)
  br label %13

; <label>:13                                      ; preds = %11, %9
  %14 = phi i1 [ false, %9 ], [ %12, %11 ]
  br i1 %14, label %15, label %40

; <label>:15                                      ; preds = %13
  %16 = call i32* @_ZNKSt23_Rb_tree_const_iteratorIiEdeEv(%"struct.std::_Rb_tree_const_iterator"* %__first1)
  %17 = load i32* %16
  %18 = call i32* @_ZNKSt23_Rb_tree_const_iteratorIiEdeEv(%"struct.std::_Rb_tree_const_iterator"* %__first2)
  %19 = load i32* %18
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %23

; <label>:21                                      ; preds = %15
  %22 = call %"struct.std::_Rb_tree_const_iterator"* @_ZNSt23_Rb_tree_const_iteratorIiEppEv(%"struct.std::_Rb_tree_const_iterator"* %__first1)
  br label %39

; <label>:23                                      ; preds = %15
  %24 = call i32* @_ZNKSt23_Rb_tree_const_iteratorIiEdeEv(%"struct.std::_Rb_tree_const_iterator"* %__first2)
  %25 = load i32* %24
  %26 = call i32* @_ZNKSt23_Rb_tree_const_iteratorIiEdeEv(%"struct.std::_Rb_tree_const_iterator"* %__first1)
  %27 = load i32* %26
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %31

; <label>:29                                      ; preds = %23
  %30 = call %"struct.std::_Rb_tree_const_iterator"* @_ZNSt23_Rb_tree_const_iteratorIiEppEv(%"struct.std::_Rb_tree_const_iterator"* %__first2)
  br label %38

; <label>:31                                      ; preds = %23
  %32 = call %"class.std::insert_iterator"* @_ZNSt15insert_iteratorISt3setIiSt4lessIiESaIiEEEdeEv(%"class.std::insert_iterator"* %__result)
  %33 = call i32* @_ZNKSt23_Rb_tree_const_iteratorIiEdeEv(%"struct.std::_Rb_tree_const_iterator"* %__first1)
  %34 = call %"class.std::insert_iterator"* @_ZNSt15insert_iteratorISt3setIiSt4lessIiESaIiEEEaSERKi(%"class.std::insert_iterator"* %32, i32* %33)
  %35 = call %"struct.std::_Rb_tree_const_iterator"* @_ZNSt23_Rb_tree_const_iteratorIiEppEv(%"struct.std::_Rb_tree_const_iterator"* %__first1)
  %36 = call %"struct.std::_Rb_tree_const_iterator"* @_ZNSt23_Rb_tree_const_iteratorIiEppEv(%"struct.std::_Rb_tree_const_iterator"* %__first2)
  %37 = call %"class.std::insert_iterator"* @_ZNSt15insert_iteratorISt3setIiSt4lessIiESaIiEEEppEv(%"class.std::insert_iterator"* %__result)
  br label %38

; <label>:38                                      ; preds = %31, %29
  br label %39

; <label>:39                                      ; preds = %38, %21
  br label %9

; <label>:40                                      ; preds = %13
  %41 = bitcast %"class.std::insert_iterator"* %1 to i8*
  %42 = bitcast %"class.std::insert_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 16, i32 8, i1 false)
  %43 = bitcast %"class.std::insert_iterator"* %1 to { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* }*
  %44 = load { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* }* %43, align 1
  ret { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* } %44
}

; Function Attrs: inlinehint uwtable
define linkonce_odr { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* } @_ZSt8inserterISt3setIiSt4lessIiESaIiEESt23_Rb_tree_const_iteratorIiEESt15insert_iteratorIT_ERS8_T0_(%"class.std::set"* %__x, %"struct.std::_Rb_tree_node_base"* %__i.coerce) #3 {
  %1 = alloca %"class.std::insert_iterator", align 8
  %__i = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %2 = alloca %"class.std::set"*, align 8
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %__i, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__i.coerce, %"struct.std::_Rb_tree_node_base"** %4
  store %"class.std::set"* %__x, %"class.std::set"** %2, align 8
  %5 = load %"class.std::set"** %2, align 8
  %6 = bitcast %"struct.std::_Rb_tree_const_iterator"* %3 to i8*
  %7 = bitcast %"struct.std::_Rb_tree_const_iterator"* %__i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %3, i32 0, i32 0
  %9 = load %"struct.std::_Rb_tree_node_base"** %8
  call void @_ZNSt15insert_iteratorISt3setIiSt4lessIiESaIiEEEC2ERS4_St23_Rb_tree_const_iteratorIiE(%"class.std::insert_iterator"* %1, %"class.std::set"* %5, %"struct.std::_Rb_tree_node_base"* %9)
  %10 = bitcast %"class.std::insert_iterator"* %1 to { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* }*
  %11 = load { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* }* %10, align 1
  ret { %"class.std::set"*, %"struct.std::_Rb_tree_node_base"* } %11
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt3setIiSt4lessIiESaIiEE4sizeEv(%"class.std::set"* %this) #5 align 2 {
  %1 = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %this, %"class.std::set"** %1, align 8
  %2 = load %"class.std::set"** %1
  %3 = getelementptr inbounds %"class.std::set"* %2, i32 0, i32 0
  %4 = call i64 @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE4sizeEv(%"class.std::_Rb_tree"* %3)
  ret i64 %4
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt3setIiSt4lessIiESaIiEE5clearEv(%"class.std::set"* %this) #2 align 2 {
  %1 = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %this, %"class.std::set"** %1, align 8
  %2 = load %"class.std::set"** %1
  %3 = getelementptr inbounds %"class.std::set"* %2, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5clearEv(%"class.std::_Rb_tree"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Bit_reference"* @_ZNSt14_Bit_referenceaSEb(%"struct.std::_Bit_reference"* %this, i1 zeroext %__x) #5 align 2 {
  %1 = alloca %"struct.std::_Bit_reference"*, align 8
  %2 = alloca i8, align 1
  store %"struct.std::_Bit_reference"* %this, %"struct.std::_Bit_reference"** %1, align 8
  %3 = zext i1 %__x to i8
  store i8 %3, i8* %2, align 1
  %4 = load %"struct.std::_Bit_reference"** %1
  %5 = load i8* %2, align 1
  %6 = trunc i8 %5 to i1
  br i1 %6, label %7, label %14

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"struct.std::_Bit_reference"* %4, i32 0, i32 1
  %9 = load i64* %8, align 8
  %10 = getelementptr inbounds %"struct.std::_Bit_reference"* %4, i32 0, i32 0
  %11 = load i64** %10, align 8
  %12 = load i64* %11, align 8
  %13 = or i64 %12, %9
  store i64 %13, i64* %11, align 8
  br label %22

; <label>:14                                      ; preds = %0
  %15 = getelementptr inbounds %"struct.std::_Bit_reference"* %4, i32 0, i32 1
  %16 = load i64* %15, align 8
  %17 = xor i64 %16, -1
  %18 = getelementptr inbounds %"struct.std::_Bit_reference"* %4, i32 0, i32 0
  %19 = load i64** %18, align 8
  %20 = load i64* %19, align 8
  %21 = and i64 %20, %17
  store i64 %21, i64* %19, align 8
  br label %22

; <label>:22                                      ; preds = %14, %7
  ret %"struct.std::_Bit_reference"* %4
}

; Function Attrs: uwtable
define void @_ZN5graph14find_dominatorEii(%class.graph* %this, i32 %start, i32 %end) #2 align 2 {
  %1 = alloca %class.graph*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %change_flag = alloca i8, align 1
  %total = alloca i32, align 4
  store %class.graph* %this, %class.graph** %1, align 8
  store i32 %start, i32* %2, align 4
  store i32 %end, i32* %3, align 4
  %4 = load %class.graph** %1
  store i8 0, i8* %change_flag, align 1
  %5 = load i32* %2, align 4
  call void @_ZN5graph11create_edgeEii(%class.graph* %4, i32 %5, i32 0)
  %6 = load i32* %3, align 4
  %7 = add nsw i32 %6, 1
  %8 = load i32* %3, align 4
  call void @_ZN5graph11create_edgeEii(%class.graph* %4, i32 %7, i32 %8)
  %9 = getelementptr inbounds %class.graph* %4, i32 0, i32 0
  %10 = call i64 @_ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv(%"class.std::vector"* %9)
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %total, align 4
  br label %12

; <label>:12                                      ; preds = %15, %0
  %13 = call zeroext i1 @_ZN5graph19intersect_dominatorEv(%class.graph* %4)
  %14 = zext i1 %13 to i8
  store i8 %14, i8* %change_flag, align 1
  br label %15

; <label>:15                                      ; preds = %12
  %16 = load i8* %change_flag, align 1
  %17 = trunc i8 %16 to i1
  br i1 %17, label %12, label %18

; <label>:18                                      ; preds = %15
  ret void
}

; Function Attrs: uwtable
define void @_ZN5graph15add_loop_memberEii(%class.graph* %this, i32 %src, i32 %tail) #2 align 2 {
  %1 = alloca %class.graph*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %loop = alloca %"class.std::set", align 8
  %sizel = alloca i32, align 4
  %4 = alloca i8*
  %5 = alloca i32
  %flag = alloca %"class.std::vector.5", align 8
  %6 = alloca i8, align 1
  %7 = alloca %"class.std::allocator.18", align 1
  %itq = alloca %"class.std::queue", align 8
  %8 = alloca %"class.std::deque", align 8
  %i = alloca i32, align 4
  %elem = alloca i32, align 4
  %9 = alloca %"struct.std::pair", align 8
  %10 = alloca %"struct.std::pair", align 8
  %11 = alloca %"struct.std::_Bit_reference", align 8
  %12 = alloca %"struct.std::_Bit_reference", align 8
  %13 = alloca %"struct.std::_Bit_reference", align 8
  %14 = alloca %"struct.std::_Bit_reference", align 8
  %15 = alloca %"struct.std::pair", align 8
  store %class.graph* %this, %class.graph** %1, align 8
  store i32 %src, i32* %2, align 4
  store i32 %tail, i32* %3, align 4
  %16 = load %class.graph** %1
  call void @_ZNSt3setIiSt4lessIiESaIiEEC2Ev(%"class.std::set"* %loop)
  %17 = getelementptr inbounds %class.graph* %16, i32 0, i32 0
  %18 = invoke i64 @_ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv(%"class.std::vector"* %17)
          to label %19 unwind label %88

; <label>:19                                      ; preds = %0
  %20 = trunc i64 %18 to i32
  store i32 %20, i32* %sizel, align 4
  %21 = load i32* %sizel, align 4
  %22 = sext i32 %21 to i64
  store i8 0, i8* %6
  call void @_ZNSaIbEC2Ev(%"class.std::allocator.18"* %7) #1
  invoke void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(%"class.std::vector.5"* %flag, i64 %22, i8* %6, %"class.std::allocator.18"* %7)
          to label %23 unwind label %92

; <label>:23                                      ; preds = %19
  call void @_ZNSaIbED2Ev(%"class.std::allocator.18"* %7) #1
  invoke void @_ZNSt5dequeIiSaIiEEC2Ev(%"class.std::deque"* %8)
          to label %24 unwind label %96

; <label>:24                                      ; preds = %23
  invoke void @_ZNSt5queueIiSt5dequeIiSaIiEEEC2ERKS2_(%"class.std::queue"* %itq, %"class.std::deque"* %8)
          to label %25 unwind label %100

; <label>:25                                      ; preds = %24
  invoke void @_ZNSt5dequeIiSaIiEED2Ev(%"class.std::deque"* %8)
          to label %26 unwind label %96

; <label>:26                                      ; preds = %25
  %27 = invoke { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt3setIiSt4lessIiESaIiEE6insertERKi(%"class.std::set"* %loop, i32* %2)
          to label %28 unwind label %105

; <label>:28                                      ; preds = %26
  %29 = bitcast %"struct.std::pair"* %9 to { %"struct.std::_Rb_tree_node_base"*, i8 }*
  %30 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %29, i32 0, i32 0
  %31 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %27, 0
  store %"struct.std::_Rb_tree_node_base"* %31, %"struct.std::_Rb_tree_node_base"** %30, align 1
  %32 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %29, i32 0, i32 1
  %33 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %27, 1
  store i8 %33, i8* %32, align 1
  %34 = invoke { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt3setIiSt4lessIiESaIiEE6insertERKi(%"class.std::set"* %loop, i32* %3)
          to label %35 unwind label %105

; <label>:35                                      ; preds = %28
  %36 = bitcast %"struct.std::pair"* %10 to { %"struct.std::_Rb_tree_node_base"*, i8 }*
  %37 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %36, i32 0, i32 0
  %38 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %34, 0
  store %"struct.std::_Rb_tree_node_base"* %38, %"struct.std::_Rb_tree_node_base"** %37, align 1
  %39 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %36, i32 0, i32 1
  %40 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %34, 1
  store i8 %40, i8* %39, align 1
  %41 = load i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = invoke { i64*, i64 } @_ZNSt6vectorIbSaIbEEixEm(%"class.std::vector.5"* %flag, i64 %42)
          to label %44 unwind label %105

; <label>:44                                      ; preds = %35
  %45 = bitcast %"struct.std::_Bit_reference"* %11 to { i64*, i64 }*
  %46 = getelementptr { i64*, i64 }* %45, i32 0, i32 0
  %47 = extractvalue { i64*, i64 } %43, 0
  store i64* %47, i64** %46, align 1
  %48 = getelementptr { i64*, i64 }* %45, i32 0, i32 1
  %49 = extractvalue { i64*, i64 } %43, 1
  store i64 %49, i64* %48, align 1
  %50 = invoke %"struct.std::_Bit_reference"* @_ZNSt14_Bit_referenceaSEb(%"struct.std::_Bit_reference"* %11, i1 zeroext true)
          to label %51 unwind label %105

; <label>:51                                      ; preds = %44
  %52 = load i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = invoke { i64*, i64 } @_ZNSt6vectorIbSaIbEEixEm(%"class.std::vector.5"* %flag, i64 %53)
          to label %55 unwind label %105

; <label>:55                                      ; preds = %51
  %56 = bitcast %"struct.std::_Bit_reference"* %12 to { i64*, i64 }*
  %57 = getelementptr { i64*, i64 }* %56, i32 0, i32 0
  %58 = extractvalue { i64*, i64 } %54, 0
  store i64* %58, i64** %57, align 1
  %59 = getelementptr { i64*, i64 }* %56, i32 0, i32 1
  %60 = extractvalue { i64*, i64 } %54, 1
  store i64 %60, i64* %59, align 1
  %61 = invoke %"struct.std::_Bit_reference"* @_ZNSt14_Bit_referenceaSEb(%"struct.std::_Bit_reference"* %12, i1 zeroext true)
          to label %62 unwind label %105

; <label>:62                                      ; preds = %55
  store i32 0, i32* %i, align 4
  br label %63

; <label>:63                                      ; preds = %85, %62
  %64 = load i32* %i, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %class.graph* %16, i32 0, i32 0
  %67 = load i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = invoke %"class.std::vector.0"* @_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm(%"class.std::vector"* %66, i64 %68)
          to label %70 unwind label %105

; <label>:70                                      ; preds = %63
  %71 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %69)
          to label %72 unwind label %105

; <label>:72                                      ; preds = %70
  %73 = icmp ult i64 %65, %71
  br i1 %73, label %74, label %109

; <label>:74                                      ; preds = %72
  %75 = getelementptr inbounds %class.graph* %16, i32 0, i32 0
  %76 = load i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = invoke %"class.std::vector.0"* @_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm(%"class.std::vector"* %75, i64 %77)
          to label %79 unwind label %105

; <label>:79                                      ; preds = %74
  %80 = load i32* %i, align 4
  %81 = sext i32 %80 to i64
  %82 = invoke i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %78, i64 %81)
          to label %83 unwind label %105

; <label>:83                                      ; preds = %79
  invoke void @_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi(%"class.std::queue"* %itq, i32* %82)
          to label %84 unwind label %105

; <label>:84                                      ; preds = %83
  br label %85

; <label>:85                                      ; preds = %84
  %86 = load i32* %i, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %i, align 4
  br label %63

; <label>:88                                      ; preds = %179, %0
  %89 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %90 = extractvalue { i8*, i32 } %89, 0
  store i8* %90, i8** %4
  %91 = extractvalue { i8*, i32 } %89, 1
  store i32 %91, i32* %5
  br label %184

; <label>:92                                      ; preds = %19
  %93 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %94 = extractvalue { i8*, i32 } %93, 0
  store i8* %94, i8** %4
  %95 = extractvalue { i8*, i32 } %93, 1
  store i32 %95, i32* %5
  call void @_ZNSaIbED2Ev(%"class.std::allocator.18"* %7) #1
  br label %184

; <label>:96                                      ; preds = %178, %25, %23
  %97 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %98 = extractvalue { i8*, i32 } %97, 0
  store i8* %98, i8** %4
  %99 = extractvalue { i8*, i32 } %97, 1
  store i32 %99, i32* %5
  br label %182

; <label>:100                                     ; preds = %24
  %101 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %102 = extractvalue { i8*, i32 } %101, 0
  store i8* %102, i8** %4
  %103 = extractvalue { i8*, i32 } %101, 1
  store i32 %103, i32* %5
  invoke void @_ZNSt5dequeIiSaIiEED2Ev(%"class.std::deque"* %8)
          to label %104 unwind label %191

; <label>:104                                     ; preds = %100
  br label %182

; <label>:105                                     ; preds = %176, %169, %165, %160, %156, %149, %141, %134, %130, %122, %118, %116, %114, %110, %83, %79, %74, %70, %63, %55, %51, %44, %35, %28, %26
  %106 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %107 = extractvalue { i8*, i32 } %106, 0
  store i8* %107, i8** %4
  %108 = extractvalue { i8*, i32 } %106, 1
  store i32 %108, i32* %5
  invoke void @_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev(%"class.std::queue"* %itq)
          to label %181 unwind label %191

; <label>:109                                     ; preds = %72
  br label %110

; <label>:110                                     ; preds = %175, %109
  %111 = invoke zeroext i1 @_ZNKSt5queueIiSt5dequeIiSaIiEEE5emptyEv(%"class.std::queue"* %itq)
          to label %112 unwind label %105

; <label>:112                                     ; preds = %110
  %113 = xor i1 %111, true
  br i1 %113, label %114, label %176

; <label>:114                                     ; preds = %112
  %115 = invoke i32* @_ZNSt5queueIiSt5dequeIiSaIiEEE5frontEv(%"class.std::queue"* %itq)
          to label %116 unwind label %105

; <label>:116                                     ; preds = %114
  %117 = load i32* %115
  store i32 %117, i32* %elem, align 4
  invoke void @_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv(%"class.std::queue"* %itq)
          to label %118 unwind label %105

; <label>:118                                     ; preds = %116
  %119 = load i32* %elem, align 4
  %120 = sext i32 %119 to i64
  %121 = invoke { i64*, i64 } @_ZNSt6vectorIbSaIbEEixEm(%"class.std::vector.5"* %flag, i64 %120)
          to label %122 unwind label %105

; <label>:122                                     ; preds = %118
  %123 = bitcast %"struct.std::_Bit_reference"* %13 to { i64*, i64 }*
  %124 = getelementptr { i64*, i64 }* %123, i32 0, i32 0
  %125 = extractvalue { i64*, i64 } %121, 0
  store i64* %125, i64** %124, align 1
  %126 = getelementptr { i64*, i64 }* %123, i32 0, i32 1
  %127 = extractvalue { i64*, i64 } %121, 1
  store i64 %127, i64* %126, align 1
  %128 = invoke zeroext i1 @_ZNKSt14_Bit_referencecvbEv(%"struct.std::_Bit_reference"* %13)
          to label %129 unwind label %105

; <label>:129                                     ; preds = %122
  br i1 %128, label %175, label %130

; <label>:130                                     ; preds = %129
  %131 = load i32* %elem, align 4
  %132 = sext i32 %131 to i64
  %133 = invoke { i64*, i64 } @_ZNSt6vectorIbSaIbEEixEm(%"class.std::vector.5"* %flag, i64 %132)
          to label %134 unwind label %105

; <label>:134                                     ; preds = %130
  %135 = bitcast %"struct.std::_Bit_reference"* %14 to { i64*, i64 }*
  %136 = getelementptr { i64*, i64 }* %135, i32 0, i32 0
  %137 = extractvalue { i64*, i64 } %133, 0
  store i64* %137, i64** %136, align 1
  %138 = getelementptr { i64*, i64 }* %135, i32 0, i32 1
  %139 = extractvalue { i64*, i64 } %133, 1
  store i64 %139, i64* %138, align 1
  %140 = invoke %"struct.std::_Bit_reference"* @_ZNSt14_Bit_referenceaSEb(%"struct.std::_Bit_reference"* %14, i1 zeroext true)
          to label %141 unwind label %105

; <label>:141                                     ; preds = %134
  %142 = invoke { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt3setIiSt4lessIiESaIiEE6insertERKi(%"class.std::set"* %loop, i32* %elem)
          to label %143 unwind label %105

; <label>:143                                     ; preds = %141
  %144 = bitcast %"struct.std::pair"* %15 to { %"struct.std::_Rb_tree_node_base"*, i8 }*
  %145 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %144, i32 0, i32 0
  %146 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %142, 0
  store %"struct.std::_Rb_tree_node_base"* %146, %"struct.std::_Rb_tree_node_base"** %145, align 1
  %147 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %144, i32 0, i32 1
  %148 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %142, 1
  store i8 %148, i8* %147, align 1
  store i32 0, i32* %i, align 4
  br label %149

; <label>:149                                     ; preds = %171, %143
  %150 = load i32* %i, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %class.graph* %16, i32 0, i32 0
  %153 = load i32* %elem, align 4
  %154 = sext i32 %153 to i64
  %155 = invoke %"class.std::vector.0"* @_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm(%"class.std::vector"* %152, i64 %154)
          to label %156 unwind label %105

; <label>:156                                     ; preds = %149
  %157 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %155)
          to label %158 unwind label %105

; <label>:158                                     ; preds = %156
  %159 = icmp ult i64 %151, %157
  br i1 %159, label %160, label %174

; <label>:160                                     ; preds = %158
  %161 = getelementptr inbounds %class.graph* %16, i32 0, i32 0
  %162 = load i32* %elem, align 4
  %163 = sext i32 %162 to i64
  %164 = invoke %"class.std::vector.0"* @_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm(%"class.std::vector"* %161, i64 %163)
          to label %165 unwind label %105

; <label>:165                                     ; preds = %160
  %166 = load i32* %i, align 4
  %167 = sext i32 %166 to i64
  %168 = invoke i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %164, i64 %167)
          to label %169 unwind label %105

; <label>:169                                     ; preds = %165
  invoke void @_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi(%"class.std::queue"* %itq, i32* %168)
          to label %170 unwind label %105

; <label>:170                                     ; preds = %169
  br label %171

; <label>:171                                     ; preds = %170
  %172 = load i32* %i, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %i, align 4
  br label %149

; <label>:174                                     ; preds = %158
  br label %175

; <label>:175                                     ; preds = %174, %129
  br label %110

; <label>:176                                     ; preds = %112
  %177 = getelementptr inbounds %class.graph* %16, i32 0, i32 3
  invoke void @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE9push_backERKS4_(%"class.std::vector.9"* %177, %"class.std::set"* %loop)
          to label %178 unwind label %105

; <label>:178                                     ; preds = %176
  invoke void @_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev(%"class.std::queue"* %itq)
          to label %179 unwind label %96

; <label>:179                                     ; preds = %178
  invoke void @_ZNSt6vectorIbSaIbEED2Ev(%"class.std::vector.5"* %flag)
          to label %180 unwind label %88

; <label>:180                                     ; preds = %179
  call void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(%"class.std::set"* %loop)
  ret void

; <label>:181                                     ; preds = %105
  br label %182

; <label>:182                                     ; preds = %181, %104, %96
  invoke void @_ZNSt6vectorIbSaIbEED2Ev(%"class.std::vector.5"* %flag)
          to label %183 unwind label %191

; <label>:183                                     ; preds = %182
  br label %184

; <label>:184                                     ; preds = %183, %92, %88
  invoke void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(%"class.std::set"* %loop)
          to label %185 unwind label %191

; <label>:185                                     ; preds = %184
  br label %186

; <label>:186                                     ; preds = %185
  %187 = load i8** %4
  %188 = load i32* %5
  %189 = insertvalue { i8*, i32 } undef, i8* %187, 0
  %190 = insertvalue { i8*, i32 } %189, i32 %188, 1
  resume { i8*, i32 } %190

; <label>:191                                     ; preds = %184, %182, %105, %100
  %192 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %193 = extractvalue { i8*, i32 } %192, 0
  call void @__clang_call_terminate(i8* %193) #12
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIbEC2Ev(%"class.std::allocator.18"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::allocator.18"*, align 8
  store %"class.std::allocator.18"* %this, %"class.std::allocator.18"** %1, align 8
  %2 = load %"class.std::allocator.18"** %1
  %3 = bitcast %"class.std::allocator.18"* %2 to %"class.__gnu_cxx::new_allocator.19"*
  call void @_ZN9__gnu_cxx13new_allocatorIbEC2Ev(%"class.__gnu_cxx::new_allocator.19"* %3) #1
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(%"class.std::vector.5"* %this, i64 %__n, i8* %__value, %"class.std::allocator.18"* %__a) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::vector.5"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::allocator.18"*, align 8
  %5 = alloca i8*
  %6 = alloca i32
  %7 = alloca i32, align 4
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store i8* %__value, i8** %3, align 8
  store %"class.std::allocator.18"* %__a, %"class.std::allocator.18"** %4, align 8
  %8 = load %"class.std::vector.5"** %1
  %9 = bitcast %"class.std::vector.5"* %8 to %"struct.std::_Bvector_base"*
  %10 = load %"class.std::allocator.18"** %4, align 8
  call void @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_(%"struct.std::_Bvector_base"* %9, %"class.std::allocator.18"* %10)
  %11 = load i64* %2, align 8
  invoke void @_ZNSt6vectorIbSaIbEE13_M_initializeEm(%"class.std::vector.5"* %8, i64 %11)
          to label %12 unwind label %28

; <label>:12                                      ; preds = %0
  %13 = bitcast %"class.std::vector.5"* %8 to %"struct.std::_Bvector_base"*
  %14 = getelementptr inbounds %"struct.std::_Bvector_base"* %13, i32 0, i32 0
  %15 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %14, i32 0, i32 0
  %16 = bitcast %"struct.std::_Bit_iterator"* %15 to %"struct.std::_Bit_iterator_base"*
  %17 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %16, i32 0, i32 0
  %18 = load i64** %17, align 8
  %19 = bitcast %"class.std::vector.5"* %8 to %"struct.std::_Bvector_base"*
  %20 = getelementptr inbounds %"struct.std::_Bvector_base"* %19, i32 0, i32 0
  %21 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %20, i32 0, i32 2
  %22 = load i64** %21, align 8
  %23 = load i8** %3, align 8
  %24 = load i8* %23, align 1
  %25 = trunc i8 %24 to i1
  %26 = select i1 %25, i32 -1, i32 0
  store i32 %26, i32* %7
  invoke void @_ZSt4fillIPmiEvT_S1_RKT0_(i64* %18, i64* %22, i32* %7)
          to label %27 unwind label %28

; <label>:27                                      ; preds = %12
  ret void

; <label>:28                                      ; preds = %12, %0
  %29 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %30 = extractvalue { i8*, i32 } %29, 0
  store i8* %30, i8** %5
  %31 = extractvalue { i8*, i32 } %29, 1
  store i32 %31, i32* %6
  %32 = bitcast %"class.std::vector.5"* %8 to %"struct.std::_Bvector_base"*
  invoke void @_ZNSt13_Bvector_baseISaIbEED2Ev(%"struct.std::_Bvector_base"* %32)
          to label %33 unwind label %39

; <label>:33                                      ; preds = %28
  br label %34

; <label>:34                                      ; preds = %33
  %35 = load i8** %5
  %36 = load i32* %6
  %37 = insertvalue { i8*, i32 } undef, i8* %35, 0
  %38 = insertvalue { i8*, i32 } %37, i32 %36, 1
  resume { i8*, i32 } %38

; <label>:39                                      ; preds = %28
  %40 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %41 = extractvalue { i8*, i32 } %40, 0
  call void @__clang_call_terminate(i8* %41) #12
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIbED2Ev(%"class.std::allocator.18"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::allocator.18"*, align 8
  store %"class.std::allocator.18"* %this, %"class.std::allocator.18"** %1, align 8
  %2 = load %"class.std::allocator.18"** %1
  %3 = bitcast %"class.std::allocator.18"* %2 to %"class.__gnu_cxx::new_allocator.19"*
  call void @_ZN9__gnu_cxx13new_allocatorIbED2Ev(%"class.__gnu_cxx::new_allocator.19"* %3) #1
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEEC2Ev(%"class.std::deque"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseIiSaIiEEC2Ev(%"class.std::_Deque_base"* %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5queueIiSt5dequeIiSaIiEEEC2ERKS2_(%"class.std::queue"* %this, %"class.std::deque"* %__c) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::queue"*, align 8
  %2 = alloca %"class.std::deque"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 8
  store %"class.std::deque"* %__c, %"class.std::deque"** %2, align 8
  %3 = load %"class.std::queue"** %1
  %4 = getelementptr inbounds %"class.std::queue"* %3, i32 0, i32 0
  %5 = load %"class.std::deque"** %2, align 8
  call void @_ZNSt5dequeIiSaIiEEC2ERKS1_(%"class.std::deque"* %4, %"class.std::deque"* %5)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEED2Ev(%"class.std::deque"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator", align 8
  %3 = alloca i8*
  %4 = alloca i32
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %6 = load %"class.std::deque"** %1
  invoke void @_ZNSt5dequeIiSaIiEE5beginEv(%"struct.std::_Deque_iterator"* sret %2, %"class.std::deque"* %6)
          to label %7 unwind label %14

; <label>:7                                       ; preds = %0
  invoke void @_ZNSt5dequeIiSaIiEE3endEv(%"struct.std::_Deque_iterator"* sret %5, %"class.std::deque"* %6)
          to label %8 unwind label %14

; <label>:8                                       ; preds = %7
  %9 = bitcast %"class.std::deque"* %6 to %"class.std::_Deque_base"*
  %10 = invoke %"class.std::allocator.2"* @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %9)
          to label %11 unwind label %14

; <label>:11                                      ; preds = %8
  invoke void @_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_(%"class.std::deque"* %6, %"struct.std::_Deque_iterator"* %2, %"struct.std::_Deque_iterator"* %5, %"class.std::allocator.2"* %10)
          to label %12 unwind label %14

; <label>:12                                      ; preds = %11
  %13 = bitcast %"class.std::deque"* %6 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* %13)
  ret void

; <label>:14                                      ; preds = %11, %8, %7, %0
  %15 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %3
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %4
  %18 = bitcast %"class.std::deque"* %6 to %"class.std::_Deque_base"*
  invoke void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* %18)
          to label %19 unwind label %25

; <label>:19                                      ; preds = %14
  br label %20

; <label>:20                                      ; preds = %19
  %21 = load i8** %3
  %22 = load i32* %4
  %23 = insertvalue { i8*, i32 } undef, i8* %21, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %22, 1
  resume { i8*, i32 } %24

; <label>:25                                      ; preds = %14
  %26 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %27 = extractvalue { i8*, i32 } %26, 0
  call void @__clang_call_terminate(i8* %27) #12
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi(%"class.std::queue"* %this, i32* %__x) #2 align 2 {
  %1 = alloca %"class.std::queue"*, align 8
  %2 = alloca i32*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 8
  store i32* %__x, i32** %2, align 8
  %3 = load %"class.std::queue"** %1
  %4 = getelementptr inbounds %"class.std::queue"* %3, i32 0, i32 0
  %5 = load i32** %2, align 8
  call void @_ZNSt5dequeIiSaIiEE9push_backERKi(%"class.std::deque"* %4, i32* %5)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZNKSt5queueIiSt5dequeIiSaIiEEE5emptyEv(%"class.std::queue"* %this) #2 align 2 {
  %1 = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 8
  %2 = load %"class.std::queue"** %1
  %3 = getelementptr inbounds %"class.std::queue"* %2, i32 0, i32 0
  %4 = call zeroext i1 @_ZNKSt5dequeIiSaIiEE5emptyEv(%"class.std::deque"* %3)
  ret i1 %4
}

; Function Attrs: uwtable
define linkonce_odr i32* @_ZNSt5queueIiSt5dequeIiSaIiEEE5frontEv(%"class.std::queue"* %this) #2 align 2 {
  %1 = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 8
  %2 = load %"class.std::queue"** %1
  %3 = getelementptr inbounds %"class.std::queue"* %2, i32 0, i32 0
  %4 = call i32* @_ZNSt5dequeIiSaIiEE5frontEv(%"class.std::deque"* %3)
  ret i32* %4
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv(%"class.std::queue"* %this) #2 align 2 {
  %1 = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 8
  %2 = load %"class.std::queue"** %1
  %3 = getelementptr inbounds %"class.std::queue"* %2, i32 0, i32 0
  call void @_ZNSt5dequeIiSaIiEE9pop_frontEv(%"class.std::deque"* %3)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev(%"class.std::queue"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::queue"*, align 8
  store %"class.std::queue"* %this, %"class.std::queue"** %1, align 8
  %2 = load %"class.std::queue"** %1
  %3 = getelementptr inbounds %"class.std::queue"* %2, i32 0, i32 0
  call void @_ZNSt5dequeIiSaIiEED2Ev(%"class.std::deque"* %3)
  ret void
}

; Function Attrs: uwtable
define void @_ZN5graph12natural_loopEv(%class.graph* %this) #2 align 2 {
  %1 = alloca %class.graph*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %lsize = alloca i32, align 4
  %size = alloca i32, align 4
  store %class.graph* %this, %class.graph** %1, align 8
  %2 = load %class.graph** %1
  %3 = getelementptr inbounds %class.graph* %2, i32 0, i32 0
  %4 = call i64 @_ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv(%"class.std::vector"* %3)
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* %size, align 4
  store i32 0, i32* %i, align 4
  br label %6

; <label>:6                                       ; preds = %47, %0
  %7 = load i32* %i, align 4
  %8 = load i32* %size, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %50

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %class.graph* %2, i32 0, i32 0
  %12 = load i32* %i, align 4
  %13 = sext i32 %12 to i64
  %14 = call %"class.std::vector.0"* @_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm(%"class.std::vector"* %11, i64 %13)
  %15 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %lsize, align 4
  store i32 0, i32* %j, align 4
  br label %17

; <label>:17                                      ; preds = %43, %10
  %18 = load i32* %j, align 4
  %19 = load i32* %lsize, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %46

; <label>:21                                      ; preds = %17
  %22 = load i32* %i, align 4
  %23 = getelementptr inbounds %class.graph* %2, i32 0, i32 0
  %24 = load i32* %i, align 4
  %25 = sext i32 %24 to i64
  %26 = call %"class.std::vector.0"* @_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm(%"class.std::vector"* %23, i64 %25)
  %27 = load i32* %j, align 4
  %28 = sext i32 %27 to i64
  %29 = call i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %26, i64 %28)
  %30 = load i32* %29
  %31 = call zeroext i1 @_ZN5graph15dominator_checkEii(%class.graph* %2, i32 %22, i32 %30)
  br i1 %31, label %32, label %42

; <label>:32                                      ; preds = %21
  %33 = load i32* %i, align 4
  %34 = getelementptr inbounds %class.graph* %2, i32 0, i32 0
  %35 = load i32* %i, align 4
  %36 = sext i32 %35 to i64
  %37 = call %"class.std::vector.0"* @_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm(%"class.std::vector"* %34, i64 %36)
  %38 = load i32* %j, align 4
  %39 = sext i32 %38 to i64
  %40 = call i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %37, i64 %39)
  %41 = load i32* %40
  call void @_ZN5graph15add_loop_memberEii(%class.graph* %2, i32 %33, i32 %41)
  br label %42

; <label>:42                                      ; preds = %32, %21
  br label %43

; <label>:43                                      ; preds = %42
  %44 = load i32* %j, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %j, align 4
  br label %17

; <label>:46                                      ; preds = %17
  br label %47

; <label>:47                                      ; preds = %46
  %48 = load i32* %i, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %i, align 4
  br label %6

; <label>:50                                      ; preds = %6
  ret void
}

; Function Attrs: uwtable
define void @_ZN5graph15print_all_loopsEv(%class.graph* %this) #2 align 2 {
  %1 = alloca %class.graph*, align 8
  %size = alloca i32, align 4
  %it = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %itend = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %i = alloca i32, align 4
  %2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  store %class.graph* %this, %class.graph** %1, align 8
  %4 = load %class.graph** %1
  %5 = getelementptr inbounds %class.graph* %4, i32 0, i32 3
  %6 = call i64 @_ZNKSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE4sizeEv(%"class.std::vector.9"* %5)
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %size, align 4
  call void @_ZNSt23_Rb_tree_const_iteratorIiEC2Ev(%"struct.std::_Rb_tree_const_iterator"* %it)
  call void @_ZNSt23_Rb_tree_const_iteratorIiEC2Ev(%"struct.std::_Rb_tree_const_iterator"* %itend)
  store i32 0, i32* %i, align 4
  br label %8

; <label>:8                                       ; preds = %43, %0
  %9 = load i32* %i, align 4
  %10 = load i32* %size, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %46

; <label>:12                                      ; preds = %8
  %13 = getelementptr inbounds %class.graph* %4, i32 0, i32 3
  %14 = load i32* %i, align 4
  %15 = sext i32 %14 to i64
  %16 = call %"class.std::set"* @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EEixEm(%"class.std::vector.9"* %13, i64 %15)
  %17 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIiSt4lessIiESaIiEE5beginEv(%"class.std::set"* %16)
  %18 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %2, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %17, %"struct.std::_Rb_tree_node_base"** %18
  %19 = bitcast %"struct.std::_Rb_tree_const_iterator"* %it to i8*
  %20 = bitcast %"struct.std::_Rb_tree_const_iterator"* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %21 = getelementptr inbounds %class.graph* %4, i32 0, i32 3
  %22 = load i32* %i, align 4
  %23 = sext i32 %22 to i64
  %24 = call %"class.std::set"* @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EEixEm(%"class.std::vector.9"* %21, i64 %23)
  %25 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIiSt4lessIiESaIiEE3endEv(%"class.std::set"* %24)
  %26 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %25, %"struct.std::_Rb_tree_node_base"** %26
  %27 = bitcast %"struct.std::_Rb_tree_const_iterator"* %itend to i8*
  %28 = bitcast %"struct.std::_Rb_tree_const_iterator"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 8, i32 8, i1 false)
  %29 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([8 x i8]* @.str4, i32 0, i32 0))
  %30 = load i32* %i, align 4
  %31 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %29, i32 %30)
  %32 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %31, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  br label %33

; <label>:33                                      ; preds = %40, %12
  %34 = call zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorIiEneERKS0_(%"struct.std::_Rb_tree_const_iterator"* %it, %"struct.std::_Rb_tree_const_iterator"* %itend)
  br i1 %34, label %35, label %42

; <label>:35                                      ; preds = %33
  %36 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0))
  %37 = call i32* @_ZNKSt23_Rb_tree_const_iteratorIiEdeEv(%"struct.std::_Rb_tree_const_iterator"* %it)
  %38 = load i32* %37
  %39 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %36, i32 %38)
  br label %40

; <label>:40                                      ; preds = %35
  %41 = call %"struct.std::_Rb_tree_const_iterator"* @_ZNSt23_Rb_tree_const_iteratorIiEppEv(%"struct.std::_Rb_tree_const_iterator"* %it)
  br label %33

; <label>:42                                      ; preds = %33
  br label %43

; <label>:43                                      ; preds = %42
  %44 = load i32* %i, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %i, align 4
  br label %8

; <label>:46                                      ; preds = %8
  ret void
}

; Function Attrs: uwtable
define void @_ZN5graph8cal_idomEv(%class.graph* %this) #2 align 2 {
  %1 = alloca %class.graph*, align 8
  %it = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %i = alloca i32, align 4
  %cur = alloca i32, align 4
  %j = alloca i32, align 4
  %cur1 = alloca i32, align 4
  %isize = alloca i32, align 4
  %alldom = alloca %"class.std::set", align 8
  %tmpset = alloca %"class.std::set", align 8
  %2 = alloca i8*
  %3 = alloca i32
  %itend = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %removable = alloca %"class.std::vector.0", align 8
  %4 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %5 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %it1end = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %it1 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %6 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %7 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %8 = alloca %"struct.std::pair", align 8
  %9 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  store %class.graph* %this, %class.graph** %1, align 8
  %10 = load %class.graph** %1
  call void @_ZNSt23_Rb_tree_const_iteratorIiEC2Ev(%"struct.std::_Rb_tree_const_iterator"* %it)
  %11 = getelementptr inbounds %class.graph* %10, i32 0, i32 2
  %12 = call i64 @_ZNKSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE4sizeEv(%"class.std::vector.9"* %11)
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %isize, align 4
  store i32 0, i32* %i, align 4
  br label %14

; <label>:14                                      ; preds = %161, %0
  %15 = load i32* %i, align 4
  %16 = load i32* %isize, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %169

; <label>:18                                      ; preds = %14
  call void @_ZNSt3setIiSt4lessIiESaIiEEC2Ev(%"class.std::set"* %alldom)
  %19 = getelementptr inbounds %class.graph* %10, i32 0, i32 2
  %20 = load i32* %i, align 4
  %21 = sext i32 %20 to i64
  %22 = invoke %"class.std::set"* @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EEixEm(%"class.std::vector.9"* %19, i64 %21)
          to label %23 unwind label %48

; <label>:23                                      ; preds = %18
  invoke void @_ZNSt3setIiSt4lessIiESaIiEEC2ERKS3_(%"class.std::set"* %tmpset, %"class.std::set"* %22)
          to label %24 unwind label %48

; <label>:24                                      ; preds = %23
  %25 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIiSt4lessIiESaIiEE3endEv(%"class.std::set"* %tmpset)
          to label %26 unwind label %52

; <label>:26                                      ; preds = %24
  %27 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %itend, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %25, %"struct.std::_Rb_tree_node_base"** %27
  invoke void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %removable)
          to label %28 unwind label %52

; <label>:28                                      ; preds = %26
  %29 = invoke i64 @_ZNSt3setIiSt4lessIiESaIiEE5eraseERKi(%"class.std::set"* %tmpset, i32* %i)
          to label %30 unwind label %56

; <label>:30                                      ; preds = %28
  %31 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIiSt4lessIiESaIiEE5beginEv(%"class.std::set"* %tmpset)
          to label %32 unwind label %56

; <label>:32                                      ; preds = %30
  %33 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %4, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %31, %"struct.std::_Rb_tree_node_base"** %33
  %34 = bitcast %"struct.std::_Rb_tree_const_iterator"* %it to i8*
  %35 = bitcast %"struct.std::_Rb_tree_const_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 8, i32 8, i1 false)
  %36 = invoke i64 @_ZNKSt3setIiSt4lessIiESaIiEE4sizeEv(%"class.std::set"* %tmpset)
          to label %37 unwind label %56

; <label>:37                                      ; preds = %32
  %38 = icmp eq i64 %36, 1
  br i1 %38, label %39, label %60

; <label>:39                                      ; preds = %37
  %40 = invoke i32* @_ZNKSt23_Rb_tree_const_iteratorIiEdeEv(%"struct.std::_Rb_tree_const_iterator"* %it)
          to label %41 unwind label %56

; <label>:41                                      ; preds = %39
  %42 = load i32* %40
  %43 = getelementptr inbounds %class.graph* %10, i32 0, i32 4
  %44 = load i32* %i, align 4
  %45 = sext i32 %44 to i64
  %46 = invoke i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %43, i64 %45)
          to label %47 unwind label %56

; <label>:47                                      ; preds = %41
  store i32 %42, i32* %46
  br label %158

; <label>:48                                      ; preds = %159, %23, %18
  %49 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %50 = extractvalue { i8*, i32 } %49, 0
  store i8* %50, i8** %2
  %51 = extractvalue { i8*, i32 } %49, 1
  store i32 %51, i32* %3
  br label %167

; <label>:52                                      ; preds = %158, %26, %24
  %53 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %54 = extractvalue { i8*, i32 } %53, 0
  store i8* %54, i8** %2
  %55 = extractvalue { i8*, i32 } %53, 1
  store i32 %55, i32* %3
  br label %165

; <label>:56                                      ; preds = %150, %145, %143, %139, %133, %129, %123, %119, %115, %106, %104, %100, %97, %94, %92, %89, %85, %79, %77, %71, %69, %66, %60, %41, %39, %32, %30, %28
  %57 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %58 = extractvalue { i8*, i32 } %57, 0
  store i8* %58, i8** %2
  %59 = extractvalue { i8*, i32 } %57, 1
  store i32 %59, i32* %3
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %removable)
          to label %164 unwind label %197

; <label>:60                                      ; preds = %37
  %61 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIiSt4lessIiESaIiEE5beginEv(%"class.std::set"* %tmpset)
          to label %62 unwind label %56

; <label>:62                                      ; preds = %60
  %63 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %5, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %61, %"struct.std::_Rb_tree_node_base"** %63
  %64 = bitcast %"struct.std::_Rb_tree_const_iterator"* %it to i8*
  %65 = bitcast %"struct.std::_Rb_tree_const_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 8, i32 8, i1 false)
  br label %66

; <label>:66                                      ; preds = %121, %62
  %67 = invoke zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorIiEneERKS0_(%"struct.std::_Rb_tree_const_iterator"* %it, %"struct.std::_Rb_tree_const_iterator"* %itend)
          to label %68 unwind label %56

; <label>:68                                      ; preds = %66
  br i1 %67, label %69, label %122

; <label>:69                                      ; preds = %68
  %70 = invoke i32* @_ZNKSt23_Rb_tree_const_iteratorIiEdeEv(%"struct.std::_Rb_tree_const_iterator"* %it)
          to label %71 unwind label %56

; <label>:71                                      ; preds = %69
  %72 = load i32* %70
  store i32 %72, i32* %cur, align 4
  %73 = getelementptr inbounds %class.graph* %10, i32 0, i32 2
  %74 = load i32* %cur, align 4
  %75 = sext i32 %74 to i64
  %76 = invoke %"class.std::set"* @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EEixEm(%"class.std::vector.9"* %73, i64 %75)
          to label %77 unwind label %56

; <label>:77                                      ; preds = %71
  %78 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIiSt4lessIiESaIiEE3endEv(%"class.std::set"* %76)
          to label %79 unwind label %56

; <label>:79                                      ; preds = %77
  %80 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %it1end, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %78, %"struct.std::_Rb_tree_node_base"** %80
  %81 = getelementptr inbounds %class.graph* %10, i32 0, i32 2
  %82 = load i32* %cur, align 4
  %83 = sext i32 %82 to i64
  %84 = invoke %"class.std::set"* @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EEixEm(%"class.std::vector.9"* %81, i64 %83)
          to label %85 unwind label %56

; <label>:85                                      ; preds = %79
  %86 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIiSt4lessIiESaIiEE5beginEv(%"class.std::set"* %84)
          to label %87 unwind label %56

; <label>:87                                      ; preds = %85
  %88 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %it1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %86, %"struct.std::_Rb_tree_node_base"** %88
  br label %89

; <label>:89                                      ; preds = %117, %87
  %90 = invoke zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorIiEneERKS0_(%"struct.std::_Rb_tree_const_iterator"* %it1, %"struct.std::_Rb_tree_const_iterator"* %it1end)
          to label %91 unwind label %56

; <label>:91                                      ; preds = %89
  br i1 %90, label %92, label %118

; <label>:92                                      ; preds = %91
  %93 = invoke i32* @_ZNKSt23_Rb_tree_const_iteratorIiEdeEv(%"struct.std::_Rb_tree_const_iterator"* %it1)
          to label %94 unwind label %56

; <label>:94                                      ; preds = %92
  %95 = load i32* %93
  store i32 %95, i32* %cur1, align 4
  %96 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNSt3setIiSt4lessIiESaIiEE4findERKi(%"class.std::set"* %alldom, i32* %cur1)
          to label %97 unwind label %56

; <label>:97                                      ; preds = %94
  %98 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %6, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %96, %"struct.std::_Rb_tree_node_base"** %98
  %99 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIiSt4lessIiESaIiEE3endEv(%"class.std::set"* %alldom)
          to label %100 unwind label %56

; <label>:100                                     ; preds = %97
  %101 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %7, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %99, %"struct.std::_Rb_tree_node_base"** %101
  %102 = invoke zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorIiEneERKS0_(%"struct.std::_Rb_tree_const_iterator"* %6, %"struct.std::_Rb_tree_const_iterator"* %7)
          to label %103 unwind label %56

; <label>:103                                     ; preds = %100
  br i1 %102, label %104, label %106

; <label>:104                                     ; preds = %103
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.0"* %removable, i32* %cur1)
          to label %105 unwind label %56

; <label>:105                                     ; preds = %104
  br label %114

; <label>:106                                     ; preds = %103
  %107 = invoke { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt3setIiSt4lessIiESaIiEE6insertERKi(%"class.std::set"* %alldom, i32* %cur1)
          to label %108 unwind label %56

; <label>:108                                     ; preds = %106
  %109 = bitcast %"struct.std::pair"* %8 to { %"struct.std::_Rb_tree_node_base"*, i8 }*
  %110 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %109, i32 0, i32 0
  %111 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %107, 0
  store %"struct.std::_Rb_tree_node_base"* %111, %"struct.std::_Rb_tree_node_base"** %110, align 1
  %112 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %109, i32 0, i32 1
  %113 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %107, 1
  store i8 %113, i8* %112, align 1
  br label %114

; <label>:114                                     ; preds = %108, %105
  br label %115

; <label>:115                                     ; preds = %114
  %116 = invoke %"struct.std::_Rb_tree_const_iterator"* @_ZNSt23_Rb_tree_const_iteratorIiEppEv(%"struct.std::_Rb_tree_const_iterator"* %it1)
          to label %117 unwind label %56

; <label>:117                                     ; preds = %115
  br label %89

; <label>:118                                     ; preds = %91
  br label %119

; <label>:119                                     ; preds = %118
  %120 = invoke %"struct.std::_Rb_tree_const_iterator"* @_ZNSt23_Rb_tree_const_iteratorIiEppEv(%"struct.std::_Rb_tree_const_iterator"* %it)
          to label %121 unwind label %56

; <label>:121                                     ; preds = %119
  br label %66

; <label>:122                                     ; preds = %68
  store i32 0, i32* %j, align 4
  br label %123

; <label>:123                                     ; preds = %136, %122
  %124 = load i32* %j, align 4
  %125 = sext i32 %124 to i64
  %126 = invoke i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %removable)
          to label %127 unwind label %56

; <label>:127                                     ; preds = %123
  %128 = icmp ult i64 %125, %126
  br i1 %128, label %129, label %139

; <label>:129                                     ; preds = %127
  %130 = load i32* %j, align 4
  %131 = sext i32 %130 to i64
  %132 = invoke i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %removable, i64 %131)
          to label %133 unwind label %56

; <label>:133                                     ; preds = %129
  %134 = invoke i64 @_ZNSt3setIiSt4lessIiESaIiEE5eraseERKi(%"class.std::set"* %alldom, i32* %132)
          to label %135 unwind label %56

; <label>:135                                     ; preds = %133
  br label %136

; <label>:136                                     ; preds = %135
  %137 = load i32* %j, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %j, align 4
  br label %123

; <label>:139                                     ; preds = %127
  %140 = invoke i64 @_ZNKSt3setIiSt4lessIiESaIiEE4sizeEv(%"class.std::set"* %alldom)
          to label %141 unwind label %56

; <label>:141                                     ; preds = %139
  %142 = icmp eq i64 %140, 1
  br i1 %142, label %143, label %157

; <label>:143                                     ; preds = %141
  %144 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIiSt4lessIiESaIiEE5beginEv(%"class.std::set"* %alldom)
          to label %145 unwind label %56

; <label>:145                                     ; preds = %143
  %146 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %9, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %144, %"struct.std::_Rb_tree_node_base"** %146
  %147 = bitcast %"struct.std::_Rb_tree_const_iterator"* %it to i8*
  %148 = bitcast %"struct.std::_Rb_tree_const_iterator"* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %147, i8* %148, i64 8, i32 8, i1 false)
  %149 = invoke i32* @_ZNKSt23_Rb_tree_const_iteratorIiEdeEv(%"struct.std::_Rb_tree_const_iterator"* %it)
          to label %150 unwind label %56

; <label>:150                                     ; preds = %145
  %151 = load i32* %149
  %152 = getelementptr inbounds %class.graph* %10, i32 0, i32 4
  %153 = load i32* %i, align 4
  %154 = sext i32 %153 to i64
  %155 = invoke i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %152, i64 %154)
          to label %156 unwind label %56

; <label>:156                                     ; preds = %150
  store i32 %151, i32* %155
  br label %157

; <label>:157                                     ; preds = %156, %141
  br label %158

; <label>:158                                     ; preds = %157, %47
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %removable)
          to label %159 unwind label %52

; <label>:159                                     ; preds = %158
  invoke void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(%"class.std::set"* %tmpset)
          to label %160 unwind label %48

; <label>:160                                     ; preds = %159
  call void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(%"class.std::set"* %alldom)
  br label %161

; <label>:161                                     ; preds = %160
  %162 = load i32* %i, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %i, align 4
  br label %14

; <label>:164                                     ; preds = %56
  br label %165

; <label>:165                                     ; preds = %164, %52
  invoke void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(%"class.std::set"* %tmpset)
          to label %166 unwind label %197

; <label>:166                                     ; preds = %165
  br label %167

; <label>:167                                     ; preds = %166, %48
  invoke void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(%"class.std::set"* %alldom)
          to label %168 unwind label %197

; <label>:168                                     ; preds = %167
  br label %192

; <label>:169                                     ; preds = %14
  %170 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([8 x i8]* @.str5, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %171

; <label>:171                                     ; preds = %188, %169
  %172 = load i32* %i, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %class.graph* %10, i32 0, i32 4
  %175 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %174)
  %176 = icmp ult i64 %173, %175
  br i1 %176, label %177, label %191

; <label>:177                                     ; preds = %171
  %178 = load i32* %i, align 4
  %179 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %178)
  %180 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %179, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0))
  %181 = getelementptr inbounds %class.graph* %10, i32 0, i32 4
  %182 = load i32* %i, align 4
  %183 = sext i32 %182 to i64
  %184 = call i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %181, i64 %183)
  %185 = load i32* %184
  %186 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %180, i32 %185)
  %187 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %186, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  br label %188

; <label>:188                                     ; preds = %177
  %189 = load i32* %i, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %i, align 4
  br label %171

; <label>:191                                     ; preds = %171
  ret void

; <label>:192                                     ; preds = %168
  %193 = load i8** %2
  %194 = load i32* %3
  %195 = insertvalue { i8*, i32 } undef, i8* %193, 0
  %196 = insertvalue { i8*, i32 } %195, i32 %194, 1
  resume { i8*, i32 } %196

; <label>:197                                     ; preds = %167, %165, %56
  %198 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %199 = extractvalue { i8*, i32 } %198, 0
  call void @__clang_call_terminate(i8* %199) #12
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt3setIiSt4lessIiESaIiEEC2ERKS3_(%"class.std::set"* %this, %"class.std::set"* %__x) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::set"*, align 8
  %2 = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %this, %"class.std::set"** %1, align 8
  store %"class.std::set"* %__x, %"class.std::set"** %2, align 8
  %3 = load %"class.std::set"** %1
  %4 = getelementptr inbounds %"class.std::set"* %3, i32 0, i32 0
  %5 = load %"class.std::set"** %2, align 8
  %6 = getelementptr inbounds %"class.std::set"* %5, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEEC2ERKS5_(%"class.std::_Rb_tree"* %4, %"class.std::_Rb_tree"* %6)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNSt3setIiSt4lessIiESaIiEE5eraseERKi(%"class.std::set"* %this, i32* %__x) #2 align 2 {
  %1 = alloca %"class.std::set"*, align 8
  %2 = alloca i32*, align 8
  store %"class.std::set"* %this, %"class.std::set"** %1, align 8
  store i32* %__x, i32** %2, align 8
  %3 = load %"class.std::set"** %1
  %4 = getelementptr inbounds %"class.std::set"* %3, i32 0, i32 0
  %5 = load i32** %2, align 8
  %6 = call i64 @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5eraseERKi(%"class.std::_Rb_tree"* %4, i32* %5)
  ret i64 %6
}

; Function Attrs: uwtable
define void @_ZN5graph6cal_dfEv(%class.graph* %this) #2 align 2 {
  %1 = alloca %class.graph*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %size = alloca i32, align 4
  %temp = alloca i32, align 4
  %2 = alloca %"struct.std::pair", align 8
  store %class.graph* %this, %class.graph** %1, align 8
  %3 = load %class.graph** %1
  %4 = getelementptr inbounds %class.graph* %3, i32 0, i32 0
  %5 = call i64 @_ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv(%"class.std::vector"* %4)
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %size, align 4
  store i32 0, i32* %i, align 4
  br label %7

; <label>:7                                       ; preds = %71, %0
  %8 = load i32* %i, align 4
  %9 = load i32* %size, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %74

; <label>:11                                      ; preds = %7
  %12 = getelementptr inbounds %class.graph* %3, i32 0, i32 0
  %13 = load i32* %i, align 4
  %14 = sext i32 %13 to i64
  %15 = call %"class.std::vector.0"* @_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm(%"class.std::vector"* %12, i64 %14)
  %16 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %15)
  %17 = icmp ugt i64 %16, 1
  br i1 %17, label %18, label %70

; <label>:18                                      ; preds = %11
  store i32 0, i32* %j, align 4
  br label %19

; <label>:19                                      ; preds = %66, %18
  %20 = load i32* %j, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %class.graph* %3, i32 0, i32 0
  %23 = load i32* %i, align 4
  %24 = sext i32 %23 to i64
  %25 = call %"class.std::vector.0"* @_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm(%"class.std::vector"* %22, i64 %24)
  %26 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %25)
  %27 = icmp ult i64 %21, %26
  br i1 %27, label %28, label %69

; <label>:28                                      ; preds = %19
  %29 = getelementptr inbounds %class.graph* %3, i32 0, i32 0
  %30 = load i32* %i, align 4
  %31 = sext i32 %30 to i64
  %32 = call %"class.std::vector.0"* @_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm(%"class.std::vector"* %29, i64 %31)
  %33 = load i32* %j, align 4
  %34 = sext i32 %33 to i64
  %35 = call i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %32, i64 %34)
  %36 = load i32* %35
  store i32 %36, i32* %temp, align 4
  br label %37

; <label>:37                                      ; preds = %64, %28
  %38 = load i32* %temp, align 4
  %39 = getelementptr inbounds %class.graph* %3, i32 0, i32 4
  %40 = load i32* %i, align 4
  %41 = sext i32 %40 to i64
  %42 = call i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %39, i64 %41)
  %43 = load i32* %42
  %44 = icmp ne i32 %38, %43
  br i1 %44, label %45, label %65

; <label>:45                                      ; preds = %37
  %46 = getelementptr inbounds %class.graph* %3, i32 0, i32 5
  %47 = load i32* %temp, align 4
  %48 = sext i32 %47 to i64
  %49 = call %"class.std::set"* @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EEixEm(%"class.std::vector.9"* %46, i64 %48)
  %50 = call { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt3setIiSt4lessIiESaIiEE6insertERKi(%"class.std::set"* %49, i32* %i)
  %51 = bitcast %"struct.std::pair"* %2 to { %"struct.std::_Rb_tree_node_base"*, i8 }*
  %52 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %51, i32 0, i32 0
  %53 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %50, 0
  store %"struct.std::_Rb_tree_node_base"* %53, %"struct.std::_Rb_tree_node_base"** %52, align 1
  %54 = getelementptr { %"struct.std::_Rb_tree_node_base"*, i8 }* %51, i32 0, i32 1
  %55 = extractvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %50, 1
  store i8 %55, i8* %54, align 1
  %56 = getelementptr inbounds %class.graph* %3, i32 0, i32 4
  %57 = load i32* %temp, align 4
  %58 = sext i32 %57 to i64
  %59 = call i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %56, i64 %58)
  %60 = load i32* %59
  store i32 %60, i32* %temp, align 4
  %61 = load i32* %temp, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

; <label>:63                                      ; preds = %45
  br label %65

; <label>:64                                      ; preds = %45
  br label %37

; <label>:65                                      ; preds = %63, %37
  br label %66

; <label>:66                                      ; preds = %65
  %67 = load i32* %j, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %j, align 4
  br label %19

; <label>:69                                      ; preds = %19
  br label %70

; <label>:70                                      ; preds = %69, %11
  br label %71

; <label>:71                                      ; preds = %70
  %72 = load i32* %i, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %i, align 4
  br label %7

; <label>:74                                      ; preds = %7
  %75 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0))
  call void @_ZN5graph8print_dfEv(%class.graph* %3)
  ret void
}

; Function Attrs: uwtable
define void @_ZN5graph8print_dfEv(%class.graph* %this) #2 align 2 {
  %1 = alloca %class.graph*, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  store %class.graph* %this, %class.graph** %1, align 8
  %4 = load %class.graph** %1
  %5 = getelementptr inbounds %class.graph* %4, i32 0, i32 5
  %6 = call i64 @_ZNKSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE4sizeEv(%"class.std::vector.9"* %5)
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %size, align 4
  store i32 0, i32* %i, align 4
  br label %8

; <label>:8                                       ; preds = %33, %0
  %9 = load i32* %i, align 4
  %10 = load i32* %size, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %36

; <label>:12                                      ; preds = %8
  %13 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  %14 = load i32* %i, align 4
  %15 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %13, i32 %14)
  %16 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %15, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0))
  %17 = getelementptr inbounds %class.graph* %4, i32 0, i32 5
  %18 = load i32* %i, align 4
  %19 = sext i32 %18 to i64
  %20 = call %"class.std::set"* @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EEixEm(%"class.std::vector.9"* %17, i64 %19)
  %21 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIiSt4lessIiESaIiEE5beginEv(%"class.std::set"* %20)
  %22 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %2, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %21, %"struct.std::_Rb_tree_node_base"** %22
  %23 = getelementptr inbounds %class.graph* %4, i32 0, i32 5
  %24 = load i32* %i, align 4
  %25 = sext i32 %24 to i64
  %26 = call %"class.std::set"* @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EEixEm(%"class.std::vector.9"* %23, i64 %25)
  %27 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt3setIiSt4lessIiESaIiEE3endEv(%"class.std::set"* %26)
  %28 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %27, %"struct.std::_Rb_tree_node_base"** %28
  %29 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %2, i32 0, i32 0
  %30 = load %"struct.std::_Rb_tree_node_base"** %29
  %31 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %3, i32 0, i32 0
  %32 = load %"struct.std::_Rb_tree_node_base"** %31
  call void @_Z9print_setSt23_Rb_tree_const_iteratorIiES0_(%"struct.std::_Rb_tree_node_base"* %30, %"struct.std::_Rb_tree_node_base"* %32)
  br label %33

; <label>:33                                      ; preds = %12
  %34 = load i32* %i, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %i, align 4
  br label %8

; <label>:36                                      ; preds = %8
  ret void
}

; Function Attrs: uwtable
define i32 @main() #2 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %temp = alloca i32, align 4
  %nodei = alloca i32, align 4
  %src = alloca i32, align 4
  %g1 = alloca %class.graph, align 8
  %2 = alloca i8*
  %3 = alloca i32
  %4 = alloca i32
  store i32 0, i32* %1
  store i32 1, i32* %src, align 4
  %5 = load %struct._IO_FILE** @stdin, align 8
  %6 = call %struct._IO_FILE* @freopen(i8* getelementptr inbounds ([11 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), %struct._IO_FILE* %5)
  %7 = call %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* %n)
  %8 = load i32* %n, align 4
  call void @_ZN5graphC1Ei(%class.graph* %g1, i32 %8)
  store i32 0, i32* %i, align 4
  br label %9

; <label>:9                                       ; preds = %33, %0
  %10 = load i32* %i, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %i, align 4
  %12 = load i32* %n, align 4
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %34

; <label>:14                                      ; preds = %9
  %15 = invoke %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* %nodei)
          to label %16 unwind label %24

; <label>:16                                      ; preds = %14
  br label %17

; <label>:17                                      ; preds = %32, %16
  br label %18

; <label>:18                                      ; preds = %17
  %19 = invoke %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* %temp)
          to label %20 unwind label %24

; <label>:20                                      ; preds = %18
  %21 = load i32* %temp, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

; <label>:23                                      ; preds = %20
  br label %33

; <label>:24                                      ; preds = %47, %46, %45, %44, %43, %41, %37, %34, %28, %18, %14
  %25 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  store i8* %26, i8** %2
  %27 = extractvalue { i8*, i32 } %25, 1
  store i32 %27, i32* %3
  invoke void @_ZN5graphD2Ev(%class.graph* %g1)
          to label %50 unwind label %56

; <label>:28                                      ; preds = %20
  %29 = load i32* %temp, align 4
  %30 = load i32* %nodei, align 4
  invoke void @_ZN5graph11create_edgeEii(%class.graph* %g1, i32 %29, i32 %30)
          to label %31 unwind label %24

; <label>:31                                      ; preds = %28
  br label %32

; <label>:32                                      ; preds = %31
  br label %17

; <label>:33                                      ; preds = %23
  br label %9

; <label>:34                                      ; preds = %9
  %35 = load i32* %src, align 4
  %36 = load i32* %n, align 4
  invoke void @_ZN5graph14find_dominatorEii(%class.graph* %g1, i32 %35, i32 %36)
          to label %37 unwind label %24

; <label>:37                                      ; preds = %34
  %38 = getelementptr inbounds %class.graph* %g1, i32 0, i32 6
  %39 = load i32* %38, align 4
  %40 = invoke %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %39)
          to label %41 unwind label %24

; <label>:41                                      ; preds = %37
  %42 = invoke %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %40, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
          to label %43 unwind label %24

; <label>:43                                      ; preds = %41
  invoke void @_ZN5graph15print_dominatorEv(%class.graph* %g1)
          to label %44 unwind label %24

; <label>:44                                      ; preds = %43
  invoke void @_ZN5graph8cal_idomEv(%class.graph* %g1)
          to label %45 unwind label %24

; <label>:45                                      ; preds = %44
  invoke void @_ZN5graph6cal_dfEv(%class.graph* %g1)
          to label %46 unwind label %24

; <label>:46                                      ; preds = %45
  invoke void @_ZN5graph12natural_loopEv(%class.graph* %g1)
          to label %47 unwind label %24

; <label>:47                                      ; preds = %46
  invoke void @_ZN5graph15print_all_loopsEv(%class.graph* %g1)
          to label %48 unwind label %24

; <label>:48                                      ; preds = %47
  store i32 0, i32* %1
  store i32 1, i32* %4
  call void @_ZN5graphD2Ev(%class.graph* %g1)
  %49 = load i32* %1
  ret i32 %49

; <label>:50                                      ; preds = %24
  br label %51

; <label>:51                                      ; preds = %50
  %52 = load i8** %2
  %53 = load i32* %3
  %54 = insertvalue { i8*, i32 } undef, i8* %52, 0
  %55 = insertvalue { i8*, i32 } %54, i32 %53, 1
  resume { i8*, i32 } %55

; <label>:56                                      ; preds = %24
  %57 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %58 = extractvalue { i8*, i32 } %57, 0
  call void @__clang_call_terminate(i8* %58) #12
  unreachable
}

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) #0

declare %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"*, i32*) #0

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZN5graphD2Ev(%class.graph* %this) unnamed_addr #3 align 2 {
  %1 = alloca %class.graph*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %class.graph* %this, %class.graph** %1, align 8
  %4 = load %class.graph** %1
  %5 = getelementptr inbounds %class.graph* %4, i32 0, i32 5
  invoke void @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EED2Ev(%"class.std::vector.9"* %5)
          to label %6 unwind label %16

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %class.graph* %4, i32 0, i32 4
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %7)
          to label %8 unwind label %21

; <label>:8                                       ; preds = %6
  %9 = getelementptr inbounds %class.graph* %4, i32 0, i32 3
  invoke void @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EED2Ev(%"class.std::vector.9"* %9)
          to label %10 unwind label %26

; <label>:10                                      ; preds = %8
  %11 = getelementptr inbounds %class.graph* %4, i32 0, i32 2
  invoke void @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EED2Ev(%"class.std::vector.9"* %11)
          to label %12 unwind label %33

; <label>:12                                      ; preds = %10
  %13 = getelementptr inbounds %class.graph* %4, i32 0, i32 1
  invoke void @_ZNSt6vectorIbSaIbEED2Ev(%"class.std::vector.5"* %13)
          to label %14 unwind label %40

; <label>:14                                      ; preds = %12
  %15 = getelementptr inbounds %class.graph* %4, i32 0, i32 0
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(%"class.std::vector"* %15)
  ret void

; <label>:16                                      ; preds = %0
  %17 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  store i8* %18, i8** %2
  %19 = extractvalue { i8*, i32 } %17, 1
  store i32 %19, i32* %3
  %20 = getelementptr inbounds %class.graph* %4, i32 0, i32 4
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %20)
          to label %25 unwind label %55

; <label>:21                                      ; preds = %6
  %22 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %2
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %3
  br label %30

; <label>:25                                      ; preds = %16
  br label %30

; <label>:26                                      ; preds = %8
  %27 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %28 = extractvalue { i8*, i32 } %27, 0
  store i8* %28, i8** %2
  %29 = extractvalue { i8*, i32 } %27, 1
  store i32 %29, i32* %3
  br label %37

; <label>:30                                      ; preds = %25, %21
  %31 = getelementptr inbounds %class.graph* %4, i32 0, i32 3
  invoke void @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EED2Ev(%"class.std::vector.9"* %31)
          to label %32 unwind label %55

; <label>:32                                      ; preds = %30
  br label %37

; <label>:33                                      ; preds = %10
  %34 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %35 = extractvalue { i8*, i32 } %34, 0
  store i8* %35, i8** %2
  %36 = extractvalue { i8*, i32 } %34, 1
  store i32 %36, i32* %3
  br label %44

; <label>:37                                      ; preds = %32, %26
  %38 = getelementptr inbounds %class.graph* %4, i32 0, i32 2
  invoke void @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EED2Ev(%"class.std::vector.9"* %38)
          to label %39 unwind label %55

; <label>:39                                      ; preds = %37
  br label %44

; <label>:40                                      ; preds = %12
  %41 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %42 = extractvalue { i8*, i32 } %41, 0
  store i8* %42, i8** %2
  %43 = extractvalue { i8*, i32 } %41, 1
  store i32 %43, i32* %3
  br label %47

; <label>:44                                      ; preds = %39, %33
  %45 = getelementptr inbounds %class.graph* %4, i32 0, i32 1
  invoke void @_ZNSt6vectorIbSaIbEED2Ev(%"class.std::vector.5"* %45)
          to label %46 unwind label %55

; <label>:46                                      ; preds = %44
  br label %47

; <label>:47                                      ; preds = %46, %40
  %48 = getelementptr inbounds %class.graph* %4, i32 0, i32 0
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(%"class.std::vector"* %48)
          to label %49 unwind label %55

; <label>:49                                      ; preds = %47
  br label %50

; <label>:50                                      ; preds = %49
  %51 = load i8** %2
  %52 = load i32* %3
  %53 = insertvalue { i8*, i32 } undef, i8* %51, 0
  %54 = insertvalue { i8*, i32 } %53, i32 %52, 1
  resume { i8*, i32 } %54

; <label>:55                                      ; preds = %47, %44, %37, %30, %16
  %56 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %57 = extractvalue { i8*, i32 } %56, 0
  call void @__clang_call_terminate(i8* %57) #12
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5eraseERKi(%"class.std::_Rb_tree"* %this, i32* %__x) #2 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca i32*, align 8
  %__p = alloca %"struct.std::pair.21", align 8
  %__old_size = alloca i64, align 8
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  store i32* %__x, i32** %2, align 8
  %5 = load %"class.std::_Rb_tree"** %1
  %6 = load i32** %2, align 8
  %7 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi(%"class.std::_Rb_tree"* %5, i32* %6)
  %8 = bitcast %"struct.std::pair.21"* %__p to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %9 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %8, i32 0, i32 0
  %10 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %7, 0
  store %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"** %9, align 1
  %11 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %8, i32 0, i32 1
  %12 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %7, 1
  store %"struct.std::_Rb_tree_node_base"* %12, %"struct.std::_Rb_tree_node_base"** %11, align 1
  %13 = call i64 @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE4sizeEv(%"class.std::_Rb_tree"* %5)
  store i64 %13, i64* %__old_size, align 8
  %14 = getelementptr inbounds %"struct.std::pair.21"* %__p, i32 0, i32 0
  %15 = bitcast %"struct.std::_Rb_tree_iterator"* %3 to i8*
  %16 = bitcast %"struct.std::_Rb_tree_iterator"* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %17 = getelementptr inbounds %"struct.std::pair.21"* %__p, i32 0, i32 1
  %18 = bitcast %"struct.std::_Rb_tree_iterator"* %4 to i8*
  %19 = bitcast %"struct.std::_Rb_tree_iterator"* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 8, i32 8, i1 false)
  %20 = getelementptr %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  %21 = load %"struct.std::_Rb_tree_node_base"** %20
  %22 = getelementptr %"struct.std::_Rb_tree_iterator"* %4, i32 0, i32 0
  %23 = load %"struct.std::_Rb_tree_node_base"** %22
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5eraseESt17_Rb_tree_iteratorIiES7_(%"class.std::_Rb_tree"* %5, %"struct.std::_Rb_tree_node_base"* %21, %"struct.std::_Rb_tree_node_base"* %23)
  %24 = load i64* %__old_size, align 8
  %25 = call i64 @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE4sizeEv(%"class.std::_Rb_tree"* %5)
  %26 = sub i64 %24, %25
  ret i64 %26
}

; Function Attrs: uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11equal_rangeERKi(%"class.std::_Rb_tree"* %this, i32* %__k) #2 align 2 {
  %1 = alloca %"struct.std::pair.21", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  %3 = alloca i32*, align 8
  %__x = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__xu = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__yu = alloca %"struct.std::_Rb_tree_node"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca %"struct.std::_Rb_tree_iterator", align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  store i32* %__k, i32** %3, align 8
  %8 = load %"class.std::_Rb_tree"** %2
  %9 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_beginEv(%"class.std::_Rb_tree"* %8)
  store %"struct.std::_Rb_tree_node"* %9, %"struct.std::_Rb_tree_node"** %__x, align 8
  %10 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_M_endEv(%"class.std::_Rb_tree"* %8)
  store %"struct.std::_Rb_tree_node"* %10, %"struct.std::_Rb_tree_node"** %__y, align 8
  br label %11

; <label>:11                                      ; preds = %58, %0
  %12 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %13 = icmp ne %"struct.std::_Rb_tree_node"* %12, null
  br i1 %13, label %14, label %59

; <label>:14                                      ; preds = %11
  %15 = getelementptr inbounds %"class.std::_Rb_tree"* %8, i32 0, i32 0
  %16 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %15, i32 0, i32 0
  %17 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %18 = call i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_node"* %17)
  %19 = load i32** %3, align 8
  %20 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %16, i32* %18, i32* %19)
  br i1 %20, label %21, label %25

; <label>:21                                      ; preds = %14
  %22 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %23 = bitcast %"struct.std::_Rb_tree_node"* %22 to %"struct.std::_Rb_tree_node_base"*
  %24 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %23)
  store %"struct.std::_Rb_tree_node"* %24, %"struct.std::_Rb_tree_node"** %__x, align 8
  br label %58

; <label>:25                                      ; preds = %14
  %26 = getelementptr inbounds %"class.std::_Rb_tree"* %8, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %26, i32 0, i32 0
  %28 = load i32** %3, align 8
  %29 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %30 = call i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_node"* %29)
  %31 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %27, i32* %28, i32* %30)
  br i1 %31, label %32, label %37

; <label>:32                                      ; preds = %25
  %33 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  store %"struct.std::_Rb_tree_node"* %33, %"struct.std::_Rb_tree_node"** %__y, align 8
  %34 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %35 = bitcast %"struct.std::_Rb_tree_node"* %34 to %"struct.std::_Rb_tree_node_base"*
  %36 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %35)
  store %"struct.std::_Rb_tree_node"* %36, %"struct.std::_Rb_tree_node"** %__x, align 8
  br label %57

; <label>:37                                      ; preds = %25
  %38 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  store %"struct.std::_Rb_tree_node"* %38, %"struct.std::_Rb_tree_node"** %__xu, align 8
  %39 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  store %"struct.std::_Rb_tree_node"* %39, %"struct.std::_Rb_tree_node"** %__yu, align 8
  %40 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  store %"struct.std::_Rb_tree_node"* %40, %"struct.std::_Rb_tree_node"** %__y, align 8
  %41 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %42 = bitcast %"struct.std::_Rb_tree_node"* %41 to %"struct.std::_Rb_tree_node_base"*
  %43 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %42)
  store %"struct.std::_Rb_tree_node"* %43, %"struct.std::_Rb_tree_node"** %__x, align 8
  %44 = load %"struct.std::_Rb_tree_node"** %__xu, align 8
  %45 = bitcast %"struct.std::_Rb_tree_node"* %44 to %"struct.std::_Rb_tree_node_base"*
  %46 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %45)
  store %"struct.std::_Rb_tree_node"* %46, %"struct.std::_Rb_tree_node"** %__xu, align 8
  %47 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %48 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  %49 = load i32** %3, align 8
  %50 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiES8_RKi(%"class.std::_Rb_tree"* %8, %"struct.std::_Rb_tree_node"* %47, %"struct.std::_Rb_tree_node"* %48, i32* %49)
  %51 = getelementptr %"struct.std::_Rb_tree_iterator"* %4, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %50, %"struct.std::_Rb_tree_node_base"** %51
  %52 = load %"struct.std::_Rb_tree_node"** %__xu, align 8
  %53 = load %"struct.std::_Rb_tree_node"** %__yu, align 8
  %54 = load i32** %3, align 8
  %55 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_upper_boundEPSt13_Rb_tree_nodeIiES8_RKi(%"class.std::_Rb_tree"* %8, %"struct.std::_Rb_tree_node"* %52, %"struct.std::_Rb_tree_node"* %53, i32* %54)
  %56 = getelementptr %"struct.std::_Rb_tree_iterator"* %5, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %55, %"struct.std::_Rb_tree_node_base"** %56
  call void @_ZNSt4pairISt17_Rb_tree_iteratorIiES1_EC2ERKS1_S4_(%"struct.std::pair.21"* %1, %"struct.std::_Rb_tree_iterator"* %4, %"struct.std::_Rb_tree_iterator"* %5)
  br label %62

; <label>:57                                      ; preds = %32
  br label %58

; <label>:58                                      ; preds = %57, %21
  br label %11

; <label>:59                                      ; preds = %11
  %60 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  call void @_ZNSt17_Rb_tree_iteratorIiEC2EPSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_iterator"* %6, %"struct.std::_Rb_tree_node"* %60)
  %61 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  call void @_ZNSt17_Rb_tree_iteratorIiEC2EPSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_iterator"* %7, %"struct.std::_Rb_tree_node"* %61)
  call void @_ZNSt4pairISt17_Rb_tree_iteratorIiES1_EC2ERKS1_S4_(%"struct.std::pair.21"* %1, %"struct.std::_Rb_tree_iterator"* %6, %"struct.std::_Rb_tree_iterator"* %7)
  br label %62

; <label>:62                                      ; preds = %59, %37
  %63 = bitcast %"struct.std::pair.21"* %1 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %64 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %63, align 1
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %64
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE4sizeEv(%"class.std::_Rb_tree"* %this) #5 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %3, i32 0, i32 2
  %5 = load i64* %4, align 8
  ret i64 %5
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5eraseESt17_Rb_tree_iteratorIiES7_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__first.coerce, %"struct.std::_Rb_tree_node_base"* %__last.coerce) #2 align 2 {
  %__first = alloca %"struct.std::_Rb_tree_iterator", align 8
  %__last = alloca %"struct.std::_Rb_tree_iterator", align 8
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = getelementptr %"struct.std::_Rb_tree_iterator"* %__first, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__first.coerce, %"struct.std::_Rb_tree_node_base"** %4
  %5 = getelementptr %"struct.std::_Rb_tree_iterator"* %__last, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__last.coerce, %"struct.std::_Rb_tree_node_base"** %5
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %6 = load %"class.std::_Rb_tree"** %1
  call void @_ZNSt23_Rb_tree_const_iteratorIiEC2ERKSt17_Rb_tree_iteratorIiE(%"struct.std::_Rb_tree_const_iterator"* %2, %"struct.std::_Rb_tree_iterator"* %__first)
  call void @_ZNSt23_Rb_tree_const_iteratorIiEC2ERKSt17_Rb_tree_iteratorIiE(%"struct.std::_Rb_tree_const_iterator"* %3, %"struct.std::_Rb_tree_iterator"* %__last)
  %7 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %2, i32 0, i32 0
  %8 = load %"struct.std::_Rb_tree_node_base"** %7
  %9 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %3, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"** %9
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_erase_auxESt23_Rb_tree_const_iteratorIiES7_(%"class.std::_Rb_tree"* %6, %"struct.std::_Rb_tree_node_base"* %8, %"struct.std::_Rb_tree_node_base"* %10)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_erase_auxESt23_Rb_tree_const_iteratorIiES7_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__first.coerce, %"struct.std::_Rb_tree_node_base"* %__last.coerce) #2 align 2 {
  %__first = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %__last = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %7 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %__first, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__first.coerce, %"struct.std::_Rb_tree_node_base"** %7
  %8 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %__last, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__last.coerce, %"struct.std::_Rb_tree_node_base"** %8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %9 = load %"class.std::_Rb_tree"** %1
  %10 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5beginEv(%"class.std::_Rb_tree"* %9)
  %11 = getelementptr %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"** %11
  call void @_ZNSt23_Rb_tree_const_iteratorIiEC2ERKSt17_Rb_tree_iteratorIiE(%"struct.std::_Rb_tree_const_iterator"* %2, %"struct.std::_Rb_tree_iterator"* %3)
  %12 = call zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorIiEeqERKS0_(%"struct.std::_Rb_tree_const_iterator"* %__first, %"struct.std::_Rb_tree_const_iterator"* %2)
  br i1 %12, label %13, label %18

; <label>:13                                      ; preds = %0
  %14 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE3endEv(%"class.std::_Rb_tree"* %9)
  %15 = getelementptr %"struct.std::_Rb_tree_iterator"* %5, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %14, %"struct.std::_Rb_tree_node_base"** %15
  call void @_ZNSt23_Rb_tree_const_iteratorIiEC2ERKSt17_Rb_tree_iteratorIiE(%"struct.std::_Rb_tree_const_iterator"* %4, %"struct.std::_Rb_tree_iterator"* %5)
  %16 = call zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorIiEeqERKS0_(%"struct.std::_Rb_tree_const_iterator"* %__last, %"struct.std::_Rb_tree_const_iterator"* %4)
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %13
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5clearEv(%"class.std::_Rb_tree"* %9)
  br label %27

; <label>:18                                      ; preds = %13, %0
  br label %19

; <label>:19                                      ; preds = %21, %18
  %20 = call zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorIiEneERKS0_(%"struct.std::_Rb_tree_const_iterator"* %__first, %"struct.std::_Rb_tree_const_iterator"* %__last)
  br i1 %20, label %21, label %26

; <label>:21                                      ; preds = %19
  %22 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt23_Rb_tree_const_iteratorIiEppEi(%"struct.std::_Rb_tree_const_iterator"* %__first, i32 0)
  %23 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %6, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %22, %"struct.std::_Rb_tree_node_base"** %23
  %24 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %6, i32 0, i32 0
  %25 = load %"struct.std::_Rb_tree_node_base"** %24
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5eraseESt23_Rb_tree_const_iteratorIiE(%"class.std::_Rb_tree"* %9, %"struct.std::_Rb_tree_node_base"* %25)
  br label %19

; <label>:26                                      ; preds = %19
  br label %27

; <label>:27                                      ; preds = %26, %17
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt23_Rb_tree_const_iteratorIiEC2ERKSt17_Rb_tree_iteratorIiE(%"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_iterator"* %__it) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %1, align 8
  store %"struct.std::_Rb_tree_iterator"* %__it, %"struct.std::_Rb_tree_iterator"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_const_iterator"** %1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_iterator"** %2, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %5, i32 0, i32 0
  %7 = load %"struct.std::_Rb_tree_node_base"** %6, align 8
  store %"struct.std::_Rb_tree_node_base"* %7, %"struct.std::_Rb_tree_node_base"** %4, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5beginEv(%"class.std::_Rb_tree"* %this) #2 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"** %2
  %4 = getelementptr inbounds %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %4, i32 0, i32 1
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %5, i32 0, i32 2
  %7 = load %"struct.std::_Rb_tree_node_base"** %6, align 8
  %8 = bitcast %"struct.std::_Rb_tree_node_base"* %7 to %"struct.std::_Rb_tree_node"*
  call void @_ZNSt17_Rb_tree_iteratorIiEC2EPSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_iterator"* %1, %"struct.std::_Rb_tree_node"* %8)
  %9 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"** %9
  ret %"struct.std::_Rb_tree_node_base"* %10
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE3endEv(%"class.std::_Rb_tree"* %this) #2 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"** %2
  %4 = getelementptr inbounds %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %4, i32 0, i32 1
  %6 = bitcast %"struct.std::_Rb_tree_node_base"* %5 to %"struct.std::_Rb_tree_node"*
  call void @_ZNSt17_Rb_tree_iteratorIiEC2EPSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_iterator"* %1, %"struct.std::_Rb_tree_node"* %6)
  %7 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %8 = load %"struct.std::_Rb_tree_node_base"** %7
  ret %"struct.std::_Rb_tree_node_base"* %8
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5clearEv(%"class.std::_Rb_tree"* %this) #2 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_beginEv(%"class.std::_Rb_tree"* %2)
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* %2, %"struct.std::_Rb_tree_node"* %3)
  %4 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_M_endEv(%"class.std::_Rb_tree"* %2)
  %5 = bitcast %"struct.std::_Rb_tree_node"* %4 to %"struct.std::_Rb_tree_node_base"*
  %6 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_leftmostEv(%"class.std::_Rb_tree"* %2)
  store %"struct.std::_Rb_tree_node_base"* %5, %"struct.std::_Rb_tree_node_base"** %6
  %7 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_rootEv(%"class.std::_Rb_tree"* %2)
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %7
  %8 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_M_endEv(%"class.std::_Rb_tree"* %2)
  %9 = bitcast %"struct.std::_Rb_tree_node"* %8 to %"struct.std::_Rb_tree_node_base"*
  %10 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_rightmostEv(%"class.std::_Rb_tree"* %2)
  store %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"** %10
  %11 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5eraseESt23_Rb_tree_const_iteratorIiE(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce) #2 align 2 {
  %__position = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %3
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %4 = load %"class.std::_Rb_tree"** %1
  %5 = bitcast %"struct.std::_Rb_tree_const_iterator"* %2 to i8*
  %6 = bitcast %"struct.std::_Rb_tree_const_iterator"* %__position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 8, i1 false)
  %7 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %2, i32 0, i32 0
  %8 = load %"struct.std::_Rb_tree_node_base"** %7
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_erase_auxESt23_Rb_tree_const_iteratorIiE(%"class.std::_Rb_tree"* %4, %"struct.std::_Rb_tree_node_base"* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt23_Rb_tree_const_iteratorIiEppEi(%"struct.std::_Rb_tree_const_iterator"* %this, i32) #5 align 2 {
  %2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %4 = alloca i32, align 4
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %3, align 8
  store i32 %0, i32* %4, align 4
  %5 = load %"struct.std::_Rb_tree_const_iterator"** %3
  %6 = bitcast %"struct.std::_Rb_tree_const_iterator"* %2 to i8*
  %7 = bitcast %"struct.std::_Rb_tree_const_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %5, i32 0, i32 0
  %9 = load %"struct.std::_Rb_tree_node_base"** %8, align 8
  %10 = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %9) #13
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %5, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"** %11, align 8
  %12 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %2, i32 0, i32 0
  %13 = load %"struct.std::_Rb_tree_node_base"** %12
  ret %"struct.std::_Rb_tree_node_base"* %13
}

; Function Attrs: nounwind readonly
declare %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #6

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_erase_auxESt23_Rb_tree_const_iteratorIiE(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce) #2 align 2 {
  %__position = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %__y = alloca %"struct.std::_Rb_tree_node"*, align 8
  %2 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %2
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %3 = load %"class.std::_Rb_tree"** %1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %__position, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = getelementptr inbounds %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %6, i32 0, i32 1
  %8 = call %"struct.std::_Rb_tree_node_base"* @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(%"struct.std::_Rb_tree_node_base"* %5, %"struct.std::_Rb_tree_node_base"* %7) #1
  %9 = bitcast %"struct.std::_Rb_tree_node_base"* %8 to %"struct.std::_Rb_tree_node"*
  store %"struct.std::_Rb_tree_node"* %9, %"struct.std::_Rb_tree_node"** %__y, align 8
  %10 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* %3, %"struct.std::_Rb_tree_node"* %10)
  %11 = getelementptr inbounds %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %11, i32 0, i32 2
  %13 = load i64* %12, align 8
  %14 = add i64 %13, -1
  store i64 %14, i64* %12, align 8
  ret void
}

; Function Attrs: nounwind
declare %"struct.std::_Rb_tree_node_base"* @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(%"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*) #7

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__p) #2 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %3 = alloca %"class.std::allocator.2", align 1
  %4 = alloca i8*
  %5 = alloca i32
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %2, align 8
  %6 = load %"class.std::_Rb_tree"** %1
  call void @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13get_allocatorEv(%"class.std::allocator.2"* sret %3, %"class.std::_Rb_tree"* %6)
  %7 = bitcast %"class.std::allocator.2"* %3 to %"class.__gnu_cxx::new_allocator.3"*
  %8 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node"* %8, i32 0, i32 1
  %10 = invoke i32* @_ZSt11__addressofIiEPT_RS0_(i32* %9)
          to label %11 unwind label %14

; <label>:11                                      ; preds = %0
  invoke void @_ZN9__gnu_cxx13new_allocatorIiE7destroyEPi(%"class.__gnu_cxx::new_allocator.3"* %7, i32* %10)
          to label %12 unwind label %14

; <label>:12                                      ; preds = %11
  call void @_ZNSaIiED2Ev(%"class.std::allocator.2"* %3) #1
  %13 = load %"struct.std::_Rb_tree_node"** %2, align 8
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_put_nodeEPSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* %6, %"struct.std::_Rb_tree_node"* %13)
  ret void

; <label>:14                                      ; preds = %11, %0
  %15 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %4
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %5
  call void @_ZNSaIiED2Ev(%"class.std::allocator.2"* %3) #1
  br label %18

; <label>:18                                      ; preds = %14
  %19 = load i8** %4
  %20 = load i32* %5
  %21 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %22 = insertvalue { i8*, i32 } %21, i32 %20, 1
  resume { i8*, i32 } %22
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13get_allocatorEv(%"class.std::allocator.2"* noalias sret %agg.result, %"class.std::_Rb_tree"* %this) #2 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = call %"class.std::allocator.14"* @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %2)
  call void @_ZNSaIiEC2ISt13_Rb_tree_nodeIiEEERKSaIT_E(%"class.std::allocator.2"* %agg.result, %"class.std::allocator.14"* %3) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE7destroyEPi(%"class.__gnu_cxx::new_allocator.3"* %this, i32* %__p) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %2 = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %1, align 8
  store i32* %__p, i32** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.3"** %1
  %4 = load i32** %2, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt11__addressofIiEPT_RS0_(i32* %__r) #8 {
  %1 = alloca i32*, align 8
  store i32* %__r, i32** %1, align 8
  %2 = load i32** %1, align 8
  %3 = bitcast i32* %2 to i8*
  %4 = bitcast i8* %3 to i32*
  ret i32* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIiED2Ev(%"class.std::allocator.2"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %this, %"class.std::allocator.2"** %1, align 8
  %2 = load %"class.std::allocator.2"** %1
  %3 = bitcast %"class.std::allocator.2"* %2 to %"class.__gnu_cxx::new_allocator.3"*
  call void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator.3"* %3) #1
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_put_nodeEPSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__p) #2 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %2, align 8
  %3 = load %"class.std::_Rb_tree"** %1
  %4 = getelementptr inbounds %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %4 to %"class.std::allocator.14"*
  %6 = bitcast %"class.std::allocator.14"* %5 to %"class.__gnu_cxx::new_allocator.15"*
  %7 = load %"struct.std::_Rb_tree_node"** %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.15"* %6, %"struct.std::_Rb_tree_node"* %7, i64 1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.15"* %this, %"struct.std::_Rb_tree_node"* %__p, i64) #5 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.15"*, align 8
  %3 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.15"* %this, %"class.__gnu_cxx::new_allocator.15"** %2, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.15"** %2
  %6 = load %"struct.std::_Rb_tree_node"** %3, align 8
  %7 = bitcast %"struct.std::_Rb_tree_node"* %6 to i8*
  call void @_ZdlPv(i8* %7) #1
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #9

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator.3"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.3"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.14"* @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this) #5 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %3 to %"class.std::allocator.14"*
  ret %"class.std::allocator.14"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIiEC2ISt13_Rb_tree_nodeIiEEERKSaIT_E(%"class.std::allocator.2"* %this, %"class.std::allocator.14"*) unnamed_addr #5 align 2 {
  %2 = alloca %"class.std::allocator.2"*, align 8
  %3 = alloca %"class.std::allocator.14"*, align 8
  store %"class.std::allocator.2"* %this, %"class.std::allocator.2"** %2, align 8
  store %"class.std::allocator.14"* %0, %"class.std::allocator.14"** %3, align 8
  %4 = load %"class.std::allocator.2"** %2
  %5 = bitcast %"class.std::allocator.2"* %4 to %"class.__gnu_cxx::new_allocator.3"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator.3"* %5) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator.3"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.3"** %1
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__x) #2 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %2, align 8
  %3 = load %"class.std::_Rb_tree"** %1
  br label %4

; <label>:4                                       ; preds = %7, %0
  %5 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %6 = icmp ne %"struct.std::_Rb_tree_node"* %5, null
  br i1 %6, label %7, label %16

; <label>:7                                       ; preds = %4
  %8 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %9 = bitcast %"struct.std::_Rb_tree_node"* %8 to %"struct.std::_Rb_tree_node_base"*
  %10 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %9)
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* %3, %"struct.std::_Rb_tree_node"* %10)
  %11 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %12 = bitcast %"struct.std::_Rb_tree_node"* %11 to %"struct.std::_Rb_tree_node_base"*
  %13 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %12)
  store %"struct.std::_Rb_tree_node"* %13, %"struct.std::_Rb_tree_node"** %__y, align 8
  %14 = load %"struct.std::_Rb_tree_node"** %2, align 8
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE15_M_destroy_nodeEPSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* %3, %"struct.std::_Rb_tree_node"* %14)
  %15 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  store %"struct.std::_Rb_tree_node"* %15, %"struct.std::_Rb_tree_node"** %2, align 8
  br label %4

; <label>:16                                      ; preds = %4
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_beginEv(%"class.std::_Rb_tree"* %this) #5 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %3, i32 0, i32 1
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %4, i32 0, i32 1
  %6 = load %"struct.std::_Rb_tree_node_base"** %5, align 8
  %7 = bitcast %"struct.std::_Rb_tree_node_base"* %6 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_M_endEv(%"class.std::_Rb_tree"* %this) #5 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %3, i32 0, i32 1
  %5 = bitcast %"struct.std::_Rb_tree_node_base"* %4 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_leftmostEv(%"class.std::_Rb_tree"* %this) #5 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %3, i32 0, i32 1
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %4, i32 0, i32 2
  ret %"struct.std::_Rb_tree_node_base"** %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_rootEv(%"class.std::_Rb_tree"* %this) #5 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %3, i32 0, i32 1
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %4, i32 0, i32 1
  ret %"struct.std::_Rb_tree_node_base"** %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_rightmostEv(%"class.std::_Rb_tree"* %this) #5 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %3, i32 0, i32 1
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %4, i32 0, i32 3
  ret %"struct.std::_Rb_tree_node_base"** %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #5 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_node_base"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %2, i32 0, i32 3
  %4 = load %"struct.std::_Rb_tree_node_base"** %3, align 8
  %5 = bitcast %"struct.std::_Rb_tree_node_base"* %4 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #5 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_node_base"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %2, i32 0, i32 2
  %4 = load %"struct.std::_Rb_tree_node_base"** %3, align 8
  %5 = bitcast %"struct.std::_Rb_tree_node_base"* %4 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt17_Rb_tree_iteratorIiEC2EPSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_node"* %__x) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %1, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_iterator"** %1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %6 = bitcast %"struct.std::_Rb_tree_node"* %5 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::_Rb_tree_node_base"** %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %this, i32* %__x, i32* %__y) #5 align 2 {
  %1 = alloca %"struct.std::less"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %1, align 8
  store i32* %__x, i32** %2, align 8
  store i32* %__y, i32** %3, align 8
  %4 = load %"struct.std::less"** %1
  %5 = load i32** %2, align 8
  %6 = load i32* %5, align 4
  %7 = load i32** %3, align 8
  %8 = load i32* %7, align 4
  %9 = icmp slt i32 %6, %8
  ret i1 %9
}

; Function Attrs: uwtable
define linkonce_odr i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_node"* %__x) #2 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %2 = alloca %"struct.std::_Identity", align 1
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %1, align 8
  %3 = load %"struct.std::_Rb_tree_node"** %1, align 8
  %4 = call i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_valueEPKSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_node"* %3)
  %5 = call i32* @_ZNKSt9_IdentityIiEclERKi(%"struct.std::_Identity"* %2, i32* %4)
  ret i32* %5
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiES8_RKi(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"* %__y, i32* %__k) #2 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  %3 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %5 = alloca i32*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %3, align 8
  store %"struct.std::_Rb_tree_node"* %__y, %"struct.std::_Rb_tree_node"** %4, align 8
  store i32* %__k, i32** %5, align 8
  %6 = load %"class.std::_Rb_tree"** %2
  br label %7

; <label>:7                                       ; preds = %26, %0
  %8 = load %"struct.std::_Rb_tree_node"** %3, align 8
  %9 = icmp ne %"struct.std::_Rb_tree_node"* %8, null
  br i1 %9, label %10, label %27

; <label>:10                                      ; preds = %7
  %11 = getelementptr inbounds %"class.std::_Rb_tree"* %6, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %11, i32 0, i32 0
  %13 = load %"struct.std::_Rb_tree_node"** %3, align 8
  %14 = call i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_node"* %13)
  %15 = load i32** %5, align 8
  %16 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %12, i32* %14, i32* %15)
  br i1 %16, label %22, label %17

; <label>:17                                      ; preds = %10
  %18 = load %"struct.std::_Rb_tree_node"** %3, align 8
  store %"struct.std::_Rb_tree_node"* %18, %"struct.std::_Rb_tree_node"** %4, align 8
  %19 = load %"struct.std::_Rb_tree_node"** %3, align 8
  %20 = bitcast %"struct.std::_Rb_tree_node"* %19 to %"struct.std::_Rb_tree_node_base"*
  %21 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %20)
  store %"struct.std::_Rb_tree_node"* %21, %"struct.std::_Rb_tree_node"** %3, align 8
  br label %26

; <label>:22                                      ; preds = %10
  %23 = load %"struct.std::_Rb_tree_node"** %3, align 8
  %24 = bitcast %"struct.std::_Rb_tree_node"* %23 to %"struct.std::_Rb_tree_node_base"*
  %25 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %24)
  store %"struct.std::_Rb_tree_node"* %25, %"struct.std::_Rb_tree_node"** %3, align 8
  br label %26

; <label>:26                                      ; preds = %22, %17
  br label %7

; <label>:27                                      ; preds = %7
  %28 = load %"struct.std::_Rb_tree_node"** %4, align 8
  call void @_ZNSt17_Rb_tree_iteratorIiEC2EPSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_iterator"* %1, %"struct.std::_Rb_tree_node"* %28)
  %29 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %30 = load %"struct.std::_Rb_tree_node_base"** %29
  ret %"struct.std::_Rb_tree_node_base"* %30
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_upper_boundEPSt13_Rb_tree_nodeIiES8_RKi(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"* %__y, i32* %__k) #2 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  %3 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %5 = alloca i32*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %3, align 8
  store %"struct.std::_Rb_tree_node"* %__y, %"struct.std::_Rb_tree_node"** %4, align 8
  store i32* %__k, i32** %5, align 8
  %6 = load %"class.std::_Rb_tree"** %2
  br label %7

; <label>:7                                       ; preds = %26, %0
  %8 = load %"struct.std::_Rb_tree_node"** %3, align 8
  %9 = icmp ne %"struct.std::_Rb_tree_node"* %8, null
  br i1 %9, label %10, label %27

; <label>:10                                      ; preds = %7
  %11 = getelementptr inbounds %"class.std::_Rb_tree"* %6, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %11, i32 0, i32 0
  %13 = load i32** %5, align 8
  %14 = load %"struct.std::_Rb_tree_node"** %3, align 8
  %15 = call i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_node"* %14)
  %16 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %12, i32* %13, i32* %15)
  br i1 %16, label %17, label %22

; <label>:17                                      ; preds = %10
  %18 = load %"struct.std::_Rb_tree_node"** %3, align 8
  store %"struct.std::_Rb_tree_node"* %18, %"struct.std::_Rb_tree_node"** %4, align 8
  %19 = load %"struct.std::_Rb_tree_node"** %3, align 8
  %20 = bitcast %"struct.std::_Rb_tree_node"* %19 to %"struct.std::_Rb_tree_node_base"*
  %21 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %20)
  store %"struct.std::_Rb_tree_node"* %21, %"struct.std::_Rb_tree_node"** %3, align 8
  br label %26

; <label>:22                                      ; preds = %10
  %23 = load %"struct.std::_Rb_tree_node"** %3, align 8
  %24 = bitcast %"struct.std::_Rb_tree_node"* %23 to %"struct.std::_Rb_tree_node_base"*
  %25 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %24)
  store %"struct.std::_Rb_tree_node"* %25, %"struct.std::_Rb_tree_node"** %3, align 8
  br label %26

; <label>:26                                      ; preds = %22, %17
  br label %7

; <label>:27                                      ; preds = %7
  %28 = load %"struct.std::_Rb_tree_node"** %4, align 8
  call void @_ZNSt17_Rb_tree_iteratorIiEC2EPSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_iterator"* %1, %"struct.std::_Rb_tree_node"* %28)
  %29 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %30 = load %"struct.std::_Rb_tree_node_base"** %29
  ret %"struct.std::_Rb_tree_node_base"* %30
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt4pairISt17_Rb_tree_iteratorIiES1_EC2ERKS1_S4_(%"struct.std::pair.21"* %this, %"struct.std::_Rb_tree_iterator"* %__a, %"struct.std::_Rb_tree_iterator"* %__b) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::pair.21"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %3 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::pair.21"* %this, %"struct.std::pair.21"** %1, align 8
  store %"struct.std::_Rb_tree_iterator"* %__a, %"struct.std::_Rb_tree_iterator"** %2, align 8
  store %"struct.std::_Rb_tree_iterator"* %__b, %"struct.std::_Rb_tree_iterator"** %3, align 8
  %4 = load %"struct.std::pair.21"** %1
  %5 = getelementptr inbounds %"struct.std::pair.21"* %4, i32 0, i32 0
  %6 = load %"struct.std::_Rb_tree_iterator"** %2, align 8
  %7 = bitcast %"struct.std::_Rb_tree_iterator"* %5 to i8*
  %8 = bitcast %"struct.std::_Rb_tree_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 8, i1 false)
  %9 = getelementptr inbounds %"struct.std::pair.21"* %4, i32 0, i32 1
  %10 = load %"struct.std::_Rb_tree_iterator"** %3, align 8
  %11 = bitcast %"struct.std::_Rb_tree_iterator"* %9 to i8*
  %12 = bitcast %"struct.std::_Rb_tree_iterator"* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNKSt9_IdentityIiEclERKi(%"struct.std::_Identity"* %this, i32* %__x) #5 align 2 {
  %1 = alloca %"struct.std::_Identity"*, align 8
  %2 = alloca i32*, align 8
  store %"struct.std::_Identity"* %this, %"struct.std::_Identity"** %1, align 8
  store i32* %__x, i32** %2, align 8
  %3 = load %"struct.std::_Identity"** %1
  %4 = load i32** %2, align 8
  ret i32* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_valueEPKSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_node"* %__x) #5 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_node"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node"* %2, i32 0, i32 1
  ret i32* %3
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE9pop_frontEv(%"class.std::deque"* %this) #2 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4, i32 0, i32 2
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator"* %5, i32 0, i32 0
  %7 = load i32** %6, align 8
  %8 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %9 = getelementptr inbounds %"class.std::_Deque_base"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %9, i32 0, i32 2
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator"* %10, i32 0, i32 2
  %12 = load i32** %11, align 8
  %13 = getelementptr inbounds i32* %12, i64 -1
  %14 = icmp ne i32* %7, %13
  br i1 %14, label %15, label %30

; <label>:15                                      ; preds = %0
  %16 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %17 = getelementptr inbounds %"class.std::_Deque_base"* %16, i32 0, i32 0
  %18 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %17 to %"class.__gnu_cxx::new_allocator.3"*
  %19 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %20 = getelementptr inbounds %"class.std::_Deque_base"* %19, i32 0, i32 0
  %21 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %20, i32 0, i32 2
  %22 = getelementptr inbounds %"struct.std::_Deque_iterator"* %21, i32 0, i32 0
  %23 = load i32** %22, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE7destroyEPi(%"class.__gnu_cxx::new_allocator.3"* %18, i32* %23)
  %24 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %25 = getelementptr inbounds %"class.std::_Deque_base"* %24, i32 0, i32 0
  %26 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %25, i32 0, i32 2
  %27 = getelementptr inbounds %"struct.std::_Deque_iterator"* %26, i32 0, i32 0
  %28 = load i32** %27, align 8
  %29 = getelementptr inbounds i32* %28, i32 1
  store i32* %29, i32** %27, align 8
  br label %31

; <label>:30                                      ; preds = %0
  call void @_ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv(%"class.std::deque"* %2)
  br label %31

; <label>:31                                      ; preds = %30, %15
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE16_M_pop_front_auxEv(%"class.std::deque"* %this) #2 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4 to %"class.__gnu_cxx::new_allocator.3"*
  %6 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %7, i32 0, i32 2
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator"* %8, i32 0, i32 0
  %10 = load i32** %9, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE7destroyEPi(%"class.__gnu_cxx::new_allocator.3"* %5, i32* %10)
  %11 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %12 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %13 = getelementptr inbounds %"class.std::_Deque_base"* %12, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %13, i32 0, i32 2
  %15 = getelementptr inbounds %"struct.std::_Deque_iterator"* %14, i32 0, i32 1
  %16 = load i32** %15, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(%"class.std::_Deque_base"* %11, i32* %16)
  %17 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %18 = getelementptr inbounds %"class.std::_Deque_base"* %17, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %18, i32 0, i32 2
  %20 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %21 = getelementptr inbounds %"class.std::_Deque_base"* %20, i32 0, i32 0
  %22 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %21, i32 0, i32 2
  %23 = getelementptr inbounds %"struct.std::_Deque_iterator"* %22, i32 0, i32 3
  %24 = load i32*** %23, align 8
  %25 = getelementptr inbounds i32** %24, i64 1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %19, i32** %25)
  %26 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %27 = getelementptr inbounds %"class.std::_Deque_base"* %26, i32 0, i32 0
  %28 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %27, i32 0, i32 2
  %29 = getelementptr inbounds %"struct.std::_Deque_iterator"* %28, i32 0, i32 1
  %30 = load i32** %29, align 8
  %31 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %32 = getelementptr inbounds %"class.std::_Deque_base"* %31, i32 0, i32 0
  %33 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %32, i32 0, i32 2
  %34 = getelementptr inbounds %"struct.std::_Deque_iterator"* %33, i32 0, i32 0
  store i32* %30, i32** %34, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(%"class.std::_Deque_base"* %this, i32* %__p) #2 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca i32*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store i32* %__p, i32** %2, align 8
  %3 = load %"class.std::_Deque_base"** %1
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4 to %"class.std::allocator.2"*
  %6 = bitcast %"class.std::allocator.2"* %5 to %"class.__gnu_cxx::new_allocator.3"*
  %7 = load i32** %2, align 8
  %8 = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  call void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator.3"* %6, i32* %7, i64 %8)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %this, i32** %__new_node) #2 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  %2 = alloca i32**, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 8
  store i32** %__new_node, i32*** %2, align 8
  %3 = load %"struct.std::_Deque_iterator"** %1
  %4 = load i32*** %2, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 3
  store i32** %4, i32*** %5, align 8
  %6 = load i32*** %2, align 8
  %7 = load i32** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 1
  store i32* %7, i32** %8, align 8
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 1
  %10 = load i32** %9, align 8
  %11 = call i64 @_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv()
  %12 = getelementptr inbounds i32* %10, i64 %11
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 2
  store i32* %12, i32** %13, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv() #2 align 2 {
  %1 = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  ret i64 %1
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64 @_ZSt16__deque_buf_sizem(i64 %__size) #8 {
  %1 = alloca i64, align 8
  store i64 %__size, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = icmp ult i64 %2, 512
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = load i64* %1, align 8
  %6 = udiv i64 512, %5
  br label %8

; <label>:7                                       ; preds = %0
  br label %8

; <label>:8                                       ; preds = %7, %4
  %9 = phi i64 [ %6, %4 ], [ 1, %7 ]
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator.3"* %this, i32* %__p, i64) #5 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %2, align 8
  store i32* %__p, i32** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.3"** %2
  %6 = load i32** %3, align 8
  %7 = bitcast i32* %6 to i8*
  call void @_ZdlPv(i8* %7) #1
  ret void
}

; Function Attrs: uwtable
define linkonce_odr i32* @_ZNSt5dequeIiSaIiEE5frontEv(%"class.std::deque"* %this) #2 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %3 = load %"class.std::deque"** %1
  call void @_ZNSt5dequeIiSaIiEE5beginEv(%"struct.std::_Deque_iterator"* sret %2, %"class.std::deque"* %3)
  %4 = call i32* @_ZNKSt15_Deque_iteratorIiRiPiEdeEv(%"struct.std::_Deque_iterator"* %2)
  ret i32* %4
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE5beginEv(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"class.std::deque"* %this) #2 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNKSt15_Deque_iteratorIiRiPiEdeEv(%"struct.std::_Deque_iterator"* %this) #5 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 8
  %2 = load %"struct.std::_Deque_iterator"** %1
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 0
  %4 = load i32** %3, align 8
  ret i32* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"* %__x) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %2, align 8
  %3 = load %"struct.std::_Deque_iterator"** %1
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Deque_iterator"** %2, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator"* %5, i32 0, i32 0
  %7 = load i32** %6, align 8
  store i32* %7, i32** %4, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 1
  %9 = load %"struct.std::_Deque_iterator"** %2, align 8
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator"* %9, i32 0, i32 1
  %11 = load i32** %10, align 8
  store i32* %11, i32** %8, align 8
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 2
  %13 = load %"struct.std::_Deque_iterator"** %2, align 8
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator"* %13, i32 0, i32 2
  %15 = load i32** %14, align 8
  store i32* %15, i32** %12, align 8
  %16 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 3
  %17 = load %"struct.std::_Deque_iterator"** %2, align 8
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator"* %17, i32 0, i32 3
  %19 = load i32*** %18, align 8
  store i32** %19, i32*** %16, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZNKSt5dequeIiSaIiEE5emptyEv(%"class.std::deque"* %this) #2 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4, i32 0, i32 3
  %6 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %7, i32 0, i32 2
  %9 = call zeroext i1 @_ZSteqIiRiPiEbRKSt15_Deque_iteratorIT_T0_T1_ES8_(%"struct.std::_Deque_iterator"* %5, %"struct.std::_Deque_iterator"* %8)
  ret i1 %9
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr zeroext i1 @_ZSteqIiRiPiEbRKSt15_Deque_iteratorIT_T0_T1_ES8_(%"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"* %__y) #8 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %1, align 8
  store %"struct.std::_Deque_iterator"* %__y, %"struct.std::_Deque_iterator"** %2, align 8
  %3 = load %"struct.std::_Deque_iterator"** %1, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 0
  %5 = load i32** %4, align 8
  %6 = load %"struct.std::_Deque_iterator"** %2, align 8
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator"* %6, i32 0, i32 0
  %8 = load i32** %7, align 8
  %9 = icmp eq i32* %5, %8
  ret i1 %9
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE9push_backERKi(%"class.std::deque"* %this, i32* %__x) #2 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca i32*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  store i32* %__x, i32** %2, align 8
  %3 = load %"class.std::deque"** %1
  %4 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %5 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %5, i32 0, i32 3
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator"* %6, i32 0, i32 0
  %8 = load i32** %7, align 8
  %9 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %10 = getelementptr inbounds %"class.std::_Deque_base"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %10, i32 0, i32 3
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator"* %11, i32 0, i32 2
  %13 = load i32** %12, align 8
  %14 = getelementptr inbounds i32* %13, i64 -1
  %15 = icmp ne i32* %8, %14
  br i1 %15, label %16, label %32

; <label>:16                                      ; preds = %0
  %17 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %18 = getelementptr inbounds %"class.std::_Deque_base"* %17, i32 0, i32 0
  %19 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %18 to %"class.__gnu_cxx::new_allocator.3"*
  %20 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %21 = getelementptr inbounds %"class.std::_Deque_base"* %20, i32 0, i32 0
  %22 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %21, i32 0, i32 3
  %23 = getelementptr inbounds %"struct.std::_Deque_iterator"* %22, i32 0, i32 0
  %24 = load i32** %23, align 8
  %25 = load i32** %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE9constructEPiRKi(%"class.__gnu_cxx::new_allocator.3"* %19, i32* %24, i32* %25)
  %26 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %27 = getelementptr inbounds %"class.std::_Deque_base"* %26, i32 0, i32 0
  %28 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %27, i32 0, i32 3
  %29 = getelementptr inbounds %"struct.std::_Deque_iterator"* %28, i32 0, i32 0
  %30 = load i32** %29, align 8
  %31 = getelementptr inbounds i32* %30, i32 1
  store i32* %31, i32** %29, align 8
  br label %34

; <label>:32                                      ; preds = %0
  %33 = load i32** %2, align 8
  call void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxERKi(%"class.std::deque"* %3, i32* %33)
  br label %34

; <label>:34                                      ; preds = %32, %16
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE9constructEPiRKi(%"class.__gnu_cxx::new_allocator.3"* %this, i32* %__p, i32* %__val) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %1, align 8
  store i32* %__p, i32** %2, align 8
  store i32* %__val, i32** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator.3"** %1
  %5 = load i32** %2, align 8
  %6 = bitcast i32* %5 to i8*
  %7 = icmp eq i8* %6, null
  br i1 %7, label %12, label %8

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %6 to i32*
  %10 = load i32** %3, align 8
  %11 = load i32* %10, align 4
  store i32 %11, i32* %9, align 4
  br label %12

; <label>:12                                      ; preds = %8, %0
  %13 = phi i32* [ %9, %8 ], [ null, %0 ]
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxERKi(%"class.std::deque"* %this, i32* %__t) #2 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  store i32* %__t, i32** %2, align 8
  %5 = load %"class.std::deque"** %1
  call void @_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm(%"class.std::deque"* %5, i64 1)
  %6 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %7 = call i32* @_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %6)
  %8 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %9 = getelementptr inbounds %"class.std::_Deque_base"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %9, i32 0, i32 3
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator"* %10, i32 0, i32 3
  %12 = load i32*** %11, align 8
  %13 = getelementptr inbounds i32** %12, i64 1
  store i32* %7, i32** %13, align 8
  %14 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %15 = getelementptr inbounds %"class.std::_Deque_base"* %14, i32 0, i32 0
  %16 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %15 to %"class.__gnu_cxx::new_allocator.3"*
  %17 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %18 = getelementptr inbounds %"class.std::_Deque_base"* %17, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %18, i32 0, i32 3
  %20 = getelementptr inbounds %"struct.std::_Deque_iterator"* %19, i32 0, i32 0
  %21 = load i32** %20, align 8
  %22 = load i32** %2, align 8
  invoke void @_ZN9__gnu_cxx13new_allocatorIiE9constructEPiRKi(%"class.__gnu_cxx::new_allocator.3"* %16, i32* %21, i32* %22)
          to label %23 unwind label %43

; <label>:23                                      ; preds = %0
  %24 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %25 = getelementptr inbounds %"class.std::_Deque_base"* %24, i32 0, i32 0
  %26 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %25, i32 0, i32 3
  %27 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %28 = getelementptr inbounds %"class.std::_Deque_base"* %27, i32 0, i32 0
  %29 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %28, i32 0, i32 3
  %30 = getelementptr inbounds %"struct.std::_Deque_iterator"* %29, i32 0, i32 3
  %31 = load i32*** %30, align 8
  %32 = getelementptr inbounds i32** %31, i64 1
  invoke void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %26, i32** %32)
          to label %33 unwind label %43

; <label>:33                                      ; preds = %23
  %34 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %35 = getelementptr inbounds %"class.std::_Deque_base"* %34, i32 0, i32 0
  %36 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %35, i32 0, i32 3
  %37 = getelementptr inbounds %"struct.std::_Deque_iterator"* %36, i32 0, i32 1
  %38 = load i32** %37, align 8
  %39 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %40 = getelementptr inbounds %"class.std::_Deque_base"* %39, i32 0, i32 0
  %41 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %40, i32 0, i32 3
  %42 = getelementptr inbounds %"struct.std::_Deque_iterator"* %41, i32 0, i32 0
  store i32* %38, i32** %42, align 8
  br label %64

; <label>:43                                      ; preds = %23, %0
  %44 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %45 = extractvalue { i8*, i32 } %44, 0
  store i8* %45, i8** %3
  %46 = extractvalue { i8*, i32 } %44, 1
  store i32 %46, i32* %4
  br label %47

; <label>:47                                      ; preds = %43
  %48 = load i8** %3
  %49 = call i8* @__cxa_begin_catch(i8* %48) #1
  %50 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %51 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %52 = getelementptr inbounds %"class.std::_Deque_base"* %51, i32 0, i32 0
  %53 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %52, i32 0, i32 3
  %54 = getelementptr inbounds %"struct.std::_Deque_iterator"* %53, i32 0, i32 3
  %55 = load i32*** %54, align 8
  %56 = getelementptr inbounds i32** %55, i64 1
  %57 = load i32** %56, align 8
  invoke void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(%"class.std::_Deque_base"* %50, i32* %57)
          to label %58 unwind label %59

; <label>:58                                      ; preds = %47
  invoke void @__cxa_rethrow() #14
          to label %73 unwind label %59

; <label>:59                                      ; preds = %58, %47
  %60 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %61 = extractvalue { i8*, i32 } %60, 0
  store i8* %61, i8** %3
  %62 = extractvalue { i8*, i32 } %60, 1
  store i32 %62, i32* %4
  invoke void @__cxa_end_catch()
          to label %63 unwind label %70

; <label>:63                                      ; preds = %59
  br label %65

; <label>:64                                      ; preds = %33
  ret void

; <label>:65                                      ; preds = %63
  %66 = load i8** %3
  %67 = load i32* %4
  %68 = insertvalue { i8*, i32 } undef, i8* %66, 0
  %69 = insertvalue { i8*, i32 } %68, i32 %67, 1
  resume { i8*, i32 } %69

; <label>:70                                      ; preds = %59
  %71 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %72 = extractvalue { i8*, i32 } %71, 0
  call void @__clang_call_terminate(i8* %72) #12
  unreachable

; <label>:73                                      ; preds = %58
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm(%"class.std::deque"* %this, i64 %__nodes_to_add) #2 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  store i64 %__nodes_to_add, i64* %2, align 8
  %3 = load %"class.std::deque"** %1
  %4 = load i64* %2, align 8
  %5 = add i64 %4, 1
  %6 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %7, i32 0, i32 1
  %9 = load i64* %8, align 8
  %10 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %11 = getelementptr inbounds %"class.std::_Deque_base"* %10, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %11, i32 0, i32 3
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator"* %12, i32 0, i32 3
  %14 = load i32*** %13, align 8
  %15 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %16 = getelementptr inbounds %"class.std::_Deque_base"* %15, i32 0, i32 0
  %17 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %16, i32 0, i32 0
  %18 = load i32*** %17, align 8
  %19 = ptrtoint i32** %14 to i64
  %20 = ptrtoint i32** %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 8
  %23 = sub i64 %9, %22
  %24 = icmp ugt i64 %5, %23
  br i1 %24, label %25, label %27

; <label>:25                                      ; preds = %0
  %26 = load i64* %2, align 8
  call void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(%"class.std::deque"* %3, i64 %26, i1 zeroext false)
  br label %27

; <label>:27                                      ; preds = %25, %0
  ret void
}

; Function Attrs: uwtable
define linkonce_odr i32* @_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %this) #2 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"** %1
  %3 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %3 to %"class.std::allocator.2"*
  %5 = bitcast %"class.std::allocator.2"* %4 to %"class.__gnu_cxx::new_allocator.3"*
  %6 = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  %7 = call i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.3"* %5, i64 %6, i8* null)
  ret i32* %7
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: uwtable
define linkonce_odr i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.3"* %this, i64 %__n, i8*) #2 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.3"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.3"* %5) #1
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #14
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 4
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to i32*
  ret i32* %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.3"* %this) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.3"** %1
  ret i64 4611686018427387903
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #10

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #11

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(%"class.std::deque"* %this, i64 %__nodes_to_add, i1 zeroext %__add_at_front) #2 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  %__old_num_nodes = alloca i64, align 8
  %__new_num_nodes = alloca i64, align 8
  %__new_nstart = alloca i32**, align 8
  %__new_map_size = alloca i64, align 8
  %__new_map = alloca i32**, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  store i64 %__nodes_to_add, i64* %2, align 8
  %4 = zext i1 %__add_at_front to i8
  store i8 %4, i8* %3, align 1
  %5 = load %"class.std::deque"** %1
  %6 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %7, i32 0, i32 3
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator"* %8, i32 0, i32 3
  %10 = load i32*** %9, align 8
  %11 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %12 = getelementptr inbounds %"class.std::_Deque_base"* %11, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %12, i32 0, i32 2
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator"* %13, i32 0, i32 3
  %15 = load i32*** %14, align 8
  %16 = ptrtoint i32** %10 to i64
  %17 = ptrtoint i32** %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %__old_num_nodes, align 8
  %21 = load i64* %__old_num_nodes, align 8
  %22 = load i64* %2, align 8
  %23 = add i64 %21, %22
  store i64 %23, i64* %__new_num_nodes, align 8
  %24 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %25 = getelementptr inbounds %"class.std::_Deque_base"* %24, i32 0, i32 0
  %26 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %25, i32 0, i32 1
  %27 = load i64* %26, align 8
  %28 = load i64* %__new_num_nodes, align 8
  %29 = mul i64 2, %28
  %30 = icmp ugt i64 %27, %29
  br i1 %30, label %31, label %90

; <label>:31                                      ; preds = %0
  %32 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %33 = getelementptr inbounds %"class.std::_Deque_base"* %32, i32 0, i32 0
  %34 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %33, i32 0, i32 0
  %35 = load i32*** %34, align 8
  %36 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %37 = getelementptr inbounds %"class.std::_Deque_base"* %36, i32 0, i32 0
  %38 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %37, i32 0, i32 1
  %39 = load i64* %38, align 8
  %40 = load i64* %__new_num_nodes, align 8
  %41 = sub i64 %39, %40
  %42 = udiv i64 %41, 2
  %43 = getelementptr inbounds i32** %35, i64 %42
  %44 = load i8* %3, align 1
  %45 = trunc i8 %44 to i1
  br i1 %45, label %46, label %48

; <label>:46                                      ; preds = %31
  %47 = load i64* %2, align 8
  br label %49

; <label>:48                                      ; preds = %31
  br label %49

; <label>:49                                      ; preds = %48, %46
  %50 = phi i64 [ %47, %46 ], [ 0, %48 ]
  %51 = getelementptr inbounds i32** %43, i64 %50
  store i32** %51, i32*** %__new_nstart, align 8
  %52 = load i32*** %__new_nstart, align 8
  %53 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %54 = getelementptr inbounds %"class.std::_Deque_base"* %53, i32 0, i32 0
  %55 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %54, i32 0, i32 2
  %56 = getelementptr inbounds %"struct.std::_Deque_iterator"* %55, i32 0, i32 3
  %57 = load i32*** %56, align 8
  %58 = icmp ult i32** %52, %57
  br i1 %58, label %59, label %73

; <label>:59                                      ; preds = %49
  %60 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %61 = getelementptr inbounds %"class.std::_Deque_base"* %60, i32 0, i32 0
  %62 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %61, i32 0, i32 2
  %63 = getelementptr inbounds %"struct.std::_Deque_iterator"* %62, i32 0, i32 3
  %64 = load i32*** %63, align 8
  %65 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %66 = getelementptr inbounds %"class.std::_Deque_base"* %65, i32 0, i32 0
  %67 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %66, i32 0, i32 3
  %68 = getelementptr inbounds %"struct.std::_Deque_iterator"* %67, i32 0, i32 3
  %69 = load i32*** %68, align 8
  %70 = getelementptr inbounds i32** %69, i64 1
  %71 = load i32*** %__new_nstart, align 8
  %72 = call i32** @_ZSt4copyIPPiS1_ET0_T_S3_S2_(i32** %64, i32** %70, i32** %71)
  br label %89

; <label>:73                                      ; preds = %49
  %74 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %75 = getelementptr inbounds %"class.std::_Deque_base"* %74, i32 0, i32 0
  %76 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %75, i32 0, i32 2
  %77 = getelementptr inbounds %"struct.std::_Deque_iterator"* %76, i32 0, i32 3
  %78 = load i32*** %77, align 8
  %79 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %80 = getelementptr inbounds %"class.std::_Deque_base"* %79, i32 0, i32 0
  %81 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %80, i32 0, i32 3
  %82 = getelementptr inbounds %"struct.std::_Deque_iterator"* %81, i32 0, i32 3
  %83 = load i32*** %82, align 8
  %84 = getelementptr inbounds i32** %83, i64 1
  %85 = load i32*** %__new_nstart, align 8
  %86 = load i64* %__old_num_nodes, align 8
  %87 = getelementptr inbounds i32** %85, i64 %86
  %88 = call i32** @_ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_(i32** %78, i32** %84, i32** %87)
  br label %89

; <label>:89                                      ; preds = %73, %59
  br label %149

; <label>:90                                      ; preds = %0
  %91 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %92 = getelementptr inbounds %"class.std::_Deque_base"* %91, i32 0, i32 0
  %93 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %92, i32 0, i32 1
  %94 = load i64* %93, align 8
  %95 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %96 = getelementptr inbounds %"class.std::_Deque_base"* %95, i32 0, i32 0
  %97 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %96, i32 0, i32 1
  %98 = call i64* @_ZSt3maxImERKT_S2_S2_(i64* %97, i64* %2)
  %99 = load i64* %98
  %100 = add i64 %94, %99
  %101 = add i64 %100, 2
  store i64 %101, i64* %__new_map_size, align 8
  %102 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %103 = load i64* %__new_map_size, align 8
  %104 = call i32** @_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm(%"class.std::_Deque_base"* %102, i64 %103)
  store i32** %104, i32*** %__new_map, align 8
  %105 = load i32*** %__new_map, align 8
  %106 = load i64* %__new_map_size, align 8
  %107 = load i64* %__new_num_nodes, align 8
  %108 = sub i64 %106, %107
  %109 = udiv i64 %108, 2
  %110 = getelementptr inbounds i32** %105, i64 %109
  %111 = load i8* %3, align 1
  %112 = trunc i8 %111 to i1
  br i1 %112, label %113, label %115

; <label>:113                                     ; preds = %90
  %114 = load i64* %2, align 8
  br label %116

; <label>:115                                     ; preds = %90
  br label %116

; <label>:116                                     ; preds = %115, %113
  %117 = phi i64 [ %114, %113 ], [ 0, %115 ]
  %118 = getelementptr inbounds i32** %110, i64 %117
  store i32** %118, i32*** %__new_nstart, align 8
  %119 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %120 = getelementptr inbounds %"class.std::_Deque_base"* %119, i32 0, i32 0
  %121 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %120, i32 0, i32 2
  %122 = getelementptr inbounds %"struct.std::_Deque_iterator"* %121, i32 0, i32 3
  %123 = load i32*** %122, align 8
  %124 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %125 = getelementptr inbounds %"class.std::_Deque_base"* %124, i32 0, i32 0
  %126 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %125, i32 0, i32 3
  %127 = getelementptr inbounds %"struct.std::_Deque_iterator"* %126, i32 0, i32 3
  %128 = load i32*** %127, align 8
  %129 = getelementptr inbounds i32** %128, i64 1
  %130 = load i32*** %__new_nstart, align 8
  %131 = call i32** @_ZSt4copyIPPiS1_ET0_T_S3_S2_(i32** %123, i32** %129, i32** %130)
  %132 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %133 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %134 = getelementptr inbounds %"class.std::_Deque_base"* %133, i32 0, i32 0
  %135 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %134, i32 0, i32 0
  %136 = load i32*** %135, align 8
  %137 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %138 = getelementptr inbounds %"class.std::_Deque_base"* %137, i32 0, i32 0
  %139 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %138, i32 0, i32 1
  %140 = load i64* %139, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(%"class.std::_Deque_base"* %132, i32** %136, i64 %140)
  %141 = load i32*** %__new_map, align 8
  %142 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %143 = getelementptr inbounds %"class.std::_Deque_base"* %142, i32 0, i32 0
  %144 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %143, i32 0, i32 0
  store i32** %141, i32*** %144, align 8
  %145 = load i64* %__new_map_size, align 8
  %146 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %147 = getelementptr inbounds %"class.std::_Deque_base"* %146, i32 0, i32 0
  %148 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %147, i32 0, i32 1
  store i64 %145, i64* %148, align 8
  br label %149

; <label>:149                                     ; preds = %116, %89
  %150 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %151 = getelementptr inbounds %"class.std::_Deque_base"* %150, i32 0, i32 0
  %152 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %151, i32 0, i32 2
  %153 = load i32*** %__new_nstart, align 8
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %152, i32** %153)
  %154 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %155 = getelementptr inbounds %"class.std::_Deque_base"* %154, i32 0, i32 0
  %156 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %155, i32 0, i32 3
  %157 = load i32*** %__new_nstart, align 8
  %158 = load i64* %__old_num_nodes, align 8
  %159 = getelementptr inbounds i32** %157, i64 %158
  %160 = getelementptr inbounds i32** %159, i64 -1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %156, i32** %160)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32** @_ZSt4copyIPPiS1_ET0_T_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #3 {
  %1 = alloca i32**, align 8
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  store i32** %__first, i32*** %1, align 8
  store i32** %__last, i32*** %2, align 8
  store i32** %__result, i32*** %3, align 8
  %4 = load i32*** %1, align 8
  %5 = call i32** @_ZSt12__miter_baseIPPiENSt11_Miter_baseIT_E13iterator_typeES3_(i32** %4)
  %6 = load i32*** %2, align 8
  %7 = call i32** @_ZSt12__miter_baseIPPiENSt11_Miter_baseIT_E13iterator_typeES3_(i32** %6)
  %8 = load i32*** %3, align 8
  %9 = call i32** @_ZSt14__copy_move_a2ILb0EPPiS1_ET1_T0_S3_S2_(i32** %5, i32** %7, i32** %8)
  ret i32** %9
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32** @_ZSt13copy_backwardIPPiS1_ET0_T_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #3 {
  %1 = alloca i32**, align 8
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  store i32** %__first, i32*** %1, align 8
  store i32** %__last, i32*** %2, align 8
  store i32** %__result, i32*** %3, align 8
  %4 = load i32*** %1, align 8
  %5 = call i32** @_ZSt12__miter_baseIPPiENSt11_Miter_baseIT_E13iterator_typeES3_(i32** %4)
  %6 = load i32*** %2, align 8
  %7 = call i32** @_ZSt12__miter_baseIPPiENSt11_Miter_baseIT_E13iterator_typeES3_(i32** %6)
  %8 = load i32*** %3, align 8
  %9 = call i32** @_ZSt23__copy_move_backward_a2ILb0EPPiS1_ET1_T0_S3_S2_(i32** %5, i32** %7, i32** %8)
  ret i32** %9
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt3maxImERKT_S2_S2_(i64* %__a, i64* %__b) #8 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  store i64* %__a, i64** %2, align 8
  store i64* %__b, i64** %3, align 8
  %4 = load i64** %2, align 8
  %5 = load i64* %4, align 8
  %6 = load i64** %3, align 8
  %7 = load i64* %6, align 8
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %0
  %10 = load i64** %3, align 8
  store i64* %10, i64** %1
  br label %13

; <label>:11                                      ; preds = %0
  %12 = load i64** %2, align 8
  store i64* %12, i64** %1
  br label %13

; <label>:13                                      ; preds = %11, %9
  %14 = load i64** %1
  ret i64* %14
}

; Function Attrs: uwtable
define linkonce_odr i32** @_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm(%"class.std::_Deque_base"* %this, i64 %__n) #2 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %"class.std::allocator.22", align 1
  %4 = alloca i8*
  %5 = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %6 = load %"class.std::_Deque_base"** %1
  call void @_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv(%"class.std::allocator.22"* sret %3, %"class.std::_Deque_base"* %6)
  %7 = bitcast %"class.std::allocator.22"* %3 to %"class.__gnu_cxx::new_allocator.23"*
  %8 = load i64* %2, align 8
  %9 = invoke i32** @_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.23"* %7, i64 %8, i8* null)
          to label %10 unwind label %11

; <label>:10                                      ; preds = %0
  call void @_ZNSaIPiED2Ev(%"class.std::allocator.22"* %3) #1
  ret i32** %9

; <label>:11                                      ; preds = %0
  %12 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %4
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %5
  call void @_ZNSaIPiED2Ev(%"class.std::allocator.22"* %3) #1
  br label %15

; <label>:15                                      ; preds = %11
  %16 = load i8** %4
  %17 = load i32* %5
  %18 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(%"class.std::_Deque_base"* %this, i32** %__p, i64 %__n) #2 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca i32**, align 8
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::allocator.22", align 1
  %5 = alloca i8*
  %6 = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store i32** %__p, i32*** %2, align 8
  store i64 %__n, i64* %3, align 8
  %7 = load %"class.std::_Deque_base"** %1
  call void @_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv(%"class.std::allocator.22"* sret %4, %"class.std::_Deque_base"* %7)
  %8 = bitcast %"class.std::allocator.22"* %4 to %"class.__gnu_cxx::new_allocator.23"*
  %9 = load i32*** %2, align 8
  %10 = load i64* %3, align 8
  invoke void @_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.23"* %8, i32** %9, i64 %10)
          to label %11 unwind label %12

; <label>:11                                      ; preds = %0
  call void @_ZNSaIPiED2Ev(%"class.std::allocator.22"* %4) #1
  ret void

; <label>:12                                      ; preds = %0
  %13 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %5
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %6
  call void @_ZNSaIPiED2Ev(%"class.std::allocator.22"* %4) #1
  br label %16

; <label>:16                                      ; preds = %12
  %17 = load i8** %5
  %18 = load i32* %6
  %19 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNKSt11_Deque_baseIiSaIiEE20_M_get_map_allocatorEv(%"class.std::allocator.22"* noalias sret %agg.result, %"class.std::_Deque_base"* %this) #2 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"** %1
  %3 = call %"class.std::allocator.2"* @_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %2)
  call void @_ZNSaIPiEC2IiEERKSaIT_E(%"class.std::allocator.22"* %agg.result, %"class.std::allocator.2"* %3) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPiE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.23"* %this, i32** %__p, i64) #5 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.23"*, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.23"* %this, %"class.__gnu_cxx::new_allocator.23"** %2, align 8
  store i32** %__p, i32*** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.23"** %2
  %6 = load i32*** %3, align 8
  %7 = bitcast i32** %6 to i8*
  call void @_ZdlPv(i8* %7) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPiED2Ev(%"class.std::allocator.22"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::allocator.22"*, align 8
  store %"class.std::allocator.22"* %this, %"class.std::allocator.22"** %1, align 8
  %2 = load %"class.std::allocator.22"** %1
  %3 = bitcast %"class.std::allocator.22"* %2 to %"class.__gnu_cxx::new_allocator.23"*
  call void @_ZN9__gnu_cxx13new_allocatorIPiED2Ev(%"class.__gnu_cxx::new_allocator.23"* %3) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPiED2Ev(%"class.__gnu_cxx::new_allocator.23"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.23"*, align 8
  store %"class.__gnu_cxx::new_allocator.23"* %this, %"class.__gnu_cxx::new_allocator.23"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.23"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.2"* @_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #5 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"** %1
  %3 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %3 to %"class.std::allocator.2"*
  ret %"class.std::allocator.2"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPiEC2IiEERKSaIT_E(%"class.std::allocator.22"* %this, %"class.std::allocator.2"*) unnamed_addr #5 align 2 {
  %2 = alloca %"class.std::allocator.22"*, align 8
  %3 = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.22"* %this, %"class.std::allocator.22"** %2, align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %3, align 8
  %4 = load %"class.std::allocator.22"** %2
  %5 = bitcast %"class.std::allocator.22"* %4 to %"class.__gnu_cxx::new_allocator.23"*
  call void @_ZN9__gnu_cxx13new_allocatorIPiEC2Ev(%"class.__gnu_cxx::new_allocator.23"* %5) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPiEC2Ev(%"class.__gnu_cxx::new_allocator.23"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.23"*, align 8
  store %"class.__gnu_cxx::new_allocator.23"* %this, %"class.__gnu_cxx::new_allocator.23"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.23"** %1
  ret void
}

; Function Attrs: uwtable
define linkonce_odr i32** @_ZN9__gnu_cxx13new_allocatorIPiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.23"* %this, i64 %__n, i8*) #2 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.23"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.23"* %this, %"class.__gnu_cxx::new_allocator.23"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.23"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorIPiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.23"* %5) #1
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #14
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 8
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to i32**
  ret i32** %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIPiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.23"* %this) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.23"*, align 8
  store %"class.__gnu_cxx::new_allocator.23"* %this, %"class.__gnu_cxx::new_allocator.23"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.23"** %1
  ret i64 2305843009213693951
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32** @_ZSt23__copy_move_backward_a2ILb0EPPiS1_ET1_T0_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #3 {
  %1 = alloca i32**, align 8
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  store i32** %__first, i32*** %1, align 8
  store i32** %__last, i32*** %2, align 8
  store i32** %__result, i32*** %3, align 8
  %4 = load i32*** %1, align 8
  %5 = call i32** @_ZSt12__niter_baseIPPiENSt11_Niter_baseIT_E13iterator_typeES3_(i32** %4)
  %6 = load i32*** %2, align 8
  %7 = call i32** @_ZSt12__niter_baseIPPiENSt11_Niter_baseIT_E13iterator_typeES3_(i32** %6)
  %8 = load i32*** %3, align 8
  %9 = call i32** @_ZSt12__niter_baseIPPiENSt11_Niter_baseIT_E13iterator_typeES3_(i32** %8)
  %10 = call i32** @_ZSt22__copy_move_backward_aILb0EPPiS1_ET1_T0_S3_S2_(i32** %5, i32** %7, i32** %9)
  ret i32** %10
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32** @_ZSt12__miter_baseIPPiENSt11_Miter_baseIT_E13iterator_typeES3_(i32** %__it) #3 {
  %1 = alloca i32**, align 8
  store i32** %__it, i32*** %1, align 8
  %2 = load i32*** %1, align 8
  %3 = call i32** @_ZNSt10_Iter_baseIPPiLb0EE7_S_baseES1_(i32** %2)
  ret i32** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32** @_ZNSt10_Iter_baseIPPiLb0EE7_S_baseES1_(i32** %__it) #5 align 2 {
  %1 = alloca i32**, align 8
  store i32** %__it, i32*** %1, align 8
  %2 = load i32*** %1, align 8
  ret i32** %2
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32** @_ZSt22__copy_move_backward_aILb0EPPiS1_ET1_T0_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #3 {
  %1 = alloca i32**, align 8
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  %__simple = alloca i8, align 1
  store i32** %__first, i32*** %1, align 8
  store i32** %__last, i32*** %2, align 8
  store i32** %__result, i32*** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load i32*** %1, align 8
  %5 = load i32*** %2, align 8
  %6 = load i32*** %3, align 8
  %7 = call i32** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiEEPT_PKS4_S7_S5_(i32** %4, i32** %5, i32** %6)
  ret i32** %7
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32** @_ZSt12__niter_baseIPPiENSt11_Niter_baseIT_E13iterator_typeES3_(i32** %__it) #8 {
  %1 = alloca i32**, align 8
  store i32** %__it, i32*** %1, align 8
  %2 = load i32*** %1, align 8
  %3 = call i32** @_ZNSt10_Iter_baseIPPiLb0EE7_S_baseES1_(i32** %2)
  ret i32** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPiEEPT_PKS4_S7_S5_(i32** %__first, i32** %__last, i32** %__result) #5 align 2 {
  %1 = alloca i32**, align 8
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  %_Num = alloca i64, align 8
  store i32** %__first, i32*** %1, align 8
  store i32** %__last, i32*** %2, align 8
  store i32** %__result, i32*** %3, align 8
  %4 = load i32*** %2, align 8
  %5 = load i32*** %1, align 8
  %6 = ptrtoint i32** %4 to i64
  %7 = ptrtoint i32** %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  store i64 %9, i64* %_Num, align 8
  %10 = load i64* %_Num, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

; <label>:12                                      ; preds = %0
  %13 = load i32*** %3, align 8
  %14 = load i64* %_Num, align 8
  %15 = sub i64 0, %14
  %16 = getelementptr inbounds i32** %13, i64 %15
  %17 = bitcast i32** %16 to i8*
  %18 = load i32*** %1, align 8
  %19 = bitcast i32** %18 to i8*
  %20 = load i64* %_Num, align 8
  %21 = mul i64 8, %20
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %17, i8* %19, i64 %21, i32 8, i1 false)
  br label %22

; <label>:22                                      ; preds = %12, %0
  %23 = load i32*** %3, align 8
  %24 = load i64* %_Num, align 8
  %25 = sub i64 0, %24
  %26 = getelementptr inbounds i32** %23, i64 %25
  ret i32** %26
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: inlinehint uwtable
define linkonce_odr i32** @_ZSt14__copy_move_a2ILb0EPPiS1_ET1_T0_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #3 {
  %1 = alloca i32**, align 8
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  store i32** %__first, i32*** %1, align 8
  store i32** %__last, i32*** %2, align 8
  store i32** %__result, i32*** %3, align 8
  %4 = load i32*** %1, align 8
  %5 = call i32** @_ZSt12__niter_baseIPPiENSt11_Niter_baseIT_E13iterator_typeES3_(i32** %4)
  %6 = load i32*** %2, align 8
  %7 = call i32** @_ZSt12__niter_baseIPPiENSt11_Niter_baseIT_E13iterator_typeES3_(i32** %6)
  %8 = load i32*** %3, align 8
  %9 = call i32** @_ZSt12__niter_baseIPPiENSt11_Niter_baseIT_E13iterator_typeES3_(i32** %8)
  %10 = call i32** @_ZSt13__copy_move_aILb0EPPiS1_ET1_T0_S3_S2_(i32** %5, i32** %7, i32** %9)
  ret i32** %10
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32** @_ZSt13__copy_move_aILb0EPPiS1_ET1_T0_S3_S2_(i32** %__first, i32** %__last, i32** %__result) #3 {
  %1 = alloca i32**, align 8
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  %__simple = alloca i8, align 1
  store i32** %__first, i32*** %1, align 8
  store i32** %__last, i32*** %2, align 8
  store i32** %__result, i32*** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load i32*** %1, align 8
  %5 = load i32*** %2, align 8
  %6 = load i32*** %3, align 8
  %7 = call i32** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_(i32** %4, i32** %5, i32** %6)
  ret i32** %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPiEEPT_PKS4_S7_S5_(i32** %__first, i32** %__last, i32** %__result) #5 align 2 {
  %1 = alloca i32**, align 8
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  %_Num = alloca i64, align 8
  store i32** %__first, i32*** %1, align 8
  store i32** %__last, i32*** %2, align 8
  store i32** %__result, i32*** %3, align 8
  %4 = load i32*** %2, align 8
  %5 = load i32*** %1, align 8
  %6 = ptrtoint i32** %4 to i64
  %7 = ptrtoint i32** %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  store i64 %9, i64* %_Num, align 8
  %10 = load i64* %_Num, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

; <label>:12                                      ; preds = %0
  %13 = load i32*** %3, align 8
  %14 = bitcast i32** %13 to i8*
  %15 = load i32*** %1, align 8
  %16 = bitcast i32** %15 to i8*
  %17 = load i64* %_Num, align 8
  %18 = mul i64 8, %17
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %14, i8* %16, i64 %18, i32 8, i1 false)
  br label %19

; <label>:19                                      ; preds = %12, %0
  %20 = load i32*** %3, align 8
  %21 = load i64* %_Num, align 8
  %22 = getelementptr inbounds i32** %20, i64 %21
  ret i32** %22
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEEC2ERKS1_(%"class.std::deque"* %this, %"class.std::deque"* %__x) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca %"class.std::deque"*, align 8
  %3 = alloca %"struct.std::_Deque_iterator.25", align 8
  %4 = alloca i8*
  %5 = alloca i32
  %6 = alloca %"struct.std::_Deque_iterator.25", align 8
  %7 = alloca %"struct.std::_Deque_iterator", align 8
  %8 = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  store %"class.std::deque"* %__x, %"class.std::deque"** %2, align 8
  %9 = load %"class.std::deque"** %1
  %10 = bitcast %"class.std::deque"* %9 to %"class.std::_Deque_base"*
  %11 = load %"class.std::deque"** %2, align 8
  %12 = bitcast %"class.std::deque"* %11 to %"class.std::_Deque_base"*
  %13 = call %"class.std::allocator.2"* @_ZNKSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %12)
  %14 = load %"class.std::deque"** %2, align 8
  %15 = call i64 @_ZNKSt5dequeIiSaIiEE4sizeEv(%"class.std::deque"* %14)
  call void @_ZNSt11_Deque_baseIiSaIiEEC2ERKS0_m(%"class.std::_Deque_base"* %10, %"class.std::allocator.2"* %13, i64 %15)
  %16 = load %"class.std::deque"** %2, align 8
  invoke void @_ZNKSt5dequeIiSaIiEE5beginEv(%"struct.std::_Deque_iterator.25"* sret %3, %"class.std::deque"* %16)
          to label %17 unwind label %28

; <label>:17                                      ; preds = %0
  %18 = load %"class.std::deque"** %2, align 8
  invoke void @_ZNKSt5dequeIiSaIiEE3endEv(%"struct.std::_Deque_iterator.25"* sret %6, %"class.std::deque"* %18)
          to label %19 unwind label %28

; <label>:19                                      ; preds = %17
  %20 = bitcast %"class.std::deque"* %9 to %"class.std::_Deque_base"*
  %21 = getelementptr inbounds %"class.std::_Deque_base"* %20, i32 0, i32 0
  %22 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %21, i32 0, i32 2
  invoke void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %7, %"struct.std::_Deque_iterator"* %22)
          to label %23 unwind label %28

; <label>:23                                      ; preds = %19
  %24 = bitcast %"class.std::deque"* %9 to %"class.std::_Deque_base"*
  %25 = invoke %"class.std::allocator.2"* @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %24)
          to label %26 unwind label %28

; <label>:26                                      ; preds = %23
  invoke void @_ZSt22__uninitialized_copy_aISt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEiET0_T_S9_S8_RSaIT1_E(%"struct.std::_Deque_iterator"* sret %8, %"struct.std::_Deque_iterator.25"* byval align 8 %3, %"struct.std::_Deque_iterator.25"* byval align 8 %6, %"struct.std::_Deque_iterator"* %7, %"class.std::allocator.2"* %25)
          to label %27 unwind label %28

; <label>:27                                      ; preds = %26
  ret void

; <label>:28                                      ; preds = %26, %23, %19, %17, %0
  %29 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %30 = extractvalue { i8*, i32 } %29, 0
  store i8* %30, i8** %4
  %31 = extractvalue { i8*, i32 } %29, 1
  store i32 %31, i32* %5
  %32 = bitcast %"class.std::deque"* %9 to %"class.std::_Deque_base"*
  invoke void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* %32)
          to label %33 unwind label %39

; <label>:33                                      ; preds = %28
  br label %34

; <label>:34                                      ; preds = %33
  %35 = load i8** %4
  %36 = load i32* %5
  %37 = insertvalue { i8*, i32 } undef, i8* %35, 0
  %38 = insertvalue { i8*, i32 } %37, i32 %36, 1
  resume { i8*, i32 } %38

; <label>:39                                      ; preds = %28
  %40 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %41 = extractvalue { i8*, i32 } %40, 0
  call void @__clang_call_terminate(i8* %41) #12
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt5dequeIiSaIiEE4sizeEv(%"class.std::deque"* %this) #2 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4, i32 0, i32 3
  %6 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %7, i32 0, i32 2
  %9 = call i64 @_ZStmiIiRiPiENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS6_S9_(%"struct.std::_Deque_iterator"* %5, %"struct.std::_Deque_iterator"* %8)
  ret i64 %9
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEEC2ERKS0_m(%"class.std::_Deque_base"* %this, %"class.std::allocator.2"* %__a, i64 %__num_elements) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca %"class.std::allocator.2"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*
  %5 = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %2, align 8
  store i64 %__num_elements, i64* %3, align 8
  %6 = load %"class.std::_Deque_base"** %1
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %8 = load %"class.std::allocator.2"** %2, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2ERKS0_(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %7, %"class.std::allocator.2"* %8)
  %9 = load i64* %3, align 8
  invoke void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(%"class.std::_Deque_base"* %6, i64 %9)
          to label %10 unwind label %11

; <label>:10                                      ; preds = %0
  ret void

; <label>:11                                      ; preds = %0
  %12 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %4
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %5
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %7) #1
  br label %15

; <label>:15                                      ; preds = %11
  %16 = load i8** %4
  %17 = load i32* %5
  %18 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt22__uninitialized_copy_aISt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEiET0_T_S9_S8_RSaIT1_E(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.25"* byval align 8 %__first, %"struct.std::_Deque_iterator.25"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result, %"class.std::allocator.2"*) #3 {
  %2 = alloca %"class.std::allocator.2"*, align 8
  %3 = alloca %"struct.std::_Deque_iterator.25", align 8
  %4 = alloca %"struct.std::_Deque_iterator.25", align 8
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %2, align 8
  %6 = bitcast %"struct.std::_Deque_iterator.25"* %3 to i8*
  %7 = bitcast %"struct.std::_Deque_iterator.25"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  %8 = bitcast %"struct.std::_Deque_iterator.25"* %4 to i8*
  %9 = bitcast %"struct.std::_Deque_iterator.25"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %5, %"struct.std::_Deque_iterator"* %__result)
  call void @_ZSt18uninitialized_copyISt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET0_T_S9_S8_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator.25"* byval align 8 %3, %"struct.std::_Deque_iterator.25"* byval align 8 %4, %"struct.std::_Deque_iterator"* %5)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNKSt5dequeIiSaIiEE5beginEv(%"struct.std::_Deque_iterator.25"* noalias sret %agg.result, %"class.std::deque"* %this) #2 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorIiRKiPS0_EC2ERKS_IiRiPiE(%"struct.std::_Deque_iterator.25"* %agg.result, %"struct.std::_Deque_iterator"* %5)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNKSt5dequeIiSaIiEE3endEv(%"struct.std::_Deque_iterator.25"* noalias sret %agg.result, %"class.std::deque"* %this) #2 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorIiRKiPS0_EC2ERKS_IiRiPiE(%"struct.std::_Deque_iterator.25"* %agg.result, %"struct.std::_Deque_iterator"* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.2"* @_ZNSt11_Deque_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #5 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"** %1
  %3 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %3 to %"class.std::allocator.2"*
  ret %"class.std::allocator.2"* %4
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %4 = load %"class.std::_Deque_base"** %1
  %5 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %5, i32 0, i32 0
  %7 = load i32*** %6, align 8
  %8 = icmp ne i32** %7, null
  br i1 %8, label %9, label %32

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %10, i32 0, i32 2
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator"* %11, i32 0, i32 3
  %13 = load i32*** %12, align 8
  %14 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0
  %15 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %14, i32 0, i32 3
  %16 = getelementptr inbounds %"struct.std::_Deque_iterator"* %15, i32 0, i32 3
  %17 = load i32*** %16, align 8
  %18 = getelementptr inbounds i32** %17, i64 1
  invoke void @_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_(%"class.std::_Deque_base"* %4, i32** %13, i32** %18)
          to label %19 unwind label %27

; <label>:19                                      ; preds = %9
  %20 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0
  %21 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %20, i32 0, i32 0
  %22 = load i32*** %21, align 8
  %23 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0
  %24 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %23, i32 0, i32 1
  %25 = load i64* %24, align 8
  invoke void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(%"class.std::_Deque_base"* %4, i32** %22, i64 %25)
          to label %26 unwind label %27

; <label>:26                                      ; preds = %19
  br label %32

; <label>:27                                      ; preds = %19, %9
  %28 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %29 = extractvalue { i8*, i32 } %28, 0
  store i8* %29, i8** %2
  %30 = extractvalue { i8*, i32 } %28, 1
  store i32 %30, i32* %3
  %31 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %31) #1
  br label %34

; <label>:32                                      ; preds = %26, %0
  %33 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %33) #1
  ret void

; <label>:34                                      ; preds = %27
  %35 = load i8** %2
  %36 = load i32* %3
  %37 = insertvalue { i8*, i32 } undef, i8* %35, 0
  %38 = insertvalue { i8*, i32 } %37, i32 %36, 1
  resume { i8*, i32 } %38
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_(%"class.std::_Deque_base"* %this, i32** %__nstart, i32** %__nfinish) #2 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  %__n = alloca i32**, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store i32** %__nstart, i32*** %2, align 8
  store i32** %__nfinish, i32*** %3, align 8
  %4 = load %"class.std::_Deque_base"** %1
  %5 = load i32*** %2, align 8
  store i32** %5, i32*** %__n, align 8
  br label %6

; <label>:6                                       ; preds = %13, %0
  %7 = load i32*** %__n, align 8
  %8 = load i32*** %3, align 8
  %9 = icmp ult i32** %7, %8
  br i1 %9, label %10, label %16

; <label>:10                                      ; preds = %6
  %11 = load i32*** %__n, align 8
  %12 = load i32** %11, align 8
  call void @_ZNSt11_Deque_baseIiSaIiEE18_M_deallocate_nodeEPi(%"class.std::_Deque_base"* %4, i32* %12)
  br label %13

; <label>:13                                      ; preds = %10
  %14 = load i32*** %__n, align 8
  %15 = getelementptr inbounds i32** %14, i32 1
  store i32** %15, i32*** %__n, align 8
  br label %6

; <label>:16                                      ; preds = %6
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this) unnamed_addr #8 align 2 {
  %1 = alloca %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"*, align 8
  store %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this, %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"** %1, align 8
  %2 = load %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"** %1
  %3 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %2 to %"class.std::allocator.2"*
  call void @_ZNSaIiED2Ev(%"class.std::allocator.2"* %3) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorIiRKiPS0_EC2ERKS_IiRiPiE(%"struct.std::_Deque_iterator.25"* %this, %"struct.std::_Deque_iterator"* %__x) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator.25"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator.25"* %this, %"struct.std::_Deque_iterator.25"** %1, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %2, align 8
  %3 = load %"struct.std::_Deque_iterator.25"** %1
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator.25"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Deque_iterator"** %2, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator"* %5, i32 0, i32 0
  %7 = load i32** %6, align 8
  store i32* %7, i32** %4, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator.25"* %3, i32 0, i32 1
  %9 = load %"struct.std::_Deque_iterator"** %2, align 8
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator"* %9, i32 0, i32 1
  %11 = load i32** %10, align 8
  store i32* %11, i32** %8, align 8
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator.25"* %3, i32 0, i32 2
  %13 = load %"struct.std::_Deque_iterator"** %2, align 8
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator"* %13, i32 0, i32 2
  %15 = load i32** %14, align 8
  store i32* %15, i32** %12, align 8
  %16 = getelementptr inbounds %"struct.std::_Deque_iterator.25"* %3, i32 0, i32 3
  %17 = load %"struct.std::_Deque_iterator"** %2, align 8
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator"* %17, i32 0, i32 3
  %19 = load i32*** %18, align 8
  store i32** %19, i32*** %16, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt18uninitialized_copyISt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET0_T_S9_S8_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.25"* byval align 8 %__first, %"struct.std::_Deque_iterator.25"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result) #3 {
  %1 = alloca %"struct.std::_Deque_iterator.25", align 8
  %2 = alloca %"struct.std::_Deque_iterator.25", align 8
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  %4 = bitcast %"struct.std::_Deque_iterator.25"* %1 to i8*
  %5 = bitcast %"struct.std::_Deque_iterator.25"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  %6 = bitcast %"struct.std::_Deque_iterator.25"* %2 to i8*
  %7 = bitcast %"struct.std::_Deque_iterator.25"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %3, %"struct.std::_Deque_iterator"* %__result)
  call void @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt15_Deque_iteratorIiRKiPS3_ES2_IiRiPiEEET0_T_SB_SA_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator.25"* byval align 8 %1, %"struct.std::_Deque_iterator.25"* byval align 8 %2, %"struct.std::_Deque_iterator"* %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt15_Deque_iteratorIiRKiPS3_ES2_IiRiPiEEET0_T_SB_SA_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.25"* byval align 8 %__first, %"struct.std::_Deque_iterator.25"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result) #2 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator.25", align 8
  %2 = alloca %"struct.std::_Deque_iterator.25", align 8
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  %4 = bitcast %"struct.std::_Deque_iterator.25"* %1 to i8*
  %5 = bitcast %"struct.std::_Deque_iterator.25"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  %6 = bitcast %"struct.std::_Deque_iterator.25"* %2 to i8*
  %7 = bitcast %"struct.std::_Deque_iterator.25"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %3, %"struct.std::_Deque_iterator"* %__result)
  call void @_ZSt4copyISt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET0_T_S9_S8_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator.25"* byval align 8 %1, %"struct.std::_Deque_iterator.25"* byval align 8 %2, %"struct.std::_Deque_iterator"* %3)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt4copyISt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET0_T_S9_S8_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.25"* byval align 8 %__first, %"struct.std::_Deque_iterator.25"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result) #3 {
  %1 = alloca %"struct.std::_Deque_iterator.25", align 8
  %2 = alloca %"struct.std::_Deque_iterator.25", align 8
  %3 = alloca %"struct.std::_Deque_iterator.25", align 8
  %4 = alloca %"struct.std::_Deque_iterator.25", align 8
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  %6 = bitcast %"struct.std::_Deque_iterator.25"* %2 to i8*
  %7 = bitcast %"struct.std::_Deque_iterator.25"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  call void @_ZSt12__miter_baseISt15_Deque_iteratorIiRKiPS1_EENSt11_Miter_baseIT_E13iterator_typeES6_(%"struct.std::_Deque_iterator.25"* sret %1, %"struct.std::_Deque_iterator.25"* byval align 8 %2)
  %8 = bitcast %"struct.std::_Deque_iterator.25"* %4 to i8*
  %9 = bitcast %"struct.std::_Deque_iterator.25"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  call void @_ZSt12__miter_baseISt15_Deque_iteratorIiRKiPS1_EENSt11_Miter_baseIT_E13iterator_typeES6_(%"struct.std::_Deque_iterator.25"* sret %3, %"struct.std::_Deque_iterator.25"* byval align 8 %4)
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %5, %"struct.std::_Deque_iterator"* %__result)
  call void @_ZSt14__copy_move_a2ILb0ESt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET1_T0_S9_S8_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator.25"* byval align 8 %1, %"struct.std::_Deque_iterator.25"* byval align 8 %3, %"struct.std::_Deque_iterator"* %5)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt14__copy_move_a2ILb0ESt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET1_T0_S9_S8_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.25"* byval align 8 %__first, %"struct.std::_Deque_iterator.25"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result) #3 {
  %1 = alloca %"struct.std::_Deque_iterator.25", align 8
  %2 = alloca %"struct.std::_Deque_iterator.25", align 8
  %3 = alloca %"struct.std::_Deque_iterator.25", align 8
  %4 = alloca %"struct.std::_Deque_iterator.25", align 8
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  %6 = alloca %"struct.std::_Deque_iterator", align 8
  %7 = bitcast %"struct.std::_Deque_iterator.25"* %2 to i8*
  %8 = bitcast %"struct.std::_Deque_iterator.25"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 32, i32 8, i1 false)
  call void @_ZSt12__niter_baseISt15_Deque_iteratorIiRKiPS1_EENSt11_Niter_baseIT_E13iterator_typeES6_(%"struct.std::_Deque_iterator.25"* sret %1, %"struct.std::_Deque_iterator.25"* byval align 8 %2)
  %9 = bitcast %"struct.std::_Deque_iterator.25"* %4 to i8*
  %10 = bitcast %"struct.std::_Deque_iterator.25"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 32, i32 8, i1 false)
  call void @_ZSt12__niter_baseISt15_Deque_iteratorIiRKiPS1_EENSt11_Niter_baseIT_E13iterator_typeES6_(%"struct.std::_Deque_iterator.25"* sret %3, %"struct.std::_Deque_iterator.25"* byval align 8 %4)
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %6, %"struct.std::_Deque_iterator"* %__result)
  call void @_ZSt12__niter_baseISt15_Deque_iteratorIiRiPiEENSt11_Niter_baseIT_E13iterator_typeES5_(%"struct.std::_Deque_iterator"* sret %5, %"struct.std::_Deque_iterator"* %6)
  call void @_ZSt13__copy_move_aILb0ESt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET1_T0_S9_S8_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator.25"* byval align 8 %1, %"struct.std::_Deque_iterator.25"* byval align 8 %3, %"struct.std::_Deque_iterator"* %5)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt12__miter_baseISt15_Deque_iteratorIiRKiPS1_EENSt11_Miter_baseIT_E13iterator_typeES6_(%"struct.std::_Deque_iterator.25"* noalias sret %agg.result, %"struct.std::_Deque_iterator.25"* byval align 8 %__it) #3 {
  %1 = alloca %"struct.std::_Deque_iterator.25", align 8
  %2 = bitcast %"struct.std::_Deque_iterator.25"* %1 to i8*
  %3 = bitcast %"struct.std::_Deque_iterator.25"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  call void @_ZNSt10_Iter_baseISt15_Deque_iteratorIiRKiPS1_ELb0EE7_S_baseES4_(%"struct.std::_Deque_iterator.25"* sret %agg.result, %"struct.std::_Deque_iterator.25"* byval align 8 %1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt10_Iter_baseISt15_Deque_iteratorIiRKiPS1_ELb0EE7_S_baseES4_(%"struct.std::_Deque_iterator.25"* noalias sret %agg.result, %"struct.std::_Deque_iterator.25"* byval align 8 %__it) #5 align 2 {
  %1 = bitcast %"struct.std::_Deque_iterator.25"* %agg.result to i8*
  %2 = bitcast %"struct.std::_Deque_iterator.25"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt13__copy_move_aILb0ESt15_Deque_iteratorIiRKiPS1_ES0_IiRiPiEET1_T0_S9_S8_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.25"* byval align 8 %__first, %"struct.std::_Deque_iterator.25"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result) #3 {
  %__simple = alloca i8, align 1
  %1 = alloca %"struct.std::_Deque_iterator.25", align 8
  %2 = alloca %"struct.std::_Deque_iterator.25", align 8
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  store i8 0, i8* %__simple, align 1
  %4 = bitcast %"struct.std::_Deque_iterator.25"* %1 to i8*
  %5 = bitcast %"struct.std::_Deque_iterator.25"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  %6 = bitcast %"struct.std::_Deque_iterator.25"* %2 to i8*
  %7 = bitcast %"struct.std::_Deque_iterator.25"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %3, %"struct.std::_Deque_iterator"* %__result)
  call void @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt15_Deque_iteratorIiRKiPS4_ES3_IiRiPiEEET0_T_SC_SB_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator.25"* byval align 8 %1, %"struct.std::_Deque_iterator.25"* byval align 8 %2, %"struct.std::_Deque_iterator"* %3)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt12__niter_baseISt15_Deque_iteratorIiRKiPS1_EENSt11_Niter_baseIT_E13iterator_typeES6_(%"struct.std::_Deque_iterator.25"* noalias sret %agg.result, %"struct.std::_Deque_iterator.25"* byval align 8 %__it) #8 {
  %1 = alloca %"struct.std::_Deque_iterator.25", align 8
  %2 = bitcast %"struct.std::_Deque_iterator.25"* %1 to i8*
  %3 = bitcast %"struct.std::_Deque_iterator.25"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  call void @_ZNSt10_Iter_baseISt15_Deque_iteratorIiRKiPS1_ELb0EE7_S_baseES4_(%"struct.std::_Deque_iterator.25"* sret %agg.result, %"struct.std::_Deque_iterator.25"* byval align 8 %1)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt12__niter_baseISt15_Deque_iteratorIiRiPiEENSt11_Niter_baseIT_E13iterator_typeES5_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator"* %__it) #3 {
  %1 = alloca %"struct.std::_Deque_iterator", align 8
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %1, %"struct.std::_Deque_iterator"* %__it)
  call void @_ZNSt10_Iter_baseISt15_Deque_iteratorIiRiPiELb0EE7_S_baseES3_(%"struct.std::_Deque_iterator"* sret %agg.result, %"struct.std::_Deque_iterator"* %1)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt10_Iter_baseISt15_Deque_iteratorIiRiPiELb0EE7_S_baseES3_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator"* %__it) #2 align 2 {
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* %__it)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt15_Deque_iteratorIiRKiPS4_ES3_IiRiPiEEET0_T_SC_SB_(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"struct.std::_Deque_iterator.25"* byval align 8 %__first, %"struct.std::_Deque_iterator.25"* byval align 8 %__last, %"struct.std::_Deque_iterator"* %__result) #2 align 2 {
  %__n = alloca i64, align 8
  %1 = call i64 @_ZStmiIiRKiPS0_ENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS7_SA_(%"struct.std::_Deque_iterator.25"* %__last, %"struct.std::_Deque_iterator.25"* %__first)
  store i64 %1, i64* %__n, align 8
  br label %2

; <label>:2                                       ; preds = %11, %0
  %3 = load i64* %__n, align 8
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %14

; <label>:5                                       ; preds = %2
  %6 = call i32* @_ZNKSt15_Deque_iteratorIiRKiPS0_EdeEv(%"struct.std::_Deque_iterator.25"* %__first)
  %7 = load i32* %6
  %8 = call i32* @_ZNKSt15_Deque_iteratorIiRiPiEdeEv(%"struct.std::_Deque_iterator"* %__result)
  store i32 %7, i32* %8
  %9 = call %"struct.std::_Deque_iterator.25"* @_ZNSt15_Deque_iteratorIiRKiPS0_EppEv(%"struct.std::_Deque_iterator.25"* %__first)
  %10 = call %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIiRiPiEppEv(%"struct.std::_Deque_iterator"* %__result)
  br label %11

; <label>:11                                      ; preds = %5
  %12 = load i64* %__n, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %__n, align 8
  br label %2

; <label>:14                                      ; preds = %2
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* %__result)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64 @_ZStmiIiRKiPS0_ENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS7_SA_(%"struct.std::_Deque_iterator.25"* %__x, %"struct.std::_Deque_iterator.25"* %__y) #8 {
  %1 = alloca %"struct.std::_Deque_iterator.25"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator.25"*, align 8
  store %"struct.std::_Deque_iterator.25"* %__x, %"struct.std::_Deque_iterator.25"** %1, align 8
  store %"struct.std::_Deque_iterator.25"* %__y, %"struct.std::_Deque_iterator.25"** %2, align 8
  %3 = call i64 @_ZNSt15_Deque_iteratorIiRKiPS0_E14_S_buffer_sizeEv()
  %4 = load %"struct.std::_Deque_iterator.25"** %1, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator.25"* %4, i32 0, i32 3
  %6 = load i32*** %5, align 8
  %7 = load %"struct.std::_Deque_iterator.25"** %2, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator.25"* %7, i32 0, i32 3
  %9 = load i32*** %8, align 8
  %10 = ptrtoint i32** %6 to i64
  %11 = ptrtoint i32** %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = sub nsw i64 %13, 1
  %15 = mul nsw i64 %3, %14
  %16 = load %"struct.std::_Deque_iterator.25"** %1, align 8
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator.25"* %16, i32 0, i32 0
  %18 = load i32** %17, align 8
  %19 = load %"struct.std::_Deque_iterator.25"** %1, align 8
  %20 = getelementptr inbounds %"struct.std::_Deque_iterator.25"* %19, i32 0, i32 1
  %21 = load i32** %20, align 8
  %22 = ptrtoint i32* %18 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = add nsw i64 %15, %25
  %27 = load %"struct.std::_Deque_iterator.25"** %2, align 8
  %28 = getelementptr inbounds %"struct.std::_Deque_iterator.25"* %27, i32 0, i32 2
  %29 = load i32** %28, align 8
  %30 = load %"struct.std::_Deque_iterator.25"** %2, align 8
  %31 = getelementptr inbounds %"struct.std::_Deque_iterator.25"* %30, i32 0, i32 0
  %32 = load i32** %31, align 8
  %33 = ptrtoint i32* %29 to i64
  %34 = ptrtoint i32* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 4
  %37 = add nsw i64 %26, %36
  ret i64 %37
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNKSt15_Deque_iteratorIiRKiPS0_EdeEv(%"struct.std::_Deque_iterator.25"* %this) #5 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator.25"*, align 8
  store %"struct.std::_Deque_iterator.25"* %this, %"struct.std::_Deque_iterator.25"** %1, align 8
  %2 = load %"struct.std::_Deque_iterator.25"** %1
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator.25"* %2, i32 0, i32 0
  %4 = load i32** %3, align 8
  ret i32* %4
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Deque_iterator.25"* @_ZNSt15_Deque_iteratorIiRKiPS0_EppEv(%"struct.std::_Deque_iterator.25"* %this) #2 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator.25"*, align 8
  store %"struct.std::_Deque_iterator.25"* %this, %"struct.std::_Deque_iterator.25"** %1, align 8
  %2 = load %"struct.std::_Deque_iterator.25"** %1
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator.25"* %2, i32 0, i32 0
  %4 = load i32** %3, align 8
  %5 = getelementptr inbounds i32* %4, i32 1
  store i32* %5, i32** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator.25"* %2, i32 0, i32 0
  %7 = load i32** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator.25"* %2, i32 0, i32 2
  %9 = load i32** %8, align 8
  %10 = icmp eq i32* %7, %9
  br i1 %10, label %11, label %18

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator.25"* %2, i32 0, i32 3
  %13 = load i32*** %12, align 8
  %14 = getelementptr inbounds i32** %13, i64 1
  call void @_ZNSt15_Deque_iteratorIiRKiPS0_E11_M_set_nodeEPPi(%"struct.std::_Deque_iterator.25"* %2, i32** %14)
  %15 = getelementptr inbounds %"struct.std::_Deque_iterator.25"* %2, i32 0, i32 1
  %16 = load i32** %15, align 8
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator.25"* %2, i32 0, i32 0
  store i32* %16, i32** %17, align 8
  br label %18

; <label>:18                                      ; preds = %11, %0
  ret %"struct.std::_Deque_iterator.25"* %2
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Deque_iterator"* @_ZNSt15_Deque_iteratorIiRiPiEppEv(%"struct.std::_Deque_iterator"* %this) #2 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 8
  %2 = load %"struct.std::_Deque_iterator"** %1
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 0
  %4 = load i32** %3, align 8
  %5 = getelementptr inbounds i32* %4, i32 1
  store i32* %5, i32** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 0
  %7 = load i32** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 2
  %9 = load i32** %8, align 8
  %10 = icmp eq i32* %7, %9
  br i1 %10, label %11, label %18

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 3
  %13 = load i32*** %12, align 8
  %14 = getelementptr inbounds i32** %13, i64 1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %2, i32** %14)
  %15 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 1
  %16 = load i32** %15, align 8
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 0
  store i32* %16, i32** %17, align 8
  br label %18

; <label>:18                                      ; preds = %11, %0
  ret %"struct.std::_Deque_iterator"* %2
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorIiRKiPS0_E11_M_set_nodeEPPi(%"struct.std::_Deque_iterator.25"* %this, i32** %__new_node) #2 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator.25"*, align 8
  %2 = alloca i32**, align 8
  store %"struct.std::_Deque_iterator.25"* %this, %"struct.std::_Deque_iterator.25"** %1, align 8
  store i32** %__new_node, i32*** %2, align 8
  %3 = load %"struct.std::_Deque_iterator.25"** %1
  %4 = load i32*** %2, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator.25"* %3, i32 0, i32 3
  store i32** %4, i32*** %5, align 8
  %6 = load i32*** %2, align 8
  %7 = load i32** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator.25"* %3, i32 0, i32 1
  store i32* %7, i32** %8, align 8
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator.25"* %3, i32 0, i32 1
  %10 = load i32** %9, align 8
  %11 = call i64 @_ZNSt15_Deque_iteratorIiRKiPS0_E14_S_buffer_sizeEv()
  %12 = getelementptr inbounds i32* %10, i64 %11
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator.25"* %3, i32 0, i32 2
  store i32* %12, i32** %13, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNSt15_Deque_iteratorIiRKiPS0_E14_S_buffer_sizeEv() #5 align 2 {
  %1 = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  ret i64 %1
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2ERKS0_(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this, %"class.std::allocator.2"* %__a) unnamed_addr #2 align 2 {
  %1 = alloca %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"*, align 8
  %2 = alloca %"class.std::allocator.2"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this, %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"** %1, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %2, align 8
  %5 = load %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"** %1
  %6 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %5 to %"class.std::allocator.2"*
  %7 = load %"class.std::allocator.2"** %2, align 8
  call void @_ZNSaIiEC2ERKS_(%"class.std::allocator.2"* %6, %"class.std::allocator.2"* %7) #1
  %8 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %5, i32 0, i32 0
  store i32** null, i32*** %8, align 8
  %9 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %5, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %5, i32 0, i32 2
  invoke void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(%"struct.std::_Deque_iterator"* %10)
          to label %11 unwind label %14

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %5, i32 0, i32 3
  invoke void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(%"struct.std::_Deque_iterator"* %12)
          to label %13 unwind label %14

; <label>:13                                      ; preds = %11
  ret void

; <label>:14                                      ; preds = %11, %0
  %15 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %3
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %4
  %18 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %5 to %"class.std::allocator.2"*
  call void @_ZNSaIiED2Ev(%"class.std::allocator.2"* %18) #1
  br label %19

; <label>:19                                      ; preds = %14
  %20 = load i8** %3
  %21 = load i32* %4
  %22 = insertvalue { i8*, i32 } undef, i8* %20, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(%"class.std::_Deque_base"* %this, i64 %__num_elements) #2 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca i64, align 8
  %__num_nodes = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %__nstart = alloca i32**, align 8
  %__nfinish = alloca i32**, align 8
  %5 = alloca i8*
  %6 = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store i64 %__num_elements, i64* %2, align 8
  %7 = load %"class.std::_Deque_base"** %1
  %8 = load i64* %2, align 8
  %9 = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  %10 = udiv i64 %8, %9
  %11 = add i64 %10, 1
  store i64 %11, i64* %__num_nodes, align 8
  store i64 8, i64* %3
  %12 = load i64* %__num_nodes, align 8
  %13 = add i64 %12, 2
  store i64 %13, i64* %4
  %14 = call i64* @_ZSt3maxImERKT_S2_S2_(i64* %3, i64* %4)
  %15 = load i64* %14
  %16 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0
  %17 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %18, i32 0, i32 1
  %20 = load i64* %19, align 8
  %21 = call i32** @_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm(%"class.std::_Deque_base"* %7, i64 %20)
  %22 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0
  %23 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %22, i32 0, i32 0
  store i32** %21, i32*** %23, align 8
  %24 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0
  %25 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %24, i32 0, i32 0
  %26 = load i32*** %25, align 8
  %27 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0
  %28 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %27, i32 0, i32 1
  %29 = load i64* %28, align 8
  %30 = load i64* %__num_nodes, align 8
  %31 = sub i64 %29, %30
  %32 = udiv i64 %31, 2
  %33 = getelementptr inbounds i32** %26, i64 %32
  store i32** %33, i32*** %__nstart, align 8
  %34 = load i32*** %__nstart, align 8
  %35 = load i64* %__num_nodes, align 8
  %36 = getelementptr inbounds i32** %34, i64 %35
  store i32** %36, i32*** %__nfinish, align 8
  %37 = load i32*** %__nstart, align 8
  %38 = load i32*** %__nfinish, align 8
  invoke void @_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_(%"class.std::_Deque_base"* %7, i32** %37, i32** %38)
          to label %39 unwind label %40

; <label>:39                                      ; preds = %0
  br label %63

; <label>:40                                      ; preds = %0
  %41 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %42 = extractvalue { i8*, i32 } %41, 0
  store i8* %42, i8** %5
  %43 = extractvalue { i8*, i32 } %41, 1
  store i32 %43, i32* %6
  br label %44

; <label>:44                                      ; preds = %40
  %45 = load i8** %5
  %46 = call i8* @__cxa_begin_catch(i8* %45) #1
  %47 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0
  %48 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %47, i32 0, i32 0
  %49 = load i32*** %48, align 8
  %50 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0
  %51 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %50, i32 0, i32 1
  %52 = load i64* %51, align 8
  invoke void @_ZNSt11_Deque_baseIiSaIiEE17_M_deallocate_mapEPPim(%"class.std::_Deque_base"* %7, i32** %49, i64 %52)
          to label %53 unwind label %58

; <label>:53                                      ; preds = %44
  %54 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0
  %55 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %54, i32 0, i32 0
  store i32** null, i32*** %55, align 8
  %56 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0
  %57 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  invoke void @__cxa_rethrow() #14
          to label %97 unwind label %58

; <label>:58                                      ; preds = %53, %44
  %59 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %60 = extractvalue { i8*, i32 } %59, 0
  store i8* %60, i8** %5
  %61 = extractvalue { i8*, i32 } %59, 1
  store i32 %61, i32* %6
  invoke void @__cxa_end_catch()
          to label %62 unwind label %94

; <label>:62                                      ; preds = %58
  br label %89

; <label>:63                                      ; preds = %39
  %64 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0
  %65 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %64, i32 0, i32 2
  %66 = load i32*** %__nstart, align 8
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %65, i32** %66)
  %67 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0
  %68 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %67, i32 0, i32 3
  %69 = load i32*** %__nfinish, align 8
  %70 = getelementptr inbounds i32** %69, i64 -1
  call void @_ZNSt15_Deque_iteratorIiRiPiE11_M_set_nodeEPS1_(%"struct.std::_Deque_iterator"* %68, i32** %70)
  %71 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0
  %72 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %71, i32 0, i32 2
  %73 = getelementptr inbounds %"struct.std::_Deque_iterator"* %72, i32 0, i32 1
  %74 = load i32** %73, align 8
  %75 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0
  %76 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %75, i32 0, i32 2
  %77 = getelementptr inbounds %"struct.std::_Deque_iterator"* %76, i32 0, i32 0
  store i32* %74, i32** %77, align 8
  %78 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0
  %79 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %78, i32 0, i32 3
  %80 = getelementptr inbounds %"struct.std::_Deque_iterator"* %79, i32 0, i32 1
  %81 = load i32** %80, align 8
  %82 = load i64* %2, align 8
  %83 = call i64 @_ZSt16__deque_buf_sizem(i64 4)
  %84 = urem i64 %82, %83
  %85 = getelementptr inbounds i32* %81, i64 %84
  %86 = getelementptr inbounds %"class.std::_Deque_base"* %7, i32 0, i32 0
  %87 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %86, i32 0, i32 3
  %88 = getelementptr inbounds %"struct.std::_Deque_iterator"* %87, i32 0, i32 0
  store i32* %85, i32** %88, align 8
  ret void

; <label>:89                                      ; preds = %62
  %90 = load i8** %5
  %91 = load i32* %6
  %92 = insertvalue { i8*, i32 } undef, i8* %90, 0
  %93 = insertvalue { i8*, i32 } %92, i32 %91, 1
  resume { i8*, i32 } %93

; <label>:94                                      ; preds = %58
  %95 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %96 = extractvalue { i8*, i32 } %95, 0
  call void @__clang_call_terminate(i8* %96) #12
  unreachable

; <label>:97                                      ; preds = %53
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_(%"class.std::_Deque_base"* %this, i32** %__nstart, i32** %__nfinish) #2 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  %__cur = alloca i32**, align 8
  %4 = alloca i8*
  %5 = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store i32** %__nstart, i32*** %2, align 8
  store i32** %__nfinish, i32*** %3, align 8
  %6 = load %"class.std::_Deque_base"** %1
  %7 = load i32*** %2, align 8
  store i32** %7, i32*** %__cur, align 8
  br label %8

; <label>:8                                       ; preds = %16, %0
  %9 = load i32*** %__cur, align 8
  %10 = load i32*** %3, align 8
  %11 = icmp ult i32** %9, %10
  br i1 %11, label %12, label %29

; <label>:12                                      ; preds = %8
  %13 = invoke i32* @_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %6)
          to label %14 unwind label %19

; <label>:14                                      ; preds = %12
  %15 = load i32*** %__cur, align 8
  store i32* %13, i32** %15, align 8
  br label %16

; <label>:16                                      ; preds = %14
  %17 = load i32*** %__cur, align 8
  %18 = getelementptr inbounds i32** %17, i32 1
  store i32** %18, i32*** %__cur, align 8
  br label %8

; <label>:19                                      ; preds = %12
  %20 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %21 = extractvalue { i8*, i32 } %20, 0
  store i8* %21, i8** %4
  %22 = extractvalue { i8*, i32 } %20, 1
  store i32 %22, i32* %5
  br label %23

; <label>:23                                      ; preds = %19
  %24 = load i8** %4
  %25 = call i8* @__cxa_begin_catch(i8* %24) #1
  %26 = load i32*** %2, align 8
  %27 = load i32*** %__cur, align 8
  invoke void @_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_(%"class.std::_Deque_base"* %6, i32** %26, i32** %27)
          to label %28 unwind label %30

; <label>:28                                      ; preds = %23
  invoke void @__cxa_rethrow() #14
          to label %44 unwind label %30

; <label>:29                                      ; preds = %8
  br label %35

; <label>:30                                      ; preds = %28, %23
  %31 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %32 = extractvalue { i8*, i32 } %31, 0
  store i8* %32, i8** %4
  %33 = extractvalue { i8*, i32 } %31, 1
  store i32 %33, i32* %5
  invoke void @__cxa_end_catch()
          to label %34 unwind label %41

; <label>:34                                      ; preds = %30
  br label %36

; <label>:35                                      ; preds = %29
  ret void

; <label>:36                                      ; preds = %34
  %37 = load i8** %4
  %38 = load i32* %5
  %39 = insertvalue { i8*, i32 } undef, i8* %37, 0
  %40 = insertvalue { i8*, i32 } %39, i32 %38, 1
  resume { i8*, i32 } %40

; <label>:41                                      ; preds = %30
  %42 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %43 = extractvalue { i8*, i32 } %42, 0
  call void @__clang_call_terminate(i8* %43) #12
  unreachable

; <label>:44                                      ; preds = %28
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIiEC2ERKS_(%"class.std::allocator.2"* %this, %"class.std::allocator.2"* %__a) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  %2 = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %this, %"class.std::allocator.2"** %1, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %2, align 8
  %3 = load %"class.std::allocator.2"** %1
  %4 = bitcast %"class.std::allocator.2"* %3 to %"class.__gnu_cxx::new_allocator.3"*
  %5 = load %"class.std::allocator.2"** %2, align 8
  %6 = bitcast %"class.std::allocator.2"* %5 to %"class.__gnu_cxx::new_allocator.3"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_(%"class.__gnu_cxx::new_allocator.3"* %4, %"class.__gnu_cxx::new_allocator.3"* %6) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(%"struct.std::_Deque_iterator"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 8
  %2 = load %"struct.std::_Deque_iterator"** %1
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 0
  store i32* null, i32** %3, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 1
  store i32* null, i32** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 2
  store i32* null, i32** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 3
  store i32** null, i32*** %6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_(%"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"*) unnamed_addr #5 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %3 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %2, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %0, %"class.__gnu_cxx::new_allocator.3"** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator.3"** %2
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i64 @_ZStmiIiRiPiENSt15_Deque_iteratorIT_T0_T1_E15difference_typeERKS6_S9_(%"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"* %__y) #3 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %1, align 8
  store %"struct.std::_Deque_iterator"* %__y, %"struct.std::_Deque_iterator"** %2, align 8
  %3 = call i64 @_ZNSt15_Deque_iteratorIiRiPiE14_S_buffer_sizeEv()
  %4 = load %"struct.std::_Deque_iterator"** %1, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator"* %4, i32 0, i32 3
  %6 = load i32*** %5, align 8
  %7 = load %"struct.std::_Deque_iterator"** %2, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator"* %7, i32 0, i32 3
  %9 = load i32*** %8, align 8
  %10 = ptrtoint i32** %6 to i64
  %11 = ptrtoint i32** %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8
  %14 = sub nsw i64 %13, 1
  %15 = mul nsw i64 %3, %14
  %16 = load %"struct.std::_Deque_iterator"** %1, align 8
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator"* %16, i32 0, i32 0
  %18 = load i32** %17, align 8
  %19 = load %"struct.std::_Deque_iterator"** %1, align 8
  %20 = getelementptr inbounds %"struct.std::_Deque_iterator"* %19, i32 0, i32 1
  %21 = load i32** %20, align 8
  %22 = ptrtoint i32* %18 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = add nsw i64 %15, %25
  %27 = load %"struct.std::_Deque_iterator"** %2, align 8
  %28 = getelementptr inbounds %"struct.std::_Deque_iterator"* %27, i32 0, i32 2
  %29 = load i32** %28, align 8
  %30 = load %"struct.std::_Deque_iterator"** %2, align 8
  %31 = getelementptr inbounds %"struct.std::_Deque_iterator"* %30, i32 0, i32 0
  %32 = load i32** %31, align 8
  %33 = ptrtoint i32* %29 to i64
  %34 = ptrtoint i32* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 4
  %37 = add nsw i64 %26, %36
  ret i64 %37
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE15_M_destroy_dataESt15_Deque_iteratorIiRiPiES5_RKS0_(%"class.std::deque"* %this, %"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last, %"class.std::allocator.2"*) #5 align 2 {
  %2 = alloca %"class.std::deque"*, align 8
  %3 = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %2, align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %3, align 8
  %4 = load %"class.std::deque"** %2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE3endEv(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"class.std::deque"* %this) #2 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorIiRiPiEC2ERKS2_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* %5)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEEC2Ev(%"class.std::_Deque_base"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %4 = load %"class.std::_Deque_base"** %1
  %5 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %5)
  invoke void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(%"class.std::_Deque_base"* %4, i64 0)
          to label %6 unwind label %7

; <label>:6                                       ; preds = %0
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  call void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implD2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %5) #1
  br label %11

; <label>:11                                      ; preds = %7
  %12 = load i8** %2
  %13 = load i32* %3
  %14 = insertvalue { i8*, i32 } undef, i8* %12, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE11_Deque_implC2Ev(%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %this, %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"** %1, align 8
  %4 = load %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"** %1
  %5 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4 to %"class.std::allocator.2"*
  call void @_ZNSaIiEC2Ev(%"class.std::allocator.2"* %5) #1
  %6 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4, i32 0, i32 0
  store i32** null, i32*** %6, align 8
  %7 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4, i32 0, i32 2
  invoke void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(%"struct.std::_Deque_iterator"* %8)
          to label %9 unwind label %12

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4, i32 0, i32 3
  invoke void @_ZNSt15_Deque_iteratorIiRiPiEC2Ev(%"struct.std::_Deque_iterator"* %10)
          to label %11 unwind label %12

; <label>:11                                      ; preds = %9
  ret void

; <label>:12                                      ; preds = %9, %0
  %13 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %2
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %3
  %16 = bitcast %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl"* %4 to %"class.std::allocator.2"*
  call void @_ZNSaIiED2Ev(%"class.std::allocator.2"* %16) #1
  br label %17

; <label>:17                                      ; preds = %12
  %18 = load i8** %2
  %19 = load i32* %3
  %20 = insertvalue { i8*, i32 } undef, i8* %18, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIiEC2Ev(%"class.std::allocator.2"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %this, %"class.std::allocator.2"** %1, align 8
  %2 = load %"class.std::allocator.2"** %1
  %3 = bitcast %"class.std::allocator.2"* %2 to %"class.__gnu_cxx::new_allocator.3"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator.3"* %3) #1
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_(%"struct.std::_Bvector_base"* %this, %"class.std::allocator.18"* %__a) unnamed_addr #2 align 2 {
  %1 = alloca %"struct.std::_Bvector_base"*, align 8
  %2 = alloca %"class.std::allocator.18"*, align 8
  %3 = alloca %"class.std::allocator.6", align 1
  %4 = alloca i8*
  %5 = alloca i32
  store %"struct.std::_Bvector_base"* %this, %"struct.std::_Bvector_base"** %1, align 8
  store %"class.std::allocator.18"* %__a, %"class.std::allocator.18"** %2, align 8
  %6 = load %"struct.std::_Bvector_base"** %1
  %7 = getelementptr inbounds %"struct.std::_Bvector_base"* %6, i32 0, i32 0
  %8 = load %"class.std::allocator.18"** %2, align 8
  call void @_ZNSaImEC2IbEERKSaIT_E(%"class.std::allocator.6"* %3, %"class.std::allocator.18"* %8) #1
  invoke void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %7, %"class.std::allocator.6"* %3)
          to label %9 unwind label %10

; <label>:9                                       ; preds = %0
  call void @_ZNSaImED2Ev(%"class.std::allocator.6"* %3) #1
  ret void

; <label>:10                                      ; preds = %0
  %11 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %4
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %5
  call void @_ZNSaImED2Ev(%"class.std::allocator.6"* %3) #1
  br label %14

; <label>:14                                      ; preds = %10
  %15 = load i8** %4
  %16 = load i32* %5
  %17 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %18 = insertvalue { i8*, i32 } %17, i32 %16, 1
  resume { i8*, i32 } %18
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE13_M_initializeEm(%"class.std::vector.5"* %this, i64 %__n) #2 align 2 {
  %1 = alloca %"class.std::vector.5"*, align 8
  %2 = alloca i64, align 8
  %__q = alloca i64*, align 8
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  %4 = alloca %"struct.std::_Bit_iterator", align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %5 = load %"class.std::vector.5"** %1
  %6 = bitcast %"class.std::vector.5"* %5 to %"struct.std::_Bvector_base"*
  %7 = load i64* %2, align 8
  %8 = call i64* @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm(%"struct.std::_Bvector_base"* %6, i64 %7)
  store i64* %8, i64** %__q, align 8
  %9 = load i64** %__q, align 8
  %10 = load i64* %2, align 8
  %11 = call i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 %10)
  %12 = getelementptr inbounds i64* %9, i64 %11
  %13 = bitcast %"class.std::vector.5"* %5 to %"struct.std::_Bvector_base"*
  %14 = getelementptr inbounds %"struct.std::_Bvector_base"* %13, i32 0, i32 0
  %15 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %14, i32 0, i32 2
  store i64* %12, i64** %15, align 8
  %16 = bitcast %"class.std::vector.5"* %5 to %"struct.std::_Bvector_base"*
  %17 = getelementptr inbounds %"struct.std::_Bvector_base"* %16, i32 0, i32 0
  %18 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %17, i32 0, i32 0
  %19 = load i64** %__q, align 8
  call void @_ZNSt13_Bit_iteratorC2EPmj(%"struct.std::_Bit_iterator"* %3, i64* %19, i32 0)
  %20 = bitcast %"struct.std::_Bit_iterator"* %18 to i8*
  %21 = bitcast %"struct.std::_Bit_iterator"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 12, i32 8, i1 false)
  %22 = bitcast %"class.std::vector.5"* %5 to %"struct.std::_Bvector_base"*
  %23 = getelementptr inbounds %"struct.std::_Bvector_base"* %22, i32 0, i32 0
  %24 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %23, i32 0, i32 1
  %25 = bitcast %"class.std::vector.5"* %5 to %"struct.std::_Bvector_base"*
  %26 = getelementptr inbounds %"struct.std::_Bvector_base"* %25, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %26, i32 0, i32 0
  %28 = load i64* %2, align 8
  %29 = call { i64, i64 } @_ZNKSt13_Bit_iteratorplEl(%"struct.std::_Bit_iterator"* %27, i64 %28)
  %30 = bitcast %"struct.std::_Bit_iterator"* %4 to { i64, i64 }*
  %31 = getelementptr { i64, i64 }* %30, i32 0, i32 0
  %32 = extractvalue { i64, i64 } %29, 0
  store i64 %32, i64* %31, align 1
  %33 = getelementptr { i64, i64 }* %30, i32 0, i32 1
  %34 = extractvalue { i64, i64 } %29, 1
  store i64 %34, i64* %33, align 1
  %35 = bitcast %"struct.std::_Bit_iterator"* %24 to i8*
  %36 = bitcast %"struct.std::_Bit_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 12, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt4fillIPmiEvT_S1_RKT0_(i64* %__first, i64* %__last, i32* %__value) #3 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i32*, align 8
  store i64* %__first, i64** %1, align 8
  store i64* %__last, i64** %2, align 8
  store i32* %__value, i32** %3, align 8
  %4 = load i64** %1, align 8
  %5 = call i64* @_ZSt12__niter_baseIPmENSt11_Niter_baseIT_E13iterator_typeES2_(i64* %4)
  %6 = load i64** %2, align 8
  %7 = call i64* @_ZSt12__niter_baseIPmENSt11_Niter_baseIT_E13iterator_typeES2_(i64* %6)
  %8 = load i32** %3, align 8
  call void @_ZSt8__fill_aIPmiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(i64* %5, i64* %7, i32* %8)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt13_Bvector_baseISaIbEED2Ev(%"struct.std::_Bvector_base"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"struct.std::_Bvector_base"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"struct.std::_Bvector_base"* %this, %"struct.std::_Bvector_base"** %1, align 8
  %4 = load %"struct.std::_Bvector_base"** %1
  invoke void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(%"struct.std::_Bvector_base"* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %"struct.std::_Bvector_base"* %4, i32 0, i32 0
  call void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %6) #1
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = getelementptr inbounds %"struct.std::_Bvector_base"* %4, i32 0, i32 0
  call void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %11) #1
  br label %12

; <label>:12                                      ; preds = %7
  %13 = load i8** %2
  %14 = load i32* %3
  %15 = insertvalue { i8*, i32 } undef, i8* %13, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(%"struct.std::_Bvector_base"* %this) #2 align 2 {
  %1 = alloca %"struct.std::_Bvector_base"*, align 8
  store %"struct.std::_Bvector_base"* %this, %"struct.std::_Bvector_base"** %1, align 8
  %2 = load %"struct.std::_Bvector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Bvector_base"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Bit_iterator"* %4 to %"struct.std::_Bit_iterator_base"*
  %6 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %5, i32 0, i32 0
  %7 = load i64** %6, align 8
  %8 = icmp ne i64* %7, null
  br i1 %8, label %9, label %29

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %"struct.std::_Bvector_base"* %2, i32 0, i32 0
  %11 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %10 to %"class.__gnu_cxx::new_allocator.7"*
  %12 = getelementptr inbounds %"struct.std::_Bvector_base"* %2, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %12, i32 0, i32 0
  %14 = bitcast %"struct.std::_Bit_iterator"* %13 to %"struct.std::_Bit_iterator_base"*
  %15 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %14, i32 0, i32 0
  %16 = load i64** %15, align 8
  %17 = getelementptr inbounds %"struct.std::_Bvector_base"* %2, i32 0, i32 0
  %18 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %17, i32 0, i32 2
  %19 = load i64** %18, align 8
  %20 = getelementptr inbounds %"struct.std::_Bvector_base"* %2, i32 0, i32 0
  %21 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %20, i32 0, i32 0
  %22 = bitcast %"struct.std::_Bit_iterator"* %21 to %"struct.std::_Bit_iterator_base"*
  %23 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %22, i32 0, i32 0
  %24 = load i64** %23, align 8
  %25 = ptrtoint i64* %19 to i64
  %26 = ptrtoint i64* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 8
  call void @_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm(%"class.__gnu_cxx::new_allocator.7"* %11, i64* %16, i64 %28)
  br label %29

; <label>:29                                      ; preds = %9, %0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD2Ev(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this) unnamed_addr #8 align 2 {
  %1 = alloca %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"*, align 8
  store %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this, %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"** %1, align 8
  %2 = load %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"** %1
  %3 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %2 to %"class.std::allocator.6"*
  call void @_ZNSaImED2Ev(%"class.std::allocator.6"* %3) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorImED2Ev(%"class.__gnu_cxx::new_allocator.7"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.7"*, align 8
  store %"class.__gnu_cxx::new_allocator.7"* %this, %"class.__gnu_cxx::new_allocator.7"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.7"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm(%"class.__gnu_cxx::new_allocator.7"* %this, i64* %__p, i64) #5 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.7"*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.7"* %this, %"class.__gnu_cxx::new_allocator.7"** %2, align 8
  store i64* %__p, i64** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.7"** %2
  %6 = load i64** %3, align 8
  %7 = bitcast i64* %6 to i8*
  call void @_ZdlPv(i8* %7) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt8__fill_aIPmiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(i64* %__first, i64* %__last, i32* %__value) #8 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i32*, align 8
  %__tmp = alloca i32, align 4
  store i64* %__first, i64** %1, align 8
  store i64* %__last, i64** %2, align 8
  store i32* %__value, i32** %3, align 8
  %4 = load i32** %3, align 8
  %5 = load i32* %4, align 4
  store i32 %5, i32* %__tmp, align 4
  br label %6

; <label>:6                                       ; preds = %14, %0
  %7 = load i64** %1, align 8
  %8 = load i64** %2, align 8
  %9 = icmp ne i64* %7, %8
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %6
  %11 = load i32* %__tmp, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64** %1, align 8
  store i64 %12, i64* %13, align 8
  br label %14

; <label>:14                                      ; preds = %10
  %15 = load i64** %1, align 8
  %16 = getelementptr inbounds i64* %15, i32 1
  store i64* %16, i64** %1, align 8
  br label %6

; <label>:17                                      ; preds = %6
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i64* @_ZSt12__niter_baseIPmENSt11_Niter_baseIT_E13iterator_typeES2_(i64* %__it) #3 {
  %1 = alloca i64*, align 8
  store i64* %__it, i64** %1, align 8
  %2 = load i64** %1, align 8
  %3 = call i64* @_ZNSt10_Iter_baseIPmLb0EE7_S_baseES0_(i64* %2)
  ret i64* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64* @_ZNSt10_Iter_baseIPmLb0EE7_S_baseES0_(i64* %__it) #5 align 2 {
  %1 = alloca i64*, align 8
  store i64* %__it, i64** %1, align 8
  %2 = load i64** %1, align 8
  ret i64* %2
}

; Function Attrs: uwtable
define linkonce_odr i64* @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm(%"struct.std::_Bvector_base"* %this, i64 %__n) #2 align 2 {
  %1 = alloca %"struct.std::_Bvector_base"*, align 8
  %2 = alloca i64, align 8
  store %"struct.std::_Bvector_base"* %this, %"struct.std::_Bvector_base"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"struct.std::_Bvector_base"** %1
  %4 = getelementptr inbounds %"struct.std::_Bvector_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %4 to %"class.__gnu_cxx::new_allocator.7"*
  %6 = load i64* %2, align 8
  %7 = call i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 %6)
  %8 = call i64* @_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.7"* %5, i64 %7, i8* null)
  ret i64* %8
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 %__n) #5 align 2 {
  %1 = alloca i64, align 8
  store i64 %__n, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = add i64 %2, 64
  %4 = sub i64 %3, 1
  %5 = udiv i64 %4, 64
  ret i64 %5
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt13_Bit_iteratorC2EPmj(%"struct.std::_Bit_iterator"* %this, i64* %__x, i32 %__y) unnamed_addr #2 align 2 {
  %1 = alloca %"struct.std::_Bit_iterator"*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  store %"struct.std::_Bit_iterator"* %this, %"struct.std::_Bit_iterator"** %1, align 8
  store i64* %__x, i64** %2, align 8
  store i32 %__y, i32* %3, align 4
  %4 = load %"struct.std::_Bit_iterator"** %1
  %5 = bitcast %"struct.std::_Bit_iterator"* %4 to %"struct.std::_Bit_iterator_base"*
  %6 = load i64** %2, align 8
  %7 = load i32* %3, align 4
  call void @_ZNSt18_Bit_iterator_baseC2EPmj(%"struct.std::_Bit_iterator_base"* %5, i64* %6, i32 %7)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr { i64, i64 } @_ZNKSt13_Bit_iteratorplEl(%"struct.std::_Bit_iterator"* %this, i64 %__i) #2 align 2 {
  %1 = alloca %"struct.std::_Bit_iterator", align 8
  %2 = alloca %"struct.std::_Bit_iterator"*, align 8
  %3 = alloca i64, align 8
  %__tmp = alloca %"struct.std::_Bit_iterator", align 8
  store %"struct.std::_Bit_iterator"* %this, %"struct.std::_Bit_iterator"** %2, align 8
  store i64 %__i, i64* %3, align 8
  %4 = load %"struct.std::_Bit_iterator"** %2
  %5 = bitcast %"struct.std::_Bit_iterator"* %__tmp to i8*
  %6 = bitcast %"struct.std::_Bit_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = load i64* %3, align 8
  %8 = call %"struct.std::_Bit_iterator"* @_ZNSt13_Bit_iteratorpLEl(%"struct.std::_Bit_iterator"* %__tmp, i64 %7)
  %9 = bitcast %"struct.std::_Bit_iterator"* %1 to i8*
  %10 = bitcast %"struct.std::_Bit_iterator"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false)
  %11 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %12 = load { i64, i64 }* %11, align 1
  ret { i64, i64 } %12
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Bit_iterator"* @_ZNSt13_Bit_iteratorpLEl(%"struct.std::_Bit_iterator"* %this, i64 %__i) #2 align 2 {
  %1 = alloca %"struct.std::_Bit_iterator"*, align 8
  %2 = alloca i64, align 8
  store %"struct.std::_Bit_iterator"* %this, %"struct.std::_Bit_iterator"** %1, align 8
  store i64 %__i, i64* %2, align 8
  %3 = load %"struct.std::_Bit_iterator"** %1
  %4 = bitcast %"struct.std::_Bit_iterator"* %3 to %"struct.std::_Bit_iterator_base"*
  %5 = load i64* %2, align 8
  call void @_ZNSt18_Bit_iterator_base7_M_incrEl(%"struct.std::_Bit_iterator_base"* %4, i64 %5)
  ret %"struct.std::_Bit_iterator"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt18_Bit_iterator_base7_M_incrEl(%"struct.std::_Bit_iterator_base"* %this, i64 %__i) #5 align 2 {
  %1 = alloca %"struct.std::_Bit_iterator_base"*, align 8
  %2 = alloca i64, align 8
  %__n = alloca i64, align 8
  store %"struct.std::_Bit_iterator_base"* %this, %"struct.std::_Bit_iterator_base"** %1, align 8
  store i64 %__i, i64* %2, align 8
  %3 = load %"struct.std::_Bit_iterator_base"** %1
  %4 = load i64* %2, align 8
  %5 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %3, i32 0, i32 1
  %6 = load i32* %5, align 4
  %7 = zext i32 %6 to i64
  %8 = add nsw i64 %4, %7
  store i64 %8, i64* %__n, align 8
  %9 = load i64* %__n, align 8
  %10 = sdiv i64 %9, 64
  %11 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %3, i32 0, i32 0
  %12 = load i64** %11, align 8
  %13 = getelementptr inbounds i64* %12, i64 %10
  store i64* %13, i64** %11, align 8
  %14 = load i64* %__n, align 8
  %15 = srem i64 %14, 64
  store i64 %15, i64* %__n, align 8
  %16 = load i64* %__n, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %24

; <label>:18                                      ; preds = %0
  %19 = load i64* %__n, align 8
  %20 = add nsw i64 %19, 64
  store i64 %20, i64* %__n, align 8
  %21 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %3, i32 0, i32 0
  %22 = load i64** %21, align 8
  %23 = getelementptr inbounds i64* %22, i32 -1
  store i64* %23, i64** %21, align 8
  br label %24

; <label>:24                                      ; preds = %18, %0
  %25 = load i64* %__n, align 8
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %3, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt18_Bit_iterator_baseC2EPmj(%"struct.std::_Bit_iterator_base"* %this, i64* %__x, i32 %__y) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Bit_iterator_base"*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  store %"struct.std::_Bit_iterator_base"* %this, %"struct.std::_Bit_iterator_base"** %1, align 8
  store i64* %__x, i64** %2, align 8
  store i32 %__y, i32* %3, align 4
  %4 = load %"struct.std::_Bit_iterator_base"** %1
  %5 = bitcast %"struct.std::_Bit_iterator_base"* %4 to %"struct.std::iterator"*
  %6 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %4, i32 0, i32 0
  %7 = load i64** %2, align 8
  store i64* %7, i64** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %4, i32 0, i32 1
  %9 = load i32* %3, align 4
  store i32 %9, i32* %8, align 4
  ret void
}

; Function Attrs: uwtable
define linkonce_odr i64* @_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.7"* %this, i64 %__n, i8*) #2 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.7"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.7"* %this, %"class.__gnu_cxx::new_allocator.7"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.7"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv(%"class.__gnu_cxx::new_allocator.7"* %5) #1
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #14
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 8
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to i64*
  ret i64* %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv(%"class.__gnu_cxx::new_allocator.7"* %this) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.7"*, align 8
  store %"class.__gnu_cxx::new_allocator.7"* %this, %"class.__gnu_cxx::new_allocator.7"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.7"** %1
  ret i64 2305843009213693951
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaImEC2IbEERKSaIT_E(%"class.std::allocator.6"* %this, %"class.std::allocator.18"*) unnamed_addr #5 align 2 {
  %2 = alloca %"class.std::allocator.6"*, align 8
  %3 = alloca %"class.std::allocator.18"*, align 8
  store %"class.std::allocator.6"* %this, %"class.std::allocator.6"** %2, align 8
  store %"class.std::allocator.18"* %0, %"class.std::allocator.18"** %3, align 8
  %4 = load %"class.std::allocator.6"** %2
  %5 = bitcast %"class.std::allocator.6"* %4 to %"class.__gnu_cxx::new_allocator.7"*
  call void @_ZN9__gnu_cxx13new_allocatorImEC2Ev(%"class.__gnu_cxx::new_allocator.7"* %5) #1
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this, %"class.std::allocator.6"* %__a) unnamed_addr #2 align 2 {
  %1 = alloca %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"*, align 8
  %2 = alloca %"class.std::allocator.6"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this, %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"** %1, align 8
  store %"class.std::allocator.6"* %__a, %"class.std::allocator.6"** %2, align 8
  %5 = load %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"** %1
  %6 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %5 to %"class.std::allocator.6"*
  %7 = load %"class.std::allocator.6"** %2, align 8
  call void @_ZNSaImEC2ERKS_(%"class.std::allocator.6"* %6, %"class.std::allocator.6"* %7) #1
  %8 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %5, i32 0, i32 0
  invoke void @_ZNSt13_Bit_iteratorC2Ev(%"struct.std::_Bit_iterator"* %8)
          to label %9 unwind label %13

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %5, i32 0, i32 1
  invoke void @_ZNSt13_Bit_iteratorC2Ev(%"struct.std::_Bit_iterator"* %10)
          to label %11 unwind label %13

; <label>:11                                      ; preds = %9
  %12 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %5, i32 0, i32 2
  store i64* null, i64** %12, align 8
  ret void

; <label>:13                                      ; preds = %9, %0
  %14 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %3
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %4
  %17 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %5 to %"class.std::allocator.6"*
  call void @_ZNSaImED2Ev(%"class.std::allocator.6"* %17) #1
  br label %18

; <label>:18                                      ; preds = %13
  %19 = load i8** %3
  %20 = load i32* %4
  %21 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %22 = insertvalue { i8*, i32 } %21, i32 %20, 1
  resume { i8*, i32 } %22
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaImED2Ev(%"class.std::allocator.6"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::allocator.6"*, align 8
  store %"class.std::allocator.6"* %this, %"class.std::allocator.6"** %1, align 8
  %2 = load %"class.std::allocator.6"** %1
  %3 = bitcast %"class.std::allocator.6"* %2 to %"class.__gnu_cxx::new_allocator.7"*
  call void @_ZN9__gnu_cxx13new_allocatorImED2Ev(%"class.__gnu_cxx::new_allocator.7"* %3) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaImEC2ERKS_(%"class.std::allocator.6"* %this, %"class.std::allocator.6"* %__a) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::allocator.6"*, align 8
  %2 = alloca %"class.std::allocator.6"*, align 8
  store %"class.std::allocator.6"* %this, %"class.std::allocator.6"** %1, align 8
  store %"class.std::allocator.6"* %__a, %"class.std::allocator.6"** %2, align 8
  %3 = load %"class.std::allocator.6"** %1
  %4 = bitcast %"class.std::allocator.6"* %3 to %"class.__gnu_cxx::new_allocator.7"*
  %5 = load %"class.std::allocator.6"** %2, align 8
  %6 = bitcast %"class.std::allocator.6"* %5 to %"class.__gnu_cxx::new_allocator.7"*
  call void @_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_(%"class.__gnu_cxx::new_allocator.7"* %4, %"class.__gnu_cxx::new_allocator.7"* %6) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt13_Bit_iteratorC2Ev(%"struct.std::_Bit_iterator"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Bit_iterator"*, align 8
  store %"struct.std::_Bit_iterator"* %this, %"struct.std::_Bit_iterator"** %1, align 8
  %2 = load %"struct.std::_Bit_iterator"** %1
  %3 = bitcast %"struct.std::_Bit_iterator"* %2 to %"struct.std::_Bit_iterator_base"*
  call void @_ZNSt18_Bit_iterator_baseC2EPmj(%"struct.std::_Bit_iterator_base"* %3, i64* null, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_(%"class.__gnu_cxx::new_allocator.7"* %this, %"class.__gnu_cxx::new_allocator.7"*) unnamed_addr #5 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.7"*, align 8
  %3 = alloca %"class.__gnu_cxx::new_allocator.7"*, align 8
  store %"class.__gnu_cxx::new_allocator.7"* %this, %"class.__gnu_cxx::new_allocator.7"** %2, align 8
  store %"class.__gnu_cxx::new_allocator.7"* %0, %"class.__gnu_cxx::new_allocator.7"** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator.7"** %2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorImEC2Ev(%"class.__gnu_cxx::new_allocator.7"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.7"*, align 8
  store %"class.__gnu_cxx::new_allocator.7"* %this, %"class.__gnu_cxx::new_allocator.7"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.7"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIbED2Ev(%"class.__gnu_cxx::new_allocator.19"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.19"*, align 8
  store %"class.__gnu_cxx::new_allocator.19"* %this, %"class.__gnu_cxx::new_allocator.19"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.19"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIbEC2Ev(%"class.__gnu_cxx::new_allocator.19"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.19"*, align 8
  store %"class.__gnu_cxx::new_allocator.19"* %this, %"class.__gnu_cxx::new_allocator.19"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.19"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::insert_iterator"* @_ZNSt15insert_iteratorISt3setIiSt4lessIiESaIiEEEdeEv(%"class.std::insert_iterator"* %this) #5 align 2 {
  %1 = alloca %"class.std::insert_iterator"*, align 8
  store %"class.std::insert_iterator"* %this, %"class.std::insert_iterator"** %1, align 8
  %2 = load %"class.std::insert_iterator"** %1
  ret %"class.std::insert_iterator"* %2
}

; Function Attrs: uwtable
define linkonce_odr %"class.std::insert_iterator"* @_ZNSt15insert_iteratorISt3setIiSt4lessIiESaIiEEEaSERKi(%"class.std::insert_iterator"* %this, i32* %__value) #2 align 2 {
  %1 = alloca %"class.std::insert_iterator"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  store %"class.std::insert_iterator"* %this, %"class.std::insert_iterator"** %1, align 8
  store i32* %__value, i32** %2, align 8
  %5 = load %"class.std::insert_iterator"** %1
  %6 = getelementptr inbounds %"class.std::insert_iterator"* %5, i32 0, i32 1
  %7 = getelementptr inbounds %"class.std::insert_iterator"* %5, i32 0, i32 0
  %8 = load %"class.std::set"** %7, align 8
  %9 = getelementptr inbounds %"class.std::insert_iterator"* %5, i32 0, i32 1
  %10 = bitcast %"struct.std::_Rb_tree_const_iterator"* %4 to i8*
  %11 = bitcast %"struct.std::_Rb_tree_const_iterator"* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %12 = load i32** %2, align 8
  %13 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %4, i32 0, i32 0
  %14 = load %"struct.std::_Rb_tree_node_base"** %13
  %15 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3setIiSt4lessIiESaIiEE6insertESt23_Rb_tree_const_iteratorIiERKi(%"class.std::set"* %8, %"struct.std::_Rb_tree_node_base"* %14, i32* %12)
  %16 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %15, %"struct.std::_Rb_tree_node_base"** %16
  %17 = bitcast %"struct.std::_Rb_tree_const_iterator"* %6 to i8*
  %18 = bitcast %"struct.std::_Rb_tree_const_iterator"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %19 = getelementptr inbounds %"class.std::insert_iterator"* %5, i32 0, i32 1
  %20 = call %"struct.std::_Rb_tree_const_iterator"* @_ZNSt23_Rb_tree_const_iteratorIiEppEv(%"struct.std::_Rb_tree_const_iterator"* %19)
  ret %"class.std::insert_iterator"* %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::insert_iterator"* @_ZNSt15insert_iteratorISt3setIiSt4lessIiESaIiEEEppEv(%"class.std::insert_iterator"* %this) #5 align 2 {
  %1 = alloca %"class.std::insert_iterator"*, align 8
  store %"class.std::insert_iterator"* %this, %"class.std::insert_iterator"** %1, align 8
  %2 = load %"class.std::insert_iterator"** %1
  ret %"class.std::insert_iterator"* %2
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt3setIiSt4lessIiESaIiEE6insertESt23_Rb_tree_const_iteratorIiERKi(%"class.std::set"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce, i32* %__x) #2 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %__position = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %2 = alloca %"class.std::set"*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %5 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %6 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %6
  store %"class.std::set"* %this, %"class.std::set"** %2, align 8
  store i32* %__x, i32** %3, align 8
  %7 = load %"class.std::set"** %2
  %8 = getelementptr inbounds %"class.std::set"* %7, i32 0, i32 0
  %9 = bitcast %"struct.std::_Rb_tree_const_iterator"* %5 to i8*
  %10 = bitcast %"struct.std::_Rb_tree_const_iterator"* %__position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %11 = load i32** %3, align 8
  %12 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %5, i32 0, i32 0
  %13 = load %"struct.std::_Rb_tree_node_base"** %12
  %14 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIiERKi(%"class.std::_Rb_tree"* %8, %"struct.std::_Rb_tree_node_base"* %13, i32* %11)
  %15 = getelementptr %"struct.std::_Rb_tree_iterator"* %4, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %14, %"struct.std::_Rb_tree_node_base"** %15
  call void @_ZNSt23_Rb_tree_const_iteratorIiEC2ERKSt17_Rb_tree_iteratorIiE(%"struct.std::_Rb_tree_const_iterator"* %1, %"struct.std::_Rb_tree_iterator"* %4)
  %16 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %1, i32 0, i32 0
  %17 = load %"struct.std::_Rb_tree_node_base"** %16
  ret %"struct.std::_Rb_tree_node_base"* %17
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIiERKi(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce, i32* %__v) #2 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %__position = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  %3 = alloca i32*, align 8
  %__res = alloca %"struct.std::pair.26", align 8
  %4 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %5 = alloca %"struct.std::_Identity", align 1
  %6 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %6
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  store i32* %__v, i32** %3, align 8
  %7 = load %"class.std::_Rb_tree"** %2
  %8 = bitcast %"struct.std::_Rb_tree_const_iterator"* %4 to i8*
  %9 = bitcast %"struct.std::_Rb_tree_const_iterator"* %__position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load i32** %3, align 8
  %11 = call i32* @_ZNKSt9_IdentityIiEclERKi(%"struct.std::_Identity"* %5, i32* %10)
  %12 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %4, i32 0, i32 0
  %13 = load %"struct.std::_Rb_tree_node_base"** %12
  %14 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIiERKi(%"class.std::_Rb_tree"* %7, %"struct.std::_Rb_tree_node_base"* %13, i32* %11)
  %15 = bitcast %"struct.std::pair.26"* %__res to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %16 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %15, i32 0, i32 0
  %17 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %14, 0
  store %"struct.std::_Rb_tree_node_base"* %17, %"struct.std::_Rb_tree_node_base"** %16, align 1
  %18 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %15, i32 0, i32 1
  %19 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %14, 1
  store %"struct.std::_Rb_tree_node_base"* %19, %"struct.std::_Rb_tree_node_base"** %18, align 1
  %20 = getelementptr inbounds %"struct.std::pair.26"* %__res, i32 0, i32 1
  %21 = load %"struct.std::_Rb_tree_node_base"** %20, align 8
  %22 = icmp ne %"struct.std::_Rb_tree_node_base"* %21, null
  br i1 %22, label %23, label %31

; <label>:23                                      ; preds = %0
  %24 = getelementptr inbounds %"struct.std::pair.26"* %__res, i32 0, i32 0
  %25 = load %"struct.std::_Rb_tree_node_base"** %24, align 8
  %26 = getelementptr inbounds %"struct.std::pair.26"* %__res, i32 0, i32 1
  %27 = load %"struct.std::_Rb_tree_node_base"** %26, align 8
  %28 = load i32** %3, align 8
  %29 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_EPSt18_Rb_tree_node_baseS7_RKi(%"class.std::_Rb_tree"* %7, %"struct.std::_Rb_tree_node_base"* %25, %"struct.std::_Rb_tree_node_base"* %27, i32* %28)
  %30 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %29, %"struct.std::_Rb_tree_node_base"** %30
  br label %35

; <label>:31                                      ; preds = %0
  %32 = getelementptr inbounds %"struct.std::pair.26"* %__res, i32 0, i32 0
  %33 = load %"struct.std::_Rb_tree_node_base"** %32, align 8
  %34 = bitcast %"struct.std::_Rb_tree_node_base"* %33 to %"struct.std::_Rb_tree_node"*
  call void @_ZNSt17_Rb_tree_iteratorIiEC2EPSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_iterator"* %1, %"struct.std::_Rb_tree_node"* %34)
  br label %35

; <label>:35                                      ; preds = %31, %23
  %36 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %37 = load %"struct.std::_Rb_tree_node_base"** %36
  ret %"struct.std::_Rb_tree_node_base"* %37
}

; Function Attrs: uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIiERKi(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce, i32* %__k) #2 align 2 {
  %1 = alloca %"struct.std::pair.26", align 8
  %__position = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  %3 = alloca i32*, align 8
  %__pos = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__before = alloca %"struct.std::_Rb_tree_iterator", align 8
  %5 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__after = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %7 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %8 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %9 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %9
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  store i32* %__k, i32** %3, align 8
  %10 = load %"class.std::_Rb_tree"** %2
  %11 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt23_Rb_tree_const_iteratorIiE13_M_const_castEv(%"struct.std::_Rb_tree_const_iterator"* %__position)
  %12 = getelementptr %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::_Rb_tree_node_base"** %12
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %14 = load %"struct.std::_Rb_tree_node_base"** %13, align 8
  %15 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_M_endEv(%"class.std::_Rb_tree"* %10)
  %16 = bitcast %"struct.std::_Rb_tree_node"* %15 to %"struct.std::_Rb_tree_node_base"*
  %17 = icmp eq %"struct.std::_Rb_tree_node_base"* %14, %16
  br i1 %17, label %18, label %39

; <label>:18                                      ; preds = %0
  %19 = call i64 @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE4sizeEv(%"class.std::_Rb_tree"* %10)
  %20 = icmp ugt i64 %19, 0
  br i1 %20, label %21, label %31

; <label>:21                                      ; preds = %18
  %22 = getelementptr inbounds %"class.std::_Rb_tree"* %10, i32 0, i32 0
  %23 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %22, i32 0, i32 0
  %24 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_rightmostEv(%"class.std::_Rb_tree"* %10)
  %25 = load %"struct.std::_Rb_tree_node_base"** %24
  %26 = call i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %25)
  %27 = load i32** %3, align 8
  %28 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %23, i32* %26, i32* %27)
  br i1 %28, label %29, label %31

; <label>:29                                      ; preds = %21
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %4
  %30 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_rightmostEv(%"class.std::_Rb_tree"* %10)
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.26"* %1, %"struct.std::_Rb_tree_node_base"** %4, %"struct.std::_Rb_tree_node_base"** %30)
  br label %132

; <label>:31                                      ; preds = %21, %18
  %32 = load i32** %3, align 8
  %33 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE24_M_get_insert_unique_posERKi(%"class.std::_Rb_tree"* %10, i32* %32)
  %34 = bitcast %"struct.std::pair.26"* %1 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %35 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %34, i32 0, i32 0
  %36 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %33, 0
  store %"struct.std::_Rb_tree_node_base"* %36, %"struct.std::_Rb_tree_node_base"** %35, align 1
  %37 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %34, i32 0, i32 1
  %38 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %33, 1
  store %"struct.std::_Rb_tree_node_base"* %38, %"struct.std::_Rb_tree_node_base"** %37, align 1
  br label %132

; <label>:39                                      ; preds = %0
  %40 = getelementptr inbounds %"class.std::_Rb_tree"* %10, i32 0, i32 0
  %41 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %40, i32 0, i32 0
  %42 = load i32** %3, align 8
  %43 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %44 = load %"struct.std::_Rb_tree_node_base"** %43, align 8
  %45 = call i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %44)
  %46 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %41, i32* %42, i32* %45)
  br i1 %46, label %47, label %85

; <label>:47                                      ; preds = %39
  %48 = bitcast %"struct.std::_Rb_tree_iterator"* %__before to i8*
  %49 = bitcast %"struct.std::_Rb_tree_iterator"* %__pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 8, i32 8, i1 false)
  %50 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %51 = load %"struct.std::_Rb_tree_node_base"** %50, align 8
  %52 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_leftmostEv(%"class.std::_Rb_tree"* %10)
  %53 = load %"struct.std::_Rb_tree_node_base"** %52
  %54 = icmp eq %"struct.std::_Rb_tree_node_base"* %51, %53
  br i1 %54, label %55, label %58

; <label>:55                                      ; preds = %47
  %56 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_leftmostEv(%"class.std::_Rb_tree"* %10)
  %57 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_leftmostEv(%"class.std::_Rb_tree"* %10)
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.26"* %1, %"struct.std::_Rb_tree_node_base"** %56, %"struct.std::_Rb_tree_node_base"** %57)
  br label %132

; <label>:58                                      ; preds = %47
  %59 = getelementptr inbounds %"class.std::_Rb_tree"* %10, i32 0, i32 0
  %60 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %59, i32 0, i32 0
  %61 = call %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorIiEmmEv(%"struct.std::_Rb_tree_iterator"* %__before)
  %62 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %61, i32 0, i32 0
  %63 = load %"struct.std::_Rb_tree_node_base"** %62, align 8
  %64 = call i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %63)
  %65 = load i32** %3, align 8
  %66 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %60, i32* %64, i32* %65)
  br i1 %66, label %67, label %77

; <label>:67                                      ; preds = %58
  %68 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__before, i32 0, i32 0
  %69 = load %"struct.std::_Rb_tree_node_base"** %68, align 8
  %70 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %69)
  %71 = icmp eq %"struct.std::_Rb_tree_node"* %70, null
  br i1 %71, label %72, label %74

; <label>:72                                      ; preds = %67
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %5
  %73 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__before, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.26"* %1, %"struct.std::_Rb_tree_node_base"** %5, %"struct.std::_Rb_tree_node_base"** %73)
  br label %132

; <label>:74                                      ; preds = %67
  %75 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %76 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.26"* %1, %"struct.std::_Rb_tree_node_base"** %75, %"struct.std::_Rb_tree_node_base"** %76)
  br label %132

; <label>:77                                      ; preds = %58
  %78 = load i32** %3, align 8
  %79 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE24_M_get_insert_unique_posERKi(%"class.std::_Rb_tree"* %10, i32* %78)
  %80 = bitcast %"struct.std::pair.26"* %1 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %81 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %80, i32 0, i32 0
  %82 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %79, 0
  store %"struct.std::_Rb_tree_node_base"* %82, %"struct.std::_Rb_tree_node_base"** %81, align 1
  %83 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %80, i32 0, i32 1
  %84 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %79, 1
  store %"struct.std::_Rb_tree_node_base"* %84, %"struct.std::_Rb_tree_node_base"** %83, align 1
  br label %132

; <label>:85                                      ; preds = %39
  %86 = getelementptr inbounds %"class.std::_Rb_tree"* %10, i32 0, i32 0
  %87 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %86, i32 0, i32 0
  %88 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %89 = load %"struct.std::_Rb_tree_node_base"** %88, align 8
  %90 = call i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %89)
  %91 = load i32** %3, align 8
  %92 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %87, i32* %90, i32* %91)
  br i1 %92, label %93, label %130

; <label>:93                                      ; preds = %85
  %94 = bitcast %"struct.std::_Rb_tree_iterator"* %__after to i8*
  %95 = bitcast %"struct.std::_Rb_tree_iterator"* %__pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %95, i64 8, i32 8, i1 false)
  %96 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %97 = load %"struct.std::_Rb_tree_node_base"** %96, align 8
  %98 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_rightmostEv(%"class.std::_Rb_tree"* %10)
  %99 = load %"struct.std::_Rb_tree_node_base"** %98
  %100 = icmp eq %"struct.std::_Rb_tree_node_base"* %97, %99
  br i1 %100, label %101, label %103

; <label>:101                                     ; preds = %93
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %6
  %102 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_rightmostEv(%"class.std::_Rb_tree"* %10)
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.26"* %1, %"struct.std::_Rb_tree_node_base"** %6, %"struct.std::_Rb_tree_node_base"** %102)
  br label %132

; <label>:103                                     ; preds = %93
  %104 = getelementptr inbounds %"class.std::_Rb_tree"* %10, i32 0, i32 0
  %105 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %104, i32 0, i32 0
  %106 = load i32** %3, align 8
  %107 = call %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorIiEppEv(%"struct.std::_Rb_tree_iterator"* %__after)
  %108 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %107, i32 0, i32 0
  %109 = load %"struct.std::_Rb_tree_node_base"** %108, align 8
  %110 = call i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %109)
  %111 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %105, i32* %106, i32* %110)
  br i1 %111, label %112, label %122

; <label>:112                                     ; preds = %103
  %113 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %114 = load %"struct.std::_Rb_tree_node_base"** %113, align 8
  %115 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %114)
  %116 = icmp eq %"struct.std::_Rb_tree_node"* %115, null
  br i1 %116, label %117, label %119

; <label>:117                                     ; preds = %112
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %7
  %118 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.26"* %1, %"struct.std::_Rb_tree_node_base"** %7, %"struct.std::_Rb_tree_node_base"** %118)
  br label %132

; <label>:119                                     ; preds = %112
  %120 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__after, i32 0, i32 0
  %121 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__after, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.26"* %1, %"struct.std::_Rb_tree_node_base"** %120, %"struct.std::_Rb_tree_node_base"** %121)
  br label %132

; <label>:122                                     ; preds = %103
  %123 = load i32** %3, align 8
  %124 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE24_M_get_insert_unique_posERKi(%"class.std::_Rb_tree"* %10, i32* %123)
  %125 = bitcast %"struct.std::pair.26"* %1 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %126 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %125, i32 0, i32 0
  %127 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %124, 0
  store %"struct.std::_Rb_tree_node_base"* %127, %"struct.std::_Rb_tree_node_base"** %126, align 1
  %128 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %125, i32 0, i32 1
  %129 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %124, 1
  store %"struct.std::_Rb_tree_node_base"* %129, %"struct.std::_Rb_tree_node_base"** %128, align 1
  br label %132

; <label>:130                                     ; preds = %85
  %131 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %8
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.26"* %1, %"struct.std::_Rb_tree_node_base"** %131, %"struct.std::_Rb_tree_node_base"** %8)
  br label %132

; <label>:132                                     ; preds = %130, %122, %119, %117, %101, %77, %74, %72, %55, %31, %29
  %133 = bitcast %"struct.std::pair.26"* %1 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %134 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %133, align 1
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %134
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_EPSt18_Rb_tree_node_baseS7_RKi(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"* %__p, i32* %__v) #2 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  %3 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %5 = alloca i32*, align 8
  %__insert_left = alloca i8, align 1
  %6 = alloca %"struct.std::_Identity", align 1
  %__z = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %3, align 8
  store %"struct.std::_Rb_tree_node_base"* %__p, %"struct.std::_Rb_tree_node_base"** %4, align 8
  store i32* %__v, i32** %5, align 8
  %7 = load %"class.std::_Rb_tree"** %2
  %8 = load %"struct.std::_Rb_tree_node_base"** %3, align 8
  %9 = icmp ne %"struct.std::_Rb_tree_node_base"* %8, null
  br i1 %9, label %23, label %10

; <label>:10                                      ; preds = %0
  %11 = load %"struct.std::_Rb_tree_node_base"** %4, align 8
  %12 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_M_endEv(%"class.std::_Rb_tree"* %7)
  %13 = bitcast %"struct.std::_Rb_tree_node"* %12 to %"struct.std::_Rb_tree_node_base"*
  %14 = icmp eq %"struct.std::_Rb_tree_node_base"* %11, %13
  br i1 %14, label %23, label %15

; <label>:15                                      ; preds = %10
  %16 = getelementptr inbounds %"class.std::_Rb_tree"* %7, i32 0, i32 0
  %17 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %16, i32 0, i32 0
  %18 = load i32** %5, align 8
  %19 = call i32* @_ZNKSt9_IdentityIiEclERKi(%"struct.std::_Identity"* %6, i32* %18)
  %20 = load %"struct.std::_Rb_tree_node_base"** %4, align 8
  %21 = call i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %20)
  %22 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %17, i32* %19, i32* %21)
  br label %23

; <label>:23                                      ; preds = %15, %10, %0
  %24 = phi i1 [ true, %10 ], [ true, %0 ], [ %22, %15 ]
  %25 = zext i1 %24 to i8
  store i8 %25, i8* %__insert_left, align 1
  %26 = load i32** %5, align 8
  %27 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_create_nodeERKi(%"class.std::_Rb_tree"* %7, i32* %26)
  store %"struct.std::_Rb_tree_node"* %27, %"struct.std::_Rb_tree_node"** %__z, align 8
  %28 = load i8* %__insert_left, align 1
  %29 = trunc i8 %28 to i1
  %30 = load %"struct.std::_Rb_tree_node"** %__z, align 8
  %31 = bitcast %"struct.std::_Rb_tree_node"* %30 to %"struct.std::_Rb_tree_node_base"*
  %32 = load %"struct.std::_Rb_tree_node_base"** %4, align 8
  %33 = getelementptr inbounds %"class.std::_Rb_tree"* %7, i32 0, i32 0
  %34 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %33, i32 0, i32 1
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext %29, %"struct.std::_Rb_tree_node_base"* %31, %"struct.std::_Rb_tree_node_base"* %32, %"struct.std::_Rb_tree_node_base"* %34) #1
  %35 = getelementptr inbounds %"class.std::_Rb_tree"* %7, i32 0, i32 0
  %36 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %35, i32 0, i32 2
  %37 = load i64* %36, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = load %"struct.std::_Rb_tree_node"** %__z, align 8
  call void @_ZNSt17_Rb_tree_iteratorIiEC2EPSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_iterator"* %1, %"struct.std::_Rb_tree_node"* %39)
  %40 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %41 = load %"struct.std::_Rb_tree_node_base"** %40
  ret %"struct.std::_Rb_tree_node_base"* %41
}

; Function Attrs: uwtable
define linkonce_odr i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #2 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %2 = alloca %"struct.std::_Identity", align 1
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %1, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"** %1, align 8
  %4 = call i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_valueEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %3)
  %5 = call i32* @_ZNKSt9_IdentityIiEclERKi(%"struct.std::_Identity"* %2, i32* %4)
  ret i32* %5
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_create_nodeERKi(%"class.std::_Rb_tree"* %this, i32* %__x) #2 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca i32*, align 8
  %__tmp = alloca %"struct.std::_Rb_tree_node"*, align 8
  %3 = alloca %"class.std::allocator.2", align 1
  %4 = alloca i8*
  %5 = alloca i32
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  store i32* %__x, i32** %2, align 8
  %6 = load %"class.std::_Rb_tree"** %1
  %7 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_get_nodeEv(%"class.std::_Rb_tree"* %6)
  store %"struct.std::_Rb_tree_node"* %7, %"struct.std::_Rb_tree_node"** %__tmp, align 8
  invoke void @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13get_allocatorEv(%"class.std::allocator.2"* sret %3, %"class.std::_Rb_tree"* %6)
          to label %8 unwind label %16

; <label>:8                                       ; preds = %0
  %9 = bitcast %"class.std::allocator.2"* %3 to %"class.__gnu_cxx::new_allocator.3"*
  %10 = load %"struct.std::_Rb_tree_node"** %__tmp, align 8
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node"* %10, i32 0, i32 1
  %12 = invoke i32* @_ZSt11__addressofIiEPT_RS0_(i32* %11)
          to label %13 unwind label %20

; <label>:13                                      ; preds = %8
  %14 = load i32** %2, align 8
  invoke void @_ZN9__gnu_cxx13new_allocatorIiE9constructEPiRKi(%"class.__gnu_cxx::new_allocator.3"* %9, i32* %12, i32* %14)
          to label %15 unwind label %20

; <label>:15                                      ; preds = %13
  call void @_ZNSaIiED2Ev(%"class.std::allocator.2"* %3) #1
  br label %34

; <label>:16                                      ; preds = %0
  %17 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %18 = extractvalue { i8*, i32 } %17, 0
  store i8* %18, i8** %4
  %19 = extractvalue { i8*, i32 } %17, 1
  store i32 %19, i32* %5
  br label %24

; <label>:20                                      ; preds = %13, %8
  %21 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %4
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %5
  call void @_ZNSaIiED2Ev(%"class.std::allocator.2"* %3) #1
  br label %24

; <label>:24                                      ; preds = %20, %16
  %25 = load i8** %4
  %26 = call i8* @__cxa_begin_catch(i8* %25) #1
  %27 = load %"struct.std::_Rb_tree_node"** %__tmp, align 8
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_put_nodeEPSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* %6, %"struct.std::_Rb_tree_node"* %27)
          to label %28 unwind label %29

; <label>:28                                      ; preds = %24
  invoke void @__cxa_rethrow() #14
          to label %44 unwind label %29

; <label>:29                                      ; preds = %28, %24
  %30 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %31 = extractvalue { i8*, i32 } %30, 0
  store i8* %31, i8** %4
  %32 = extractvalue { i8*, i32 } %30, 1
  store i32 %32, i32* %5
  invoke void @__cxa_end_catch()
          to label %33 unwind label %41

; <label>:33                                      ; preds = %29
  br label %36

; <label>:34                                      ; preds = %15
  %35 = load %"struct.std::_Rb_tree_node"** %__tmp, align 8
  ret %"struct.std::_Rb_tree_node"* %35

; <label>:36                                      ; preds = %33
  %37 = load i8** %4
  %38 = load i32* %5
  %39 = insertvalue { i8*, i32 } undef, i8* %37, 0
  %40 = insertvalue { i8*, i32 } %39, i32 %38, 1
  resume { i8*, i32 } %40

; <label>:41                                      ; preds = %29
  %42 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %43 = extractvalue { i8*, i32 } %42, 0
  call void @__clang_call_terminate(i8* %43) #12
  unreachable

; <label>:44                                      ; preds = %28
  unreachable
}

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*) #7

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_get_nodeEv(%"class.std::_Rb_tree"* %this) #2 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %3 to %"class.std::allocator.14"*
  %5 = bitcast %"class.std::allocator.14"* %4 to %"class.__gnu_cxx::new_allocator.15"*
  %6 = call %"struct.std::_Rb_tree_node"* @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.15"* %5, i64 1, i8* null)
  ret %"struct.std::_Rb_tree_node"* %6
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.15"* %this, i64 %__n, i8*) #2 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.15"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.15"* %this, %"class.__gnu_cxx::new_allocator.15"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.15"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.15"* %5) #1
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #14
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 40
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.15"* %this) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.15"*, align 8
  store %"class.__gnu_cxx::new_allocator.15"* %this, %"class.__gnu_cxx::new_allocator.15"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.15"** %1
  ret i64 461168601842738790
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_valueEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #5 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_node_base"** %1, align 8
  %3 = bitcast %"struct.std::_Rb_tree_node_base"* %2 to %"struct.std::_Rb_tree_node"*
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node"* %3, i32 0, i32 1
  ret i32* %4
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNKSt23_Rb_tree_const_iteratorIiE13_M_const_castEv(%"struct.std::_Rb_tree_const_iterator"* %this) #2 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %2 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_const_iterator"** %2
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = bitcast %"struct.std::_Rb_tree_node_base"* %5 to %"struct.std::_Rb_tree_node"*
  call void @_ZNSt17_Rb_tree_iteratorIiEC2EPSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_iterator"* %1, %"struct.std::_Rb_tree_node"* %6)
  %7 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %8 = load %"struct.std::_Rb_tree_node_base"** %7
  ret %"struct.std::_Rb_tree_node_base"* %8
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.26"* %this, %"struct.std::_Rb_tree_node_base"** %__a, %"struct.std::_Rb_tree_node_base"** %__b) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::pair.26"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  %3 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.26"* %this, %"struct.std::pair.26"** %1, align 8
  store %"struct.std::_Rb_tree_node_base"** %__a, %"struct.std::_Rb_tree_node_base"*** %2, align 8
  store %"struct.std::_Rb_tree_node_base"** %__b, %"struct.std::_Rb_tree_node_base"*** %3, align 8
  %4 = load %"struct.std::pair.26"** %1
  %5 = getelementptr inbounds %"struct.std::pair.26"* %4, i32 0, i32 0
  %6 = load %"struct.std::_Rb_tree_node_base"*** %2, align 8
  %7 = load %"struct.std::_Rb_tree_node_base"** %6, align 8
  store %"struct.std::_Rb_tree_node_base"* %7, %"struct.std::_Rb_tree_node_base"** %5, align 8
  %8 = getelementptr inbounds %"struct.std::pair.26"* %4, i32 0, i32 1
  %9 = load %"struct.std::_Rb_tree_node_base"*** %3, align 8
  %10 = load %"struct.std::_Rb_tree_node_base"** %9, align 8
  store %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"** %8, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE24_M_get_insert_unique_posERKi(%"class.std::_Rb_tree"* %this, i32* %__k) #2 align 2 {
  %1 = alloca %"struct.std::pair.26", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  %3 = alloca i32*, align 8
  %__x = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__comp = alloca i8, align 1
  %__j = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %5 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %6 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %7 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %8 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %9 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  store i32* %__k, i32** %3, align 8
  %10 = load %"class.std::_Rb_tree"** %2
  %11 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_beginEv(%"class.std::_Rb_tree"* %10)
  store %"struct.std::_Rb_tree_node"* %11, %"struct.std::_Rb_tree_node"** %__x, align 8
  %12 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_M_endEv(%"class.std::_Rb_tree"* %10)
  store %"struct.std::_Rb_tree_node"* %12, %"struct.std::_Rb_tree_node"** %__y, align 8
  store i8 1, i8* %__comp, align 1
  br label %13

; <label>:13                                      ; preds = %35, %0
  %14 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %15 = icmp ne %"struct.std::_Rb_tree_node"* %14, null
  br i1 %15, label %16, label %37

; <label>:16                                      ; preds = %13
  %17 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  store %"struct.std::_Rb_tree_node"* %17, %"struct.std::_Rb_tree_node"** %__y, align 8
  %18 = getelementptr inbounds %"class.std::_Rb_tree"* %10, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %18, i32 0, i32 0
  %20 = load i32** %3, align 8
  %21 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %22 = call i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_node"* %21)
  %23 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %19, i32* %20, i32* %22)
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %__comp, align 1
  %25 = load i8* %__comp, align 1
  %26 = trunc i8 %25 to i1
  br i1 %26, label %27, label %31

; <label>:27                                      ; preds = %16
  %28 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %29 = bitcast %"struct.std::_Rb_tree_node"* %28 to %"struct.std::_Rb_tree_node_base"*
  %30 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %29)
  br label %35

; <label>:31                                      ; preds = %16
  %32 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %33 = bitcast %"struct.std::_Rb_tree_node"* %32 to %"struct.std::_Rb_tree_node_base"*
  %34 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %33)
  br label %35

; <label>:35                                      ; preds = %31, %27
  %36 = phi %"struct.std::_Rb_tree_node"* [ %30, %27 ], [ %34, %31 ]
  store %"struct.std::_Rb_tree_node"* %36, %"struct.std::_Rb_tree_node"** %__x, align 8
  br label %13

; <label>:37                                      ; preds = %13
  %38 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  call void @_ZNSt17_Rb_tree_iteratorIiEC2EPSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_iterator"* %__j, %"struct.std::_Rb_tree_node"* %38)
  %39 = load i8* %__comp, align 1
  %40 = trunc i8 %39 to i1
  br i1 %40, label %41, label %53

; <label>:41                                      ; preds = %37
  %42 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5beginEv(%"class.std::_Rb_tree"* %10)
  %43 = getelementptr %"struct.std::_Rb_tree_iterator"* %4, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %42, %"struct.std::_Rb_tree_node_base"** %43
  %44 = call zeroext i1 @_ZNKSt17_Rb_tree_iteratorIiEeqERKS0_(%"struct.std::_Rb_tree_iterator"* %__j, %"struct.std::_Rb_tree_iterator"* %4)
  br i1 %44, label %45, label %50

; <label>:45                                      ; preds = %41
  %46 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %47 = bitcast %"struct.std::_Rb_tree_node"* %46 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %47, %"struct.std::_Rb_tree_node_base"** %5
  %48 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  %49 = bitcast %"struct.std::_Rb_tree_node"* %48 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %49, %"struct.std::_Rb_tree_node_base"** %6
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.26"* %1, %"struct.std::_Rb_tree_node_base"** %5, %"struct.std::_Rb_tree_node_base"** %6)
  br label %68

; <label>:50                                      ; preds = %41
  %51 = call %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorIiEmmEv(%"struct.std::_Rb_tree_iterator"* %__j)
  br label %52

; <label>:52                                      ; preds = %50
  br label %53

; <label>:53                                      ; preds = %52, %37
  %54 = getelementptr inbounds %"class.std::_Rb_tree"* %10, i32 0, i32 0
  %55 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %54, i32 0, i32 0
  %56 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__j, i32 0, i32 0
  %57 = load %"struct.std::_Rb_tree_node_base"** %56, align 8
  %58 = call i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %57)
  %59 = load i32** %3, align 8
  %60 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %55, i32* %58, i32* %59)
  br i1 %60, label %61, label %66

; <label>:61                                      ; preds = %53
  %62 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %63 = bitcast %"struct.std::_Rb_tree_node"* %62 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %63, %"struct.std::_Rb_tree_node_base"** %7
  %64 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  %65 = bitcast %"struct.std::_Rb_tree_node"* %64 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %65, %"struct.std::_Rb_tree_node_base"** %8
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.26"* %1, %"struct.std::_Rb_tree_node_base"** %7, %"struct.std::_Rb_tree_node_base"** %8)
  br label %68

; <label>:66                                      ; preds = %53
  %67 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__j, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %9
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2ERKS1_S4_(%"struct.std::pair.26"* %1, %"struct.std::_Rb_tree_node_base"** %67, %"struct.std::_Rb_tree_node_base"** %9)
  br label %68

; <label>:68                                      ; preds = %66, %61, %45
  %69 = bitcast %"struct.std::pair.26"* %1 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %70 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %69, align 1
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %70
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorIiEmmEv(%"struct.std::_Rb_tree_iterator"* %this) #5 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_iterator"** %1
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  %4 = load %"struct.std::_Rb_tree_node_base"** %3, align 8
  %5 = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %4) #13
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %5, %"struct.std::_Rb_tree_node_base"** %6, align 8
  ret %"struct.std::_Rb_tree_iterator"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorIiEppEv(%"struct.std::_Rb_tree_iterator"* %this) #5 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_iterator"** %1
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  %4 = load %"struct.std::_Rb_tree_node_base"** %3, align 8
  %5 = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %4) #13
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %5, %"struct.std::_Rb_tree_node_base"** %6, align 8
  ret %"struct.std::_Rb_tree_iterator"* %2
}

; Function Attrs: nounwind readonly
declare %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #6

; Function Attrs: nounwind readonly
declare %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #6

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt17_Rb_tree_iteratorIiEeqERKS0_(%"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"* %__x) #5 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %1, align 8
  store %"struct.std::_Rb_tree_iterator"* %__x, %"struct.std::_Rb_tree_iterator"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_iterator"** %1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = load %"struct.std::_Rb_tree_iterator"** %2, align 8
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %6, i32 0, i32 0
  %8 = load %"struct.std::_Rb_tree_node_base"** %7, align 8
  %9 = icmp eq %"struct.std::_Rb_tree_node_base"* %5, %8
  ret i1 %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt15insert_iteratorISt3setIiSt4lessIiESaIiEEEC2ERS4_St23_Rb_tree_const_iteratorIiE(%"class.std::insert_iterator"* %this, %"class.std::set"* %__x, %"struct.std::_Rb_tree_node_base"* %__i.coerce) unnamed_addr #5 align 2 {
  %__i = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %1 = alloca %"class.std::insert_iterator"*, align 8
  %2 = alloca %"class.std::set"*, align 8
  %3 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %__i, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__i.coerce, %"struct.std::_Rb_tree_node_base"** %3
  store %"class.std::insert_iterator"* %this, %"class.std::insert_iterator"** %1, align 8
  store %"class.std::set"* %__x, %"class.std::set"** %2, align 8
  %4 = load %"class.std::insert_iterator"** %1
  %5 = bitcast %"class.std::insert_iterator"* %4 to %"struct.std::iterator.17"*
  %6 = getelementptr inbounds %"class.std::insert_iterator"* %4, i32 0, i32 0
  %7 = load %"class.std::set"** %2, align 8
  store %"class.std::set"* %7, %"class.std::set"** %6, align 8
  %8 = getelementptr inbounds %"class.std::insert_iterator"* %4, i32 0, i32 1
  %9 = bitcast %"struct.std::_Rb_tree_const_iterator"* %8 to i8*
  %10 = bitcast %"struct.std::_Rb_tree_const_iterator"* %__i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"class.std::_Rb_tree"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEEaSERKS5_(%"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"* %__x) #2 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  store %"class.std::_Rb_tree"* %__x, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"** %1
  %4 = load %"class.std::_Rb_tree"** %2, align 8
  %5 = icmp ne %"class.std::_Rb_tree"* %3, %4
  br i1 %5, label %6, label %37

; <label>:6                                       ; preds = %0
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5clearEv(%"class.std::_Rb_tree"* %3)
  %7 = getelementptr inbounds %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %7, i32 0, i32 0
  %9 = load %"class.std::_Rb_tree"** %2, align 8
  %10 = getelementptr inbounds %"class.std::_Rb_tree"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %10, i32 0, i32 0
  %12 = load %"class.std::_Rb_tree"** %2, align 8
  %13 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_rootEv(%"class.std::_Rb_tree"* %12)
  %14 = icmp ne %"struct.std::_Rb_tree_node_base"* %13, null
  br i1 %14, label %15, label %36

; <label>:15                                      ; preds = %6
  %16 = load %"class.std::_Rb_tree"** %2, align 8
  %17 = call %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_beginEv(%"class.std::_Rb_tree"* %16)
  %18 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_M_endEv(%"class.std::_Rb_tree"* %3)
  %19 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyEPKSt13_Rb_tree_nodeIiEPS7_(%"class.std::_Rb_tree"* %3, %"struct.std::_Rb_tree_node"* %17, %"struct.std::_Rb_tree_node"* %18)
  %20 = bitcast %"struct.std::_Rb_tree_node"* %19 to %"struct.std::_Rb_tree_node_base"*
  %21 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_rootEv(%"class.std::_Rb_tree"* %3)
  store %"struct.std::_Rb_tree_node_base"* %20, %"struct.std::_Rb_tree_node_base"** %21
  %22 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_rootEv(%"class.std::_Rb_tree"* %3)
  %23 = load %"struct.std::_Rb_tree_node_base"** %22
  %24 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_S_minimumEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %23)
  %25 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_leftmostEv(%"class.std::_Rb_tree"* %3)
  store %"struct.std::_Rb_tree_node_base"* %24, %"struct.std::_Rb_tree_node_base"** %25
  %26 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_rootEv(%"class.std::_Rb_tree"* %3)
  %27 = load %"struct.std::_Rb_tree_node_base"** %26
  %28 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_S_maximumEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %27)
  %29 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_rightmostEv(%"class.std::_Rb_tree"* %3)
  store %"struct.std::_Rb_tree_node_base"* %28, %"struct.std::_Rb_tree_node_base"** %29
  %30 = load %"class.std::_Rb_tree"** %2, align 8
  %31 = getelementptr inbounds %"class.std::_Rb_tree"* %30, i32 0, i32 0
  %32 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %31, i32 0, i32 2
  %33 = load i64* %32, align 8
  %34 = getelementptr inbounds %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %35 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  br label %36

; <label>:36                                      ; preds = %15, %6
  br label %37

; <label>:37                                      ; preds = %36, %0
  ret %"class.std::_Rb_tree"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_rootEv(%"class.std::_Rb_tree"* %this) #5 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %3, i32 0, i32 1
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %4, i32 0, i32 1
  %6 = load %"struct.std::_Rb_tree_node_base"** %5, align 8
  ret %"struct.std::_Rb_tree_node_base"* %6
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyEPKSt13_Rb_tree_nodeIiEPS7_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"* %__p) #2 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %3 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__top = alloca %"struct.std::_Rb_tree_node"*, align 8
  %4 = alloca i8*
  %5 = alloca i32
  %__y = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %2, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %3, align 8
  %6 = load %"class.std::_Rb_tree"** %1
  %7 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %8 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_M_clone_nodeEPKSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* %6, %"struct.std::_Rb_tree_node"* %7)
  store %"struct.std::_Rb_tree_node"* %8, %"struct.std::_Rb_tree_node"** %__top, align 8
  %9 = load %"struct.std::_Rb_tree_node"** %3, align 8
  %10 = bitcast %"struct.std::_Rb_tree_node"* %9 to %"struct.std::_Rb_tree_node_base"*
  %11 = load %"struct.std::_Rb_tree_node"** %__top, align 8
  %12 = bitcast %"struct.std::_Rb_tree_node"* %11 to %"struct.std::_Rb_tree_node_base"*
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %12, i32 0, i32 1
  store %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"** %13, align 8
  %14 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %15 = bitcast %"struct.std::_Rb_tree_node"* %14 to %"struct.std::_Rb_tree_node_base"*
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %15, i32 0, i32 3
  %17 = load %"struct.std::_Rb_tree_node_base"** %16, align 8
  %18 = icmp ne %"struct.std::_Rb_tree_node_base"* %17, null
  br i1 %18, label %19, label %40

; <label>:19                                      ; preds = %0
  %20 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %21 = bitcast %"struct.std::_Rb_tree_node"* %20 to %"struct.std::_Rb_tree_node_base"*
  %22 = invoke %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_rightEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %21)
          to label %23 unwind label %31

; <label>:23                                      ; preds = %19
  %24 = load %"struct.std::_Rb_tree_node"** %__top, align 8
  %25 = invoke %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyEPKSt13_Rb_tree_nodeIiEPS7_(%"class.std::_Rb_tree"* %6, %"struct.std::_Rb_tree_node"* %22, %"struct.std::_Rb_tree_node"* %24)
          to label %26 unwind label %31

; <label>:26                                      ; preds = %23
  %27 = bitcast %"struct.std::_Rb_tree_node"* %25 to %"struct.std::_Rb_tree_node_base"*
  %28 = load %"struct.std::_Rb_tree_node"** %__top, align 8
  %29 = bitcast %"struct.std::_Rb_tree_node"* %28 to %"struct.std::_Rb_tree_node_base"*
  %30 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %29, i32 0, i32 3
  store %"struct.std::_Rb_tree_node_base"* %27, %"struct.std::_Rb_tree_node_base"** %30, align 8
  br label %40

; <label>:31                                      ; preds = %80, %72, %68, %49, %40, %23, %19
  %32 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %33 = extractvalue { i8*, i32 } %32, 0
  store i8* %33, i8** %4
  %34 = extractvalue { i8*, i32 } %32, 1
  store i32 %34, i32* %5
  br label %35

; <label>:35                                      ; preds = %31
  %36 = load i8** %4
  %37 = call i8* @__cxa_begin_catch(i8* %36) #1
  %38 = load %"struct.std::_Rb_tree_node"** %__top, align 8
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* %6, %"struct.std::_Rb_tree_node"* %38)
          to label %39 unwind label %87

; <label>:39                                      ; preds = %35
  invoke void @__cxa_rethrow() #14
          to label %102 unwind label %87

; <label>:40                                      ; preds = %26, %0
  %41 = load %"struct.std::_Rb_tree_node"** %__top, align 8
  store %"struct.std::_Rb_tree_node"* %41, %"struct.std::_Rb_tree_node"** %3, align 8
  %42 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %43 = bitcast %"struct.std::_Rb_tree_node"* %42 to %"struct.std::_Rb_tree_node_base"*
  %44 = invoke %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_S_leftEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %43)
          to label %45 unwind label %31

; <label>:45                                      ; preds = %40
  store %"struct.std::_Rb_tree_node"* %44, %"struct.std::_Rb_tree_node"** %2, align 8
  br label %46

; <label>:46                                      ; preds = %85, %45
  %47 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %48 = icmp ne %"struct.std::_Rb_tree_node"* %47, null
  br i1 %48, label %49, label %86

; <label>:49                                      ; preds = %46
  %50 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %51 = invoke %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_M_clone_nodeEPKSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* %6, %"struct.std::_Rb_tree_node"* %50)
          to label %52 unwind label %31

; <label>:52                                      ; preds = %49
  store %"struct.std::_Rb_tree_node"* %51, %"struct.std::_Rb_tree_node"** %__y, align 8
  %53 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  %54 = bitcast %"struct.std::_Rb_tree_node"* %53 to %"struct.std::_Rb_tree_node_base"*
  %55 = load %"struct.std::_Rb_tree_node"** %3, align 8
  %56 = bitcast %"struct.std::_Rb_tree_node"* %55 to %"struct.std::_Rb_tree_node_base"*
  %57 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %56, i32 0, i32 2
  store %"struct.std::_Rb_tree_node_base"* %54, %"struct.std::_Rb_tree_node_base"** %57, align 8
  %58 = load %"struct.std::_Rb_tree_node"** %3, align 8
  %59 = bitcast %"struct.std::_Rb_tree_node"* %58 to %"struct.std::_Rb_tree_node_base"*
  %60 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  %61 = bitcast %"struct.std::_Rb_tree_node"* %60 to %"struct.std::_Rb_tree_node_base"*
  %62 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %61, i32 0, i32 1
  store %"struct.std::_Rb_tree_node_base"* %59, %"struct.std::_Rb_tree_node_base"** %62, align 8
  %63 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %64 = bitcast %"struct.std::_Rb_tree_node"* %63 to %"struct.std::_Rb_tree_node_base"*
  %65 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %64, i32 0, i32 3
  %66 = load %"struct.std::_Rb_tree_node_base"** %65, align 8
  %67 = icmp ne %"struct.std::_Rb_tree_node_base"* %66, null
  br i1 %67, label %68, label %80

; <label>:68                                      ; preds = %52
  %69 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %70 = bitcast %"struct.std::_Rb_tree_node"* %69 to %"struct.std::_Rb_tree_node_base"*
  %71 = invoke %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_rightEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %70)
          to label %72 unwind label %31

; <label>:72                                      ; preds = %68
  %73 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  %74 = invoke %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyEPKSt13_Rb_tree_nodeIiEPS7_(%"class.std::_Rb_tree"* %6, %"struct.std::_Rb_tree_node"* %71, %"struct.std::_Rb_tree_node"* %73)
          to label %75 unwind label %31

; <label>:75                                      ; preds = %72
  %76 = bitcast %"struct.std::_Rb_tree_node"* %74 to %"struct.std::_Rb_tree_node_base"*
  %77 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  %78 = bitcast %"struct.std::_Rb_tree_node"* %77 to %"struct.std::_Rb_tree_node_base"*
  %79 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %78, i32 0, i32 3
  store %"struct.std::_Rb_tree_node_base"* %76, %"struct.std::_Rb_tree_node_base"** %79, align 8
  br label %80

; <label>:80                                      ; preds = %75, %52
  %81 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  store %"struct.std::_Rb_tree_node"* %81, %"struct.std::_Rb_tree_node"** %3, align 8
  %82 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %83 = bitcast %"struct.std::_Rb_tree_node"* %82 to %"struct.std::_Rb_tree_node_base"*
  %84 = invoke %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_S_leftEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %83)
          to label %85 unwind label %31

; <label>:85                                      ; preds = %80
  store %"struct.std::_Rb_tree_node"* %84, %"struct.std::_Rb_tree_node"** %2, align 8
  br label %46

; <label>:86                                      ; preds = %46
  br label %92

; <label>:87                                      ; preds = %39, %35
  %88 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %89 = extractvalue { i8*, i32 } %88, 0
  store i8* %89, i8** %4
  %90 = extractvalue { i8*, i32 } %88, 1
  store i32 %90, i32* %5
  invoke void @__cxa_end_catch()
          to label %91 unwind label %99

; <label>:91                                      ; preds = %87
  br label %94

; <label>:92                                      ; preds = %86
  %93 = load %"struct.std::_Rb_tree_node"** %__top, align 8
  ret %"struct.std::_Rb_tree_node"* %93

; <label>:94                                      ; preds = %91
  %95 = load i8** %4
  %96 = load i32* %5
  %97 = insertvalue { i8*, i32 } undef, i8* %95, 0
  %98 = insertvalue { i8*, i32 } %97, i32 %96, 1
  resume { i8*, i32 } %98

; <label>:99                                      ; preds = %87
  %100 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %101 = extractvalue { i8*, i32 } %100, 0
  call void @__clang_call_terminate(i8* %101) #12
  unreachable

; <label>:102                                     ; preds = %39
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_beginEv(%"class.std::_Rb_tree"* %this) #5 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %3, i32 0, i32 1
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %4, i32 0, i32 1
  %6 = load %"struct.std::_Rb_tree_node_base"** %5, align 8
  %7 = bitcast %"struct.std::_Rb_tree_node_base"* %6 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %7
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_S_minimumEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #2 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_node_base"** %1, align 8
  %3 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt18_Rb_tree_node_base10_S_minimumEPS_(%"struct.std::_Rb_tree_node_base"* %2)
  ret %"struct.std::_Rb_tree_node_base"* %3
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_S_maximumEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #2 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_node_base"** %1, align 8
  %3 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt18_Rb_tree_node_base10_S_maximumEPS_(%"struct.std::_Rb_tree_node_base"* %2)
  ret %"struct.std::_Rb_tree_node_base"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt18_Rb_tree_node_base10_S_maximumEPS_(%"struct.std::_Rb_tree_node_base"* %__x) #5 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %1, align 8
  br label %2

; <label>:2                                       ; preds = %7, %0
  %3 = load %"struct.std::_Rb_tree_node_base"** %1, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %3, i32 0, i32 3
  %5 = load %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = icmp ne %"struct.std::_Rb_tree_node_base"* %5, null
  br i1 %6, label %7, label %11

; <label>:7                                       ; preds = %2
  %8 = load %"struct.std::_Rb_tree_node_base"** %1, align 8
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %8, i32 0, i32 3
  %10 = load %"struct.std::_Rb_tree_node_base"** %9, align 8
  store %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"** %1, align 8
  br label %2

; <label>:11                                      ; preds = %2
  %12 = load %"struct.std::_Rb_tree_node_base"** %1, align 8
  ret %"struct.std::_Rb_tree_node_base"* %12
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt18_Rb_tree_node_base10_S_minimumEPS_(%"struct.std::_Rb_tree_node_base"* %__x) #5 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %1, align 8
  br label %2

; <label>:2                                       ; preds = %7, %0
  %3 = load %"struct.std::_Rb_tree_node_base"** %1, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %3, i32 0, i32 2
  %5 = load %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = icmp ne %"struct.std::_Rb_tree_node_base"* %5, null
  br i1 %6, label %7, label %11

; <label>:7                                       ; preds = %2
  %8 = load %"struct.std::_Rb_tree_node_base"** %1, align 8
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %8, i32 0, i32 2
  %10 = load %"struct.std::_Rb_tree_node_base"** %9, align 8
  store %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"** %1, align 8
  br label %2

; <label>:11                                      ; preds = %2
  %12 = load %"struct.std::_Rb_tree_node_base"** %1, align 8
  ret %"struct.std::_Rb_tree_node_base"* %12
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_M_clone_nodeEPKSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__x) #2 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__tmp = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %2, align 8
  %3 = load %"class.std::_Rb_tree"** %1
  %4 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_node"* %4, i32 0, i32 1
  %6 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_create_nodeERKi(%"class.std::_Rb_tree"* %3, i32* %5)
  store %"struct.std::_Rb_tree_node"* %6, %"struct.std::_Rb_tree_node"** %__tmp, align 8
  %7 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %8 = bitcast %"struct.std::_Rb_tree_node"* %7 to %"struct.std::_Rb_tree_node_base"*
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %8, i32 0, i32 0
  %10 = load i32* %9, align 4
  %11 = load %"struct.std::_Rb_tree_node"** %__tmp, align 8
  %12 = bitcast %"struct.std::_Rb_tree_node"* %11 to %"struct.std::_Rb_tree_node_base"*
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 4
  %14 = load %"struct.std::_Rb_tree_node"** %__tmp, align 8
  %15 = bitcast %"struct.std::_Rb_tree_node"* %14 to %"struct.std::_Rb_tree_node_base"*
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %15, i32 0, i32 2
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %16, align 8
  %17 = load %"struct.std::_Rb_tree_node"** %__tmp, align 8
  %18 = bitcast %"struct.std::_Rb_tree_node"* %17 to %"struct.std::_Rb_tree_node_base"*
  %19 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %18, i32 0, i32 3
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %19, align 8
  %20 = load %"struct.std::_Rb_tree_node"** %__tmp, align 8
  ret %"struct.std::_Rb_tree_node"* %20
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_S_rightEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #5 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_node_base"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %2, i32 0, i32 3
  %4 = load %"struct.std::_Rb_tree_node_base"** %3, align 8
  %5 = bitcast %"struct.std::_Rb_tree_node_base"* %4 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_S_leftEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #5 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_node_base"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %2, i32 0, i32 2
  %4 = load %"struct.std::_Rb_tree_node_base"** %3, align 8
  %5 = bitcast %"struct.std::_Rb_tree_node_base"* %4 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %5
}

; Function Attrs: uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE16_M_insert_uniqueERKi(%"class.std::_Rb_tree"* %this, i32* %__v) #2 align 2 {
  %1 = alloca %"struct.std::pair.27", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  %3 = alloca i32*, align 8
  %__res = alloca %"struct.std::pair.26", align 8
  %4 = alloca %"struct.std::_Identity", align 1
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = alloca i8, align 1
  %7 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %8 = alloca i8, align 1
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  store i32* %__v, i32** %3, align 8
  %9 = load %"class.std::_Rb_tree"** %2
  %10 = load i32** %3, align 8
  %11 = call i32* @_ZNKSt9_IdentityIiEclERKi(%"struct.std::_Identity"* %4, i32* %10)
  %12 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE24_M_get_insert_unique_posERKi(%"class.std::_Rb_tree"* %9, i32* %11)
  %13 = bitcast %"struct.std::pair.26"* %__res to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %14 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %13, i32 0, i32 0
  %15 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %12, 0
  store %"struct.std::_Rb_tree_node_base"* %15, %"struct.std::_Rb_tree_node_base"** %14, align 1
  %16 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %13, i32 0, i32 1
  %17 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %12, 1
  store %"struct.std::_Rb_tree_node_base"* %17, %"struct.std::_Rb_tree_node_base"** %16, align 1
  %18 = getelementptr inbounds %"struct.std::pair.26"* %__res, i32 0, i32 1
  %19 = load %"struct.std::_Rb_tree_node_base"** %18, align 8
  %20 = icmp ne %"struct.std::_Rb_tree_node_base"* %19, null
  br i1 %20, label %21, label %29

; <label>:21                                      ; preds = %0
  %22 = getelementptr inbounds %"struct.std::pair.26"* %__res, i32 0, i32 0
  %23 = load %"struct.std::_Rb_tree_node_base"** %22, align 8
  %24 = getelementptr inbounds %"struct.std::pair.26"* %__res, i32 0, i32 1
  %25 = load %"struct.std::_Rb_tree_node_base"** %24, align 8
  %26 = load i32** %3, align 8
  %27 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_EPSt18_Rb_tree_node_baseS7_RKi(%"class.std::_Rb_tree"* %9, %"struct.std::_Rb_tree_node_base"* %23, %"struct.std::_Rb_tree_node_base"* %25, i32* %26)
  %28 = getelementptr %"struct.std::_Rb_tree_iterator"* %5, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %27, %"struct.std::_Rb_tree_node_base"** %28
  store i8 1, i8* %6
  call void @_ZNSt4pairISt17_Rb_tree_iteratorIiEbEC2ERKS1_RKb(%"struct.std::pair.27"* %1, %"struct.std::_Rb_tree_iterator"* %5, i8* %6)
  br label %33

; <label>:29                                      ; preds = %0
  %30 = getelementptr inbounds %"struct.std::pair.26"* %__res, i32 0, i32 0
  %31 = load %"struct.std::_Rb_tree_node_base"** %30, align 8
  %32 = bitcast %"struct.std::_Rb_tree_node_base"* %31 to %"struct.std::_Rb_tree_node"*
  call void @_ZNSt17_Rb_tree_iteratorIiEC2EPSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_iterator"* %7, %"struct.std::_Rb_tree_node"* %32)
  store i8 0, i8* %8
  call void @_ZNSt4pairISt17_Rb_tree_iteratorIiEbEC2ERKS1_RKb(%"struct.std::pair.27"* %1, %"struct.std::_Rb_tree_iterator"* %7, i8* %8)
  br label %33

; <label>:33                                      ; preds = %29, %21
  %34 = bitcast %"struct.std::pair.27"* %1 to { %"struct.std::_Rb_tree_node_base"*, i8 }*
  %35 = load { %"struct.std::_Rb_tree_node_base"*, i8 }* %34, align 1
  ret { %"struct.std::_Rb_tree_node_base"*, i8 } %35
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt4pairISt23_Rb_tree_const_iteratorIiEbEC2ERKS1_RKb(%"struct.std::pair"* %this, %"struct.std::_Rb_tree_const_iterator"* %__a, i8* %__b) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::pair"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %3 = alloca i8*, align 8
  store %"struct.std::pair"* %this, %"struct.std::pair"** %1, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %__a, %"struct.std::_Rb_tree_const_iterator"** %2, align 8
  store i8* %__b, i8** %3, align 8
  %4 = load %"struct.std::pair"** %1
  %5 = getelementptr inbounds %"struct.std::pair"* %4, i32 0, i32 0
  %6 = load %"struct.std::_Rb_tree_const_iterator"** %2, align 8
  %7 = bitcast %"struct.std::_Rb_tree_const_iterator"* %5 to i8*
  %8 = bitcast %"struct.std::_Rb_tree_const_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 8, i1 false)
  %9 = getelementptr inbounds %"struct.std::pair"* %4, i32 0, i32 1
  %10 = load i8** %3, align 8
  %11 = load i8* %10, align 1
  %12 = trunc i8 %11 to i1
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %9, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt4pairISt17_Rb_tree_iteratorIiEbEC2ERKS1_RKb(%"struct.std::pair.27"* %this, %"struct.std::_Rb_tree_iterator"* %__a, i8* %__b) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::pair.27"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %3 = alloca i8*, align 8
  store %"struct.std::pair.27"* %this, %"struct.std::pair.27"** %1, align 8
  store %"struct.std::_Rb_tree_iterator"* %__a, %"struct.std::_Rb_tree_iterator"** %2, align 8
  store i8* %__b, i8** %3, align 8
  %4 = load %"struct.std::pair.27"** %1
  %5 = getelementptr inbounds %"struct.std::pair.27"* %4, i32 0, i32 0
  %6 = load %"struct.std::_Rb_tree_iterator"** %2, align 8
  %7 = bitcast %"struct.std::_Rb_tree_iterator"* %5 to i8*
  %8 = bitcast %"struct.std::_Rb_tree_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 8, i1 false)
  %9 = getelementptr inbounds %"struct.std::pair.27"* %4, i32 0, i32 1
  %10 = load i8** %3, align 8
  %11 = load i8* %10, align 1
  %12 = trunc i8 %11 to i1
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %9, align 1
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt3setIiSt4lessIiESaIiEES4_EvT_S6_RSaIT0_E(%"class.std::set"* %__first, %"class.std::set"* %__last, %"class.std::allocator.11"*) #3 {
  %2 = alloca %"class.std::set"*, align 8
  %3 = alloca %"class.std::set"*, align 8
  %4 = alloca %"class.std::allocator.11"*, align 8
  store %"class.std::set"* %__first, %"class.std::set"** %2, align 8
  store %"class.std::set"* %__last, %"class.std::set"** %3, align 8
  store %"class.std::allocator.11"* %0, %"class.std::allocator.11"** %4, align 8
  %5 = load %"class.std::set"** %2, align 8
  %6 = load %"class.std::set"** %3, align 8
  call void @_ZSt8_DestroyIPSt3setIiSt4lessIiESaIiEEEvT_S6_(%"class.std::set"* %5, %"class.std::set"* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.11"* @_ZNSt12_Vector_baseISt3setIiSt4lessIiESaIiEESaIS4_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.10"* %this) #5 align 2 {
  %1 = alloca %"struct.std::_Vector_base.10"*, align 8
  store %"struct.std::_Vector_base.10"* %this, %"struct.std::_Vector_base.10"** %1, align 8
  %2 = load %"struct.std::_Vector_base.10"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base.10"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %3 to %"class.std::allocator.11"*
  ret %"class.std::allocator.11"* %4
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt3setIiSt4lessIiESaIiEESaIS4_EED2Ev(%"struct.std::_Vector_base.10"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"struct.std::_Vector_base.10"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"struct.std::_Vector_base.10"* %this, %"struct.std::_Vector_base.10"** %1, align 8
  %4 = load %"struct.std::_Vector_base.10"** %1
  %5 = getelementptr inbounds %"struct.std::_Vector_base.10"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %5, i32 0, i32 0
  %7 = load %"class.std::set"** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Vector_base.10"* %4, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %8, i32 0, i32 2
  %10 = load %"class.std::set"** %9, align 8
  %11 = getelementptr inbounds %"struct.std::_Vector_base.10"* %4, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %11, i32 0, i32 0
  %13 = load %"class.std::set"** %12, align 8
  %14 = ptrtoint %"class.std::set"* %10 to i64
  %15 = ptrtoint %"class.std::set"* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 48
  invoke void @_ZNSt12_Vector_baseISt3setIiSt4lessIiESaIiEESaIS4_EE13_M_deallocateEPS4_m(%"struct.std::_Vector_base.10"* %4, %"class.std::set"* %7, i64 %17)
          to label %18 unwind label %20

; <label>:18                                      ; preds = %0
  %19 = getelementptr inbounds %"struct.std::_Vector_base.10"* %4, i32 0, i32 0
  call void @_ZNSt12_Vector_baseISt3setIiSt4lessIiESaIiEESaIS4_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %19) #1
  ret void

; <label>:20                                      ; preds = %0
  %21 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %2
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %3
  %24 = getelementptr inbounds %"struct.std::_Vector_base.10"* %4, i32 0, i32 0
  call void @_ZNSt12_Vector_baseISt3setIiSt4lessIiESaIiEESaIS4_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %24) #1
  br label %25

; <label>:25                                      ; preds = %20
  %26 = load i8** %2
  %27 = load i32* %3
  %28 = insertvalue { i8*, i32 } undef, i8* %26, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt3setIiSt4lessIiESaIiEESaIS4_EE13_M_deallocateEPS4_m(%"struct.std::_Vector_base.10"* %this, %"class.std::set"* %__p, i64 %__n) #2 align 2 {
  %1 = alloca %"struct.std::_Vector_base.10"*, align 8
  %2 = alloca %"class.std::set"*, align 8
  %3 = alloca i64, align 8
  store %"struct.std::_Vector_base.10"* %this, %"struct.std::_Vector_base.10"** %1, align 8
  store %"class.std::set"* %__p, %"class.std::set"** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"struct.std::_Vector_base.10"** %1
  %5 = load %"class.std::set"** %2, align 8
  %6 = icmp ne %"class.std::set"* %5, null
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"struct.std::_Vector_base.10"* %4, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %8 to %"class.__gnu_cxx::new_allocator.12"*
  %10 = load %"class.std::set"** %2, align 8
  %11 = load i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt3setIiSt4lessIiESaIiEEE10deallocateEPS5_m(%"class.__gnu_cxx::new_allocator.12"* %9, %"class.std::set"* %10, i64 %11)
  br label %12

; <label>:12                                      ; preds = %7, %0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt3setIiSt4lessIiESaIiEESaIS4_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %this) unnamed_addr #8 align 2 {
  %1 = alloca %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %this, %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"** %1
  %3 = bitcast %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %2 to %"class.std::allocator.11"*
  call void @_ZNSaISt3setIiSt4lessIiESaIiEEED2Ev(%"class.std::allocator.11"* %3) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt3setIiSt4lessIiESaIiEEED2Ev(%"class.std::allocator.11"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::allocator.11"*, align 8
  store %"class.std::allocator.11"* %this, %"class.std::allocator.11"** %1, align 8
  %2 = load %"class.std::allocator.11"** %1
  %3 = bitcast %"class.std::allocator.11"* %2 to %"class.__gnu_cxx::new_allocator.12"*
  call void @_ZN9__gnu_cxx13new_allocatorISt3setIiSt4lessIiESaIiEEED2Ev(%"class.__gnu_cxx::new_allocator.12"* %3) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt3setIiSt4lessIiESaIiEEED2Ev(%"class.__gnu_cxx::new_allocator.12"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.12"*, align 8
  store %"class.__gnu_cxx::new_allocator.12"* %this, %"class.__gnu_cxx::new_allocator.12"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.12"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt3setIiSt4lessIiESaIiEEE10deallocateEPS5_m(%"class.__gnu_cxx::new_allocator.12"* %this, %"class.std::set"* %__p, i64) #5 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.12"*, align 8
  %3 = alloca %"class.std::set"*, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.12"* %this, %"class.__gnu_cxx::new_allocator.12"** %2, align 8
  store %"class.std::set"* %__p, %"class.std::set"** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.12"** %2
  %6 = load %"class.std::set"** %3, align 8
  %7 = bitcast %"class.std::set"* %6 to i8*
  call void @_ZdlPv(i8* %7) #1
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt3setIiSt4lessIiESaIiEEEvT_S6_(%"class.std::set"* %__first, %"class.std::set"* %__last) #3 {
  %1 = alloca %"class.std::set"*, align 8
  %2 = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %__first, %"class.std::set"** %1, align 8
  store %"class.std::set"* %__last, %"class.std::set"** %2, align 8
  %3 = load %"class.std::set"** %1, align 8
  %4 = load %"class.std::set"** %2, align 8
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt3setIiSt4lessIiESaIiEEEEvT_S8_(%"class.std::set"* %3, %"class.std::set"* %4)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt3setIiSt4lessIiESaIiEEEEvT_S8_(%"class.std::set"* %__first, %"class.std::set"* %__last) #2 align 2 {
  %1 = alloca %"class.std::set"*, align 8
  %2 = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %__first, %"class.std::set"** %1, align 8
  store %"class.std::set"* %__last, %"class.std::set"** %2, align 8
  br label %3

; <label>:3                                       ; preds = %10, %0
  %4 = load %"class.std::set"** %1, align 8
  %5 = load %"class.std::set"** %2, align 8
  %6 = icmp ne %"class.std::set"* %4, %5
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %3
  %8 = load %"class.std::set"** %1, align 8
  %9 = call %"class.std::set"* @_ZSt11__addressofISt3setIiSt4lessIiESaIiEEEPT_RS5_(%"class.std::set"* %8)
  call void @_ZSt8_DestroyISt3setIiSt4lessIiESaIiEEEvPT_(%"class.std::set"* %9)
  br label %10

; <label>:10                                      ; preds = %7
  %11 = load %"class.std::set"** %1, align 8
  %12 = getelementptr inbounds %"class.std::set"* %11, i32 1
  store %"class.std::set"* %12, %"class.std::set"** %1, align 8
  br label %3

; <label>:13                                      ; preds = %3
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyISt3setIiSt4lessIiESaIiEEEvPT_(%"class.std::set"* %__pointer) #3 {
  %1 = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %__pointer, %"class.std::set"** %1, align 8
  %2 = load %"class.std::set"** %1, align 8
  call void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(%"class.std::set"* %2)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"class.std::set"* @_ZSt11__addressofISt3setIiSt4lessIiESaIiEEEPT_RS5_(%"class.std::set"* %__r) #8 {
  %1 = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %__r, %"class.std::set"** %1, align 8
  %2 = load %"class.std::set"** %1, align 8
  %3 = bitcast %"class.std::set"* %2 to i8*
  %4 = bitcast i8* %3 to %"class.std::set"*
  ret %"class.std::set"* %4
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E(%"class.std::vector.0"* %__first, %"class.std::vector.0"* %__last, %"class.std::allocator"*) #3 {
  %2 = alloca %"class.std::vector.0"*, align 8
  %3 = alloca %"class.std::vector.0"*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store %"class.std::vector.0"* %__first, %"class.std::vector.0"** %2, align 8
  store %"class.std::vector.0"* %__last, %"class.std::vector.0"** %3, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  %5 = load %"class.std::vector.0"** %2, align 8
  %6 = load %"class.std::vector.0"** %3, align 8
  call void @_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_(%"class.std::vector.0"* %5, %"class.std::vector.0"* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator"* @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #5 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %3 to %"class.std::allocator"*
  ret %"class.std::allocator"* %4
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %4 = load %"struct.std::_Vector_base"** %1
  %5 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %5, i32 0, i32 0
  %7 = load %"class.std::vector.0"** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %8, i32 0, i32 2
  %10 = load %"class.std::vector.0"** %9, align 8
  %11 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %11, i32 0, i32 0
  %13 = load %"class.std::vector.0"** %12, align 8
  %14 = ptrtoint %"class.std::vector.0"* %10 to i64
  %15 = ptrtoint %"class.std::vector.0"* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 24
  invoke void @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base"* %4, %"class.std::vector.0"* %7, i64 %17)
          to label %18 unwind label %20

; <label>:18                                      ; preds = %0
  %19 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  call void @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %19) #1
  ret void

; <label>:20                                      ; preds = %0
  %21 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %2
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %3
  %24 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  call void @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %24) #1
  br label %25

; <label>:25                                      ; preds = %20
  %26 = load i8** %2
  %27 = load i32* %3
  %28 = insertvalue { i8*, i32 } undef, i8* %26, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base"* %this, %"class.std::vector.0"* %__p, i64 %__n) #2 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  %3 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  store %"class.std::vector.0"* %__p, %"class.std::vector.0"** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"struct.std::_Vector_base"** %1
  %5 = load %"class.std::vector.0"** %2, align 8
  %6 = icmp ne %"class.std::vector.0"* %5, null
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %8 to %"class.__gnu_cxx::new_allocator"*
  %10 = load %"class.std::vector.0"** %2, align 8
  %11 = load i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator"* %9, %"class.std::vector.0"* %10, i64 %11)
  br label %12

; <label>:12                                      ; preds = %7, %0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %this) unnamed_addr #8 align 2 {
  %1 = alloca %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %this, %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"** %1
  %3 = bitcast %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %2 to %"class.std::allocator"*
  call void @_ZNSaISt6vectorIiSaIiEEED2Ev(%"class.std::allocator"* %3) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt6vectorIiSaIiEEED2Ev(%"class.std::allocator"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %1, align 8
  %2 = load %"class.std::allocator"** %1
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev(%"class.__gnu_cxx::new_allocator"* %3) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator"* %this, %"class.std::vector.0"* %__p, i64) #5 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %3 = alloca %"class.std::vector.0"*, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %2, align 8
  store %"class.std::vector.0"* %__p, %"class.std::vector.0"** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator"** %2
  %6 = load %"class.std::vector.0"** %3, align 8
  %7 = bitcast %"class.std::vector.0"* %6 to i8*
  call void @_ZdlPv(i8* %7) #1
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_(%"class.std::vector.0"* %__first, %"class.std::vector.0"* %__last) #3 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %__first, %"class.std::vector.0"** %1, align 8
  store %"class.std::vector.0"* %__last, %"class.std::vector.0"** %2, align 8
  %3 = load %"class.std::vector.0"** %1, align 8
  %4 = load %"class.std::vector.0"** %2, align 8
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_(%"class.std::vector.0"* %3, %"class.std::vector.0"* %4)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_(%"class.std::vector.0"* %__first, %"class.std::vector.0"* %__last) #2 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %__first, %"class.std::vector.0"** %1, align 8
  store %"class.std::vector.0"* %__last, %"class.std::vector.0"** %2, align 8
  br label %3

; <label>:3                                       ; preds = %10, %0
  %4 = load %"class.std::vector.0"** %1, align 8
  %5 = load %"class.std::vector.0"** %2, align 8
  %6 = icmp ne %"class.std::vector.0"* %4, %5
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %3
  %8 = load %"class.std::vector.0"** %1, align 8
  %9 = call %"class.std::vector.0"* @_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_(%"class.std::vector.0"* %8)
  call void @_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_(%"class.std::vector.0"* %9)
  br label %10

; <label>:10                                      ; preds = %7
  %11 = load %"class.std::vector.0"** %1, align 8
  %12 = getelementptr inbounds %"class.std::vector.0"* %11, i32 1
  store %"class.std::vector.0"* %12, %"class.std::vector.0"** %1, align 8
  br label %3

; <label>:13                                      ; preds = %3
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_(%"class.std::vector.0"* %__pointer) #3 {
  %1 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %__pointer, %"class.std::vector.0"** %1, align 8
  %2 = load %"class.std::vector.0"** %1, align 8
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %2)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"class.std::vector.0"* @_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_(%"class.std::vector.0"* %__r) #8 {
  %1 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %__r, %"class.std::vector.0"** %1, align 8
  %2 = load %"class.std::vector.0"** %1, align 8
  %3 = bitcast %"class.std::vector.0"* %2 to i8*
  %4 = bitcast i8* %3 to %"class.std::vector.0"*
  ret %"class.std::vector.0"* %4
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt3setIiSt4lessIiESaIiEESaIS4_EEC2Ev(%"struct.std::_Vector_base.10"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"struct.std::_Vector_base.10"*, align 8
  store %"struct.std::_Vector_base.10"* %this, %"struct.std::_Vector_base.10"** %1, align 8
  %2 = load %"struct.std::_Vector_base.10"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base.10"* %2, i32 0, i32 0
  call void @_ZNSt12_Vector_baseISt3setIiSt4lessIiESaIiEESaIS4_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt3setIiSt4lessIiESaIiEESaIS4_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %this, %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"** %1
  %3 = bitcast %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %2 to %"class.std::allocator.11"*
  call void @_ZNSaISt3setIiSt4lessIiESaIiEEEC2Ev(%"class.std::allocator.11"* %3) #1
  %4 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %2, i32 0, i32 0
  store %"class.std::set"* null, %"class.std::set"** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %2, i32 0, i32 1
  store %"class.std::set"* null, %"class.std::set"** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %2, i32 0, i32 2
  store %"class.std::set"* null, %"class.std::set"** %6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt3setIiSt4lessIiESaIiEEEC2Ev(%"class.std::allocator.11"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::allocator.11"*, align 8
  store %"class.std::allocator.11"* %this, %"class.std::allocator.11"** %1, align 8
  %2 = load %"class.std::allocator.11"** %1
  %3 = bitcast %"class.std::allocator.11"* %2 to %"class.__gnu_cxx::new_allocator.12"*
  call void @_ZN9__gnu_cxx13new_allocatorISt3setIiSt4lessIiESaIiEEEC2Ev(%"class.__gnu_cxx::new_allocator.12"* %3) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt3setIiSt4lessIiESaIiEEEC2Ev(%"class.__gnu_cxx::new_allocator.12"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.12"*, align 8
  store %"class.__gnu_cxx::new_allocator.12"* %this, %"class.__gnu_cxx::new_allocator.12"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.12"** %1
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt13_Bvector_baseISaIbEEC2Ev(%"struct.std::_Bvector_base"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"struct.std::_Bvector_base"*, align 8
  store %"struct.std::_Bvector_base"* %this, %"struct.std::_Bvector_base"** %1, align 8
  %2 = load %"struct.std::_Bvector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Bvector_base"* %2, i32 0, i32 0
  call void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2Ev(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2Ev(%"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %this, %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"** %1, align 8
  %4 = load %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"** %1
  %5 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %4 to %"class.std::allocator.6"*
  call void @_ZNSaImEC2Ev(%"class.std::allocator.6"* %5) #1
  %6 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %4, i32 0, i32 0
  invoke void @_ZNSt13_Bit_iteratorC2Ev(%"struct.std::_Bit_iterator"* %6)
          to label %7 unwind label %11

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %4, i32 0, i32 1
  invoke void @_ZNSt13_Bit_iteratorC2Ev(%"struct.std::_Bit_iterator"* %8)
          to label %9 unwind label %11

; <label>:9                                       ; preds = %7
  %10 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %4, i32 0, i32 2
  store i64* null, i64** %10, align 8
  ret void

; <label>:11                                      ; preds = %7, %0
  %12 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %2
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %3
  %15 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %4 to %"class.std::allocator.6"*
  call void @_ZNSaImED2Ev(%"class.std::allocator.6"* %15) #1
  br label %16

; <label>:16                                      ; preds = %11
  %17 = load i8** %2
  %18 = load i32* %3
  %19 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaImEC2Ev(%"class.std::allocator.6"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::allocator.6"*, align 8
  store %"class.std::allocator.6"* %this, %"class.std::allocator.6"** %1, align 8
  %2 = load %"class.std::allocator.6"** %1
  %3 = bitcast %"class.std::allocator.6"* %2 to %"class.__gnu_cxx::new_allocator.7"*
  call void @_ZN9__gnu_cxx13new_allocatorImEC2Ev(%"class.__gnu_cxx::new_allocator.7"* %3) #1
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  call void @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %this, %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"** %1
  %3 = bitcast %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %2 to %"class.std::allocator"*
  call void @_ZNSaISt6vectorIiSaIiEEEC2Ev(%"class.std::allocator"* %3) #1
  %4 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %2, i32 0, i32 0
  store %"class.std::vector.0"* null, %"class.std::vector.0"** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %2, i32 0, i32 1
  store %"class.std::vector.0"* null, %"class.std::vector.0"** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %2, i32 0, i32 2
  store %"class.std::vector.0"* null, %"class.std::vector.0"** %6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt6vectorIiSaIiEEEC2Ev(%"class.std::allocator"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %1, align 8
  %2 = load %"class.std::allocator"** %1
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2Ev(%"class.__gnu_cxx::new_allocator"* %3) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator"** %1
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE4findERKi(%"class.std::_Rb_tree"* %this, i32* %__k) #2 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  %3 = alloca i32*, align 8
  %__j = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  store i32* %__k, i32** %3, align 8
  %5 = load %"class.std::_Rb_tree"** %2
  %6 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_beginEv(%"class.std::_Rb_tree"* %5)
  %7 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_M_endEv(%"class.std::_Rb_tree"* %5)
  %8 = load i32** %3, align 8
  %9 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiES8_RKi(%"class.std::_Rb_tree"* %5, %"struct.std::_Rb_tree_node"* %6, %"struct.std::_Rb_tree_node"* %7, i32* %8)
  %10 = getelementptr %"struct.std::_Rb_tree_iterator"* %__j, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"** %10
  %11 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE3endEv(%"class.std::_Rb_tree"* %5)
  %12 = getelementptr %"struct.std::_Rb_tree_iterator"* %4, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::_Rb_tree_node_base"** %12
  %13 = call zeroext i1 @_ZNKSt17_Rb_tree_iteratorIiEeqERKS0_(%"struct.std::_Rb_tree_iterator"* %__j, %"struct.std::_Rb_tree_iterator"* %4)
  br i1 %13, label %22, label %14

; <label>:14                                      ; preds = %0
  %15 = getelementptr inbounds %"class.std::_Rb_tree"* %5, i32 0, i32 0
  %16 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %15, i32 0, i32 0
  %17 = load i32** %3, align 8
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__j, i32 0, i32 0
  %19 = load %"struct.std::_Rb_tree_node_base"** %18, align 8
  %20 = call i32* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %19)
  %21 = call zeroext i1 @_ZNKSt4lessIiEclERKiS2_(%"struct.std::less"* %16, i32* %17, i32* %20)
  br i1 %21, label %22, label %25

; <label>:22                                      ; preds = %14, %0
  %23 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE3endEv(%"class.std::_Rb_tree"* %5)
  %24 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %23, %"struct.std::_Rb_tree_node_base"** %24
  br label %28

; <label>:25                                      ; preds = %14
  %26 = bitcast %"struct.std::_Rb_tree_iterator"* %1 to i8*
  %27 = bitcast %"struct.std::_Rb_tree_iterator"* %__j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 8, i32 8, i1 false)
  br label %28

; <label>:28                                      ; preds = %25, %22
  %29 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %30 = load %"struct.std::_Rb_tree_node_base"** %29
  ret %"struct.std::_Rb_tree_node_base"* %30
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE9constructIiEEvRS1_PiRKT_(%"class.std::allocator.2"* %__a, i32* %__p, i32* %__arg) #5 align 2 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %1, align 8
  store i32* %__p, i32** %2, align 8
  store i32* %__arg, i32** %3, align 8
  %4 = load %"class.std::allocator.2"** %1, align 8
  %5 = bitcast %"class.std::allocator.2"* %4 to %"class.__gnu_cxx::new_allocator.3"*
  %6 = load i32** %2, align 8
  %7 = load i32** %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE9constructEPiRKi(%"class.__gnu_cxx::new_allocator.3"* %5, i32* %6, i32* %7)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPiS1_EERKi(%"class.std::vector.0"* %this, i32* %__position.coerce, i32* %__x) #2 align 2 {
  %__position = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca i32*, align 8
  %__x_copy = alloca i32, align 4
  %__len = alloca i64, align 8
  %__elems_before = alloca i64, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__new_start = alloca i32*, align 8
  %__new_finish = alloca i32*, align 8
  %4 = alloca i8*
  %5 = alloca i32
  %6 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__position, i32 0, i32 0
  store i32* %__position.coerce, i32** %6
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  store i32* %__x, i32** %2, align 8
  %7 = load %"class.std::vector.0"** %1
  %8 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base.1"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %9, i32 0, i32 1
  %11 = load i32** %10, align 8
  %12 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %13 = getelementptr inbounds %"struct.std::_Vector_base.1"* %12, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %13, i32 0, i32 2
  %15 = load i32** %14, align 8
  %16 = icmp ne i32* %11, %15
  br i1 %16, label %17, label %52

; <label>:17                                      ; preds = %0
  %18 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base.1"* %18, i32 0, i32 0
  %20 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %19 to %"class.std::allocator.2"*
  %21 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %22 = getelementptr inbounds %"struct.std::_Vector_base.1"* %21, i32 0, i32 0
  %23 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %22, i32 0, i32 1
  %24 = load i32** %23, align 8
  %25 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base.1"* %25, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %26, i32 0, i32 1
  %28 = load i32** %27, align 8
  %29 = getelementptr inbounds i32* %28, i64 -1
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE9constructIiEEvRS1_PiRKT_(%"class.std::allocator.2"* %20, i32* %24, i32* %29)
  %30 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %31 = getelementptr inbounds %"struct.std::_Vector_base.1"* %30, i32 0, i32 0
  %32 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %31, i32 0, i32 1
  %33 = load i32** %32, align 8
  %34 = getelementptr inbounds i32* %33, i32 1
  store i32* %34, i32** %32, align 8
  %35 = load i32** %2, align 8
  %36 = load i32* %35, align 4
  store i32 %36, i32* %__x_copy, align 4
  %37 = call i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
  %38 = load i32** %37
  %39 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %40 = getelementptr inbounds %"struct.std::_Vector_base.1"* %39, i32 0, i32 0
  %41 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %40, i32 0, i32 1
  %42 = load i32** %41, align 8
  %43 = getelementptr inbounds i32* %42, i64 -2
  %44 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %45 = getelementptr inbounds %"struct.std::_Vector_base.1"* %44, i32 0, i32 0
  %46 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %45, i32 0, i32 1
  %47 = load i32** %46, align 8
  %48 = getelementptr inbounds i32* %47, i64 -1
  %49 = call i32* @_ZSt13copy_backwardIPiS0_ET0_T_S2_S1_(i32* %38, i32* %43, i32* %48)
  %50 = load i32* %__x_copy, align 4
  %51 = call i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
  store i32 %50, i32* %51
  br label %173

; <label>:52                                      ; preds = %0
  %53 = call i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector.0"* %7, i64 1, i8* getelementptr inbounds ([22 x i8]* @.str9, i32 0, i32 0))
  store i64 %53, i64* %__len, align 8
  %54 = call i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.0"* %7)
  %55 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  store i32* %54, i32** %55
  %56 = call i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* %__position, %"class.__gnu_cxx::__normal_iterator"* %3)
  store i64 %56, i64* %__elems_before, align 8
  %57 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %58 = load i64* %__len, align 8
  %59 = call i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base.1"* %57, i64 %58)
  store i32* %59, i32** %__new_start, align 8
  %60 = load i32** %__new_start, align 8
  store i32* %60, i32** %__new_finish, align 8
  %61 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %62 = getelementptr inbounds %"struct.std::_Vector_base.1"* %61, i32 0, i32 0
  %63 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %62 to %"class.std::allocator.2"*
  %64 = load i32** %__new_start, align 8
  %65 = load i64* %__elems_before, align 8
  %66 = getelementptr inbounds i32* %64, i64 %65
  %67 = load i32** %2, align 8
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE9constructIiEEvRS1_PiRKT_(%"class.std::allocator.2"* %63, i32* %66, i32* %67)
          to label %68 unwind label %97

; <label>:68                                      ; preds = %52
  store i32* null, i32** %__new_finish, align 8
  %69 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %70 = getelementptr inbounds %"struct.std::_Vector_base.1"* %69, i32 0, i32 0
  %71 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %70, i32 0, i32 0
  %72 = load i32** %71, align 8
  %73 = invoke i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
          to label %74 unwind label %97

; <label>:74                                      ; preds = %68
  %75 = load i32** %73
  %76 = load i32** %__new_start, align 8
  %77 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %78 = invoke %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %77)
          to label %79 unwind label %97

; <label>:79                                      ; preds = %74
  %80 = invoke i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %72, i32* %75, i32* %76, %"class.std::allocator.2"* %78)
          to label %81 unwind label %97

; <label>:81                                      ; preds = %79
  store i32* %80, i32** %__new_finish, align 8
  %82 = load i32** %__new_finish, align 8
  %83 = getelementptr inbounds i32* %82, i32 1
  store i32* %83, i32** %__new_finish, align 8
  %84 = invoke i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
          to label %85 unwind label %97

; <label>:85                                      ; preds = %81
  %86 = load i32** %84
  %87 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %88 = getelementptr inbounds %"struct.std::_Vector_base.1"* %87, i32 0, i32 0
  %89 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %88, i32 0, i32 1
  %90 = load i32** %89, align 8
  %91 = load i32** %__new_finish, align 8
  %92 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %93 = invoke %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %92)
          to label %94 unwind label %97

; <label>:94                                      ; preds = %85
  %95 = invoke i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %86, i32* %90, i32* %91, %"class.std::allocator.2"* %93)
          to label %96 unwind label %97

; <label>:96                                      ; preds = %94
  store i32* %95, i32** %__new_finish, align 8
  br label %131

; <label>:97                                      ; preds = %94, %85, %81, %79, %74, %68, %52
  %98 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %99 = extractvalue { i8*, i32 } %98, 0
  store i8* %99, i8** %4
  %100 = extractvalue { i8*, i32 } %98, 1
  store i32 %100, i32* %5
  br label %101

; <label>:101                                     ; preds = %97
  %102 = load i8** %4
  %103 = call i8* @__cxa_begin_catch(i8* %102) #1
  %104 = load i32** %__new_finish, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %118, label %106

; <label>:106                                     ; preds = %101
  %107 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %108 = getelementptr inbounds %"struct.std::_Vector_base.1"* %107, i32 0, i32 0
  %109 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %108 to %"class.std::allocator.2"*
  %110 = load i32** %__new_start, align 8
  %111 = load i64* %__elems_before, align 8
  %112 = getelementptr inbounds i32* %110, i64 %111
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE7destroyERS1_Pi(%"class.std::allocator.2"* %109, i32* %112)
          to label %113 unwind label %114

; <label>:113                                     ; preds = %106
  br label %125

; <label>:114                                     ; preds = %129, %125, %123, %118, %106
  %115 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %116 = extractvalue { i8*, i32 } %115, 0
  store i8* %116, i8** %4
  %117 = extractvalue { i8*, i32 } %115, 1
  store i32 %117, i32* %5
  invoke void @__cxa_end_catch()
          to label %130 unwind label %179

; <label>:118                                     ; preds = %101
  %119 = load i32** %__new_start, align 8
  %120 = load i32** %__new_finish, align 8
  %121 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %122 = invoke %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %121)
          to label %123 unwind label %114

; <label>:123                                     ; preds = %118
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %119, i32* %120, %"class.std::allocator.2"* %122)
          to label %124 unwind label %114

; <label>:124                                     ; preds = %123
  br label %125

; <label>:125                                     ; preds = %124, %113
  %126 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %127 = load i32** %__new_start, align 8
  %128 = load i64* %__len, align 8
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.1"* %126, i32* %127, i64 %128)
          to label %129 unwind label %114

; <label>:129                                     ; preds = %125
  invoke void @__cxa_rethrow() #14
          to label %182 unwind label %114

; <label>:130                                     ; preds = %114
  br label %174

; <label>:131                                     ; preds = %96
  %132 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %133 = getelementptr inbounds %"struct.std::_Vector_base.1"* %132, i32 0, i32 0
  %134 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %133, i32 0, i32 0
  %135 = load i32** %134, align 8
  %136 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %137 = getelementptr inbounds %"struct.std::_Vector_base.1"* %136, i32 0, i32 0
  %138 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %137, i32 0, i32 1
  %139 = load i32** %138, align 8
  %140 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %141 = call %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %140)
  call void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %135, i32* %139, %"class.std::allocator.2"* %141)
  %142 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %143 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %144 = getelementptr inbounds %"struct.std::_Vector_base.1"* %143, i32 0, i32 0
  %145 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %144, i32 0, i32 0
  %146 = load i32** %145, align 8
  %147 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %148 = getelementptr inbounds %"struct.std::_Vector_base.1"* %147, i32 0, i32 0
  %149 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %148, i32 0, i32 2
  %150 = load i32** %149, align 8
  %151 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %152 = getelementptr inbounds %"struct.std::_Vector_base.1"* %151, i32 0, i32 0
  %153 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %152, i32 0, i32 0
  %154 = load i32** %153, align 8
  %155 = ptrtoint i32* %150 to i64
  %156 = ptrtoint i32* %154 to i64
  %157 = sub i64 %155, %156
  %158 = sdiv exact i64 %157, 4
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.1"* %142, i32* %146, i64 %158)
  %159 = load i32** %__new_start, align 8
  %160 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %161 = getelementptr inbounds %"struct.std::_Vector_base.1"* %160, i32 0, i32 0
  %162 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %161, i32 0, i32 0
  store i32* %159, i32** %162, align 8
  %163 = load i32** %__new_finish, align 8
  %164 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %165 = getelementptr inbounds %"struct.std::_Vector_base.1"* %164, i32 0, i32 0
  %166 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %165, i32 0, i32 1
  store i32* %163, i32** %166, align 8
  %167 = load i32** %__new_start, align 8
  %168 = load i64* %__len, align 8
  %169 = getelementptr inbounds i32* %167, i64 %168
  %170 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %171 = getelementptr inbounds %"struct.std::_Vector_base.1"* %170, i32 0, i32 0
  %172 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %171, i32 0, i32 2
  store i32* %169, i32** %172, align 8
  br label %173

; <label>:173                                     ; preds = %131, %17
  ret void

; <label>:174                                     ; preds = %130
  %175 = load i8** %4
  %176 = load i32* %5
  %177 = insertvalue { i8*, i32 } undef, i8* %175, 0
  %178 = insertvalue { i8*, i32 } %177, i32 %176, 1
  resume { i8*, i32 } %178

; <label>:179                                     ; preds = %114
  %180 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %181 = extractvalue { i8*, i32 } %180, 0
  call void @__clang_call_terminate(i8* %181) #12
  unreachable

; <label>:182                                     ; preds = %129
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector.0"* %this) #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %2, align 8
  %3 = load %"class.std::vector.0"** %2
  %4 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %5, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %1, i32** %6)
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %8 = load i32** %7
  ret i32* %8
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %this, i32** %__i) unnamed_addr #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %2 = alloca i32**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  store i32** %__i, i32*** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"** %1
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %5 = load i32*** %2, align 8
  %6 = load i32** %5, align 8
  store i32* %6, i32** %4, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt13copy_backwardIPiS0_ET0_T_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #3 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  %4 = load i32** %1, align 8
  %5 = call i32* @_ZSt12__miter_baseIPiENSt11_Miter_baseIT_E13iterator_typeES2_(i32* %4)
  %6 = load i32** %2, align 8
  %7 = call i32* @_ZSt12__miter_baseIPiENSt11_Miter_baseIT_E13iterator_typeES2_(i32* %6)
  %8 = load i32** %3, align 8
  %9 = call i32* @_ZSt23__copy_move_backward_a2ILb0EPiS0_ET1_T0_S2_S1_(i32* %5, i32* %7, i32* %8)
  ret i32* %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"** %1
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  ret i32** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %this) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"** %1
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %4 = load i32** %3, align 8
  ret i32* %4
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector.0"* %this, i64 %__n, i8* %__s) #2 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %__len = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store i8* %__s, i8** %3, align 8
  %5 = load %"class.std::vector.0"** %1
  %6 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector.0"* %5)
  %7 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %5)
  %8 = sub i64 %6, %7
  %9 = load i64* %2, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = load i8** %3, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %12) #14
  unreachable

; <label>:13                                      ; preds = %0
  %14 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %5)
  %15 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %5)
  store i64 %15, i64* %4
  %16 = call i64* @_ZSt3maxImERKT_S2_S2_(i64* %4, i64* %2)
  %17 = load i64* %16
  %18 = add i64 %14, %17
  store i64 %18, i64* %__len, align 8
  %19 = load i64* %__len, align 8
  %20 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %5)
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %26, label %22

; <label>:22                                      ; preds = %13
  %23 = load i64* %__len, align 8
  %24 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector.0"* %5)
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

; <label>:26                                      ; preds = %22, %13
  %27 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector.0"* %5)
  br label %30

; <label>:28                                      ; preds = %22
  %29 = load i64* %__len, align 8
  br label %30

; <label>:30                                      ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  ret i64 %31
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"* %__rhs) #3 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %4 = call i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %3)
  %5 = load i32** %4
  %6 = load %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %7 = call i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %6)
  %8 = load i32** %7
  %9 = ptrtoint i32* %5 to i64
  %10 = ptrtoint i32* %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 4
  ret i64 %12
}

; Function Attrs: uwtable
define linkonce_odr i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.0"* %this) #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %2, align 8
  %3 = load %"class.std::vector.0"** %2
  %4 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %5, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %1, i32** %6)
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %8 = load i32** %7
  ret i32* %8
}

; Function Attrs: uwtable
define linkonce_odr i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base.1"* %this, i64 %__n) #2 align 2 {
  %1 = alloca %"struct.std::_Vector_base.1"*, align 8
  %2 = alloca i64, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"struct.std::_Vector_base.1"** %1
  %4 = load i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %7 to %"class.__gnu_cxx::new_allocator.3"*
  %9 = load i64* %2, align 8
  %10 = call i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.3"* %8, i64 %9, i8* null)
  br label %12

; <label>:11                                      ; preds = %0
  br label %12

; <label>:12                                      ; preds = %11, %6
  %13 = phi i32* [ %10, %6 ], [ null, %11 ]
  ret i32* %13
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %__first, i32* %__last, i32* %__result, %"class.std::allocator.2"* %__alloc) #3 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %"class.std::allocator.2"*, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  store %"class.std::allocator.2"* %__alloc, %"class.std::allocator.2"** %4, align 8
  %5 = load i32** %1, align 8
  %6 = load i32** %2, align 8
  %7 = load i32** %3, align 8
  %8 = load %"class.std::allocator.2"** %4, align 8
  %9 = call i32* @_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E(i32* %5, i32* %6, i32* %7, %"class.std::allocator.2"* %8)
  ret i32* %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %this) #5 align 2 {
  %1 = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %1, align 8
  %2 = load %"struct.std::_Vector_base.1"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3 to %"class.std::allocator.2"*
  ret %"class.std::allocator.2"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIiEE7destroyERS1_Pi(%"class.std::allocator.2"* %__a, i32* %__p) #5 align 2 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  %2 = alloca i32*, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %1, align 8
  store i32* %__p, i32** %2, align 8
  %3 = load %"class.std::allocator.2"** %1, align 8
  %4 = bitcast %"class.std::allocator.2"* %3 to %"class.__gnu_cxx::new_allocator.3"*
  %5 = load i32** %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE7destroyEPi(%"class.__gnu_cxx::new_allocator.3"* %4, i32* %5)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %__first, i32* %__last, %"class.std::allocator.2"*) #3 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %"class.std::allocator.2"*, align 8
  store i32* %__first, i32** %2, align 8
  store i32* %__last, i32** %3, align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %4, align 8
  %5 = load i32** %2, align 8
  %6 = load i32** %3, align 8
  call void @_ZSt8_DestroyIPiEvT_S1_(i32* %5, i32* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.1"* %this, i32* %__p, i64 %__n) #5 align 2 {
  %1 = alloca %"struct.std::_Vector_base.1"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %1, align 8
  store i32* %__p, i32** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"struct.std::_Vector_base.1"** %1
  %5 = load i32** %2, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %8 to %"class.__gnu_cxx::new_allocator.3"*
  %10 = load i32** %2, align 8
  %11 = load i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator.3"* %9, i32* %10, i64 %11)
  br label %12

; <label>:12                                      ; preds = %7, %0
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPiEvT_S1_(i32* %__first, i32* %__last) #3 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  %3 = load i32** %1, align 8
  %4 = load i32** %2, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(i32* %3, i32* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(i32*, i32*) #5 align 2 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E(i32* %__first, i32* %__last, i32* %__result, %"class.std::allocator.2"*) #3 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %"class.std::allocator.2"*, align 8
  store i32* %__first, i32** %2, align 8
  store i32* %__last, i32** %3, align 8
  store i32* %__result, i32** %4, align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %5, align 8
  %6 = load i32** %2, align 8
  %7 = load i32** %3, align 8
  %8 = load i32** %4, align 8
  %9 = call i32* @_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_(i32* %6, i32* %7, i32* %8)
  ret i32* %9
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #3 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  %4 = load i32** %1, align 8
  %5 = load i32** %2, align 8
  %6 = load i32** %3, align 8
  %7 = call i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_(i32* %4, i32* %5, i32* %6)
  ret i32* %7
}

; Function Attrs: uwtable
define linkonce_odr i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_(i32* %__first, i32* %__last, i32* %__result) #2 align 2 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  %4 = load i32** %1, align 8
  %5 = load i32** %2, align 8
  %6 = load i32** %3, align 8
  %7 = call i32* @_ZSt4copyIPiS0_ET0_T_S2_S1_(i32* %4, i32* %5, i32* %6)
  ret i32* %7
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt4copyIPiS0_ET0_T_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #3 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  %4 = load i32** %1, align 8
  %5 = call i32* @_ZSt12__miter_baseIPiENSt11_Miter_baseIT_E13iterator_typeES2_(i32* %4)
  %6 = load i32** %2, align 8
  %7 = call i32* @_ZSt12__miter_baseIPiENSt11_Miter_baseIT_E13iterator_typeES2_(i32* %6)
  %8 = load i32** %3, align 8
  %9 = call i32* @_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_(i32* %5, i32* %7, i32* %8)
  ret i32* %9
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #3 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  %4 = load i32** %1, align 8
  %5 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %4)
  %6 = load i32** %2, align 8
  %7 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %6)
  %8 = load i32** %3, align 8
  %9 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %8)
  %10 = call i32* @_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_(i32* %5, i32* %7, i32* %9)
  ret i32* %10
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt12__miter_baseIPiENSt11_Miter_baseIT_E13iterator_typeES2_(i32* %__it) #3 {
  %1 = alloca i32*, align 8
  store i32* %__it, i32** %1, align 8
  %2 = load i32** %1, align 8
  %3 = call i32* @_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_(i32* %2)
  ret i32* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_(i32* %__it) #5 align 2 {
  %1 = alloca i32*, align 8
  store i32* %__it, i32** %1, align 8
  %2 = load i32** %1, align 8
  ret i32* %2
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #3 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %__simple = alloca i8, align 1
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load i32** %1, align 8
  %5 = load i32** %2, align 8
  %6 = load i32** %3, align 8
  %7 = call i32* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32* %4, i32* %5, i32* %6)
  ret i32* %7
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %__it) #8 {
  %1 = alloca i32*, align 8
  store i32* %__it, i32** %1, align 8
  %2 = load i32** %1, align 8
  %3 = call i32* @_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_(i32* %2)
  ret i32* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32* %__first, i32* %__last, i32* %__result) #5 align 2 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %_Num = alloca i64, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  %4 = load i32** %2, align 8
  %5 = load i32** %1, align 8
  %6 = ptrtoint i32* %4 to i64
  %7 = ptrtoint i32* %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 4
  store i64 %9, i64* %_Num, align 8
  %10 = load i64* %_Num, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

; <label>:12                                      ; preds = %0
  %13 = load i32** %3, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = load i32** %1, align 8
  %16 = bitcast i32* %15 to i8*
  %17 = load i64* %_Num, align 8
  %18 = mul i64 4, %17
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %14, i8* %16, i64 %18, i32 4, i1 false)
  br label %19

; <label>:19                                      ; preds = %12, %0
  %20 = load i32** %3, align 8
  %21 = load i64* %_Num, align 8
  %22 = getelementptr inbounds i32* %20, i64 %21
  ret i32* %22
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector.0"* %this) #2 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  %2 = load %"class.std::vector.0"** %1
  %3 = bitcast %"class.std::vector.0"* %2 to %"struct.std::_Vector_base.1"*
  %4 = call %"class.std::allocator.2"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %3)
  %5 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaIiEE8max_sizeERKS1_(%"class.std::allocator.2"* %4)
  ret i64 %5
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8*) #10

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaIiEE8max_sizeERKS1_(%"class.std::allocator.2"* %__a) #5 align 2 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %1, align 8
  %2 = load %"class.std::allocator.2"** %1, align 8
  %3 = bitcast %"class.std::allocator.2"* %2 to %"class.__gnu_cxx::new_allocator.3"*
  %4 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.3"* %3) #1
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.2"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %this) #5 align 2 {
  %1 = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %1, align 8
  %2 = load %"struct.std::_Vector_base.1"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3 to %"class.std::allocator.2"*
  ret %"class.std::allocator.2"* %4
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt23__copy_move_backward_a2ILb0EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #3 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  %4 = load i32** %1, align 8
  %5 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %4)
  %6 = load i32** %2, align 8
  %7 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %6)
  %8 = load i32** %3, align 8
  %9 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %8)
  %10 = call i32* @_ZSt22__copy_move_backward_aILb0EPiS0_ET1_T0_S2_S1_(i32* %5, i32* %7, i32* %9)
  ret i32* %10
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt22__copy_move_backward_aILb0EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #3 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %__simple = alloca i8, align 1
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load i32** %1, align 8
  %5 = load i32** %2, align 8
  %6 = load i32** %3, align 8
  %7 = call i32* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_(i32* %4, i32* %5, i32* %6)
  ret i32* %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_(i32* %__first, i32* %__last, i32* %__result) #5 align 2 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %_Num = alloca i64, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  %4 = load i32** %2, align 8
  %5 = load i32** %1, align 8
  %6 = ptrtoint i32* %4 to i64
  %7 = ptrtoint i32* %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 4
  store i64 %9, i64* %_Num, align 8
  %10 = load i64* %_Num, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

; <label>:12                                      ; preds = %0
  %13 = load i32** %3, align 8
  %14 = load i64* %_Num, align 8
  %15 = sub i64 0, %14
  %16 = getelementptr inbounds i32* %13, i64 %15
  %17 = bitcast i32* %16 to i8*
  %18 = load i32** %1, align 8
  %19 = bitcast i32* %18 to i8*
  %20 = load i64* %_Num, align 8
  %21 = mul i64 4, %20
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %17, i8* %19, i64 %21, i32 4, i1 false)
  br label %22

; <label>:22                                      ; preds = %12, %0
  %23 = load i32** %3, align 8
  %24 = load i64* %_Num, align 8
  %25 = sub i64 0, %24
  %26 = getelementptr inbounds i32* %23, i64 %25
  ret i32* %26
}

; Function Attrs: nounwind uwtable
define linkonce_odr { i64, i64 } @_ZNSt13_Bit_iteratorppEi(%"struct.std::_Bit_iterator"* %this, i32) #5 align 2 {
  %2 = alloca %"struct.std::_Bit_iterator", align 8
  %3 = alloca %"struct.std::_Bit_iterator"*, align 8
  %4 = alloca i32, align 4
  store %"struct.std::_Bit_iterator"* %this, %"struct.std::_Bit_iterator"** %3, align 8
  store i32 %0, i32* %4, align 4
  %5 = load %"struct.std::_Bit_iterator"** %3
  %6 = bitcast %"struct.std::_Bit_iterator"* %2 to i8*
  %7 = bitcast %"struct.std::_Bit_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %8 = bitcast %"struct.std::_Bit_iterator"* %5 to %"struct.std::_Bit_iterator_base"*
  call void @_ZNSt18_Bit_iterator_base10_M_bump_upEv(%"struct.std::_Bit_iterator_base"* %8)
  %9 = bitcast %"struct.std::_Bit_iterator"* %2 to { i64, i64 }*
  %10 = load { i64, i64 }* %9, align 1
  ret { i64, i64 } %10
}

; Function Attrs: uwtable
define linkonce_odr { i64*, i64 } @_ZNKSt13_Bit_iteratordeEv(%"struct.std::_Bit_iterator"* %this) #2 align 2 {
  %1 = alloca %"struct.std::_Bit_reference", align 8
  %2 = alloca %"struct.std::_Bit_iterator"*, align 8
  store %"struct.std::_Bit_iterator"* %this, %"struct.std::_Bit_iterator"** %2, align 8
  %3 = load %"struct.std::_Bit_iterator"** %2
  %4 = bitcast %"struct.std::_Bit_iterator"* %3 to %"struct.std::_Bit_iterator_base"*
  %5 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %4, i32 0, i32 0
  %6 = load i64** %5, align 8
  %7 = bitcast %"struct.std::_Bit_iterator"* %3 to %"struct.std::_Bit_iterator_base"*
  %8 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %7, i32 0, i32 1
  %9 = load i32* %8, align 4
  %10 = zext i32 %9 to i64
  %11 = shl i64 1, %10
  call void @_ZNSt14_Bit_referenceC2EPmm(%"struct.std::_Bit_reference"* %1, i64* %6, i64 %11)
  %12 = bitcast %"struct.std::_Bit_reference"* %1 to { i64*, i64 }*
  %13 = load { i64*, i64 }* %12, align 1
  ret { i64*, i64 } %13
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(%"class.std::vector.5"* %this, i64 %__position.coerce0, i64 %__position.coerce1, i1 zeroext %__x) #2 align 2 {
  %__position = alloca %"struct.std::_Bit_iterator", align 8
  %1 = alloca %"class.std::vector.5"*, align 8
  %2 = alloca i8, align 1
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  %4 = alloca %"struct.std::_Bit_iterator", align 8
  %5 = alloca %"struct.std::_Bit_iterator", align 8
  %6 = alloca %"struct.std::_Bit_iterator", align 8
  %7 = alloca %"struct.std::_Bit_reference", align 8
  %__len = alloca i64, align 8
  %__q = alloca i64*, align 8
  %__i = alloca %"struct.std::_Bit_iterator", align 8
  %8 = alloca %"struct.std::_Bit_const_iterator", align 8
  %9 = alloca %"struct.std::_Bit_iterator", align 8
  %10 = alloca %"struct.std::_Bit_const_iterator", align 8
  %11 = alloca %"struct.std::_Bit_iterator", align 8
  %12 = alloca %"struct.std::_Bit_iterator", align 8
  %13 = alloca %"struct.std::_Bit_reference", align 8
  %14 = alloca %"struct.std::_Bit_iterator", align 8
  %15 = alloca %"struct.std::_Bit_iterator", align 8
  %16 = alloca %"struct.std::_Bit_iterator", align 8
  %17 = alloca %"struct.std::_Bit_iterator", align 8
  %18 = alloca %"struct.std::_Bit_iterator", align 8
  %19 = bitcast %"struct.std::_Bit_iterator"* %__position to { i64, i64 }*
  %20 = getelementptr { i64, i64 }* %19, i32 0, i32 0
  store i64 %__position.coerce0, i64* %20
  %21 = getelementptr { i64, i64 }* %19, i32 0, i32 1
  store i64 %__position.coerce1, i64* %21
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %1, align 8
  %22 = zext i1 %__x to i8
  store i8 %22, i8* %2, align 1
  %23 = load %"class.std::vector.5"** %1
  %24 = bitcast %"class.std::vector.5"* %23 to %"struct.std::_Bvector_base"*
  %25 = getelementptr inbounds %"struct.std::_Bvector_base"* %24, i32 0, i32 0
  %26 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %25, i32 0, i32 1
  %27 = bitcast %"struct.std::_Bit_iterator"* %26 to %"struct.std::_Bit_iterator_base"*
  %28 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %27, i32 0, i32 0
  %29 = load i64** %28, align 8
  %30 = bitcast %"class.std::vector.5"* %23 to %"struct.std::_Bvector_base"*
  %31 = getelementptr inbounds %"struct.std::_Bvector_base"* %30, i32 0, i32 0
  %32 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %31, i32 0, i32 2
  %33 = load i64** %32, align 8
  %34 = icmp ne i64* %29, %33
  br i1 %34, label %35, label %86

; <label>:35                                      ; preds = %0
  %36 = bitcast %"struct.std::_Bit_iterator"* %3 to i8*
  %37 = bitcast %"struct.std::_Bit_iterator"* %__position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 16, i32 8, i1 false)
  %38 = bitcast %"class.std::vector.5"* %23 to %"struct.std::_Bvector_base"*
  %39 = getelementptr inbounds %"struct.std::_Bvector_base"* %38, i32 0, i32 0
  %40 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %39, i32 0, i32 1
  %41 = bitcast %"struct.std::_Bit_iterator"* %4 to i8*
  %42 = bitcast %"struct.std::_Bit_iterator"* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 16, i32 8, i1 false)
  %43 = bitcast %"class.std::vector.5"* %23 to %"struct.std::_Bvector_base"*
  %44 = getelementptr inbounds %"struct.std::_Bvector_base"* %43, i32 0, i32 0
  %45 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %44, i32 0, i32 1
  %46 = call { i64, i64 } @_ZNKSt13_Bit_iteratorplEl(%"struct.std::_Bit_iterator"* %45, i64 1)
  %47 = bitcast %"struct.std::_Bit_iterator"* %5 to { i64, i64 }*
  %48 = getelementptr { i64, i64 }* %47, i32 0, i32 0
  %49 = extractvalue { i64, i64 } %46, 0
  store i64 %49, i64* %48, align 1
  %50 = getelementptr { i64, i64 }* %47, i32 0, i32 1
  %51 = extractvalue { i64, i64 } %46, 1
  store i64 %51, i64* %50, align 1
  %52 = bitcast %"struct.std::_Bit_iterator"* %3 to { i64, i64 }*
  %53 = getelementptr { i64, i64 }* %52, i32 0, i32 0
  %54 = load i64* %53, align 1
  %55 = getelementptr { i64, i64 }* %52, i32 0, i32 1
  %56 = load i64* %55, align 1
  %57 = bitcast %"struct.std::_Bit_iterator"* %4 to { i64, i64 }*
  %58 = getelementptr { i64, i64 }* %57, i32 0, i32 0
  %59 = load i64* %58, align 1
  %60 = getelementptr { i64, i64 }* %57, i32 0, i32 1
  %61 = load i64* %60, align 1
  %62 = bitcast %"struct.std::_Bit_iterator"* %5 to { i64, i64 }*
  %63 = getelementptr { i64, i64 }* %62, i32 0, i32 0
  %64 = load i64* %63, align 1
  %65 = getelementptr { i64, i64 }* %62, i32 0, i32 1
  %66 = load i64* %65, align 1
  %67 = call { i64, i64 } @_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_(i64 %54, i64 %56, i64 %59, i64 %61, i64 %64, i64 %66)
  %68 = bitcast %"struct.std::_Bit_iterator"* %6 to { i64, i64 }*
  %69 = getelementptr { i64, i64 }* %68, i32 0, i32 0
  %70 = extractvalue { i64, i64 } %67, 0
  store i64 %70, i64* %69, align 1
  %71 = getelementptr { i64, i64 }* %68, i32 0, i32 1
  %72 = extractvalue { i64, i64 } %67, 1
  store i64 %72, i64* %71, align 1
  %73 = call { i64*, i64 } @_ZNKSt13_Bit_iteratordeEv(%"struct.std::_Bit_iterator"* %__position)
  %74 = bitcast %"struct.std::_Bit_reference"* %7 to { i64*, i64 }*
  %75 = getelementptr { i64*, i64 }* %74, i32 0, i32 0
  %76 = extractvalue { i64*, i64 } %73, 0
  store i64* %76, i64** %75, align 1
  %77 = getelementptr { i64*, i64 }* %74, i32 0, i32 1
  %78 = extractvalue { i64*, i64 } %73, 1
  store i64 %78, i64* %77, align 1
  %79 = load i8* %2, align 1
  %80 = trunc i8 %79 to i1
  %81 = call %"struct.std::_Bit_reference"* @_ZNSt14_Bit_referenceaSEb(%"struct.std::_Bit_reference"* %7, i1 zeroext %80)
  %82 = bitcast %"class.std::vector.5"* %23 to %"struct.std::_Bvector_base"*
  %83 = getelementptr inbounds %"struct.std::_Bvector_base"* %82, i32 0, i32 0
  %84 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %83, i32 0, i32 1
  %85 = call %"struct.std::_Bit_iterator"* @_ZNSt13_Bit_iteratorppEv(%"struct.std::_Bit_iterator"* %84)
  br label %179

; <label>:86                                      ; preds = %0
  %87 = call i64 @_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc(%"class.std::vector.5"* %23, i64 1, i8* getelementptr inbounds ([28 x i8]* @.str10, i32 0, i32 0))
  store i64 %87, i64* %__len, align 8
  %88 = bitcast %"class.std::vector.5"* %23 to %"struct.std::_Bvector_base"*
  %89 = load i64* %__len, align 8
  %90 = call i64* @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm(%"struct.std::_Bvector_base"* %88, i64 %89)
  store i64* %90, i64** %__q, align 8
  %91 = call { i64, i64 } @_ZNSt6vectorIbSaIbEE5beginEv(%"class.std::vector.5"* %23)
  %92 = bitcast %"struct.std::_Bit_iterator"* %9 to { i64, i64 }*
  %93 = getelementptr { i64, i64 }* %92, i32 0, i32 0
  %94 = extractvalue { i64, i64 } %91, 0
  store i64 %94, i64* %93, align 1
  %95 = getelementptr { i64, i64 }* %92, i32 0, i32 1
  %96 = extractvalue { i64, i64 } %91, 1
  store i64 %96, i64* %95, align 1
  call void @_ZNSt19_Bit_const_iteratorC2ERKSt13_Bit_iterator(%"struct.std::_Bit_const_iterator"* %8, %"struct.std::_Bit_iterator"* %9)
  call void @_ZNSt19_Bit_const_iteratorC2ERKSt13_Bit_iterator(%"struct.std::_Bit_const_iterator"* %10, %"struct.std::_Bit_iterator"* %__position)
  %97 = load i64** %__q, align 8
  call void @_ZNSt13_Bit_iteratorC2EPmj(%"struct.std::_Bit_iterator"* %11, i64* %97, i32 0)
  %98 = bitcast %"struct.std::_Bit_const_iterator"* %8 to { i64, i64 }*
  %99 = getelementptr { i64, i64 }* %98, i32 0, i32 0
  %100 = load i64* %99, align 1
  %101 = getelementptr { i64, i64 }* %98, i32 0, i32 1
  %102 = load i64* %101, align 1
  %103 = bitcast %"struct.std::_Bit_const_iterator"* %10 to { i64, i64 }*
  %104 = getelementptr { i64, i64 }* %103, i32 0, i32 0
  %105 = load i64* %104, align 1
  %106 = getelementptr { i64, i64 }* %103, i32 0, i32 1
  %107 = load i64* %106, align 1
  %108 = call { i64, i64 } @_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator(%"class.std::vector.5"* %23, i64 %100, i64 %102, i64 %105, i64 %107, %"struct.std::_Bit_iterator"* byval align 8 %11)
  %109 = bitcast %"struct.std::_Bit_iterator"* %__i to { i64, i64 }*
  %110 = getelementptr { i64, i64 }* %109, i32 0, i32 0
  %111 = extractvalue { i64, i64 } %108, 0
  store i64 %111, i64* %110, align 1
  %112 = getelementptr { i64, i64 }* %109, i32 0, i32 1
  %113 = extractvalue { i64, i64 } %108, 1
  store i64 %113, i64* %112, align 1
  %114 = call { i64, i64 } @_ZNSt13_Bit_iteratorppEi(%"struct.std::_Bit_iterator"* %__i, i32 0)
  %115 = bitcast %"struct.std::_Bit_iterator"* %12 to { i64, i64 }*
  %116 = getelementptr { i64, i64 }* %115, i32 0, i32 0
  %117 = extractvalue { i64, i64 } %114, 0
  store i64 %117, i64* %116, align 1
  %118 = getelementptr { i64, i64 }* %115, i32 0, i32 1
  %119 = extractvalue { i64, i64 } %114, 1
  store i64 %119, i64* %118, align 1
  %120 = call { i64*, i64 } @_ZNKSt13_Bit_iteratordeEv(%"struct.std::_Bit_iterator"* %12)
  %121 = bitcast %"struct.std::_Bit_reference"* %13 to { i64*, i64 }*
  %122 = getelementptr { i64*, i64 }* %121, i32 0, i32 0
  %123 = extractvalue { i64*, i64 } %120, 0
  store i64* %123, i64** %122, align 1
  %124 = getelementptr { i64*, i64 }* %121, i32 0, i32 1
  %125 = extractvalue { i64*, i64 } %120, 1
  store i64 %125, i64* %124, align 1
  %126 = load i8* %2, align 1
  %127 = trunc i8 %126 to i1
  %128 = call %"struct.std::_Bit_reference"* @_ZNSt14_Bit_referenceaSEb(%"struct.std::_Bit_reference"* %13, i1 zeroext %127)
  %129 = bitcast %"class.std::vector.5"* %23 to %"struct.std::_Bvector_base"*
  %130 = getelementptr inbounds %"struct.std::_Bvector_base"* %129, i32 0, i32 0
  %131 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %130, i32 0, i32 1
  %132 = bitcast %"struct.std::_Bit_iterator"* %15 to i8*
  %133 = bitcast %"struct.std::_Bit_iterator"* %__position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %132, i8* %133, i64 16, i32 8, i1 false)
  %134 = call { i64, i64 } @_ZNSt6vectorIbSaIbEE3endEv(%"class.std::vector.5"* %23)
  %135 = bitcast %"struct.std::_Bit_iterator"* %16 to { i64, i64 }*
  %136 = getelementptr { i64, i64 }* %135, i32 0, i32 0
  %137 = extractvalue { i64, i64 } %134, 0
  store i64 %137, i64* %136, align 1
  %138 = getelementptr { i64, i64 }* %135, i32 0, i32 1
  %139 = extractvalue { i64, i64 } %134, 1
  store i64 %139, i64* %138, align 1
  %140 = bitcast %"struct.std::_Bit_iterator"* %17 to i8*
  %141 = bitcast %"struct.std::_Bit_iterator"* %__i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %140, i8* %141, i64 16, i32 8, i1 false)
  %142 = bitcast %"struct.std::_Bit_iterator"* %15 to { i64, i64 }*
  %143 = getelementptr { i64, i64 }* %142, i32 0, i32 0
  %144 = load i64* %143, align 1
  %145 = getelementptr { i64, i64 }* %142, i32 0, i32 1
  %146 = load i64* %145, align 1
  %147 = bitcast %"struct.std::_Bit_iterator"* %16 to { i64, i64 }*
  %148 = getelementptr { i64, i64 }* %147, i32 0, i32 0
  %149 = load i64* %148, align 1
  %150 = getelementptr { i64, i64 }* %147, i32 0, i32 1
  %151 = load i64* %150, align 1
  %152 = bitcast %"struct.std::_Bit_iterator"* %17 to { i64, i64 }*
  %153 = getelementptr { i64, i64 }* %152, i32 0, i32 0
  %154 = load i64* %153, align 1
  %155 = getelementptr { i64, i64 }* %152, i32 0, i32 1
  %156 = load i64* %155, align 1
  %157 = call { i64, i64 } @_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_(i64 %144, i64 %146, i64 %149, i64 %151, i64 %154, i64 %156)
  %158 = bitcast %"struct.std::_Bit_iterator"* %14 to { i64, i64 }*
  %159 = getelementptr { i64, i64 }* %158, i32 0, i32 0
  %160 = extractvalue { i64, i64 } %157, 0
  store i64 %160, i64* %159, align 1
  %161 = getelementptr { i64, i64 }* %158, i32 0, i32 1
  %162 = extractvalue { i64, i64 } %157, 1
  store i64 %162, i64* %161, align 1
  %163 = bitcast %"struct.std::_Bit_iterator"* %131 to i8*
  %164 = bitcast %"struct.std::_Bit_iterator"* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %163, i8* %164, i64 12, i32 8, i1 false)
  %165 = bitcast %"class.std::vector.5"* %23 to %"struct.std::_Bvector_base"*
  call void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(%"struct.std::_Bvector_base"* %165)
  %166 = load i64** %__q, align 8
  %167 = load i64* %__len, align 8
  %168 = call i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 %167)
  %169 = getelementptr inbounds i64* %166, i64 %168
  %170 = bitcast %"class.std::vector.5"* %23 to %"struct.std::_Bvector_base"*
  %171 = getelementptr inbounds %"struct.std::_Bvector_base"* %170, i32 0, i32 0
  %172 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %171, i32 0, i32 2
  store i64* %169, i64** %172, align 8
  %173 = bitcast %"class.std::vector.5"* %23 to %"struct.std::_Bvector_base"*
  %174 = getelementptr inbounds %"struct.std::_Bvector_base"* %173, i32 0, i32 0
  %175 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %174, i32 0, i32 0
  %176 = load i64** %__q, align 8
  call void @_ZNSt13_Bit_iteratorC2EPmj(%"struct.std::_Bit_iterator"* %18, i64* %176, i32 0)
  %177 = bitcast %"struct.std::_Bit_iterator"* %175 to i8*
  %178 = bitcast %"struct.std::_Bit_iterator"* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %177, i8* %178, i64 12, i32 8, i1 false)
  br label %179

; <label>:179                                     ; preds = %86, %35
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr { i64, i64 } @_ZNSt6vectorIbSaIbEE3endEv(%"class.std::vector.5"* %this) #5 align 2 {
  %1 = alloca %"struct.std::_Bit_iterator", align 8
  %2 = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %2, align 8
  %3 = load %"class.std::vector.5"** %2
  %4 = bitcast %"class.std::vector.5"* %3 to %"struct.std::_Bvector_base"*
  %5 = getelementptr inbounds %"struct.std::_Bvector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %5, i32 0, i32 1
  %7 = bitcast %"struct.std::_Bit_iterator"* %1 to i8*
  %8 = bitcast %"struct.std::_Bit_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  %9 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %10 = load { i64, i64 }* %9, align 1
  ret { i64, i64 } %10
}

; Function Attrs: inlinehint uwtable
define linkonce_odr { i64, i64 } @_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_(i64 %__first.coerce0, i64 %__first.coerce1, i64 %__last.coerce0, i64 %__last.coerce1, i64 %__result.coerce0, i64 %__result.coerce1) #3 {
  %1 = alloca %"struct.std::_Bit_iterator", align 8
  %__first = alloca %"struct.std::_Bit_iterator", align 8
  %__last = alloca %"struct.std::_Bit_iterator", align 8
  %__result = alloca %"struct.std::_Bit_iterator", align 8
  %2 = alloca %"struct.std::_Bit_iterator", align 8
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  %4 = alloca %"struct.std::_Bit_iterator", align 8
  %5 = alloca %"struct.std::_Bit_iterator", align 8
  %6 = alloca %"struct.std::_Bit_iterator", align 8
  %7 = bitcast %"struct.std::_Bit_iterator"* %__first to { i64, i64 }*
  %8 = getelementptr { i64, i64 }* %7, i32 0, i32 0
  store i64 %__first.coerce0, i64* %8
  %9 = getelementptr { i64, i64 }* %7, i32 0, i32 1
  store i64 %__first.coerce1, i64* %9
  %10 = bitcast %"struct.std::_Bit_iterator"* %__last to { i64, i64 }*
  %11 = getelementptr { i64, i64 }* %10, i32 0, i32 0
  store i64 %__last.coerce0, i64* %11
  %12 = getelementptr { i64, i64 }* %10, i32 0, i32 1
  store i64 %__last.coerce1, i64* %12
  %13 = bitcast %"struct.std::_Bit_iterator"* %__result to { i64, i64 }*
  %14 = getelementptr { i64, i64 }* %13, i32 0, i32 0
  store i64 %__result.coerce0, i64* %14
  %15 = getelementptr { i64, i64 }* %13, i32 0, i32 1
  store i64 %__result.coerce1, i64* %15
  %16 = bitcast %"struct.std::_Bit_iterator"* %3 to i8*
  %17 = bitcast %"struct.std::_Bit_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  %18 = bitcast %"struct.std::_Bit_iterator"* %3 to { i64, i64 }*
  %19 = getelementptr { i64, i64 }* %18, i32 0, i32 0
  %20 = load i64* %19, align 1
  %21 = getelementptr { i64, i64 }* %18, i32 0, i32 1
  %22 = load i64* %21, align 1
  %23 = call { i64, i64 } @_ZSt12__miter_baseISt13_Bit_iteratorENSt11_Miter_baseIT_E13iterator_typeES2_(i64 %20, i64 %22)
  %24 = bitcast %"struct.std::_Bit_iterator"* %2 to { i64, i64 }*
  %25 = getelementptr { i64, i64 }* %24, i32 0, i32 0
  %26 = extractvalue { i64, i64 } %23, 0
  store i64 %26, i64* %25, align 1
  %27 = getelementptr { i64, i64 }* %24, i32 0, i32 1
  %28 = extractvalue { i64, i64 } %23, 1
  store i64 %28, i64* %27, align 1
  %29 = bitcast %"struct.std::_Bit_iterator"* %5 to i8*
  %30 = bitcast %"struct.std::_Bit_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false)
  %31 = bitcast %"struct.std::_Bit_iterator"* %5 to { i64, i64 }*
  %32 = getelementptr { i64, i64 }* %31, i32 0, i32 0
  %33 = load i64* %32, align 1
  %34 = getelementptr { i64, i64 }* %31, i32 0, i32 1
  %35 = load i64* %34, align 1
  %36 = call { i64, i64 } @_ZSt12__miter_baseISt13_Bit_iteratorENSt11_Miter_baseIT_E13iterator_typeES2_(i64 %33, i64 %35)
  %37 = bitcast %"struct.std::_Bit_iterator"* %4 to { i64, i64 }*
  %38 = getelementptr { i64, i64 }* %37, i32 0, i32 0
  %39 = extractvalue { i64, i64 } %36, 0
  store i64 %39, i64* %38, align 1
  %40 = getelementptr { i64, i64 }* %37, i32 0, i32 1
  %41 = extractvalue { i64, i64 } %36, 1
  store i64 %41, i64* %40, align 1
  %42 = bitcast %"struct.std::_Bit_iterator"* %6 to i8*
  %43 = bitcast %"struct.std::_Bit_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 16, i32 8, i1 false)
  %44 = bitcast %"struct.std::_Bit_iterator"* %2 to { i64, i64 }*
  %45 = getelementptr { i64, i64 }* %44, i32 0, i32 0
  %46 = load i64* %45, align 1
  %47 = getelementptr { i64, i64 }* %44, i32 0, i32 1
  %48 = load i64* %47, align 1
  %49 = bitcast %"struct.std::_Bit_iterator"* %4 to { i64, i64 }*
  %50 = getelementptr { i64, i64 }* %49, i32 0, i32 0
  %51 = load i64* %50, align 1
  %52 = getelementptr { i64, i64 }* %49, i32 0, i32 1
  %53 = load i64* %52, align 1
  %54 = bitcast %"struct.std::_Bit_iterator"* %6 to { i64, i64 }*
  %55 = getelementptr { i64, i64 }* %54, i32 0, i32 0
  %56 = load i64* %55, align 1
  %57 = getelementptr { i64, i64 }* %54, i32 0, i32 1
  %58 = load i64* %57, align 1
  %59 = call { i64, i64 } @_ZSt23__copy_move_backward_a2ILb0ESt13_Bit_iteratorS0_ET1_T0_S2_S1_(i64 %46, i64 %48, i64 %51, i64 %53, i64 %56, i64 %58)
  %60 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %61 = getelementptr { i64, i64 }* %60, i32 0, i32 0
  %62 = extractvalue { i64, i64 } %59, 0
  store i64 %62, i64* %61, align 1
  %63 = getelementptr { i64, i64 }* %60, i32 0, i32 1
  %64 = extractvalue { i64, i64 } %59, 1
  store i64 %64, i64* %63, align 1
  %65 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %66 = load { i64, i64 }* %65, align 1
  ret { i64, i64 } %66
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Bit_iterator"* @_ZNSt13_Bit_iteratorppEv(%"struct.std::_Bit_iterator"* %this) #5 align 2 {
  %1 = alloca %"struct.std::_Bit_iterator"*, align 8
  store %"struct.std::_Bit_iterator"* %this, %"struct.std::_Bit_iterator"** %1, align 8
  %2 = load %"struct.std::_Bit_iterator"** %1
  %3 = bitcast %"struct.std::_Bit_iterator"* %2 to %"struct.std::_Bit_iterator_base"*
  call void @_ZNSt18_Bit_iterator_base10_M_bump_upEv(%"struct.std::_Bit_iterator_base"* %3)
  ret %"struct.std::_Bit_iterator"* %2
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc(%"class.std::vector.5"* %this, i64 %__n, i8* %__s) #2 align 2 {
  %1 = alloca %"class.std::vector.5"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %__len = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store i8* %__s, i8** %3, align 8
  %5 = load %"class.std::vector.5"** %1
  %6 = call i64 @_ZNKSt6vectorIbSaIbEE8max_sizeEv(%"class.std::vector.5"* %5)
  %7 = call i64 @_ZNKSt6vectorIbSaIbEE4sizeEv(%"class.std::vector.5"* %5)
  %8 = sub i64 %6, %7
  %9 = load i64* %2, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = load i8** %3, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %12) #14
  unreachable

; <label>:13                                      ; preds = %0
  %14 = call i64 @_ZNKSt6vectorIbSaIbEE4sizeEv(%"class.std::vector.5"* %5)
  %15 = call i64 @_ZNKSt6vectorIbSaIbEE4sizeEv(%"class.std::vector.5"* %5)
  store i64 %15, i64* %4
  %16 = call i64* @_ZSt3maxImERKT_S2_S2_(i64* %4, i64* %2)
  %17 = load i64* %16
  %18 = add i64 %14, %17
  store i64 %18, i64* %__len, align 8
  %19 = load i64* %__len, align 8
  %20 = call i64 @_ZNKSt6vectorIbSaIbEE4sizeEv(%"class.std::vector.5"* %5)
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %26, label %22

; <label>:22                                      ; preds = %13
  %23 = load i64* %__len, align 8
  %24 = call i64 @_ZNKSt6vectorIbSaIbEE8max_sizeEv(%"class.std::vector.5"* %5)
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

; <label>:26                                      ; preds = %22, %13
  %27 = call i64 @_ZNKSt6vectorIbSaIbEE8max_sizeEv(%"class.std::vector.5"* %5)
  br label %30

; <label>:28                                      ; preds = %22
  %29 = load i64* %__len, align 8
  br label %30

; <label>:30                                      ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  ret i64 %31
}

; Function Attrs: uwtable
define linkonce_odr { i64, i64 } @_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator(%"class.std::vector.5"* %this, i64 %__first.coerce0, i64 %__first.coerce1, i64 %__last.coerce0, i64 %__last.coerce1, %"struct.std::_Bit_iterator"* byval align 8 %__result) #2 align 2 {
  %1 = alloca %"struct.std::_Bit_iterator", align 8
  %__first = alloca %"struct.std::_Bit_const_iterator", align 8
  %__last = alloca %"struct.std::_Bit_const_iterator", align 8
  %2 = alloca %"class.std::vector.5"*, align 8
  %__q = alloca i64*, align 8
  %3 = alloca %"struct.std::_Bit_const_iterator", align 8
  %4 = alloca %"struct.std::_Bit_const_iterator", align 8
  %5 = alloca %"struct.std::_Bit_iterator", align 8
  %6 = bitcast %"struct.std::_Bit_const_iterator"* %__first to { i64, i64 }*
  %7 = getelementptr { i64, i64 }* %6, i32 0, i32 0
  store i64 %__first.coerce0, i64* %7
  %8 = getelementptr { i64, i64 }* %6, i32 0, i32 1
  store i64 %__first.coerce1, i64* %8
  %9 = bitcast %"struct.std::_Bit_const_iterator"* %__last to { i64, i64 }*
  %10 = getelementptr { i64, i64 }* %9, i32 0, i32 0
  store i64 %__last.coerce0, i64* %10
  %11 = getelementptr { i64, i64 }* %9, i32 0, i32 1
  store i64 %__last.coerce1, i64* %11
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %2, align 8
  %12 = load %"class.std::vector.5"** %2
  %13 = bitcast %"struct.std::_Bit_const_iterator"* %__first to %"struct.std::_Bit_iterator_base"*
  %14 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %13, i32 0, i32 0
  %15 = load i64** %14, align 8
  %16 = bitcast %"struct.std::_Bit_const_iterator"* %__last to %"struct.std::_Bit_iterator_base"*
  %17 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %16, i32 0, i32 0
  %18 = load i64** %17, align 8
  %19 = bitcast %"struct.std::_Bit_iterator"* %__result to %"struct.std::_Bit_iterator_base"*
  %20 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %19, i32 0, i32 0
  %21 = load i64** %20, align 8
  %22 = call i64* @_ZSt4copyIPmS0_ET0_T_S2_S1_(i64* %15, i64* %18, i64* %21)
  store i64* %22, i64** %__q, align 8
  %23 = bitcast %"struct.std::_Bit_const_iterator"* %__last to %"struct.std::_Bit_iterator_base"*
  %24 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %23, i32 0, i32 0
  %25 = load i64** %24, align 8
  call void @_ZNSt19_Bit_const_iteratorC2EPmj(%"struct.std::_Bit_const_iterator"* %3, i64* %25, i32 0)
  %26 = bitcast %"struct.std::_Bit_const_iterator"* %4 to i8*
  %27 = bitcast %"struct.std::_Bit_const_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 16, i32 8, i1 false)
  %28 = load i64** %__q, align 8
  call void @_ZNSt13_Bit_iteratorC2EPmj(%"struct.std::_Bit_iterator"* %5, i64* %28, i32 0)
  %29 = bitcast %"struct.std::_Bit_const_iterator"* %3 to { i64, i64 }*
  %30 = getelementptr { i64, i64 }* %29, i32 0, i32 0
  %31 = load i64* %30, align 1
  %32 = getelementptr { i64, i64 }* %29, i32 0, i32 1
  %33 = load i64* %32, align 1
  %34 = bitcast %"struct.std::_Bit_const_iterator"* %4 to { i64, i64 }*
  %35 = getelementptr { i64, i64 }* %34, i32 0, i32 0
  %36 = load i64* %35, align 1
  %37 = getelementptr { i64, i64 }* %34, i32 0, i32 1
  %38 = load i64* %37, align 1
  %39 = bitcast %"struct.std::_Bit_iterator"* %5 to { i64, i64 }*
  %40 = getelementptr { i64, i64 }* %39, i32 0, i32 0
  %41 = load i64* %40, align 1
  %42 = getelementptr { i64, i64 }* %39, i32 0, i32 1
  %43 = load i64* %42, align 1
  %44 = call { i64, i64 } @_ZSt4copyISt19_Bit_const_iteratorSt13_Bit_iteratorET0_T_S3_S2_(i64 %31, i64 %33, i64 %36, i64 %38, i64 %41, i64 %43)
  %45 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %46 = getelementptr { i64, i64 }* %45, i32 0, i32 0
  %47 = extractvalue { i64, i64 } %44, 0
  store i64 %47, i64* %46, align 1
  %48 = getelementptr { i64, i64 }* %45, i32 0, i32 1
  %49 = extractvalue { i64, i64 } %44, 1
  store i64 %49, i64* %48, align 1
  %50 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %51 = load { i64, i64 }* %50, align 1
  ret { i64, i64 } %51
}

; Function Attrs: nounwind uwtable
define linkonce_odr { i64, i64 } @_ZNSt6vectorIbSaIbEE5beginEv(%"class.std::vector.5"* %this) #5 align 2 {
  %1 = alloca %"struct.std::_Bit_iterator", align 8
  %2 = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %2, align 8
  %3 = load %"class.std::vector.5"** %2
  %4 = bitcast %"class.std::vector.5"* %3 to %"struct.std::_Bvector_base"*
  %5 = getelementptr inbounds %"struct.std::_Bvector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Bit_iterator"* %1 to i8*
  %8 = bitcast %"struct.std::_Bit_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  %9 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %10 = load { i64, i64 }* %9, align 1
  ret { i64, i64 } %10
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt19_Bit_const_iteratorC2ERKSt13_Bit_iterator(%"struct.std::_Bit_const_iterator"* %this, %"struct.std::_Bit_iterator"* %__x) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Bit_const_iterator"*, align 8
  %2 = alloca %"struct.std::_Bit_iterator"*, align 8
  store %"struct.std::_Bit_const_iterator"* %this, %"struct.std::_Bit_const_iterator"** %1, align 8
  store %"struct.std::_Bit_iterator"* %__x, %"struct.std::_Bit_iterator"** %2, align 8
  %3 = load %"struct.std::_Bit_const_iterator"** %1
  %4 = bitcast %"struct.std::_Bit_const_iterator"* %3 to %"struct.std::_Bit_iterator_base"*
  %5 = load %"struct.std::_Bit_iterator"** %2, align 8
  %6 = bitcast %"struct.std::_Bit_iterator"* %5 to %"struct.std::_Bit_iterator_base"*
  %7 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %6, i32 0, i32 0
  %8 = load i64** %7, align 8
  %9 = load %"struct.std::_Bit_iterator"** %2, align 8
  %10 = bitcast %"struct.std::_Bit_iterator"* %9 to %"struct.std::_Bit_iterator_base"*
  %11 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %10, i32 0, i32 1
  %12 = load i32* %11, align 4
  call void @_ZNSt18_Bit_iterator_baseC2EPmj(%"struct.std::_Bit_iterator_base"* %4, i64* %8, i32 %12)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr { i64, i64 } @_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_(i64 %__first.coerce0, i64 %__first.coerce1, i64 %__last.coerce0, i64 %__last.coerce1, i64 %__result.coerce0, i64 %__result.coerce1) #3 {
  %1 = alloca %"struct.std::_Bit_iterator", align 8
  %__first = alloca %"struct.std::_Bit_iterator", align 8
  %__last = alloca %"struct.std::_Bit_iterator", align 8
  %__result = alloca %"struct.std::_Bit_iterator", align 8
  %2 = alloca %"struct.std::_Bit_iterator", align 8
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  %4 = alloca %"struct.std::_Bit_iterator", align 8
  %5 = alloca %"struct.std::_Bit_iterator", align 8
  %6 = alloca %"struct.std::_Bit_iterator", align 8
  %7 = bitcast %"struct.std::_Bit_iterator"* %__first to { i64, i64 }*
  %8 = getelementptr { i64, i64 }* %7, i32 0, i32 0
  store i64 %__first.coerce0, i64* %8
  %9 = getelementptr { i64, i64 }* %7, i32 0, i32 1
  store i64 %__first.coerce1, i64* %9
  %10 = bitcast %"struct.std::_Bit_iterator"* %__last to { i64, i64 }*
  %11 = getelementptr { i64, i64 }* %10, i32 0, i32 0
  store i64 %__last.coerce0, i64* %11
  %12 = getelementptr { i64, i64 }* %10, i32 0, i32 1
  store i64 %__last.coerce1, i64* %12
  %13 = bitcast %"struct.std::_Bit_iterator"* %__result to { i64, i64 }*
  %14 = getelementptr { i64, i64 }* %13, i32 0, i32 0
  store i64 %__result.coerce0, i64* %14
  %15 = getelementptr { i64, i64 }* %13, i32 0, i32 1
  store i64 %__result.coerce1, i64* %15
  %16 = bitcast %"struct.std::_Bit_iterator"* %3 to i8*
  %17 = bitcast %"struct.std::_Bit_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  %18 = bitcast %"struct.std::_Bit_iterator"* %3 to { i64, i64 }*
  %19 = getelementptr { i64, i64 }* %18, i32 0, i32 0
  %20 = load i64* %19, align 1
  %21 = getelementptr { i64, i64 }* %18, i32 0, i32 1
  %22 = load i64* %21, align 1
  %23 = call { i64, i64 } @_ZSt12__miter_baseISt13_Bit_iteratorENSt11_Miter_baseIT_E13iterator_typeES2_(i64 %20, i64 %22)
  %24 = bitcast %"struct.std::_Bit_iterator"* %2 to { i64, i64 }*
  %25 = getelementptr { i64, i64 }* %24, i32 0, i32 0
  %26 = extractvalue { i64, i64 } %23, 0
  store i64 %26, i64* %25, align 1
  %27 = getelementptr { i64, i64 }* %24, i32 0, i32 1
  %28 = extractvalue { i64, i64 } %23, 1
  store i64 %28, i64* %27, align 1
  %29 = bitcast %"struct.std::_Bit_iterator"* %5 to i8*
  %30 = bitcast %"struct.std::_Bit_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false)
  %31 = bitcast %"struct.std::_Bit_iterator"* %5 to { i64, i64 }*
  %32 = getelementptr { i64, i64 }* %31, i32 0, i32 0
  %33 = load i64* %32, align 1
  %34 = getelementptr { i64, i64 }* %31, i32 0, i32 1
  %35 = load i64* %34, align 1
  %36 = call { i64, i64 } @_ZSt12__miter_baseISt13_Bit_iteratorENSt11_Miter_baseIT_E13iterator_typeES2_(i64 %33, i64 %35)
  %37 = bitcast %"struct.std::_Bit_iterator"* %4 to { i64, i64 }*
  %38 = getelementptr { i64, i64 }* %37, i32 0, i32 0
  %39 = extractvalue { i64, i64 } %36, 0
  store i64 %39, i64* %38, align 1
  %40 = getelementptr { i64, i64 }* %37, i32 0, i32 1
  %41 = extractvalue { i64, i64 } %36, 1
  store i64 %41, i64* %40, align 1
  %42 = bitcast %"struct.std::_Bit_iterator"* %6 to i8*
  %43 = bitcast %"struct.std::_Bit_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 16, i32 8, i1 false)
  %44 = bitcast %"struct.std::_Bit_iterator"* %2 to { i64, i64 }*
  %45 = getelementptr { i64, i64 }* %44, i32 0, i32 0
  %46 = load i64* %45, align 1
  %47 = getelementptr { i64, i64 }* %44, i32 0, i32 1
  %48 = load i64* %47, align 1
  %49 = bitcast %"struct.std::_Bit_iterator"* %4 to { i64, i64 }*
  %50 = getelementptr { i64, i64 }* %49, i32 0, i32 0
  %51 = load i64* %50, align 1
  %52 = getelementptr { i64, i64 }* %49, i32 0, i32 1
  %53 = load i64* %52, align 1
  %54 = bitcast %"struct.std::_Bit_iterator"* %6 to { i64, i64 }*
  %55 = getelementptr { i64, i64 }* %54, i32 0, i32 0
  %56 = load i64* %55, align 1
  %57 = getelementptr { i64, i64 }* %54, i32 0, i32 1
  %58 = load i64* %57, align 1
  %59 = call { i64, i64 } @_ZSt14__copy_move_a2ILb0ESt13_Bit_iteratorS0_ET1_T0_S2_S1_(i64 %46, i64 %48, i64 %51, i64 %53, i64 %56, i64 %58)
  %60 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %61 = getelementptr { i64, i64 }* %60, i32 0, i32 0
  %62 = extractvalue { i64, i64 } %59, 0
  store i64 %62, i64* %61, align 1
  %63 = getelementptr { i64, i64 }* %60, i32 0, i32 1
  %64 = extractvalue { i64, i64 } %59, 1
  store i64 %64, i64* %63, align 1
  %65 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %66 = load { i64, i64 }* %65, align 1
  ret { i64, i64 } %66
}

; Function Attrs: inlinehint uwtable
define linkonce_odr { i64, i64 } @_ZSt14__copy_move_a2ILb0ESt13_Bit_iteratorS0_ET1_T0_S2_S1_(i64 %__first.coerce0, i64 %__first.coerce1, i64 %__last.coerce0, i64 %__last.coerce1, i64 %__result.coerce0, i64 %__result.coerce1) #3 {
  %1 = alloca %"struct.std::_Bit_iterator", align 8
  %__first = alloca %"struct.std::_Bit_iterator", align 8
  %__last = alloca %"struct.std::_Bit_iterator", align 8
  %__result = alloca %"struct.std::_Bit_iterator", align 8
  %2 = alloca %"struct.std::_Bit_iterator", align 8
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  %4 = alloca %"struct.std::_Bit_iterator", align 8
  %5 = alloca %"struct.std::_Bit_iterator", align 8
  %6 = alloca %"struct.std::_Bit_iterator", align 8
  %7 = alloca %"struct.std::_Bit_iterator", align 8
  %8 = bitcast %"struct.std::_Bit_iterator"* %__first to { i64, i64 }*
  %9 = getelementptr { i64, i64 }* %8, i32 0, i32 0
  store i64 %__first.coerce0, i64* %9
  %10 = getelementptr { i64, i64 }* %8, i32 0, i32 1
  store i64 %__first.coerce1, i64* %10
  %11 = bitcast %"struct.std::_Bit_iterator"* %__last to { i64, i64 }*
  %12 = getelementptr { i64, i64 }* %11, i32 0, i32 0
  store i64 %__last.coerce0, i64* %12
  %13 = getelementptr { i64, i64 }* %11, i32 0, i32 1
  store i64 %__last.coerce1, i64* %13
  %14 = bitcast %"struct.std::_Bit_iterator"* %__result to { i64, i64 }*
  %15 = getelementptr { i64, i64 }* %14, i32 0, i32 0
  store i64 %__result.coerce0, i64* %15
  %16 = getelementptr { i64, i64 }* %14, i32 0, i32 1
  store i64 %__result.coerce1, i64* %16
  %17 = bitcast %"struct.std::_Bit_iterator"* %3 to i8*
  %18 = bitcast %"struct.std::_Bit_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false)
  %19 = bitcast %"struct.std::_Bit_iterator"* %3 to { i64, i64 }*
  %20 = getelementptr { i64, i64 }* %19, i32 0, i32 0
  %21 = load i64* %20, align 1
  %22 = getelementptr { i64, i64 }* %19, i32 0, i32 1
  %23 = load i64* %22, align 1
  %24 = call { i64, i64 } @_ZSt12__niter_baseISt13_Bit_iteratorENSt11_Niter_baseIT_E13iterator_typeES2_(i64 %21, i64 %23)
  %25 = bitcast %"struct.std::_Bit_iterator"* %2 to { i64, i64 }*
  %26 = getelementptr { i64, i64 }* %25, i32 0, i32 0
  %27 = extractvalue { i64, i64 } %24, 0
  store i64 %27, i64* %26, align 1
  %28 = getelementptr { i64, i64 }* %25, i32 0, i32 1
  %29 = extractvalue { i64, i64 } %24, 1
  store i64 %29, i64* %28, align 1
  %30 = bitcast %"struct.std::_Bit_iterator"* %5 to i8*
  %31 = bitcast %"struct.std::_Bit_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false)
  %32 = bitcast %"struct.std::_Bit_iterator"* %5 to { i64, i64 }*
  %33 = getelementptr { i64, i64 }* %32, i32 0, i32 0
  %34 = load i64* %33, align 1
  %35 = getelementptr { i64, i64 }* %32, i32 0, i32 1
  %36 = load i64* %35, align 1
  %37 = call { i64, i64 } @_ZSt12__niter_baseISt13_Bit_iteratorENSt11_Niter_baseIT_E13iterator_typeES2_(i64 %34, i64 %36)
  %38 = bitcast %"struct.std::_Bit_iterator"* %4 to { i64, i64 }*
  %39 = getelementptr { i64, i64 }* %38, i32 0, i32 0
  %40 = extractvalue { i64, i64 } %37, 0
  store i64 %40, i64* %39, align 1
  %41 = getelementptr { i64, i64 }* %38, i32 0, i32 1
  %42 = extractvalue { i64, i64 } %37, 1
  store i64 %42, i64* %41, align 1
  %43 = bitcast %"struct.std::_Bit_iterator"* %7 to i8*
  %44 = bitcast %"struct.std::_Bit_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 16, i32 8, i1 false)
  %45 = bitcast %"struct.std::_Bit_iterator"* %7 to { i64, i64 }*
  %46 = getelementptr { i64, i64 }* %45, i32 0, i32 0
  %47 = load i64* %46, align 1
  %48 = getelementptr { i64, i64 }* %45, i32 0, i32 1
  %49 = load i64* %48, align 1
  %50 = call { i64, i64 } @_ZSt12__niter_baseISt13_Bit_iteratorENSt11_Niter_baseIT_E13iterator_typeES2_(i64 %47, i64 %49)
  %51 = bitcast %"struct.std::_Bit_iterator"* %6 to { i64, i64 }*
  %52 = getelementptr { i64, i64 }* %51, i32 0, i32 0
  %53 = extractvalue { i64, i64 } %50, 0
  store i64 %53, i64* %52, align 1
  %54 = getelementptr { i64, i64 }* %51, i32 0, i32 1
  %55 = extractvalue { i64, i64 } %50, 1
  store i64 %55, i64* %54, align 1
  %56 = bitcast %"struct.std::_Bit_iterator"* %2 to { i64, i64 }*
  %57 = getelementptr { i64, i64 }* %56, i32 0, i32 0
  %58 = load i64* %57, align 1
  %59 = getelementptr { i64, i64 }* %56, i32 0, i32 1
  %60 = load i64* %59, align 1
  %61 = bitcast %"struct.std::_Bit_iterator"* %4 to { i64, i64 }*
  %62 = getelementptr { i64, i64 }* %61, i32 0, i32 0
  %63 = load i64* %62, align 1
  %64 = getelementptr { i64, i64 }* %61, i32 0, i32 1
  %65 = load i64* %64, align 1
  %66 = bitcast %"struct.std::_Bit_iterator"* %6 to { i64, i64 }*
  %67 = getelementptr { i64, i64 }* %66, i32 0, i32 0
  %68 = load i64* %67, align 1
  %69 = getelementptr { i64, i64 }* %66, i32 0, i32 1
  %70 = load i64* %69, align 1
  %71 = call { i64, i64 } @_ZSt13__copy_move_aILb0ESt13_Bit_iteratorS0_ET1_T0_S2_S1_(i64 %58, i64 %60, i64 %63, i64 %65, i64 %68, i64 %70)
  %72 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %73 = getelementptr { i64, i64 }* %72, i32 0, i32 0
  %74 = extractvalue { i64, i64 } %71, 0
  store i64 %74, i64* %73, align 1
  %75 = getelementptr { i64, i64 }* %72, i32 0, i32 1
  %76 = extractvalue { i64, i64 } %71, 1
  store i64 %76, i64* %75, align 1
  %77 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %78 = load { i64, i64 }* %77, align 1
  ret { i64, i64 } %78
}

; Function Attrs: inlinehint uwtable
define linkonce_odr { i64, i64 } @_ZSt12__miter_baseISt13_Bit_iteratorENSt11_Miter_baseIT_E13iterator_typeES2_(i64 %__it.coerce0, i64 %__it.coerce1) #3 {
  %1 = alloca %"struct.std::_Bit_iterator", align 8
  %__it = alloca %"struct.std::_Bit_iterator", align 8
  %2 = alloca %"struct.std::_Bit_iterator", align 8
  %3 = bitcast %"struct.std::_Bit_iterator"* %__it to { i64, i64 }*
  %4 = getelementptr { i64, i64 }* %3, i32 0, i32 0
  store i64 %__it.coerce0, i64* %4
  %5 = getelementptr { i64, i64 }* %3, i32 0, i32 1
  store i64 %__it.coerce1, i64* %5
  %6 = bitcast %"struct.std::_Bit_iterator"* %2 to i8*
  %7 = bitcast %"struct.std::_Bit_iterator"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %8 = bitcast %"struct.std::_Bit_iterator"* %2 to { i64, i64 }*
  %9 = getelementptr { i64, i64 }* %8, i32 0, i32 0
  %10 = load i64* %9, align 1
  %11 = getelementptr { i64, i64 }* %8, i32 0, i32 1
  %12 = load i64* %11, align 1
  %13 = call { i64, i64 } @_ZNSt10_Iter_baseISt13_Bit_iteratorLb0EE7_S_baseES0_(i64 %10, i64 %12)
  %14 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %15 = getelementptr { i64, i64 }* %14, i32 0, i32 0
  %16 = extractvalue { i64, i64 } %13, 0
  store i64 %16, i64* %15, align 1
  %17 = getelementptr { i64, i64 }* %14, i32 0, i32 1
  %18 = extractvalue { i64, i64 } %13, 1
  store i64 %18, i64* %17, align 1
  %19 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %20 = load { i64, i64 }* %19, align 1
  ret { i64, i64 } %20
}

; Function Attrs: nounwind uwtable
define linkonce_odr { i64, i64 } @_ZNSt10_Iter_baseISt13_Bit_iteratorLb0EE7_S_baseES0_(i64 %__it.coerce0, i64 %__it.coerce1) #5 align 2 {
  %1 = alloca %"struct.std::_Bit_iterator", align 8
  %__it = alloca %"struct.std::_Bit_iterator", align 8
  %2 = bitcast %"struct.std::_Bit_iterator"* %__it to { i64, i64 }*
  %3 = getelementptr { i64, i64 }* %2, i32 0, i32 0
  store i64 %__it.coerce0, i64* %3
  %4 = getelementptr { i64, i64 }* %2, i32 0, i32 1
  store i64 %__it.coerce1, i64* %4
  %5 = bitcast %"struct.std::_Bit_iterator"* %1 to i8*
  %6 = bitcast %"struct.std::_Bit_iterator"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %8 = load { i64, i64 }* %7, align 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define linkonce_odr { i64, i64 } @_ZSt13__copy_move_aILb0ESt13_Bit_iteratorS0_ET1_T0_S2_S1_(i64 %__first.coerce0, i64 %__first.coerce1, i64 %__last.coerce0, i64 %__last.coerce1, i64 %__result.coerce0, i64 %__result.coerce1) #3 {
  %1 = alloca %"struct.std::_Bit_iterator", align 8
  %__first = alloca %"struct.std::_Bit_iterator", align 8
  %__last = alloca %"struct.std::_Bit_iterator", align 8
  %__result = alloca %"struct.std::_Bit_iterator", align 8
  %__simple = alloca i8, align 1
  %2 = alloca %"struct.std::_Bit_iterator", align 8
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  %4 = alloca %"struct.std::_Bit_iterator", align 8
  %5 = bitcast %"struct.std::_Bit_iterator"* %__first to { i64, i64 }*
  %6 = getelementptr { i64, i64 }* %5, i32 0, i32 0
  store i64 %__first.coerce0, i64* %6
  %7 = getelementptr { i64, i64 }* %5, i32 0, i32 1
  store i64 %__first.coerce1, i64* %7
  %8 = bitcast %"struct.std::_Bit_iterator"* %__last to { i64, i64 }*
  %9 = getelementptr { i64, i64 }* %8, i32 0, i32 0
  store i64 %__last.coerce0, i64* %9
  %10 = getelementptr { i64, i64 }* %8, i32 0, i32 1
  store i64 %__last.coerce1, i64* %10
  %11 = bitcast %"struct.std::_Bit_iterator"* %__result to { i64, i64 }*
  %12 = getelementptr { i64, i64 }* %11, i32 0, i32 0
  store i64 %__result.coerce0, i64* %12
  %13 = getelementptr { i64, i64 }* %11, i32 0, i32 1
  store i64 %__result.coerce1, i64* %13
  store i8 0, i8* %__simple, align 1
  %14 = bitcast %"struct.std::_Bit_iterator"* %2 to i8*
  %15 = bitcast %"struct.std::_Bit_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  %16 = bitcast %"struct.std::_Bit_iterator"* %3 to i8*
  %17 = bitcast %"struct.std::_Bit_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  %18 = bitcast %"struct.std::_Bit_iterator"* %4 to i8*
  %19 = bitcast %"struct.std::_Bit_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false)
  %20 = bitcast %"struct.std::_Bit_iterator"* %2 to { i64, i64 }*
  %21 = getelementptr { i64, i64 }* %20, i32 0, i32 0
  %22 = load i64* %21, align 1
  %23 = getelementptr { i64, i64 }* %20, i32 0, i32 1
  %24 = load i64* %23, align 1
  %25 = bitcast %"struct.std::_Bit_iterator"* %3 to { i64, i64 }*
  %26 = getelementptr { i64, i64 }* %25, i32 0, i32 0
  %27 = load i64* %26, align 1
  %28 = getelementptr { i64, i64 }* %25, i32 0, i32 1
  %29 = load i64* %28, align 1
  %30 = bitcast %"struct.std::_Bit_iterator"* %4 to { i64, i64 }*
  %31 = getelementptr { i64, i64 }* %30, i32 0, i32 0
  %32 = load i64* %31, align 1
  %33 = getelementptr { i64, i64 }* %30, i32 0, i32 1
  %34 = load i64* %33, align 1
  %35 = call { i64, i64 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt13_Bit_iteratorS3_EET0_T_S5_S4_(i64 %22, i64 %24, i64 %27, i64 %29, i64 %32, i64 %34)
  %36 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %37 = getelementptr { i64, i64 }* %36, i32 0, i32 0
  %38 = extractvalue { i64, i64 } %35, 0
  store i64 %38, i64* %37, align 1
  %39 = getelementptr { i64, i64 }* %36, i32 0, i32 1
  %40 = extractvalue { i64, i64 } %35, 1
  store i64 %40, i64* %39, align 1
  %41 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %42 = load { i64, i64 }* %41, align 1
  ret { i64, i64 } %42
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr { i64, i64 } @_ZSt12__niter_baseISt13_Bit_iteratorENSt11_Niter_baseIT_E13iterator_typeES2_(i64 %__it.coerce0, i64 %__it.coerce1) #8 {
  %1 = alloca %"struct.std::_Bit_iterator", align 8
  %__it = alloca %"struct.std::_Bit_iterator", align 8
  %2 = alloca %"struct.std::_Bit_iterator", align 8
  %3 = bitcast %"struct.std::_Bit_iterator"* %__it to { i64, i64 }*
  %4 = getelementptr { i64, i64 }* %3, i32 0, i32 0
  store i64 %__it.coerce0, i64* %4
  %5 = getelementptr { i64, i64 }* %3, i32 0, i32 1
  store i64 %__it.coerce1, i64* %5
  %6 = bitcast %"struct.std::_Bit_iterator"* %2 to i8*
  %7 = bitcast %"struct.std::_Bit_iterator"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %8 = bitcast %"struct.std::_Bit_iterator"* %2 to { i64, i64 }*
  %9 = getelementptr { i64, i64 }* %8, i32 0, i32 0
  %10 = load i64* %9, align 1
  %11 = getelementptr { i64, i64 }* %8, i32 0, i32 1
  %12 = load i64* %11, align 1
  %13 = call { i64, i64 } @_ZNSt10_Iter_baseISt13_Bit_iteratorLb0EE7_S_baseES0_(i64 %10, i64 %12)
  %14 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %15 = getelementptr { i64, i64 }* %14, i32 0, i32 0
  %16 = extractvalue { i64, i64 } %13, 0
  store i64 %16, i64* %15, align 1
  %17 = getelementptr { i64, i64 }* %14, i32 0, i32 1
  %18 = extractvalue { i64, i64 } %13, 1
  store i64 %18, i64* %17, align 1
  %19 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %20 = load { i64, i64 }* %19, align 1
  ret { i64, i64 } %20
}

; Function Attrs: uwtable
define linkonce_odr { i64, i64 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt13_Bit_iteratorS3_EET0_T_S5_S4_(i64 %__first.coerce0, i64 %__first.coerce1, i64 %__last.coerce0, i64 %__last.coerce1, i64 %__result.coerce0, i64 %__result.coerce1) #2 align 2 {
  %1 = alloca %"struct.std::_Bit_iterator", align 8
  %__first = alloca %"struct.std::_Bit_iterator", align 8
  %__last = alloca %"struct.std::_Bit_iterator", align 8
  %__result = alloca %"struct.std::_Bit_iterator", align 8
  %__n = alloca i64, align 8
  %2 = alloca %"struct.std::_Bit_reference", align 8
  %3 = alloca %"struct.std::_Bit_reference", align 8
  %4 = bitcast %"struct.std::_Bit_iterator"* %__first to { i64, i64 }*
  %5 = getelementptr { i64, i64 }* %4, i32 0, i32 0
  store i64 %__first.coerce0, i64* %5
  %6 = getelementptr { i64, i64 }* %4, i32 0, i32 1
  store i64 %__first.coerce1, i64* %6
  %7 = bitcast %"struct.std::_Bit_iterator"* %__last to { i64, i64 }*
  %8 = getelementptr { i64, i64 }* %7, i32 0, i32 0
  store i64 %__last.coerce0, i64* %8
  %9 = getelementptr { i64, i64 }* %7, i32 0, i32 1
  store i64 %__last.coerce1, i64* %9
  %10 = bitcast %"struct.std::_Bit_iterator"* %__result to { i64, i64 }*
  %11 = getelementptr { i64, i64 }* %10, i32 0, i32 0
  store i64 %__result.coerce0, i64* %11
  %12 = getelementptr { i64, i64 }* %10, i32 0, i32 1
  store i64 %__result.coerce1, i64* %12
  %13 = bitcast %"struct.std::_Bit_iterator"* %__last to %"struct.std::_Bit_iterator_base"*
  %14 = bitcast %"struct.std::_Bit_iterator"* %__first to %"struct.std::_Bit_iterator_base"*
  %15 = call i64 @_ZStmiRKSt18_Bit_iterator_baseS1_(%"struct.std::_Bit_iterator_base"* %13, %"struct.std::_Bit_iterator_base"* %14)
  store i64 %15, i64* %__n, align 8
  br label %16

; <label>:16                                      ; preds = %35, %0
  %17 = load i64* %__n, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %38

; <label>:19                                      ; preds = %16
  %20 = call { i64*, i64 } @_ZNKSt13_Bit_iteratordeEv(%"struct.std::_Bit_iterator"* %__result)
  %21 = bitcast %"struct.std::_Bit_reference"* %2 to { i64*, i64 }*
  %22 = getelementptr { i64*, i64 }* %21, i32 0, i32 0
  %23 = extractvalue { i64*, i64 } %20, 0
  store i64* %23, i64** %22, align 1
  %24 = getelementptr { i64*, i64 }* %21, i32 0, i32 1
  %25 = extractvalue { i64*, i64 } %20, 1
  store i64 %25, i64* %24, align 1
  %26 = call { i64*, i64 } @_ZNKSt13_Bit_iteratordeEv(%"struct.std::_Bit_iterator"* %__first)
  %27 = bitcast %"struct.std::_Bit_reference"* %3 to { i64*, i64 }*
  %28 = getelementptr { i64*, i64 }* %27, i32 0, i32 0
  %29 = extractvalue { i64*, i64 } %26, 0
  store i64* %29, i64** %28, align 1
  %30 = getelementptr { i64*, i64 }* %27, i32 0, i32 1
  %31 = extractvalue { i64*, i64 } %26, 1
  store i64 %31, i64* %30, align 1
  %32 = call %"struct.std::_Bit_reference"* @_ZNSt14_Bit_referenceaSERKS_(%"struct.std::_Bit_reference"* %2, %"struct.std::_Bit_reference"* %3)
  %33 = call %"struct.std::_Bit_iterator"* @_ZNSt13_Bit_iteratorppEv(%"struct.std::_Bit_iterator"* %__first)
  %34 = call %"struct.std::_Bit_iterator"* @_ZNSt13_Bit_iteratorppEv(%"struct.std::_Bit_iterator"* %__result)
  br label %35

; <label>:35                                      ; preds = %19
  %36 = load i64* %__n, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %__n, align 8
  br label %16

; <label>:38                                      ; preds = %16
  %39 = bitcast %"struct.std::_Bit_iterator"* %1 to i8*
  %40 = bitcast %"struct.std::_Bit_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 16, i32 8, i1 false)
  %41 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %42 = load { i64, i64 }* %41, align 1
  ret { i64, i64 } %42
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64 @_ZStmiRKSt18_Bit_iterator_baseS1_(%"struct.std::_Bit_iterator_base"* %__x, %"struct.std::_Bit_iterator_base"* %__y) #8 {
  %1 = alloca %"struct.std::_Bit_iterator_base"*, align 8
  %2 = alloca %"struct.std::_Bit_iterator_base"*, align 8
  store %"struct.std::_Bit_iterator_base"* %__x, %"struct.std::_Bit_iterator_base"** %1, align 8
  store %"struct.std::_Bit_iterator_base"* %__y, %"struct.std::_Bit_iterator_base"** %2, align 8
  %3 = load %"struct.std::_Bit_iterator_base"** %1, align 8
  %4 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %3, i32 0, i32 0
  %5 = load i64** %4, align 8
  %6 = load %"struct.std::_Bit_iterator_base"** %2, align 8
  %7 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %6, i32 0, i32 0
  %8 = load i64** %7, align 8
  %9 = ptrtoint i64* %5 to i64
  %10 = ptrtoint i64* %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = mul nsw i64 64, %12
  %14 = load %"struct.std::_Bit_iterator_base"** %1, align 8
  %15 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %14, i32 0, i32 1
  %16 = load i32* %15, align 4
  %17 = zext i32 %16 to i64
  %18 = add nsw i64 %13, %17
  %19 = load %"struct.std::_Bit_iterator_base"** %2, align 8
  %20 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %19, i32 0, i32 1
  %21 = load i32* %20, align 4
  %22 = zext i32 %21 to i64
  %23 = sub nsw i64 %18, %22
  ret i64 %23
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Bit_reference"* @_ZNSt14_Bit_referenceaSERKS_(%"struct.std::_Bit_reference"* %this, %"struct.std::_Bit_reference"* %__x) #2 align 2 {
  %1 = alloca %"struct.std::_Bit_reference"*, align 8
  %2 = alloca %"struct.std::_Bit_reference"*, align 8
  store %"struct.std::_Bit_reference"* %this, %"struct.std::_Bit_reference"** %1, align 8
  store %"struct.std::_Bit_reference"* %__x, %"struct.std::_Bit_reference"** %2, align 8
  %3 = load %"struct.std::_Bit_reference"** %1
  %4 = load %"struct.std::_Bit_reference"** %2, align 8
  %5 = call zeroext i1 @_ZNKSt14_Bit_referencecvbEv(%"struct.std::_Bit_reference"* %4)
  %6 = call %"struct.std::_Bit_reference"* @_ZNSt14_Bit_referenceaSEb(%"struct.std::_Bit_reference"* %3, i1 zeroext %5)
  ret %"struct.std::_Bit_reference"* %6
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i64* @_ZSt4copyIPmS0_ET0_T_S2_S1_(i64* %__first, i64* %__last, i64* %__result) #3 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  store i64* %__first, i64** %1, align 8
  store i64* %__last, i64** %2, align 8
  store i64* %__result, i64** %3, align 8
  %4 = load i64** %1, align 8
  %5 = call i64* @_ZSt12__miter_baseIPmENSt11_Miter_baseIT_E13iterator_typeES2_(i64* %4)
  %6 = load i64** %2, align 8
  %7 = call i64* @_ZSt12__miter_baseIPmENSt11_Miter_baseIT_E13iterator_typeES2_(i64* %6)
  %8 = load i64** %3, align 8
  %9 = call i64* @_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_(i64* %5, i64* %7, i64* %8)
  ret i64* %9
}

; Function Attrs: inlinehint uwtable
define linkonce_odr { i64, i64 } @_ZSt4copyISt19_Bit_const_iteratorSt13_Bit_iteratorET0_T_S3_S2_(i64 %__first.coerce0, i64 %__first.coerce1, i64 %__last.coerce0, i64 %__last.coerce1, i64 %__result.coerce0, i64 %__result.coerce1) #3 {
  %1 = alloca %"struct.std::_Bit_iterator", align 8
  %__first = alloca %"struct.std::_Bit_const_iterator", align 8
  %__last = alloca %"struct.std::_Bit_const_iterator", align 8
  %__result = alloca %"struct.std::_Bit_iterator", align 8
  %2 = alloca %"struct.std::_Bit_const_iterator", align 8
  %3 = alloca %"struct.std::_Bit_const_iterator", align 8
  %4 = alloca %"struct.std::_Bit_const_iterator", align 8
  %5 = alloca %"struct.std::_Bit_const_iterator", align 8
  %6 = alloca %"struct.std::_Bit_iterator", align 8
  %7 = bitcast %"struct.std::_Bit_const_iterator"* %__first to { i64, i64 }*
  %8 = getelementptr { i64, i64 }* %7, i32 0, i32 0
  store i64 %__first.coerce0, i64* %8
  %9 = getelementptr { i64, i64 }* %7, i32 0, i32 1
  store i64 %__first.coerce1, i64* %9
  %10 = bitcast %"struct.std::_Bit_const_iterator"* %__last to { i64, i64 }*
  %11 = getelementptr { i64, i64 }* %10, i32 0, i32 0
  store i64 %__last.coerce0, i64* %11
  %12 = getelementptr { i64, i64 }* %10, i32 0, i32 1
  store i64 %__last.coerce1, i64* %12
  %13 = bitcast %"struct.std::_Bit_iterator"* %__result to { i64, i64 }*
  %14 = getelementptr { i64, i64 }* %13, i32 0, i32 0
  store i64 %__result.coerce0, i64* %14
  %15 = getelementptr { i64, i64 }* %13, i32 0, i32 1
  store i64 %__result.coerce1, i64* %15
  %16 = bitcast %"struct.std::_Bit_const_iterator"* %3 to i8*
  %17 = bitcast %"struct.std::_Bit_const_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  %18 = bitcast %"struct.std::_Bit_const_iterator"* %3 to { i64, i64 }*
  %19 = getelementptr { i64, i64 }* %18, i32 0, i32 0
  %20 = load i64* %19, align 1
  %21 = getelementptr { i64, i64 }* %18, i32 0, i32 1
  %22 = load i64* %21, align 1
  %23 = call { i64, i64 } @_ZSt12__miter_baseISt19_Bit_const_iteratorENSt11_Miter_baseIT_E13iterator_typeES2_(i64 %20, i64 %22)
  %24 = bitcast %"struct.std::_Bit_const_iterator"* %2 to { i64, i64 }*
  %25 = getelementptr { i64, i64 }* %24, i32 0, i32 0
  %26 = extractvalue { i64, i64 } %23, 0
  store i64 %26, i64* %25, align 1
  %27 = getelementptr { i64, i64 }* %24, i32 0, i32 1
  %28 = extractvalue { i64, i64 } %23, 1
  store i64 %28, i64* %27, align 1
  %29 = bitcast %"struct.std::_Bit_const_iterator"* %5 to i8*
  %30 = bitcast %"struct.std::_Bit_const_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false)
  %31 = bitcast %"struct.std::_Bit_const_iterator"* %5 to { i64, i64 }*
  %32 = getelementptr { i64, i64 }* %31, i32 0, i32 0
  %33 = load i64* %32, align 1
  %34 = getelementptr { i64, i64 }* %31, i32 0, i32 1
  %35 = load i64* %34, align 1
  %36 = call { i64, i64 } @_ZSt12__miter_baseISt19_Bit_const_iteratorENSt11_Miter_baseIT_E13iterator_typeES2_(i64 %33, i64 %35)
  %37 = bitcast %"struct.std::_Bit_const_iterator"* %4 to { i64, i64 }*
  %38 = getelementptr { i64, i64 }* %37, i32 0, i32 0
  %39 = extractvalue { i64, i64 } %36, 0
  store i64 %39, i64* %38, align 1
  %40 = getelementptr { i64, i64 }* %37, i32 0, i32 1
  %41 = extractvalue { i64, i64 } %36, 1
  store i64 %41, i64* %40, align 1
  %42 = bitcast %"struct.std::_Bit_iterator"* %6 to i8*
  %43 = bitcast %"struct.std::_Bit_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 16, i32 8, i1 false)
  %44 = bitcast %"struct.std::_Bit_const_iterator"* %2 to { i64, i64 }*
  %45 = getelementptr { i64, i64 }* %44, i32 0, i32 0
  %46 = load i64* %45, align 1
  %47 = getelementptr { i64, i64 }* %44, i32 0, i32 1
  %48 = load i64* %47, align 1
  %49 = bitcast %"struct.std::_Bit_const_iterator"* %4 to { i64, i64 }*
  %50 = getelementptr { i64, i64 }* %49, i32 0, i32 0
  %51 = load i64* %50, align 1
  %52 = getelementptr { i64, i64 }* %49, i32 0, i32 1
  %53 = load i64* %52, align 1
  %54 = bitcast %"struct.std::_Bit_iterator"* %6 to { i64, i64 }*
  %55 = getelementptr { i64, i64 }* %54, i32 0, i32 0
  %56 = load i64* %55, align 1
  %57 = getelementptr { i64, i64 }* %54, i32 0, i32 1
  %58 = load i64* %57, align 1
  %59 = call { i64, i64 } @_ZSt14__copy_move_a2ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_(i64 %46, i64 %48, i64 %51, i64 %53, i64 %56, i64 %58)
  %60 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %61 = getelementptr { i64, i64 }* %60, i32 0, i32 0
  %62 = extractvalue { i64, i64 } %59, 0
  store i64 %62, i64* %61, align 1
  %63 = getelementptr { i64, i64 }* %60, i32 0, i32 1
  %64 = extractvalue { i64, i64 } %59, 1
  store i64 %64, i64* %63, align 1
  %65 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %66 = load { i64, i64 }* %65, align 1
  ret { i64, i64 } %66
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt19_Bit_const_iteratorC2EPmj(%"struct.std::_Bit_const_iterator"* %this, i64* %__x, i32 %__y) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Bit_const_iterator"*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  store %"struct.std::_Bit_const_iterator"* %this, %"struct.std::_Bit_const_iterator"** %1, align 8
  store i64* %__x, i64** %2, align 8
  store i32 %__y, i32* %3, align 4
  %4 = load %"struct.std::_Bit_const_iterator"** %1
  %5 = bitcast %"struct.std::_Bit_const_iterator"* %4 to %"struct.std::_Bit_iterator_base"*
  %6 = load i64** %2, align 8
  %7 = load i32* %3, align 4
  call void @_ZNSt18_Bit_iterator_baseC2EPmj(%"struct.std::_Bit_iterator_base"* %5, i64* %6, i32 %7)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr { i64, i64 } @_ZSt14__copy_move_a2ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_(i64 %__first.coerce0, i64 %__first.coerce1, i64 %__last.coerce0, i64 %__last.coerce1, i64 %__result.coerce0, i64 %__result.coerce1) #3 {
  %1 = alloca %"struct.std::_Bit_iterator", align 8
  %__first = alloca %"struct.std::_Bit_const_iterator", align 8
  %__last = alloca %"struct.std::_Bit_const_iterator", align 8
  %__result = alloca %"struct.std::_Bit_iterator", align 8
  %2 = alloca %"struct.std::_Bit_const_iterator", align 8
  %3 = alloca %"struct.std::_Bit_const_iterator", align 8
  %4 = alloca %"struct.std::_Bit_const_iterator", align 8
  %5 = alloca %"struct.std::_Bit_const_iterator", align 8
  %6 = alloca %"struct.std::_Bit_iterator", align 8
  %7 = alloca %"struct.std::_Bit_iterator", align 8
  %8 = bitcast %"struct.std::_Bit_const_iterator"* %__first to { i64, i64 }*
  %9 = getelementptr { i64, i64 }* %8, i32 0, i32 0
  store i64 %__first.coerce0, i64* %9
  %10 = getelementptr { i64, i64 }* %8, i32 0, i32 1
  store i64 %__first.coerce1, i64* %10
  %11 = bitcast %"struct.std::_Bit_const_iterator"* %__last to { i64, i64 }*
  %12 = getelementptr { i64, i64 }* %11, i32 0, i32 0
  store i64 %__last.coerce0, i64* %12
  %13 = getelementptr { i64, i64 }* %11, i32 0, i32 1
  store i64 %__last.coerce1, i64* %13
  %14 = bitcast %"struct.std::_Bit_iterator"* %__result to { i64, i64 }*
  %15 = getelementptr { i64, i64 }* %14, i32 0, i32 0
  store i64 %__result.coerce0, i64* %15
  %16 = getelementptr { i64, i64 }* %14, i32 0, i32 1
  store i64 %__result.coerce1, i64* %16
  %17 = bitcast %"struct.std::_Bit_const_iterator"* %3 to i8*
  %18 = bitcast %"struct.std::_Bit_const_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false)
  %19 = bitcast %"struct.std::_Bit_const_iterator"* %3 to { i64, i64 }*
  %20 = getelementptr { i64, i64 }* %19, i32 0, i32 0
  %21 = load i64* %20, align 1
  %22 = getelementptr { i64, i64 }* %19, i32 0, i32 1
  %23 = load i64* %22, align 1
  %24 = call { i64, i64 } @_ZSt12__niter_baseISt19_Bit_const_iteratorENSt11_Niter_baseIT_E13iterator_typeES2_(i64 %21, i64 %23)
  %25 = bitcast %"struct.std::_Bit_const_iterator"* %2 to { i64, i64 }*
  %26 = getelementptr { i64, i64 }* %25, i32 0, i32 0
  %27 = extractvalue { i64, i64 } %24, 0
  store i64 %27, i64* %26, align 1
  %28 = getelementptr { i64, i64 }* %25, i32 0, i32 1
  %29 = extractvalue { i64, i64 } %24, 1
  store i64 %29, i64* %28, align 1
  %30 = bitcast %"struct.std::_Bit_const_iterator"* %5 to i8*
  %31 = bitcast %"struct.std::_Bit_const_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false)
  %32 = bitcast %"struct.std::_Bit_const_iterator"* %5 to { i64, i64 }*
  %33 = getelementptr { i64, i64 }* %32, i32 0, i32 0
  %34 = load i64* %33, align 1
  %35 = getelementptr { i64, i64 }* %32, i32 0, i32 1
  %36 = load i64* %35, align 1
  %37 = call { i64, i64 } @_ZSt12__niter_baseISt19_Bit_const_iteratorENSt11_Niter_baseIT_E13iterator_typeES2_(i64 %34, i64 %36)
  %38 = bitcast %"struct.std::_Bit_const_iterator"* %4 to { i64, i64 }*
  %39 = getelementptr { i64, i64 }* %38, i32 0, i32 0
  %40 = extractvalue { i64, i64 } %37, 0
  store i64 %40, i64* %39, align 1
  %41 = getelementptr { i64, i64 }* %38, i32 0, i32 1
  %42 = extractvalue { i64, i64 } %37, 1
  store i64 %42, i64* %41, align 1
  %43 = bitcast %"struct.std::_Bit_iterator"* %7 to i8*
  %44 = bitcast %"struct.std::_Bit_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 16, i32 8, i1 false)
  %45 = bitcast %"struct.std::_Bit_iterator"* %7 to { i64, i64 }*
  %46 = getelementptr { i64, i64 }* %45, i32 0, i32 0
  %47 = load i64* %46, align 1
  %48 = getelementptr { i64, i64 }* %45, i32 0, i32 1
  %49 = load i64* %48, align 1
  %50 = call { i64, i64 } @_ZSt12__niter_baseISt13_Bit_iteratorENSt11_Niter_baseIT_E13iterator_typeES2_(i64 %47, i64 %49)
  %51 = bitcast %"struct.std::_Bit_iterator"* %6 to { i64, i64 }*
  %52 = getelementptr { i64, i64 }* %51, i32 0, i32 0
  %53 = extractvalue { i64, i64 } %50, 0
  store i64 %53, i64* %52, align 1
  %54 = getelementptr { i64, i64 }* %51, i32 0, i32 1
  %55 = extractvalue { i64, i64 } %50, 1
  store i64 %55, i64* %54, align 1
  %56 = bitcast %"struct.std::_Bit_const_iterator"* %2 to { i64, i64 }*
  %57 = getelementptr { i64, i64 }* %56, i32 0, i32 0
  %58 = load i64* %57, align 1
  %59 = getelementptr { i64, i64 }* %56, i32 0, i32 1
  %60 = load i64* %59, align 1
  %61 = bitcast %"struct.std::_Bit_const_iterator"* %4 to { i64, i64 }*
  %62 = getelementptr { i64, i64 }* %61, i32 0, i32 0
  %63 = load i64* %62, align 1
  %64 = getelementptr { i64, i64 }* %61, i32 0, i32 1
  %65 = load i64* %64, align 1
  %66 = bitcast %"struct.std::_Bit_iterator"* %6 to { i64, i64 }*
  %67 = getelementptr { i64, i64 }* %66, i32 0, i32 0
  %68 = load i64* %67, align 1
  %69 = getelementptr { i64, i64 }* %66, i32 0, i32 1
  %70 = load i64* %69, align 1
  %71 = call { i64, i64 } @_ZSt13__copy_move_aILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_(i64 %58, i64 %60, i64 %63, i64 %65, i64 %68, i64 %70)
  %72 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %73 = getelementptr { i64, i64 }* %72, i32 0, i32 0
  %74 = extractvalue { i64, i64 } %71, 0
  store i64 %74, i64* %73, align 1
  %75 = getelementptr { i64, i64 }* %72, i32 0, i32 1
  %76 = extractvalue { i64, i64 } %71, 1
  store i64 %76, i64* %75, align 1
  %77 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %78 = load { i64, i64 }* %77, align 1
  ret { i64, i64 } %78
}

; Function Attrs: inlinehint uwtable
define linkonce_odr { i64, i64 } @_ZSt12__miter_baseISt19_Bit_const_iteratorENSt11_Miter_baseIT_E13iterator_typeES2_(i64 %__it.coerce0, i64 %__it.coerce1) #3 {
  %1 = alloca %"struct.std::_Bit_const_iterator", align 8
  %__it = alloca %"struct.std::_Bit_const_iterator", align 8
  %2 = alloca %"struct.std::_Bit_const_iterator", align 8
  %3 = bitcast %"struct.std::_Bit_const_iterator"* %__it to { i64, i64 }*
  %4 = getelementptr { i64, i64 }* %3, i32 0, i32 0
  store i64 %__it.coerce0, i64* %4
  %5 = getelementptr { i64, i64 }* %3, i32 0, i32 1
  store i64 %__it.coerce1, i64* %5
  %6 = bitcast %"struct.std::_Bit_const_iterator"* %2 to i8*
  %7 = bitcast %"struct.std::_Bit_const_iterator"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %8 = bitcast %"struct.std::_Bit_const_iterator"* %2 to { i64, i64 }*
  %9 = getelementptr { i64, i64 }* %8, i32 0, i32 0
  %10 = load i64* %9, align 1
  %11 = getelementptr { i64, i64 }* %8, i32 0, i32 1
  %12 = load i64* %11, align 1
  %13 = call { i64, i64 } @_ZNSt10_Iter_baseISt19_Bit_const_iteratorLb0EE7_S_baseES0_(i64 %10, i64 %12)
  %14 = bitcast %"struct.std::_Bit_const_iterator"* %1 to { i64, i64 }*
  %15 = getelementptr { i64, i64 }* %14, i32 0, i32 0
  %16 = extractvalue { i64, i64 } %13, 0
  store i64 %16, i64* %15, align 1
  %17 = getelementptr { i64, i64 }* %14, i32 0, i32 1
  %18 = extractvalue { i64, i64 } %13, 1
  store i64 %18, i64* %17, align 1
  %19 = bitcast %"struct.std::_Bit_const_iterator"* %1 to { i64, i64 }*
  %20 = load { i64, i64 }* %19, align 1
  ret { i64, i64 } %20
}

; Function Attrs: nounwind uwtable
define linkonce_odr { i64, i64 } @_ZNSt10_Iter_baseISt19_Bit_const_iteratorLb0EE7_S_baseES0_(i64 %__it.coerce0, i64 %__it.coerce1) #5 align 2 {
  %1 = alloca %"struct.std::_Bit_const_iterator", align 8
  %__it = alloca %"struct.std::_Bit_const_iterator", align 8
  %2 = bitcast %"struct.std::_Bit_const_iterator"* %__it to { i64, i64 }*
  %3 = getelementptr { i64, i64 }* %2, i32 0, i32 0
  store i64 %__it.coerce0, i64* %3
  %4 = getelementptr { i64, i64 }* %2, i32 0, i32 1
  store i64 %__it.coerce1, i64* %4
  %5 = bitcast %"struct.std::_Bit_const_iterator"* %1 to i8*
  %6 = bitcast %"struct.std::_Bit_const_iterator"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = bitcast %"struct.std::_Bit_const_iterator"* %1 to { i64, i64 }*
  %8 = load { i64, i64 }* %7, align 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define linkonce_odr { i64, i64 } @_ZSt13__copy_move_aILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_(i64 %__first.coerce0, i64 %__first.coerce1, i64 %__last.coerce0, i64 %__last.coerce1, i64 %__result.coerce0, i64 %__result.coerce1) #3 {
  %1 = alloca %"struct.std::_Bit_iterator", align 8
  %__first = alloca %"struct.std::_Bit_const_iterator", align 8
  %__last = alloca %"struct.std::_Bit_const_iterator", align 8
  %__result = alloca %"struct.std::_Bit_iterator", align 8
  %__simple = alloca i8, align 1
  %2 = alloca %"struct.std::_Bit_const_iterator", align 8
  %3 = alloca %"struct.std::_Bit_const_iterator", align 8
  %4 = alloca %"struct.std::_Bit_iterator", align 8
  %5 = bitcast %"struct.std::_Bit_const_iterator"* %__first to { i64, i64 }*
  %6 = getelementptr { i64, i64 }* %5, i32 0, i32 0
  store i64 %__first.coerce0, i64* %6
  %7 = getelementptr { i64, i64 }* %5, i32 0, i32 1
  store i64 %__first.coerce1, i64* %7
  %8 = bitcast %"struct.std::_Bit_const_iterator"* %__last to { i64, i64 }*
  %9 = getelementptr { i64, i64 }* %8, i32 0, i32 0
  store i64 %__last.coerce0, i64* %9
  %10 = getelementptr { i64, i64 }* %8, i32 0, i32 1
  store i64 %__last.coerce1, i64* %10
  %11 = bitcast %"struct.std::_Bit_iterator"* %__result to { i64, i64 }*
  %12 = getelementptr { i64, i64 }* %11, i32 0, i32 0
  store i64 %__result.coerce0, i64* %12
  %13 = getelementptr { i64, i64 }* %11, i32 0, i32 1
  store i64 %__result.coerce1, i64* %13
  store i8 0, i8* %__simple, align 1
  %14 = bitcast %"struct.std::_Bit_const_iterator"* %2 to i8*
  %15 = bitcast %"struct.std::_Bit_const_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  %16 = bitcast %"struct.std::_Bit_const_iterator"* %3 to i8*
  %17 = bitcast %"struct.std::_Bit_const_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  %18 = bitcast %"struct.std::_Bit_iterator"* %4 to i8*
  %19 = bitcast %"struct.std::_Bit_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false)
  %20 = bitcast %"struct.std::_Bit_const_iterator"* %2 to { i64, i64 }*
  %21 = getelementptr { i64, i64 }* %20, i32 0, i32 0
  %22 = load i64* %21, align 1
  %23 = getelementptr { i64, i64 }* %20, i32 0, i32 1
  %24 = load i64* %23, align 1
  %25 = bitcast %"struct.std::_Bit_const_iterator"* %3 to { i64, i64 }*
  %26 = getelementptr { i64, i64 }* %25, i32 0, i32 0
  %27 = load i64* %26, align 1
  %28 = getelementptr { i64, i64 }* %25, i32 0, i32 1
  %29 = load i64* %28, align 1
  %30 = bitcast %"struct.std::_Bit_iterator"* %4 to { i64, i64 }*
  %31 = getelementptr { i64, i64 }* %30, i32 0, i32 0
  %32 = load i64* %31, align 1
  %33 = getelementptr { i64, i64 }* %30, i32 0, i32 1
  %34 = load i64* %33, align 1
  %35 = call { i64, i64 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_(i64 %22, i64 %24, i64 %27, i64 %29, i64 %32, i64 %34)
  %36 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %37 = getelementptr { i64, i64 }* %36, i32 0, i32 0
  %38 = extractvalue { i64, i64 } %35, 0
  store i64 %38, i64* %37, align 1
  %39 = getelementptr { i64, i64 }* %36, i32 0, i32 1
  %40 = extractvalue { i64, i64 } %35, 1
  store i64 %40, i64* %39, align 1
  %41 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %42 = load { i64, i64 }* %41, align 1
  ret { i64, i64 } %42
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr { i64, i64 } @_ZSt12__niter_baseISt19_Bit_const_iteratorENSt11_Niter_baseIT_E13iterator_typeES2_(i64 %__it.coerce0, i64 %__it.coerce1) #8 {
  %1 = alloca %"struct.std::_Bit_const_iterator", align 8
  %__it = alloca %"struct.std::_Bit_const_iterator", align 8
  %2 = alloca %"struct.std::_Bit_const_iterator", align 8
  %3 = bitcast %"struct.std::_Bit_const_iterator"* %__it to { i64, i64 }*
  %4 = getelementptr { i64, i64 }* %3, i32 0, i32 0
  store i64 %__it.coerce0, i64* %4
  %5 = getelementptr { i64, i64 }* %3, i32 0, i32 1
  store i64 %__it.coerce1, i64* %5
  %6 = bitcast %"struct.std::_Bit_const_iterator"* %2 to i8*
  %7 = bitcast %"struct.std::_Bit_const_iterator"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %8 = bitcast %"struct.std::_Bit_const_iterator"* %2 to { i64, i64 }*
  %9 = getelementptr { i64, i64 }* %8, i32 0, i32 0
  %10 = load i64* %9, align 1
  %11 = getelementptr { i64, i64 }* %8, i32 0, i32 1
  %12 = load i64* %11, align 1
  %13 = call { i64, i64 } @_ZNSt10_Iter_baseISt19_Bit_const_iteratorLb0EE7_S_baseES0_(i64 %10, i64 %12)
  %14 = bitcast %"struct.std::_Bit_const_iterator"* %1 to { i64, i64 }*
  %15 = getelementptr { i64, i64 }* %14, i32 0, i32 0
  %16 = extractvalue { i64, i64 } %13, 0
  store i64 %16, i64* %15, align 1
  %17 = getelementptr { i64, i64 }* %14, i32 0, i32 1
  %18 = extractvalue { i64, i64 } %13, 1
  store i64 %18, i64* %17, align 1
  %19 = bitcast %"struct.std::_Bit_const_iterator"* %1 to { i64, i64 }*
  %20 = load { i64, i64 }* %19, align 1
  ret { i64, i64 } %20
}

; Function Attrs: uwtable
define linkonce_odr { i64, i64 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_(i64 %__first.coerce0, i64 %__first.coerce1, i64 %__last.coerce0, i64 %__last.coerce1, i64 %__result.coerce0, i64 %__result.coerce1) #2 align 2 {
  %1 = alloca %"struct.std::_Bit_iterator", align 8
  %__first = alloca %"struct.std::_Bit_const_iterator", align 8
  %__last = alloca %"struct.std::_Bit_const_iterator", align 8
  %__result = alloca %"struct.std::_Bit_iterator", align 8
  %__n = alloca i64, align 8
  %2 = alloca %"struct.std::_Bit_reference", align 8
  %3 = bitcast %"struct.std::_Bit_const_iterator"* %__first to { i64, i64 }*
  %4 = getelementptr { i64, i64 }* %3, i32 0, i32 0
  store i64 %__first.coerce0, i64* %4
  %5 = getelementptr { i64, i64 }* %3, i32 0, i32 1
  store i64 %__first.coerce1, i64* %5
  %6 = bitcast %"struct.std::_Bit_const_iterator"* %__last to { i64, i64 }*
  %7 = getelementptr { i64, i64 }* %6, i32 0, i32 0
  store i64 %__last.coerce0, i64* %7
  %8 = getelementptr { i64, i64 }* %6, i32 0, i32 1
  store i64 %__last.coerce1, i64* %8
  %9 = bitcast %"struct.std::_Bit_iterator"* %__result to { i64, i64 }*
  %10 = getelementptr { i64, i64 }* %9, i32 0, i32 0
  store i64 %__result.coerce0, i64* %10
  %11 = getelementptr { i64, i64 }* %9, i32 0, i32 1
  store i64 %__result.coerce1, i64* %11
  %12 = bitcast %"struct.std::_Bit_const_iterator"* %__last to %"struct.std::_Bit_iterator_base"*
  %13 = bitcast %"struct.std::_Bit_const_iterator"* %__first to %"struct.std::_Bit_iterator_base"*
  %14 = call i64 @_ZStmiRKSt18_Bit_iterator_baseS1_(%"struct.std::_Bit_iterator_base"* %12, %"struct.std::_Bit_iterator_base"* %13)
  store i64 %14, i64* %__n, align 8
  br label %15

; <label>:15                                      ; preds = %29, %0
  %16 = load i64* %__n, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %32

; <label>:18                                      ; preds = %15
  %19 = call { i64*, i64 } @_ZNKSt13_Bit_iteratordeEv(%"struct.std::_Bit_iterator"* %__result)
  %20 = bitcast %"struct.std::_Bit_reference"* %2 to { i64*, i64 }*
  %21 = getelementptr { i64*, i64 }* %20, i32 0, i32 0
  %22 = extractvalue { i64*, i64 } %19, 0
  store i64* %22, i64** %21, align 1
  %23 = getelementptr { i64*, i64 }* %20, i32 0, i32 1
  %24 = extractvalue { i64*, i64 } %19, 1
  store i64 %24, i64* %23, align 1
  %25 = call zeroext i1 @_ZNKSt19_Bit_const_iteratordeEv(%"struct.std::_Bit_const_iterator"* %__first)
  %26 = call %"struct.std::_Bit_reference"* @_ZNSt14_Bit_referenceaSEb(%"struct.std::_Bit_reference"* %2, i1 zeroext %25)
  %27 = call %"struct.std::_Bit_const_iterator"* @_ZNSt19_Bit_const_iteratorppEv(%"struct.std::_Bit_const_iterator"* %__first)
  %28 = call %"struct.std::_Bit_iterator"* @_ZNSt13_Bit_iteratorppEv(%"struct.std::_Bit_iterator"* %__result)
  br label %29

; <label>:29                                      ; preds = %18
  %30 = load i64* %__n, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %__n, align 8
  br label %15

; <label>:32                                      ; preds = %15
  %33 = bitcast %"struct.std::_Bit_iterator"* %1 to i8*
  %34 = bitcast %"struct.std::_Bit_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 16, i32 8, i1 false)
  %35 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %36 = load { i64, i64 }* %35, align 1
  ret { i64, i64 } %36
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZNKSt19_Bit_const_iteratordeEv(%"struct.std::_Bit_const_iterator"* %this) #2 align 2 {
  %1 = alloca %"struct.std::_Bit_const_iterator"*, align 8
  %2 = alloca %"struct.std::_Bit_reference", align 8
  store %"struct.std::_Bit_const_iterator"* %this, %"struct.std::_Bit_const_iterator"** %1, align 8
  %3 = load %"struct.std::_Bit_const_iterator"** %1
  %4 = bitcast %"struct.std::_Bit_const_iterator"* %3 to %"struct.std::_Bit_iterator_base"*
  %5 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %4, i32 0, i32 0
  %6 = load i64** %5, align 8
  %7 = bitcast %"struct.std::_Bit_const_iterator"* %3 to %"struct.std::_Bit_iterator_base"*
  %8 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %7, i32 0, i32 1
  %9 = load i32* %8, align 4
  %10 = zext i32 %9 to i64
  %11 = shl i64 1, %10
  call void @_ZNSt14_Bit_referenceC2EPmm(%"struct.std::_Bit_reference"* %2, i64* %6, i64 %11)
  %12 = call zeroext i1 @_ZNKSt14_Bit_referencecvbEv(%"struct.std::_Bit_reference"* %2)
  ret i1 %12
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Bit_const_iterator"* @_ZNSt19_Bit_const_iteratorppEv(%"struct.std::_Bit_const_iterator"* %this) #2 align 2 {
  %1 = alloca %"struct.std::_Bit_const_iterator"*, align 8
  store %"struct.std::_Bit_const_iterator"* %this, %"struct.std::_Bit_const_iterator"** %1, align 8
  %2 = load %"struct.std::_Bit_const_iterator"** %1
  %3 = bitcast %"struct.std::_Bit_const_iterator"* %2 to %"struct.std::_Bit_iterator_base"*
  call void @_ZNSt18_Bit_iterator_base10_M_bump_upEv(%"struct.std::_Bit_iterator_base"* %3)
  ret %"struct.std::_Bit_const_iterator"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt18_Bit_iterator_base10_M_bump_upEv(%"struct.std::_Bit_iterator_base"* %this) #5 align 2 {
  %1 = alloca %"struct.std::_Bit_iterator_base"*, align 8
  store %"struct.std::_Bit_iterator_base"* %this, %"struct.std::_Bit_iterator_base"** %1, align 8
  %2 = load %"struct.std::_Bit_iterator_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  %5 = add i32 %4, 1
  store i32 %5, i32* %3, align 4
  %6 = icmp eq i32 %4, 63
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %2, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %2, i32 0, i32 0
  %10 = load i64** %9, align 8
  %11 = getelementptr inbounds i64* %10, i32 1
  store i64* %11, i64** %9, align 8
  br label %12

; <label>:12                                      ; preds = %7, %0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt14_Bit_referenceC2EPmm(%"struct.std::_Bit_reference"* %this, i64* %__x, i64 %__y) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Bit_reference"*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  store %"struct.std::_Bit_reference"* %this, %"struct.std::_Bit_reference"** %1, align 8
  store i64* %__x, i64** %2, align 8
  store i64 %__y, i64* %3, align 8
  %4 = load %"struct.std::_Bit_reference"** %1
  %5 = getelementptr inbounds %"struct.std::_Bit_reference"* %4, i32 0, i32 0
  %6 = load i64** %2, align 8
  store i64* %6, i64** %5, align 8
  %7 = getelementptr inbounds %"struct.std::_Bit_reference"* %4, i32 0, i32 1
  %8 = load i64* %3, align 8
  store i64 %8, i64* %7, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i64* @_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_(i64* %__first, i64* %__last, i64* %__result) #3 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  store i64* %__first, i64** %1, align 8
  store i64* %__last, i64** %2, align 8
  store i64* %__result, i64** %3, align 8
  %4 = load i64** %1, align 8
  %5 = call i64* @_ZSt12__niter_baseIPmENSt11_Niter_baseIT_E13iterator_typeES2_(i64* %4)
  %6 = load i64** %2, align 8
  %7 = call i64* @_ZSt12__niter_baseIPmENSt11_Niter_baseIT_E13iterator_typeES2_(i64* %6)
  %8 = load i64** %3, align 8
  %9 = call i64* @_ZSt12__niter_baseIPmENSt11_Niter_baseIT_E13iterator_typeES2_(i64* %8)
  %10 = call i64* @_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_(i64* %5, i64* %7, i64* %9)
  ret i64* %10
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt12__miter_baseIPmENSt11_Miter_baseIT_E13iterator_typeES2_(i64* %__it) #8 {
  %1 = alloca i64*, align 8
  store i64* %__it, i64** %1, align 8
  %2 = load i64** %1, align 8
  %3 = call i64* @_ZNSt10_Iter_baseIPmLb0EE7_S_baseES0_(i64* %2)
  ret i64* %3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i64* @_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_(i64* %__first, i64* %__last, i64* %__result) #3 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %__simple = alloca i8, align 1
  store i64* %__first, i64** %1, align 8
  store i64* %__last, i64** %2, align 8
  store i64* %__result, i64** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load i64** %1, align 8
  %5 = load i64** %2, align 8
  %6 = load i64** %3, align 8
  %7 = call i64* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_(i64* %4, i64* %5, i64* %6)
  ret i64* %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_(i64* %__first, i64* %__last, i64* %__result) #5 align 2 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %_Num = alloca i64, align 8
  store i64* %__first, i64** %1, align 8
  store i64* %__last, i64** %2, align 8
  store i64* %__result, i64** %3, align 8
  %4 = load i64** %2, align 8
  %5 = load i64** %1, align 8
  %6 = ptrtoint i64* %4 to i64
  %7 = ptrtoint i64* %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  store i64 %9, i64* %_Num, align 8
  %10 = load i64* %_Num, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

; <label>:12                                      ; preds = %0
  %13 = load i64** %3, align 8
  %14 = bitcast i64* %13 to i8*
  %15 = load i64** %1, align 8
  %16 = bitcast i64* %15 to i8*
  %17 = load i64* %_Num, align 8
  %18 = mul i64 8, %17
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %14, i8* %16, i64 %18, i32 8, i1 false)
  br label %19

; <label>:19                                      ; preds = %12, %0
  %20 = load i64** %3, align 8
  %21 = load i64* %_Num, align 8
  %22 = getelementptr inbounds i64* %20, i64 %21
  ret i64* %22
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIbSaIbEE8max_sizeEv(%"class.std::vector.5"* %this) #2 align 2 {
  %1 = alloca %"class.std::vector.5"*, align 8
  %__isize = alloca i64, align 8
  %__asize = alloca i64, align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %1, align 8
  %2 = load %"class.std::vector.5"** %1
  store i64 9223372036854775744, i64* %__isize, align 8
  %3 = bitcast %"class.std::vector.5"* %2 to %"struct.std::_Bvector_base"*
  %4 = call %"class.std::allocator.6"* @_ZNKSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv(%"struct.std::_Bvector_base"* %3)
  %5 = bitcast %"class.std::allocator.6"* %4 to %"class.__gnu_cxx::new_allocator.7"*
  %6 = call i64 @_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv(%"class.__gnu_cxx::new_allocator.7"* %5) #1
  store i64 %6, i64* %__asize, align 8
  %7 = load i64* %__asize, align 8
  %8 = icmp ule i64 %7, 144115188075855871
  br i1 %8, label %9, label %12

; <label>:9                                       ; preds = %0
  %10 = load i64* %__asize, align 8
  %11 = mul i64 %10, 64
  br label %13

; <label>:12                                      ; preds = %0
  br label %13

; <label>:13                                      ; preds = %12, %9
  %14 = phi i64 [ %11, %9 ], [ 9223372036854775744, %12 ]
  ret i64 %14
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIbSaIbEE4sizeEv(%"class.std::vector.5"* %this) #2 align 2 {
  %1 = alloca %"class.std::vector.5"*, align 8
  %2 = alloca %"struct.std::_Bit_const_iterator", align 8
  %3 = alloca %"struct.std::_Bit_const_iterator", align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %1, align 8
  %4 = load %"class.std::vector.5"** %1
  %5 = call { i64, i64 } @_ZNKSt6vectorIbSaIbEE3endEv(%"class.std::vector.5"* %4)
  %6 = bitcast %"struct.std::_Bit_const_iterator"* %2 to { i64, i64 }*
  %7 = getelementptr { i64, i64 }* %6, i32 0, i32 0
  %8 = extractvalue { i64, i64 } %5, 0
  store i64 %8, i64* %7, align 1
  %9 = getelementptr { i64, i64 }* %6, i32 0, i32 1
  %10 = extractvalue { i64, i64 } %5, 1
  store i64 %10, i64* %9, align 1
  %11 = bitcast %"struct.std::_Bit_const_iterator"* %2 to %"struct.std::_Bit_iterator_base"*
  %12 = call { i64, i64 } @_ZNKSt6vectorIbSaIbEE5beginEv(%"class.std::vector.5"* %4)
  %13 = bitcast %"struct.std::_Bit_const_iterator"* %3 to { i64, i64 }*
  %14 = getelementptr { i64, i64 }* %13, i32 0, i32 0
  %15 = extractvalue { i64, i64 } %12, 0
  store i64 %15, i64* %14, align 1
  %16 = getelementptr { i64, i64 }* %13, i32 0, i32 1
  %17 = extractvalue { i64, i64 } %12, 1
  store i64 %17, i64* %16, align 1
  %18 = bitcast %"struct.std::_Bit_const_iterator"* %3 to %"struct.std::_Bit_iterator_base"*
  %19 = call i64 @_ZStmiRKSt18_Bit_iterator_baseS1_(%"struct.std::_Bit_iterator_base"* %11, %"struct.std::_Bit_iterator_base"* %18)
  ret i64 %19
}

; Function Attrs: uwtable
define linkonce_odr { i64, i64 } @_ZNKSt6vectorIbSaIbEE3endEv(%"class.std::vector.5"* %this) #2 align 2 {
  %1 = alloca %"struct.std::_Bit_const_iterator", align 8
  %2 = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %2, align 8
  %3 = load %"class.std::vector.5"** %2
  %4 = bitcast %"class.std::vector.5"* %3 to %"struct.std::_Bvector_base"*
  %5 = getelementptr inbounds %"struct.std::_Bvector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %5, i32 0, i32 1
  call void @_ZNSt19_Bit_const_iteratorC2ERKSt13_Bit_iterator(%"struct.std::_Bit_const_iterator"* %1, %"struct.std::_Bit_iterator"* %6)
  %7 = bitcast %"struct.std::_Bit_const_iterator"* %1 to { i64, i64 }*
  %8 = load { i64, i64 }* %7, align 1
  ret { i64, i64 } %8
}

; Function Attrs: uwtable
define linkonce_odr { i64, i64 } @_ZNKSt6vectorIbSaIbEE5beginEv(%"class.std::vector.5"* %this) #2 align 2 {
  %1 = alloca %"struct.std::_Bit_const_iterator", align 8
  %2 = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %this, %"class.std::vector.5"** %2, align 8
  %3 = load %"class.std::vector.5"** %2
  %4 = bitcast %"class.std::vector.5"* %3 to %"struct.std::_Bvector_base"*
  %5 = getelementptr inbounds %"struct.std::_Bvector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %5, i32 0, i32 0
  call void @_ZNSt19_Bit_const_iteratorC2ERKSt13_Bit_iterator(%"struct.std::_Bit_const_iterator"* %1, %"struct.std::_Bit_iterator"* %6)
  %7 = bitcast %"struct.std::_Bit_const_iterator"* %1 to { i64, i64 }*
  %8 = load { i64, i64 }* %7, align 1
  ret { i64, i64 } %8
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.6"* @_ZNKSt13_Bvector_baseISaIbEE20_M_get_Bit_allocatorEv(%"struct.std::_Bvector_base"* %this) #5 align 2 {
  %1 = alloca %"struct.std::_Bvector_base"*, align 8
  store %"struct.std::_Bvector_base"* %this, %"struct.std::_Bvector_base"** %1, align 8
  %2 = load %"struct.std::_Bvector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Bvector_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Bvector_base<std::allocator<bool> >::_Bvector_impl"* %3 to %"class.std::allocator.6"*
  ret %"class.std::allocator.6"* %4
}

; Function Attrs: inlinehint uwtable
define linkonce_odr { i64, i64 } @_ZSt23__copy_move_backward_a2ILb0ESt13_Bit_iteratorS0_ET1_T0_S2_S1_(i64 %__first.coerce0, i64 %__first.coerce1, i64 %__last.coerce0, i64 %__last.coerce1, i64 %__result.coerce0, i64 %__result.coerce1) #3 {
  %1 = alloca %"struct.std::_Bit_iterator", align 8
  %__first = alloca %"struct.std::_Bit_iterator", align 8
  %__last = alloca %"struct.std::_Bit_iterator", align 8
  %__result = alloca %"struct.std::_Bit_iterator", align 8
  %2 = alloca %"struct.std::_Bit_iterator", align 8
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  %4 = alloca %"struct.std::_Bit_iterator", align 8
  %5 = alloca %"struct.std::_Bit_iterator", align 8
  %6 = alloca %"struct.std::_Bit_iterator", align 8
  %7 = alloca %"struct.std::_Bit_iterator", align 8
  %8 = bitcast %"struct.std::_Bit_iterator"* %__first to { i64, i64 }*
  %9 = getelementptr { i64, i64 }* %8, i32 0, i32 0
  store i64 %__first.coerce0, i64* %9
  %10 = getelementptr { i64, i64 }* %8, i32 0, i32 1
  store i64 %__first.coerce1, i64* %10
  %11 = bitcast %"struct.std::_Bit_iterator"* %__last to { i64, i64 }*
  %12 = getelementptr { i64, i64 }* %11, i32 0, i32 0
  store i64 %__last.coerce0, i64* %12
  %13 = getelementptr { i64, i64 }* %11, i32 0, i32 1
  store i64 %__last.coerce1, i64* %13
  %14 = bitcast %"struct.std::_Bit_iterator"* %__result to { i64, i64 }*
  %15 = getelementptr { i64, i64 }* %14, i32 0, i32 0
  store i64 %__result.coerce0, i64* %15
  %16 = getelementptr { i64, i64 }* %14, i32 0, i32 1
  store i64 %__result.coerce1, i64* %16
  %17 = bitcast %"struct.std::_Bit_iterator"* %3 to i8*
  %18 = bitcast %"struct.std::_Bit_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false)
  %19 = bitcast %"struct.std::_Bit_iterator"* %3 to { i64, i64 }*
  %20 = getelementptr { i64, i64 }* %19, i32 0, i32 0
  %21 = load i64* %20, align 1
  %22 = getelementptr { i64, i64 }* %19, i32 0, i32 1
  %23 = load i64* %22, align 1
  %24 = call { i64, i64 } @_ZSt12__niter_baseISt13_Bit_iteratorENSt11_Niter_baseIT_E13iterator_typeES2_(i64 %21, i64 %23)
  %25 = bitcast %"struct.std::_Bit_iterator"* %2 to { i64, i64 }*
  %26 = getelementptr { i64, i64 }* %25, i32 0, i32 0
  %27 = extractvalue { i64, i64 } %24, 0
  store i64 %27, i64* %26, align 1
  %28 = getelementptr { i64, i64 }* %25, i32 0, i32 1
  %29 = extractvalue { i64, i64 } %24, 1
  store i64 %29, i64* %28, align 1
  %30 = bitcast %"struct.std::_Bit_iterator"* %5 to i8*
  %31 = bitcast %"struct.std::_Bit_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false)
  %32 = bitcast %"struct.std::_Bit_iterator"* %5 to { i64, i64 }*
  %33 = getelementptr { i64, i64 }* %32, i32 0, i32 0
  %34 = load i64* %33, align 1
  %35 = getelementptr { i64, i64 }* %32, i32 0, i32 1
  %36 = load i64* %35, align 1
  %37 = call { i64, i64 } @_ZSt12__niter_baseISt13_Bit_iteratorENSt11_Niter_baseIT_E13iterator_typeES2_(i64 %34, i64 %36)
  %38 = bitcast %"struct.std::_Bit_iterator"* %4 to { i64, i64 }*
  %39 = getelementptr { i64, i64 }* %38, i32 0, i32 0
  %40 = extractvalue { i64, i64 } %37, 0
  store i64 %40, i64* %39, align 1
  %41 = getelementptr { i64, i64 }* %38, i32 0, i32 1
  %42 = extractvalue { i64, i64 } %37, 1
  store i64 %42, i64* %41, align 1
  %43 = bitcast %"struct.std::_Bit_iterator"* %7 to i8*
  %44 = bitcast %"struct.std::_Bit_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 16, i32 8, i1 false)
  %45 = bitcast %"struct.std::_Bit_iterator"* %7 to { i64, i64 }*
  %46 = getelementptr { i64, i64 }* %45, i32 0, i32 0
  %47 = load i64* %46, align 1
  %48 = getelementptr { i64, i64 }* %45, i32 0, i32 1
  %49 = load i64* %48, align 1
  %50 = call { i64, i64 } @_ZSt12__niter_baseISt13_Bit_iteratorENSt11_Niter_baseIT_E13iterator_typeES2_(i64 %47, i64 %49)
  %51 = bitcast %"struct.std::_Bit_iterator"* %6 to { i64, i64 }*
  %52 = getelementptr { i64, i64 }* %51, i32 0, i32 0
  %53 = extractvalue { i64, i64 } %50, 0
  store i64 %53, i64* %52, align 1
  %54 = getelementptr { i64, i64 }* %51, i32 0, i32 1
  %55 = extractvalue { i64, i64 } %50, 1
  store i64 %55, i64* %54, align 1
  %56 = bitcast %"struct.std::_Bit_iterator"* %2 to { i64, i64 }*
  %57 = getelementptr { i64, i64 }* %56, i32 0, i32 0
  %58 = load i64* %57, align 1
  %59 = getelementptr { i64, i64 }* %56, i32 0, i32 1
  %60 = load i64* %59, align 1
  %61 = bitcast %"struct.std::_Bit_iterator"* %4 to { i64, i64 }*
  %62 = getelementptr { i64, i64 }* %61, i32 0, i32 0
  %63 = load i64* %62, align 1
  %64 = getelementptr { i64, i64 }* %61, i32 0, i32 1
  %65 = load i64* %64, align 1
  %66 = bitcast %"struct.std::_Bit_iterator"* %6 to { i64, i64 }*
  %67 = getelementptr { i64, i64 }* %66, i32 0, i32 0
  %68 = load i64* %67, align 1
  %69 = getelementptr { i64, i64 }* %66, i32 0, i32 1
  %70 = load i64* %69, align 1
  %71 = call { i64, i64 } @_ZSt22__copy_move_backward_aILb0ESt13_Bit_iteratorS0_ET1_T0_S2_S1_(i64 %58, i64 %60, i64 %63, i64 %65, i64 %68, i64 %70)
  %72 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %73 = getelementptr { i64, i64 }* %72, i32 0, i32 0
  %74 = extractvalue { i64, i64 } %71, 0
  store i64 %74, i64* %73, align 1
  %75 = getelementptr { i64, i64 }* %72, i32 0, i32 1
  %76 = extractvalue { i64, i64 } %71, 1
  store i64 %76, i64* %75, align 1
  %77 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %78 = load { i64, i64 }* %77, align 1
  ret { i64, i64 } %78
}

; Function Attrs: inlinehint uwtable
define linkonce_odr { i64, i64 } @_ZSt22__copy_move_backward_aILb0ESt13_Bit_iteratorS0_ET1_T0_S2_S1_(i64 %__first.coerce0, i64 %__first.coerce1, i64 %__last.coerce0, i64 %__last.coerce1, i64 %__result.coerce0, i64 %__result.coerce1) #3 {
  %1 = alloca %"struct.std::_Bit_iterator", align 8
  %__first = alloca %"struct.std::_Bit_iterator", align 8
  %__last = alloca %"struct.std::_Bit_iterator", align 8
  %__result = alloca %"struct.std::_Bit_iterator", align 8
  %__simple = alloca i8, align 1
  %2 = alloca %"struct.std::_Bit_iterator", align 8
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  %4 = alloca %"struct.std::_Bit_iterator", align 8
  %5 = bitcast %"struct.std::_Bit_iterator"* %__first to { i64, i64 }*
  %6 = getelementptr { i64, i64 }* %5, i32 0, i32 0
  store i64 %__first.coerce0, i64* %6
  %7 = getelementptr { i64, i64 }* %5, i32 0, i32 1
  store i64 %__first.coerce1, i64* %7
  %8 = bitcast %"struct.std::_Bit_iterator"* %__last to { i64, i64 }*
  %9 = getelementptr { i64, i64 }* %8, i32 0, i32 0
  store i64 %__last.coerce0, i64* %9
  %10 = getelementptr { i64, i64 }* %8, i32 0, i32 1
  store i64 %__last.coerce1, i64* %10
  %11 = bitcast %"struct.std::_Bit_iterator"* %__result to { i64, i64 }*
  %12 = getelementptr { i64, i64 }* %11, i32 0, i32 0
  store i64 %__result.coerce0, i64* %12
  %13 = getelementptr { i64, i64 }* %11, i32 0, i32 1
  store i64 %__result.coerce1, i64* %13
  store i8 0, i8* %__simple, align 1
  %14 = bitcast %"struct.std::_Bit_iterator"* %2 to i8*
  %15 = bitcast %"struct.std::_Bit_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  %16 = bitcast %"struct.std::_Bit_iterator"* %3 to i8*
  %17 = bitcast %"struct.std::_Bit_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  %18 = bitcast %"struct.std::_Bit_iterator"* %4 to i8*
  %19 = bitcast %"struct.std::_Bit_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false)
  %20 = bitcast %"struct.std::_Bit_iterator"* %2 to { i64, i64 }*
  %21 = getelementptr { i64, i64 }* %20, i32 0, i32 0
  %22 = load i64* %21, align 1
  %23 = getelementptr { i64, i64 }* %20, i32 0, i32 1
  %24 = load i64* %23, align 1
  %25 = bitcast %"struct.std::_Bit_iterator"* %3 to { i64, i64 }*
  %26 = getelementptr { i64, i64 }* %25, i32 0, i32 0
  %27 = load i64* %26, align 1
  %28 = getelementptr { i64, i64 }* %25, i32 0, i32 1
  %29 = load i64* %28, align 1
  %30 = bitcast %"struct.std::_Bit_iterator"* %4 to { i64, i64 }*
  %31 = getelementptr { i64, i64 }* %30, i32 0, i32 0
  %32 = load i64* %31, align 1
  %33 = getelementptr { i64, i64 }* %30, i32 0, i32 1
  %34 = load i64* %33, align 1
  %35 = call { i64, i64 } @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bISt13_Bit_iteratorS3_EET0_T_S5_S4_(i64 %22, i64 %24, i64 %27, i64 %29, i64 %32, i64 %34)
  %36 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %37 = getelementptr { i64, i64 }* %36, i32 0, i32 0
  %38 = extractvalue { i64, i64 } %35, 0
  store i64 %38, i64* %37, align 1
  %39 = getelementptr { i64, i64 }* %36, i32 0, i32 1
  %40 = extractvalue { i64, i64 } %35, 1
  store i64 %40, i64* %39, align 1
  %41 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %42 = load { i64, i64 }* %41, align 1
  ret { i64, i64 } %42
}

; Function Attrs: uwtable
define linkonce_odr { i64, i64 } @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bISt13_Bit_iteratorS3_EET0_T_S5_S4_(i64 %__first.coerce0, i64 %__first.coerce1, i64 %__last.coerce0, i64 %__last.coerce1, i64 %__result.coerce0, i64 %__result.coerce1) #2 align 2 {
  %1 = alloca %"struct.std::_Bit_iterator", align 8
  %__first = alloca %"struct.std::_Bit_iterator", align 8
  %__last = alloca %"struct.std::_Bit_iterator", align 8
  %__result = alloca %"struct.std::_Bit_iterator", align 8
  %__n = alloca i64, align 8
  %2 = alloca %"struct.std::_Bit_reference", align 8
  %3 = alloca %"struct.std::_Bit_reference", align 8
  %4 = bitcast %"struct.std::_Bit_iterator"* %__first to { i64, i64 }*
  %5 = getelementptr { i64, i64 }* %4, i32 0, i32 0
  store i64 %__first.coerce0, i64* %5
  %6 = getelementptr { i64, i64 }* %4, i32 0, i32 1
  store i64 %__first.coerce1, i64* %6
  %7 = bitcast %"struct.std::_Bit_iterator"* %__last to { i64, i64 }*
  %8 = getelementptr { i64, i64 }* %7, i32 0, i32 0
  store i64 %__last.coerce0, i64* %8
  %9 = getelementptr { i64, i64 }* %7, i32 0, i32 1
  store i64 %__last.coerce1, i64* %9
  %10 = bitcast %"struct.std::_Bit_iterator"* %__result to { i64, i64 }*
  %11 = getelementptr { i64, i64 }* %10, i32 0, i32 0
  store i64 %__result.coerce0, i64* %11
  %12 = getelementptr { i64, i64 }* %10, i32 0, i32 1
  store i64 %__result.coerce1, i64* %12
  %13 = bitcast %"struct.std::_Bit_iterator"* %__last to %"struct.std::_Bit_iterator_base"*
  %14 = bitcast %"struct.std::_Bit_iterator"* %__first to %"struct.std::_Bit_iterator_base"*
  %15 = call i64 @_ZStmiRKSt18_Bit_iterator_baseS1_(%"struct.std::_Bit_iterator_base"* %13, %"struct.std::_Bit_iterator_base"* %14)
  store i64 %15, i64* %__n, align 8
  br label %16

; <label>:16                                      ; preds = %35, %0
  %17 = load i64* %__n, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %38

; <label>:19                                      ; preds = %16
  %20 = call %"struct.std::_Bit_iterator"* @_ZNSt13_Bit_iteratormmEv(%"struct.std::_Bit_iterator"* %__result)
  %21 = call { i64*, i64 } @_ZNKSt13_Bit_iteratordeEv(%"struct.std::_Bit_iterator"* %20)
  %22 = bitcast %"struct.std::_Bit_reference"* %2 to { i64*, i64 }*
  %23 = getelementptr { i64*, i64 }* %22, i32 0, i32 0
  %24 = extractvalue { i64*, i64 } %21, 0
  store i64* %24, i64** %23, align 1
  %25 = getelementptr { i64*, i64 }* %22, i32 0, i32 1
  %26 = extractvalue { i64*, i64 } %21, 1
  store i64 %26, i64* %25, align 1
  %27 = call %"struct.std::_Bit_iterator"* @_ZNSt13_Bit_iteratormmEv(%"struct.std::_Bit_iterator"* %__last)
  %28 = call { i64*, i64 } @_ZNKSt13_Bit_iteratordeEv(%"struct.std::_Bit_iterator"* %27)
  %29 = bitcast %"struct.std::_Bit_reference"* %3 to { i64*, i64 }*
  %30 = getelementptr { i64*, i64 }* %29, i32 0, i32 0
  %31 = extractvalue { i64*, i64 } %28, 0
  store i64* %31, i64** %30, align 1
  %32 = getelementptr { i64*, i64 }* %29, i32 0, i32 1
  %33 = extractvalue { i64*, i64 } %28, 1
  store i64 %33, i64* %32, align 1
  %34 = call %"struct.std::_Bit_reference"* @_ZNSt14_Bit_referenceaSERKS_(%"struct.std::_Bit_reference"* %2, %"struct.std::_Bit_reference"* %3)
  br label %35

; <label>:35                                      ; preds = %19
  %36 = load i64* %__n, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %__n, align 8
  br label %16

; <label>:38                                      ; preds = %16
  %39 = bitcast %"struct.std::_Bit_iterator"* %1 to i8*
  %40 = bitcast %"struct.std::_Bit_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 16, i32 8, i1 false)
  %41 = bitcast %"struct.std::_Bit_iterator"* %1 to { i64, i64 }*
  %42 = load { i64, i64 }* %41, align 1
  ret { i64, i64 } %42
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Bit_iterator"* @_ZNSt13_Bit_iteratormmEv(%"struct.std::_Bit_iterator"* %this) #2 align 2 {
  %1 = alloca %"struct.std::_Bit_iterator"*, align 8
  store %"struct.std::_Bit_iterator"* %this, %"struct.std::_Bit_iterator"** %1, align 8
  %2 = load %"struct.std::_Bit_iterator"** %1
  %3 = bitcast %"struct.std::_Bit_iterator"* %2 to %"struct.std::_Bit_iterator_base"*
  call void @_ZNSt18_Bit_iterator_base12_M_bump_downEv(%"struct.std::_Bit_iterator_base"* %3)
  ret %"struct.std::_Bit_iterator"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt18_Bit_iterator_base12_M_bump_downEv(%"struct.std::_Bit_iterator_base"* %this) #5 align 2 {
  %1 = alloca %"struct.std::_Bit_iterator_base"*, align 8
  store %"struct.std::_Bit_iterator_base"* %this, %"struct.std::_Bit_iterator_base"** %1, align 8
  %2 = load %"struct.std::_Bit_iterator_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  %5 = add i32 %4, -1
  store i32 %5, i32* %3, align 4
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %2, i32 0, i32 1
  store i32 63, i32* %8, align 4
  %9 = getelementptr inbounds %"struct.std::_Bit_iterator_base"* %2, i32 0, i32 0
  %10 = load i64** %9, align 8
  %11 = getelementptr inbounds i64* %10, i32 -1
  store i64* %11, i64** %9, align 8
  br label %12

; <label>:12                                      ; preds = %7, %0
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaISt3setIiSt4lessIiESaIiEEEE9constructIS5_EEvRS6_PS5_RKT_(%"class.std::allocator.11"* %__a, %"class.std::set"* %__p, %"class.std::set"* %__arg) #2 align 2 {
  %1 = alloca %"class.std::allocator.11"*, align 8
  %2 = alloca %"class.std::set"*, align 8
  %3 = alloca %"class.std::set"*, align 8
  store %"class.std::allocator.11"* %__a, %"class.std::allocator.11"** %1, align 8
  store %"class.std::set"* %__p, %"class.std::set"** %2, align 8
  store %"class.std::set"* %__arg, %"class.std::set"** %3, align 8
  %4 = load %"class.std::allocator.11"** %1, align 8
  %5 = bitcast %"class.std::allocator.11"* %4 to %"class.__gnu_cxx::new_allocator.12"*
  %6 = load %"class.std::set"** %2, align 8
  %7 = load %"class.std::set"** %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt3setIiSt4lessIiESaIiEEE9constructEPS5_RKS5_(%"class.__gnu_cxx::new_allocator.12"* %5, %"class.std::set"* %6, %"class.std::set"* %7)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS4_S6_EERKS4_(%"class.std::vector.9"* %this, %"class.std::set"* %__position.coerce, %"class.std::set"* %__x) #2 align 2 {
  %__position = alloca %"class.__gnu_cxx::__normal_iterator.28", align 8
  %1 = alloca %"class.std::vector.9"*, align 8
  %2 = alloca %"class.std::set"*, align 8
  %__x_copy = alloca %"class.std::set", align 8
  %3 = alloca i8*
  %4 = alloca i32
  %__len = alloca i64, align 8
  %__elems_before = alloca i64, align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.28", align 8
  %__new_start = alloca %"class.std::set"*, align 8
  %__new_finish = alloca %"class.std::set"*, align 8
  %6 = getelementptr %"class.__gnu_cxx::__normal_iterator.28"* %__position, i32 0, i32 0
  store %"class.std::set"* %__position.coerce, %"class.std::set"** %6
  store %"class.std::vector.9"* %this, %"class.std::vector.9"** %1, align 8
  store %"class.std::set"* %__x, %"class.std::set"** %2, align 8
  %7 = load %"class.std::vector.9"** %1
  %8 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base.10"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %9, i32 0, i32 1
  %11 = load %"class.std::set"** %10, align 8
  %12 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %13 = getelementptr inbounds %"struct.std::_Vector_base.10"* %12, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %13, i32 0, i32 2
  %15 = load %"class.std::set"** %14, align 8
  %16 = icmp ne %"class.std::set"* %11, %15
  br i1 %16, label %17, label %60

; <label>:17                                      ; preds = %0
  %18 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base.10"* %18, i32 0, i32 0
  %20 = bitcast %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %19 to %"class.std::allocator.11"*
  %21 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %22 = getelementptr inbounds %"struct.std::_Vector_base.10"* %21, i32 0, i32 0
  %23 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %22, i32 0, i32 1
  %24 = load %"class.std::set"** %23, align 8
  %25 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base.10"* %25, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %26, i32 0, i32 1
  %28 = load %"class.std::set"** %27, align 8
  %29 = getelementptr inbounds %"class.std::set"* %28, i64 -1
  call void @_ZN9__gnu_cxx14__alloc_traitsISaISt3setIiSt4lessIiESaIiEEEE9constructIS5_EEvRS6_PS5_RKT_(%"class.std::allocator.11"* %20, %"class.std::set"* %24, %"class.std::set"* %29)
  %30 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %31 = getelementptr inbounds %"struct.std::_Vector_base.10"* %30, i32 0, i32 0
  %32 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %31, i32 0, i32 1
  %33 = load %"class.std::set"** %32, align 8
  %34 = getelementptr inbounds %"class.std::set"* %33, i32 1
  store %"class.std::set"* %34, %"class.std::set"** %32, align 8
  %35 = load %"class.std::set"** %2, align 8
  call void @_ZNSt3setIiSt4lessIiESaIiEEC2ERKS3_(%"class.std::set"* %__x_copy, %"class.std::set"* %35)
  %36 = invoke %"class.std::set"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt3setIiSt4lessIiESaIiEESt6vectorIS5_SaIS5_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.28"* %__position)
          to label %37 unwind label %55

; <label>:37                                      ; preds = %17
  %38 = load %"class.std::set"** %36
  %39 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %40 = getelementptr inbounds %"struct.std::_Vector_base.10"* %39, i32 0, i32 0
  %41 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %40, i32 0, i32 1
  %42 = load %"class.std::set"** %41, align 8
  %43 = getelementptr inbounds %"class.std::set"* %42, i64 -2
  %44 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %45 = getelementptr inbounds %"struct.std::_Vector_base.10"* %44, i32 0, i32 0
  %46 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %45, i32 0, i32 1
  %47 = load %"class.std::set"** %46, align 8
  %48 = getelementptr inbounds %"class.std::set"* %47, i64 -1
  %49 = invoke %"class.std::set"* @_ZSt13copy_backwardIPSt3setIiSt4lessIiESaIiEES5_ET0_T_S7_S6_(%"class.std::set"* %38, %"class.std::set"* %43, %"class.std::set"* %48)
          to label %50 unwind label %55

; <label>:50                                      ; preds = %37
  %51 = invoke %"class.std::set"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt3setIiSt4lessIiESaIiEESt6vectorIS5_SaIS5_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.28"* %__position)
          to label %52 unwind label %55

; <label>:52                                      ; preds = %50
  %53 = invoke %"class.std::set"* @_ZNSt3setIiSt4lessIiESaIiEEaSERKS3_(%"class.std::set"* %51, %"class.std::set"* %__x_copy)
          to label %54 unwind label %55

; <label>:54                                      ; preds = %52
  call void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(%"class.std::set"* %__x_copy)
  br label %181

; <label>:55                                      ; preds = %52, %50, %37, %17
  %56 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %57 = extractvalue { i8*, i32 } %56, 0
  store i8* %57, i8** %3
  %58 = extractvalue { i8*, i32 } %56, 1
  store i32 %58, i32* %4
  invoke void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(%"class.std::set"* %__x_copy)
          to label %59 unwind label %187

; <label>:59                                      ; preds = %55
  br label %182

; <label>:60                                      ; preds = %0
  %61 = call i64 @_ZNKSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE12_M_check_lenEmPKc(%"class.std::vector.9"* %7, i64 1, i8* getelementptr inbounds ([22 x i8]* @.str9, i32 0, i32 0))
  store i64 %61, i64* %__len, align 8
  %62 = call %"class.std::set"* @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE5beginEv(%"class.std::vector.9"* %7)
  %63 = getelementptr %"class.__gnu_cxx::__normal_iterator.28"* %5, i32 0, i32 0
  store %"class.std::set"* %62, %"class.std::set"** %63
  %64 = call i64 @_ZN9__gnu_cxxmiIPSt3setIiSt4lessIiESaIiEESt6vectorIS5_SaIS5_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSD_SG_(%"class.__gnu_cxx::__normal_iterator.28"* %__position, %"class.__gnu_cxx::__normal_iterator.28"* %5)
  store i64 %64, i64* %__elems_before, align 8
  %65 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %66 = load i64* %__len, align 8
  %67 = call %"class.std::set"* @_ZNSt12_Vector_baseISt3setIiSt4lessIiESaIiEESaIS4_EE11_M_allocateEm(%"struct.std::_Vector_base.10"* %65, i64 %66)
  store %"class.std::set"* %67, %"class.std::set"** %__new_start, align 8
  %68 = load %"class.std::set"** %__new_start, align 8
  store %"class.std::set"* %68, %"class.std::set"** %__new_finish, align 8
  %69 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %70 = getelementptr inbounds %"struct.std::_Vector_base.10"* %69, i32 0, i32 0
  %71 = bitcast %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %70 to %"class.std::allocator.11"*
  %72 = load %"class.std::set"** %__new_start, align 8
  %73 = load i64* %__elems_before, align 8
  %74 = getelementptr inbounds %"class.std::set"* %72, i64 %73
  %75 = load %"class.std::set"** %2, align 8
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaISt3setIiSt4lessIiESaIiEEEE9constructIS5_EEvRS6_PS5_RKT_(%"class.std::allocator.11"* %71, %"class.std::set"* %74, %"class.std::set"* %75)
          to label %76 unwind label %105

; <label>:76                                      ; preds = %60
  store %"class.std::set"* null, %"class.std::set"** %__new_finish, align 8
  %77 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %78 = getelementptr inbounds %"struct.std::_Vector_base.10"* %77, i32 0, i32 0
  %79 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %78, i32 0, i32 0
  %80 = load %"class.std::set"** %79, align 8
  %81 = invoke %"class.std::set"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt3setIiSt4lessIiESaIiEESt6vectorIS5_SaIS5_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.28"* %__position)
          to label %82 unwind label %105

; <label>:82                                      ; preds = %76
  %83 = load %"class.std::set"** %81
  %84 = load %"class.std::set"** %__new_start, align 8
  %85 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %86 = invoke %"class.std::allocator.11"* @_ZNSt12_Vector_baseISt3setIiSt4lessIiESaIiEESaIS4_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.10"* %85)
          to label %87 unwind label %105

; <label>:87                                      ; preds = %82
  %88 = invoke %"class.std::set"* @_ZSt34__uninitialized_move_if_noexcept_aIPSt3setIiSt4lessIiESaIiEES5_SaIS4_EET0_T_S8_S7_RT1_(%"class.std::set"* %80, %"class.std::set"* %83, %"class.std::set"* %84, %"class.std::allocator.11"* %86)
          to label %89 unwind label %105

; <label>:89                                      ; preds = %87
  store %"class.std::set"* %88, %"class.std::set"** %__new_finish, align 8
  %90 = load %"class.std::set"** %__new_finish, align 8
  %91 = getelementptr inbounds %"class.std::set"* %90, i32 1
  store %"class.std::set"* %91, %"class.std::set"** %__new_finish, align 8
  %92 = invoke %"class.std::set"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt3setIiSt4lessIiESaIiEESt6vectorIS5_SaIS5_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.28"* %__position)
          to label %93 unwind label %105

; <label>:93                                      ; preds = %89
  %94 = load %"class.std::set"** %92
  %95 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %96 = getelementptr inbounds %"struct.std::_Vector_base.10"* %95, i32 0, i32 0
  %97 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %96, i32 0, i32 1
  %98 = load %"class.std::set"** %97, align 8
  %99 = load %"class.std::set"** %__new_finish, align 8
  %100 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %101 = invoke %"class.std::allocator.11"* @_ZNSt12_Vector_baseISt3setIiSt4lessIiESaIiEESaIS4_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.10"* %100)
          to label %102 unwind label %105

; <label>:102                                     ; preds = %93
  %103 = invoke %"class.std::set"* @_ZSt34__uninitialized_move_if_noexcept_aIPSt3setIiSt4lessIiESaIiEES5_SaIS4_EET0_T_S8_S7_RT1_(%"class.std::set"* %94, %"class.std::set"* %98, %"class.std::set"* %99, %"class.std::allocator.11"* %101)
          to label %104 unwind label %105

; <label>:104                                     ; preds = %102
  store %"class.std::set"* %103, %"class.std::set"** %__new_finish, align 8
  br label %139

; <label>:105                                     ; preds = %102, %93, %89, %87, %82, %76, %60
  %106 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %107 = extractvalue { i8*, i32 } %106, 0
  store i8* %107, i8** %3
  %108 = extractvalue { i8*, i32 } %106, 1
  store i32 %108, i32* %4
  br label %109

; <label>:109                                     ; preds = %105
  %110 = load i8** %3
  %111 = call i8* @__cxa_begin_catch(i8* %110) #1
  %112 = load %"class.std::set"** %__new_finish, align 8
  %113 = icmp ne %"class.std::set"* %112, null
  br i1 %113, label %126, label %114

; <label>:114                                     ; preds = %109
  %115 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %116 = getelementptr inbounds %"struct.std::_Vector_base.10"* %115, i32 0, i32 0
  %117 = bitcast %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %116 to %"class.std::allocator.11"*
  %118 = load %"class.std::set"** %__new_start, align 8
  %119 = load i64* %__elems_before, align 8
  %120 = getelementptr inbounds %"class.std::set"* %118, i64 %119
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaISt3setIiSt4lessIiESaIiEEEE7destroyERS6_PS5_(%"class.std::allocator.11"* %117, %"class.std::set"* %120)
          to label %121 unwind label %122

; <label>:121                                     ; preds = %114
  br label %133

; <label>:122                                     ; preds = %137, %133, %131, %126, %114
  %123 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %124 = extractvalue { i8*, i32 } %123, 0
  store i8* %124, i8** %3
  %125 = extractvalue { i8*, i32 } %123, 1
  store i32 %125, i32* %4
  invoke void @__cxa_end_catch()
          to label %138 unwind label %187

; <label>:126                                     ; preds = %109
  %127 = load %"class.std::set"** %__new_start, align 8
  %128 = load %"class.std::set"** %__new_finish, align 8
  %129 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %130 = invoke %"class.std::allocator.11"* @_ZNSt12_Vector_baseISt3setIiSt4lessIiESaIiEESaIS4_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.10"* %129)
          to label %131 unwind label %122

; <label>:131                                     ; preds = %126
  invoke void @_ZSt8_DestroyIPSt3setIiSt4lessIiESaIiEES4_EvT_S6_RSaIT0_E(%"class.std::set"* %127, %"class.std::set"* %128, %"class.std::allocator.11"* %130)
          to label %132 unwind label %122

; <label>:132                                     ; preds = %131
  br label %133

; <label>:133                                     ; preds = %132, %121
  %134 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %135 = load %"class.std::set"** %__new_start, align 8
  %136 = load i64* %__len, align 8
  invoke void @_ZNSt12_Vector_baseISt3setIiSt4lessIiESaIiEESaIS4_EE13_M_deallocateEPS4_m(%"struct.std::_Vector_base.10"* %134, %"class.std::set"* %135, i64 %136)
          to label %137 unwind label %122

; <label>:137                                     ; preds = %133
  invoke void @__cxa_rethrow() #14
          to label %190 unwind label %122

; <label>:138                                     ; preds = %122
  br label %182

; <label>:139                                     ; preds = %104
  %140 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %141 = getelementptr inbounds %"struct.std::_Vector_base.10"* %140, i32 0, i32 0
  %142 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %141, i32 0, i32 0
  %143 = load %"class.std::set"** %142, align 8
  %144 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %145 = getelementptr inbounds %"struct.std::_Vector_base.10"* %144, i32 0, i32 0
  %146 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %145, i32 0, i32 1
  %147 = load %"class.std::set"** %146, align 8
  %148 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %149 = call %"class.std::allocator.11"* @_ZNSt12_Vector_baseISt3setIiSt4lessIiESaIiEESaIS4_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.10"* %148)
  call void @_ZSt8_DestroyIPSt3setIiSt4lessIiESaIiEES4_EvT_S6_RSaIT0_E(%"class.std::set"* %143, %"class.std::set"* %147, %"class.std::allocator.11"* %149)
  %150 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %151 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %152 = getelementptr inbounds %"struct.std::_Vector_base.10"* %151, i32 0, i32 0
  %153 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %152, i32 0, i32 0
  %154 = load %"class.std::set"** %153, align 8
  %155 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %156 = getelementptr inbounds %"struct.std::_Vector_base.10"* %155, i32 0, i32 0
  %157 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %156, i32 0, i32 2
  %158 = load %"class.std::set"** %157, align 8
  %159 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %160 = getelementptr inbounds %"struct.std::_Vector_base.10"* %159, i32 0, i32 0
  %161 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %160, i32 0, i32 0
  %162 = load %"class.std::set"** %161, align 8
  %163 = ptrtoint %"class.std::set"* %158 to i64
  %164 = ptrtoint %"class.std::set"* %162 to i64
  %165 = sub i64 %163, %164
  %166 = sdiv exact i64 %165, 48
  call void @_ZNSt12_Vector_baseISt3setIiSt4lessIiESaIiEESaIS4_EE13_M_deallocateEPS4_m(%"struct.std::_Vector_base.10"* %150, %"class.std::set"* %154, i64 %166)
  %167 = load %"class.std::set"** %__new_start, align 8
  %168 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %169 = getelementptr inbounds %"struct.std::_Vector_base.10"* %168, i32 0, i32 0
  %170 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %169, i32 0, i32 0
  store %"class.std::set"* %167, %"class.std::set"** %170, align 8
  %171 = load %"class.std::set"** %__new_finish, align 8
  %172 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %173 = getelementptr inbounds %"struct.std::_Vector_base.10"* %172, i32 0, i32 0
  %174 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %173, i32 0, i32 1
  store %"class.std::set"* %171, %"class.std::set"** %174, align 8
  %175 = load %"class.std::set"** %__new_start, align 8
  %176 = load i64* %__len, align 8
  %177 = getelementptr inbounds %"class.std::set"* %175, i64 %176
  %178 = bitcast %"class.std::vector.9"* %7 to %"struct.std::_Vector_base.10"*
  %179 = getelementptr inbounds %"struct.std::_Vector_base.10"* %178, i32 0, i32 0
  %180 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %179, i32 0, i32 2
  store %"class.std::set"* %177, %"class.std::set"** %180, align 8
  br label %181

; <label>:181                                     ; preds = %139, %54
  ret void

; <label>:182                                     ; preds = %138, %59
  %183 = load i8** %3
  %184 = load i32* %4
  %185 = insertvalue { i8*, i32 } undef, i8* %183, 0
  %186 = insertvalue { i8*, i32 } %185, i32 %184, 1
  resume { i8*, i32 } %186

; <label>:187                                     ; preds = %122, %55
  %188 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %189 = extractvalue { i8*, i32 } %188, 0
  call void @__clang_call_terminate(i8* %189) #12
  unreachable

; <label>:190                                     ; preds = %137
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr %"class.std::set"* @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE3endEv(%"class.std::vector.9"* %this) #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.28", align 8
  %2 = alloca %"class.std::vector.9"*, align 8
  store %"class.std::vector.9"* %this, %"class.std::vector.9"** %2, align 8
  %3 = load %"class.std::vector.9"** %2
  %4 = bitcast %"class.std::vector.9"* %3 to %"struct.std::_Vector_base.10"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.10"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %5, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPSt3setIiSt4lessIiESaIiEESt6vectorIS5_SaIS5_EEEC2ERKS6_(%"class.__gnu_cxx::__normal_iterator.28"* %1, %"class.std::set"** %6)
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator.28"* %1, i32 0, i32 0
  %8 = load %"class.std::set"** %7
  ret %"class.std::set"* %8
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPSt3setIiSt4lessIiESaIiEESt6vectorIS5_SaIS5_EEEC2ERKS6_(%"class.__gnu_cxx::__normal_iterator.28"* %this, %"class.std::set"** %__i) unnamed_addr #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.28"*, align 8
  %2 = alloca %"class.std::set"**, align 8
  store %"class.__gnu_cxx::__normal_iterator.28"* %this, %"class.__gnu_cxx::__normal_iterator.28"** %1, align 8
  store %"class.std::set"** %__i, %"class.std::set"*** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.28"** %1
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.28"* %3, i32 0, i32 0
  %5 = load %"class.std::set"*** %2, align 8
  %6 = load %"class.std::set"** %5, align 8
  store %"class.std::set"* %6, %"class.std::set"** %4, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.std::set"* @_ZSt13copy_backwardIPSt3setIiSt4lessIiESaIiEES5_ET0_T_S7_S6_(%"class.std::set"* %__first, %"class.std::set"* %__last, %"class.std::set"* %__result) #3 {
  %1 = alloca %"class.std::set"*, align 8
  %2 = alloca %"class.std::set"*, align 8
  %3 = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %__first, %"class.std::set"** %1, align 8
  store %"class.std::set"* %__last, %"class.std::set"** %2, align 8
  store %"class.std::set"* %__result, %"class.std::set"** %3, align 8
  %4 = load %"class.std::set"** %1, align 8
  %5 = call %"class.std::set"* @_ZSt12__miter_baseIPSt3setIiSt4lessIiESaIiEEENSt11_Miter_baseIT_E13iterator_typeES7_(%"class.std::set"* %4)
  %6 = load %"class.std::set"** %2, align 8
  %7 = call %"class.std::set"* @_ZSt12__miter_baseIPSt3setIiSt4lessIiESaIiEEENSt11_Miter_baseIT_E13iterator_typeES7_(%"class.std::set"* %6)
  %8 = load %"class.std::set"** %3, align 8
  %9 = call %"class.std::set"* @_ZSt23__copy_move_backward_a2ILb0EPSt3setIiSt4lessIiESaIiEES5_ET1_T0_S7_S6_(%"class.std::set"* %5, %"class.std::set"* %7, %"class.std::set"* %8)
  ret %"class.std::set"* %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::set"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt3setIiSt4lessIiESaIiEESt6vectorIS5_SaIS5_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.28"* %this) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.28"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.28"* %this, %"class.__gnu_cxx::__normal_iterator.28"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator.28"** %1
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.28"* %2, i32 0, i32 0
  ret %"class.std::set"** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::set"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt3setIiSt4lessIiESaIiEESt6vectorIS5_SaIS5_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.28"* %this) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.28"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.28"* %this, %"class.__gnu_cxx::__normal_iterator.28"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator.28"** %1
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.28"* %2, i32 0, i32 0
  %4 = load %"class.std::set"** %3, align 8
  ret %"class.std::set"* %4
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE12_M_check_lenEmPKc(%"class.std::vector.9"* %this, i64 %__n, i8* %__s) #2 align 2 {
  %1 = alloca %"class.std::vector.9"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %__len = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector.9"* %this, %"class.std::vector.9"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store i8* %__s, i8** %3, align 8
  %5 = load %"class.std::vector.9"** %1
  %6 = call i64 @_ZNKSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE8max_sizeEv(%"class.std::vector.9"* %5)
  %7 = call i64 @_ZNKSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE4sizeEv(%"class.std::vector.9"* %5)
  %8 = sub i64 %6, %7
  %9 = load i64* %2, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = load i8** %3, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %12) #14
  unreachable

; <label>:13                                      ; preds = %0
  %14 = call i64 @_ZNKSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE4sizeEv(%"class.std::vector.9"* %5)
  %15 = call i64 @_ZNKSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE4sizeEv(%"class.std::vector.9"* %5)
  store i64 %15, i64* %4
  %16 = call i64* @_ZSt3maxImERKT_S2_S2_(i64* %4, i64* %2)
  %17 = load i64* %16
  %18 = add i64 %14, %17
  store i64 %18, i64* %__len, align 8
  %19 = load i64* %__len, align 8
  %20 = call i64 @_ZNKSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE4sizeEv(%"class.std::vector.9"* %5)
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %26, label %22

; <label>:22                                      ; preds = %13
  %23 = load i64* %__len, align 8
  %24 = call i64 @_ZNKSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE8max_sizeEv(%"class.std::vector.9"* %5)
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

; <label>:26                                      ; preds = %22, %13
  %27 = call i64 @_ZNKSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE8max_sizeEv(%"class.std::vector.9"* %5)
  br label %30

; <label>:28                                      ; preds = %22
  %29 = load i64* %__len, align 8
  br label %30

; <label>:30                                      ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  ret i64 %31
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIPSt3setIiSt4lessIiESaIiEESt6vectorIS5_SaIS5_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSD_SG_(%"class.__gnu_cxx::__normal_iterator.28"* %__lhs, %"class.__gnu_cxx::__normal_iterator.28"* %__rhs) #3 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.28"*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.28"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.28"* %__lhs, %"class.__gnu_cxx::__normal_iterator.28"** %1, align 8
  store %"class.__gnu_cxx::__normal_iterator.28"* %__rhs, %"class.__gnu_cxx::__normal_iterator.28"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.28"** %1, align 8
  %4 = call %"class.std::set"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt3setIiSt4lessIiESaIiEESt6vectorIS5_SaIS5_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.28"* %3)
  %5 = load %"class.std::set"** %4
  %6 = load %"class.__gnu_cxx::__normal_iterator.28"** %2, align 8
  %7 = call %"class.std::set"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt3setIiSt4lessIiESaIiEESt6vectorIS5_SaIS5_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.28"* %6)
  %8 = load %"class.std::set"** %7
  %9 = ptrtoint %"class.std::set"* %5 to i64
  %10 = ptrtoint %"class.std::set"* %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 48
  ret i64 %12
}

; Function Attrs: uwtable
define linkonce_odr %"class.std::set"* @_ZNSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE5beginEv(%"class.std::vector.9"* %this) #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.28", align 8
  %2 = alloca %"class.std::vector.9"*, align 8
  store %"class.std::vector.9"* %this, %"class.std::vector.9"** %2, align 8
  %3 = load %"class.std::vector.9"** %2
  %4 = bitcast %"class.std::vector.9"* %3 to %"struct.std::_Vector_base.10"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.10"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %5, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPSt3setIiSt4lessIiESaIiEESt6vectorIS5_SaIS5_EEEC2ERKS6_(%"class.__gnu_cxx::__normal_iterator.28"* %1, %"class.std::set"** %6)
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator.28"* %1, i32 0, i32 0
  %8 = load %"class.std::set"** %7
  ret %"class.std::set"* %8
}

; Function Attrs: uwtable
define linkonce_odr %"class.std::set"* @_ZNSt12_Vector_baseISt3setIiSt4lessIiESaIiEESaIS4_EE11_M_allocateEm(%"struct.std::_Vector_base.10"* %this, i64 %__n) #2 align 2 {
  %1 = alloca %"struct.std::_Vector_base.10"*, align 8
  %2 = alloca i64, align 8
  store %"struct.std::_Vector_base.10"* %this, %"struct.std::_Vector_base.10"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"struct.std::_Vector_base.10"** %1
  %4 = load i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %"struct.std::_Vector_base.10"* %3, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %7 to %"class.__gnu_cxx::new_allocator.12"*
  %9 = load i64* %2, align 8
  %10 = call %"class.std::set"* @_ZN9__gnu_cxx13new_allocatorISt3setIiSt4lessIiESaIiEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.12"* %8, i64 %9, i8* null)
  br label %12

; <label>:11                                      ; preds = %0
  br label %12

; <label>:12                                      ; preds = %11, %6
  %13 = phi %"class.std::set"* [ %10, %6 ], [ null, %11 ]
  ret %"class.std::set"* %13
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.std::set"* @_ZSt34__uninitialized_move_if_noexcept_aIPSt3setIiSt4lessIiESaIiEES5_SaIS4_EET0_T_S8_S7_RT1_(%"class.std::set"* %__first, %"class.std::set"* %__last, %"class.std::set"* %__result, %"class.std::allocator.11"* %__alloc) #3 {
  %1 = alloca %"class.std::set"*, align 8
  %2 = alloca %"class.std::set"*, align 8
  %3 = alloca %"class.std::set"*, align 8
  %4 = alloca %"class.std::allocator.11"*, align 8
  store %"class.std::set"* %__first, %"class.std::set"** %1, align 8
  store %"class.std::set"* %__last, %"class.std::set"** %2, align 8
  store %"class.std::set"* %__result, %"class.std::set"** %3, align 8
  store %"class.std::allocator.11"* %__alloc, %"class.std::allocator.11"** %4, align 8
  %5 = load %"class.std::set"** %1, align 8
  %6 = load %"class.std::set"** %2, align 8
  %7 = load %"class.std::set"** %3, align 8
  %8 = load %"class.std::allocator.11"** %4, align 8
  %9 = call %"class.std::set"* @_ZSt22__uninitialized_copy_aIPSt3setIiSt4lessIiESaIiEES5_S4_ET0_T_S7_S6_RSaIT1_E(%"class.std::set"* %5, %"class.std::set"* %6, %"class.std::set"* %7, %"class.std::allocator.11"* %8)
  ret %"class.std::set"* %9
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaISt3setIiSt4lessIiESaIiEEEE7destroyERS6_PS5_(%"class.std::allocator.11"* %__a, %"class.std::set"* %__p) #2 align 2 {
  %1 = alloca %"class.std::allocator.11"*, align 8
  %2 = alloca %"class.std::set"*, align 8
  store %"class.std::allocator.11"* %__a, %"class.std::allocator.11"** %1, align 8
  store %"class.std::set"* %__p, %"class.std::set"** %2, align 8
  %3 = load %"class.std::allocator.11"** %1, align 8
  %4 = bitcast %"class.std::allocator.11"* %3 to %"class.__gnu_cxx::new_allocator.12"*
  %5 = load %"class.std::set"** %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt3setIiSt4lessIiESaIiEEE7destroyEPS5_(%"class.__gnu_cxx::new_allocator.12"* %4, %"class.std::set"* %5)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt3setIiSt4lessIiESaIiEEE7destroyEPS5_(%"class.__gnu_cxx::new_allocator.12"* %this, %"class.std::set"* %__p) #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.12"*, align 8
  %2 = alloca %"class.std::set"*, align 8
  store %"class.__gnu_cxx::new_allocator.12"* %this, %"class.__gnu_cxx::new_allocator.12"** %1, align 8
  store %"class.std::set"* %__p, %"class.std::set"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.12"** %1
  %4 = load %"class.std::set"** %2, align 8
  call void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(%"class.std::set"* %4)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.std::set"* @_ZSt22__uninitialized_copy_aIPSt3setIiSt4lessIiESaIiEES5_S4_ET0_T_S7_S6_RSaIT1_E(%"class.std::set"* %__first, %"class.std::set"* %__last, %"class.std::set"* %__result, %"class.std::allocator.11"*) #3 {
  %2 = alloca %"class.std::set"*, align 8
  %3 = alloca %"class.std::set"*, align 8
  %4 = alloca %"class.std::set"*, align 8
  %5 = alloca %"class.std::allocator.11"*, align 8
  store %"class.std::set"* %__first, %"class.std::set"** %2, align 8
  store %"class.std::set"* %__last, %"class.std::set"** %3, align 8
  store %"class.std::set"* %__result, %"class.std::set"** %4, align 8
  store %"class.std::allocator.11"* %0, %"class.std::allocator.11"** %5, align 8
  %6 = load %"class.std::set"** %2, align 8
  %7 = load %"class.std::set"** %3, align 8
  %8 = load %"class.std::set"** %4, align 8
  %9 = call %"class.std::set"* @_ZSt18uninitialized_copyIPSt3setIiSt4lessIiESaIiEES5_ET0_T_S7_S6_(%"class.std::set"* %6, %"class.std::set"* %7, %"class.std::set"* %8)
  ret %"class.std::set"* %9
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.std::set"* @_ZSt18uninitialized_copyIPSt3setIiSt4lessIiESaIiEES5_ET0_T_S7_S6_(%"class.std::set"* %__first, %"class.std::set"* %__last, %"class.std::set"* %__result) #3 {
  %1 = alloca %"class.std::set"*, align 8
  %2 = alloca %"class.std::set"*, align 8
  %3 = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %__first, %"class.std::set"** %1, align 8
  store %"class.std::set"* %__last, %"class.std::set"** %2, align 8
  store %"class.std::set"* %__result, %"class.std::set"** %3, align 8
  %4 = load %"class.std::set"** %1, align 8
  %5 = load %"class.std::set"** %2, align 8
  %6 = load %"class.std::set"** %3, align 8
  %7 = call %"class.std::set"* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPSt3setIiSt4lessIiESaIiEES7_EET0_T_S9_S8_(%"class.std::set"* %4, %"class.std::set"* %5, %"class.std::set"* %6)
  ret %"class.std::set"* %7
}

; Function Attrs: uwtable
define linkonce_odr %"class.std::set"* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPSt3setIiSt4lessIiESaIiEES7_EET0_T_S9_S8_(%"class.std::set"* %__first, %"class.std::set"* %__last, %"class.std::set"* %__result) #2 align 2 {
  %1 = alloca %"class.std::set"*, align 8
  %2 = alloca %"class.std::set"*, align 8
  %3 = alloca %"class.std::set"*, align 8
  %__cur = alloca %"class.std::set"*, align 8
  %4 = alloca i8*
  %5 = alloca i32
  store %"class.std::set"* %__first, %"class.std::set"** %1, align 8
  store %"class.std::set"* %__last, %"class.std::set"** %2, align 8
  store %"class.std::set"* %__result, %"class.std::set"** %3, align 8
  %6 = load %"class.std::set"** %3, align 8
  store %"class.std::set"* %6, %"class.std::set"** %__cur, align 8
  br label %7

; <label>:7                                       ; preds = %17, %0
  %8 = load %"class.std::set"** %1, align 8
  %9 = load %"class.std::set"** %2, align 8
  %10 = icmp ne %"class.std::set"* %8, %9
  br i1 %10, label %11, label %32

; <label>:11                                      ; preds = %7
  %12 = load %"class.std::set"** %__cur, align 8
  %13 = invoke %"class.std::set"* @_ZSt11__addressofISt3setIiSt4lessIiESaIiEEEPT_RS5_(%"class.std::set"* %12)
          to label %14 unwind label %22

; <label>:14                                      ; preds = %11
  %15 = load %"class.std::set"** %1, align 8
  invoke void @_ZSt10_ConstructISt3setIiSt4lessIiESaIiEES4_EvPT_RKT0_(%"class.std::set"* %13, %"class.std::set"* %15)
          to label %16 unwind label %22

; <label>:16                                      ; preds = %14
  br label %17

; <label>:17                                      ; preds = %16
  %18 = load %"class.std::set"** %1, align 8
  %19 = getelementptr inbounds %"class.std::set"* %18, i32 1
  store %"class.std::set"* %19, %"class.std::set"** %1, align 8
  %20 = load %"class.std::set"** %__cur, align 8
  %21 = getelementptr inbounds %"class.std::set"* %20, i32 1
  store %"class.std::set"* %21, %"class.std::set"** %__cur, align 8
  br label %7

; <label>:22                                      ; preds = %14, %11
  %23 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %24 = extractvalue { i8*, i32 } %23, 0
  store i8* %24, i8** %4
  %25 = extractvalue { i8*, i32 } %23, 1
  store i32 %25, i32* %5
  br label %26

; <label>:26                                      ; preds = %22
  %27 = load i8** %4
  %28 = call i8* @__cxa_begin_catch(i8* %27) #1
  %29 = load %"class.std::set"** %3, align 8
  %30 = load %"class.std::set"** %__cur, align 8
  invoke void @_ZSt8_DestroyIPSt3setIiSt4lessIiESaIiEEEvT_S6_(%"class.std::set"* %29, %"class.std::set"* %30)
          to label %31 unwind label %34

; <label>:31                                      ; preds = %26
  invoke void @__cxa_rethrow() #14
          to label %48 unwind label %34

; <label>:32                                      ; preds = %7
  %33 = load %"class.std::set"** %__cur, align 8
  ret %"class.std::set"* %33

; <label>:34                                      ; preds = %31, %26
  %35 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %36 = extractvalue { i8*, i32 } %35, 0
  store i8* %36, i8** %4
  %37 = extractvalue { i8*, i32 } %35, 1
  store i32 %37, i32* %5
  invoke void @__cxa_end_catch()
          to label %38 unwind label %45

; <label>:38                                      ; preds = %34
  br label %40
                                                  ; No predecessors!
  call void @llvm.trap()
  unreachable

; <label>:40                                      ; preds = %38
  %41 = load i8** %4
  %42 = load i32* %5
  %43 = insertvalue { i8*, i32 } undef, i8* %41, 0
  %44 = insertvalue { i8*, i32 } %43, i32 %42, 1
  resume { i8*, i32 } %44

; <label>:45                                      ; preds = %34
  %46 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %47 = extractvalue { i8*, i32 } %46, 0
  call void @__clang_call_terminate(i8* %47) #12
  unreachable

; <label>:48                                      ; preds = %31
  unreachable
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt10_ConstructISt3setIiSt4lessIiESaIiEES4_EvPT_RKT0_(%"class.std::set"* %__p, %"class.std::set"* %__value) #3 {
  %1 = alloca %"class.std::set"*, align 8
  %2 = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %__p, %"class.std::set"** %1, align 8
  store %"class.std::set"* %__value, %"class.std::set"** %2, align 8
  %3 = load %"class.std::set"** %1, align 8
  %4 = bitcast %"class.std::set"* %3 to i8*
  %5 = icmp eq i8* %4, null
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %4 to %"class.std::set"*
  %8 = load %"class.std::set"** %2, align 8
  call void @_ZNSt3setIiSt4lessIiESaIiEEC2ERKS3_(%"class.std::set"* %7, %"class.std::set"* %8)
  br label %9

; <label>:9                                       ; preds = %6, %0
  %10 = phi %"class.std::set"* [ %7, %6 ], [ null, %0 ]
  ret void
}

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #12

; Function Attrs: uwtable
define linkonce_odr %"class.std::set"* @_ZN9__gnu_cxx13new_allocatorISt3setIiSt4lessIiESaIiEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.12"* %this, i64 %__n, i8*) #2 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.12"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.12"* %this, %"class.__gnu_cxx::new_allocator.12"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.12"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt3setIiSt4lessIiESaIiEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.12"* %5) #1
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #14
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 48
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to %"class.std::set"*
  ret %"class.std::set"* %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt3setIiSt4lessIiESaIiEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.12"* %this) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.12"*, align 8
  store %"class.__gnu_cxx::new_allocator.12"* %this, %"class.__gnu_cxx::new_allocator.12"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.12"** %1
  ret i64 384307168202282325
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorISt3setIiSt4lessIiESaIiEESaIS4_EE8max_sizeEv(%"class.std::vector.9"* %this) #2 align 2 {
  %1 = alloca %"class.std::vector.9"*, align 8
  store %"class.std::vector.9"* %this, %"class.std::vector.9"** %1, align 8
  %2 = load %"class.std::vector.9"** %1
  %3 = bitcast %"class.std::vector.9"* %2 to %"struct.std::_Vector_base.10"*
  %4 = call %"class.std::allocator.11"* @_ZNKSt12_Vector_baseISt3setIiSt4lessIiESaIiEESaIS4_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.10"* %3)
  %5 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt3setIiSt4lessIiESaIiEEEE8max_sizeERKS6_(%"class.std::allocator.11"* %4)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt3setIiSt4lessIiESaIiEEEE8max_sizeERKS6_(%"class.std::allocator.11"* %__a) #5 align 2 {
  %1 = alloca %"class.std::allocator.11"*, align 8
  store %"class.std::allocator.11"* %__a, %"class.std::allocator.11"** %1, align 8
  %2 = load %"class.std::allocator.11"** %1, align 8
  %3 = bitcast %"class.std::allocator.11"* %2 to %"class.__gnu_cxx::new_allocator.12"*
  %4 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt3setIiSt4lessIiESaIiEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.12"* %3) #1
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.11"* @_ZNKSt12_Vector_baseISt3setIiSt4lessIiESaIiEESaIS4_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.10"* %this) #5 align 2 {
  %1 = alloca %"struct.std::_Vector_base.10"*, align 8
  store %"struct.std::_Vector_base.10"* %this, %"struct.std::_Vector_base.10"** %1, align 8
  %2 = load %"struct.std::_Vector_base.10"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base.10"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<std::set<int, std::less<int>, std::allocator<int> >, std::allocator<std::set<int, std::less<int>, std::allocator<int> > > >::_Vector_impl"* %3 to %"class.std::allocator.11"*
  ret %"class.std::allocator.11"* %4
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.std::set"* @_ZSt23__copy_move_backward_a2ILb0EPSt3setIiSt4lessIiESaIiEES5_ET1_T0_S7_S6_(%"class.std::set"* %__first, %"class.std::set"* %__last, %"class.std::set"* %__result) #3 {
  %1 = alloca %"class.std::set"*, align 8
  %2 = alloca %"class.std::set"*, align 8
  %3 = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %__first, %"class.std::set"** %1, align 8
  store %"class.std::set"* %__last, %"class.std::set"** %2, align 8
  store %"class.std::set"* %__result, %"class.std::set"** %3, align 8
  %4 = load %"class.std::set"** %1, align 8
  %5 = call %"class.std::set"* @_ZSt12__niter_baseIPSt3setIiSt4lessIiESaIiEEENSt11_Niter_baseIT_E13iterator_typeES7_(%"class.std::set"* %4)
  %6 = load %"class.std::set"** %2, align 8
  %7 = call %"class.std::set"* @_ZSt12__niter_baseIPSt3setIiSt4lessIiESaIiEEENSt11_Niter_baseIT_E13iterator_typeES7_(%"class.std::set"* %6)
  %8 = load %"class.std::set"** %3, align 8
  %9 = call %"class.std::set"* @_ZSt12__niter_baseIPSt3setIiSt4lessIiESaIiEEENSt11_Niter_baseIT_E13iterator_typeES7_(%"class.std::set"* %8)
  %10 = call %"class.std::set"* @_ZSt22__copy_move_backward_aILb0EPSt3setIiSt4lessIiESaIiEES5_ET1_T0_S7_S6_(%"class.std::set"* %5, %"class.std::set"* %7, %"class.std::set"* %9)
  ret %"class.std::set"* %10
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.std::set"* @_ZSt12__miter_baseIPSt3setIiSt4lessIiESaIiEEENSt11_Miter_baseIT_E13iterator_typeES7_(%"class.std::set"* %__it) #3 {
  %1 = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %__it, %"class.std::set"** %1, align 8
  %2 = load %"class.std::set"** %1, align 8
  %3 = call %"class.std::set"* @_ZNSt10_Iter_baseIPSt3setIiSt4lessIiESaIiEELb0EE7_S_baseES5_(%"class.std::set"* %2)
  ret %"class.std::set"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::set"* @_ZNSt10_Iter_baseIPSt3setIiSt4lessIiESaIiEELb0EE7_S_baseES5_(%"class.std::set"* %__it) #5 align 2 {
  %1 = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %__it, %"class.std::set"** %1, align 8
  %2 = load %"class.std::set"** %1, align 8
  ret %"class.std::set"* %2
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.std::set"* @_ZSt22__copy_move_backward_aILb0EPSt3setIiSt4lessIiESaIiEES5_ET1_T0_S7_S6_(%"class.std::set"* %__first, %"class.std::set"* %__last, %"class.std::set"* %__result) #3 {
  %1 = alloca %"class.std::set"*, align 8
  %2 = alloca %"class.std::set"*, align 8
  %3 = alloca %"class.std::set"*, align 8
  %__simple = alloca i8, align 1
  store %"class.std::set"* %__first, %"class.std::set"** %1, align 8
  store %"class.std::set"* %__last, %"class.std::set"** %2, align 8
  store %"class.std::set"* %__result, %"class.std::set"** %3, align 8
  store i8 0, i8* %__simple, align 1
  %4 = load %"class.std::set"** %1, align 8
  %5 = load %"class.std::set"** %2, align 8
  %6 = load %"class.std::set"** %3, align 8
  %7 = call %"class.std::set"* @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt3setIiSt4lessIiESaIiEES8_EET0_T_SA_S9_(%"class.std::set"* %4, %"class.std::set"* %5, %"class.std::set"* %6)
  ret %"class.std::set"* %7
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"class.std::set"* @_ZSt12__niter_baseIPSt3setIiSt4lessIiESaIiEEENSt11_Niter_baseIT_E13iterator_typeES7_(%"class.std::set"* %__it) #8 {
  %1 = alloca %"class.std::set"*, align 8
  store %"class.std::set"* %__it, %"class.std::set"** %1, align 8
  %2 = load %"class.std::set"** %1, align 8
  %3 = call %"class.std::set"* @_ZNSt10_Iter_baseIPSt3setIiSt4lessIiESaIiEELb0EE7_S_baseES5_(%"class.std::set"* %2)
  ret %"class.std::set"* %3
}

; Function Attrs: uwtable
define linkonce_odr %"class.std::set"* @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt3setIiSt4lessIiESaIiEES8_EET0_T_SA_S9_(%"class.std::set"* %__first, %"class.std::set"* %__last, %"class.std::set"* %__result) #2 align 2 {
  %1 = alloca %"class.std::set"*, align 8
  %2 = alloca %"class.std::set"*, align 8
  %3 = alloca %"class.std::set"*, align 8
  %__n = alloca i64, align 8
  store %"class.std::set"* %__first, %"class.std::set"** %1, align 8
  store %"class.std::set"* %__last, %"class.std::set"** %2, align 8
  store %"class.std::set"* %__result, %"class.std::set"** %3, align 8
  %4 = load %"class.std::set"** %2, align 8
  %5 = load %"class.std::set"** %1, align 8
  %6 = ptrtoint %"class.std::set"* %4 to i64
  %7 = ptrtoint %"class.std::set"* %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 48
  store i64 %9, i64* %__n, align 8
  br label %10

; <label>:10                                      ; preds = %19, %0
  %11 = load i64* %__n, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %22

; <label>:13                                      ; preds = %10
  %14 = load %"class.std::set"** %3, align 8
  %15 = getelementptr inbounds %"class.std::set"* %14, i32 -1
  store %"class.std::set"* %15, %"class.std::set"** %3, align 8
  %16 = load %"class.std::set"** %2, align 8
  %17 = getelementptr inbounds %"class.std::set"* %16, i32 -1
  store %"class.std::set"* %17, %"class.std::set"** %2, align 8
  %18 = call %"class.std::set"* @_ZNSt3setIiSt4lessIiESaIiEEaSERKS3_(%"class.std::set"* %15, %"class.std::set"* %17)
  br label %19

; <label>:19                                      ; preds = %13
  %20 = load i64* %__n, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %__n, align 8
  br label %10

; <label>:22                                      ; preds = %10
  %23 = load %"class.std::set"** %3, align 8
  ret %"class.std::set"* %23
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt3setIiSt4lessIiESaIiEEE9constructEPS5_RKS5_(%"class.__gnu_cxx::new_allocator.12"* %this, %"class.std::set"* %__p, %"class.std::set"* %__val) #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.12"*, align 8
  %2 = alloca %"class.std::set"*, align 8
  %3 = alloca %"class.std::set"*, align 8
  store %"class.__gnu_cxx::new_allocator.12"* %this, %"class.__gnu_cxx::new_allocator.12"** %1, align 8
  store %"class.std::set"* %__p, %"class.std::set"** %2, align 8
  store %"class.std::set"* %__val, %"class.std::set"** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator.12"** %1
  %5 = load %"class.std::set"** %2, align 8
  %6 = bitcast %"class.std::set"* %5 to i8*
  %7 = icmp eq i8* %6, null
  br i1 %7, label %11, label %8

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %6 to %"class.std::set"*
  %10 = load %"class.std::set"** %3, align 8
  call void @_ZNSt3setIiSt4lessIiESaIiEEC2ERKS3_(%"class.std::set"* %9, %"class.std::set"* %10)
  br label %11

; <label>:11                                      ; preds = %8, %0
  %12 = phi %"class.std::set"* [ %9, %8 ], [ null, %0 ]
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorIiSaIiEEEE9constructIS3_EEvRS4_PS3_RKT_(%"class.std::allocator"* %__a, %"class.std::vector.0"* %__p, %"class.std::vector.0"* %__arg) #2 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  %3 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 8
  store %"class.std::vector.0"* %__p, %"class.std::vector.0"** %2, align 8
  store %"class.std::vector.0"* %__arg, %"class.std::vector.0"** %3, align 8
  %4 = load %"class.std::allocator"** %1, align 8
  %5 = bitcast %"class.std::allocator"* %4 to %"class.__gnu_cxx::new_allocator"*
  %6 = load %"class.std::vector.0"** %2, align 8
  %7 = load %"class.std::vector.0"** %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE9constructEPS3_RKS3_(%"class.__gnu_cxx::new_allocator"* %5, %"class.std::vector.0"* %6, %"class.std::vector.0"* %7)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_(%"class.std::vector"* %this, %"class.std::vector.0"* %__position.coerce, %"class.std::vector.0"* %__x) #2 align 2 {
  %__position = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  %__x_copy = alloca %"class.std::vector.0", align 8
  %3 = alloca i8*
  %4 = alloca i32
  %__len = alloca i64, align 8
  %__elems_before = alloca i64, align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  %__new_start = alloca %"class.std::vector.0"*, align 8
  %__new_finish = alloca %"class.std::vector.0"*, align 8
  %6 = getelementptr %"class.__gnu_cxx::__normal_iterator.29"* %__position, i32 0, i32 0
  store %"class.std::vector.0"* %__position.coerce, %"class.std::vector.0"** %6
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store %"class.std::vector.0"* %__x, %"class.std::vector.0"** %2, align 8
  %7 = load %"class.std::vector"** %1
  %8 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %9, i32 0, i32 1
  %11 = load %"class.std::vector.0"** %10, align 8
  %12 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %13 = getelementptr inbounds %"struct.std::_Vector_base"* %12, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %13, i32 0, i32 2
  %15 = load %"class.std::vector.0"** %14, align 8
  %16 = icmp ne %"class.std::vector.0"* %11, %15
  br i1 %16, label %17, label %60

; <label>:17                                      ; preds = %0
  %18 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base"* %18, i32 0, i32 0
  %20 = bitcast %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %19 to %"class.std::allocator"*
  %21 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %22 = getelementptr inbounds %"struct.std::_Vector_base"* %21, i32 0, i32 0
  %23 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %22, i32 0, i32 1
  %24 = load %"class.std::vector.0"** %23, align 8
  %25 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base"* %25, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %26, i32 0, i32 1
  %28 = load %"class.std::vector.0"** %27, align 8
  %29 = getelementptr inbounds %"class.std::vector.0"* %28, i64 -1
  call void @_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorIiSaIiEEEE9constructIS3_EEvRS4_PS3_RKT_(%"class.std::allocator"* %20, %"class.std::vector.0"* %24, %"class.std::vector.0"* %29)
  %30 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %31 = getelementptr inbounds %"struct.std::_Vector_base"* %30, i32 0, i32 0
  %32 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %31, i32 0, i32 1
  %33 = load %"class.std::vector.0"** %32, align 8
  %34 = getelementptr inbounds %"class.std::vector.0"* %33, i32 1
  store %"class.std::vector.0"* %34, %"class.std::vector.0"** %32, align 8
  %35 = load %"class.std::vector.0"** %2, align 8
  call void @_ZNSt6vectorIiSaIiEEC2ERKS1_(%"class.std::vector.0"* %__x_copy, %"class.std::vector.0"* %35)
  %36 = invoke %"class.std::vector.0"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.29"* %__position)
          to label %37 unwind label %55

; <label>:37                                      ; preds = %17
  %38 = load %"class.std::vector.0"** %36
  %39 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %40 = getelementptr inbounds %"struct.std::_Vector_base"* %39, i32 0, i32 0
  %41 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %40, i32 0, i32 1
  %42 = load %"class.std::vector.0"** %41, align 8
  %43 = getelementptr inbounds %"class.std::vector.0"* %42, i64 -2
  %44 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %45 = getelementptr inbounds %"struct.std::_Vector_base"* %44, i32 0, i32 0
  %46 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %45, i32 0, i32 1
  %47 = load %"class.std::vector.0"** %46, align 8
  %48 = getelementptr inbounds %"class.std::vector.0"* %47, i64 -1
  %49 = invoke %"class.std::vector.0"* @_ZSt13copy_backwardIPSt6vectorIiSaIiEES3_ET0_T_S5_S4_(%"class.std::vector.0"* %38, %"class.std::vector.0"* %43, %"class.std::vector.0"* %48)
          to label %50 unwind label %55

; <label>:50                                      ; preds = %37
  %51 = invoke %"class.std::vector.0"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.29"* %__position)
          to label %52 unwind label %55

; <label>:52                                      ; preds = %50
  %53 = invoke %"class.std::vector.0"* @_ZNSt6vectorIiSaIiEEaSERKS1_(%"class.std::vector.0"* %51, %"class.std::vector.0"* %__x_copy)
          to label %54 unwind label %55

; <label>:54                                      ; preds = %52
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %__x_copy)
  br label %181

; <label>:55                                      ; preds = %52, %50, %37, %17
  %56 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %57 = extractvalue { i8*, i32 } %56, 0
  store i8* %57, i8** %3
  %58 = extractvalue { i8*, i32 } %56, 1
  store i32 %58, i32* %4
  invoke void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %__x_copy)
          to label %59 unwind label %187

; <label>:59                                      ; preds = %55
  br label %182

; <label>:60                                      ; preds = %0
  %61 = call i64 @_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc(%"class.std::vector"* %7, i64 1, i8* getelementptr inbounds ([22 x i8]* @.str9, i32 0, i32 0))
  store i64 %61, i64* %__len, align 8
  %62 = call %"class.std::vector.0"* @_ZNSt6vectorIS_IiSaIiEESaIS1_EE5beginEv(%"class.std::vector"* %7)
  %63 = getelementptr %"class.__gnu_cxx::__normal_iterator.29"* %5, i32 0, i32 0
  store %"class.std::vector.0"* %62, %"class.std::vector.0"** %63
  %64 = call i64 @_ZN9__gnu_cxxmiIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(%"class.__gnu_cxx::__normal_iterator.29"* %__position, %"class.__gnu_cxx::__normal_iterator.29"* %5)
  store i64 %64, i64* %__elems_before, align 8
  %65 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %66 = load i64* %__len, align 8
  %67 = call %"class.std::vector.0"* @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE11_M_allocateEm(%"struct.std::_Vector_base"* %65, i64 %66)
  store %"class.std::vector.0"* %67, %"class.std::vector.0"** %__new_start, align 8
  %68 = load %"class.std::vector.0"** %__new_start, align 8
  store %"class.std::vector.0"* %68, %"class.std::vector.0"** %__new_finish, align 8
  %69 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %70 = getelementptr inbounds %"struct.std::_Vector_base"* %69, i32 0, i32 0
  %71 = bitcast %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %70 to %"class.std::allocator"*
  %72 = load %"class.std::vector.0"** %__new_start, align 8
  %73 = load i64* %__elems_before, align 8
  %74 = getelementptr inbounds %"class.std::vector.0"* %72, i64 %73
  %75 = load %"class.std::vector.0"** %2, align 8
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorIiSaIiEEEE9constructIS3_EEvRS4_PS3_RKT_(%"class.std::allocator"* %71, %"class.std::vector.0"* %74, %"class.std::vector.0"* %75)
          to label %76 unwind label %105

; <label>:76                                      ; preds = %60
  store %"class.std::vector.0"* null, %"class.std::vector.0"** %__new_finish, align 8
  %77 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %78 = getelementptr inbounds %"struct.std::_Vector_base"* %77, i32 0, i32 0
  %79 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %78, i32 0, i32 0
  %80 = load %"class.std::vector.0"** %79, align 8
  %81 = invoke %"class.std::vector.0"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.29"* %__position)
          to label %82 unwind label %105

; <label>:82                                      ; preds = %76
  %83 = load %"class.std::vector.0"** %81
  %84 = load %"class.std::vector.0"** %__new_start, align 8
  %85 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %86 = invoke %"class.std::allocator"* @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %85)
          to label %87 unwind label %105

; <label>:87                                      ; preds = %82
  %88 = invoke %"class.std::vector.0"* @_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_(%"class.std::vector.0"* %80, %"class.std::vector.0"* %83, %"class.std::vector.0"* %84, %"class.std::allocator"* %86)
          to label %89 unwind label %105

; <label>:89                                      ; preds = %87
  store %"class.std::vector.0"* %88, %"class.std::vector.0"** %__new_finish, align 8
  %90 = load %"class.std::vector.0"** %__new_finish, align 8
  %91 = getelementptr inbounds %"class.std::vector.0"* %90, i32 1
  store %"class.std::vector.0"* %91, %"class.std::vector.0"** %__new_finish, align 8
  %92 = invoke %"class.std::vector.0"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.29"* %__position)
          to label %93 unwind label %105

; <label>:93                                      ; preds = %89
  %94 = load %"class.std::vector.0"** %92
  %95 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %96 = getelementptr inbounds %"struct.std::_Vector_base"* %95, i32 0, i32 0
  %97 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %96, i32 0, i32 1
  %98 = load %"class.std::vector.0"** %97, align 8
  %99 = load %"class.std::vector.0"** %__new_finish, align 8
  %100 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %101 = invoke %"class.std::allocator"* @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %100)
          to label %102 unwind label %105

; <label>:102                                     ; preds = %93
  %103 = invoke %"class.std::vector.0"* @_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_(%"class.std::vector.0"* %94, %"class.std::vector.0"* %98, %"class.std::vector.0"* %99, %"class.std::allocator"* %101)
          to label %104 unwind label %105

; <label>:104                                     ; preds = %102
  store %"class.std::vector.0"* %103, %"class.std::vector.0"** %__new_finish, align 8
  br label %139

; <label>:105                                     ; preds = %102, %93, %89, %87, %82, %76, %60
  %106 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %107 = extractvalue { i8*, i32 } %106, 0
  store i8* %107, i8** %3
  %108 = extractvalue { i8*, i32 } %106, 1
  store i32 %108, i32* %4
  br label %109

; <label>:109                                     ; preds = %105
  %110 = load i8** %3
  %111 = call i8* @__cxa_begin_catch(i8* %110) #1
  %112 = load %"class.std::vector.0"** %__new_finish, align 8
  %113 = icmp ne %"class.std::vector.0"* %112, null
  br i1 %113, label %126, label %114

; <label>:114                                     ; preds = %109
  %115 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %116 = getelementptr inbounds %"struct.std::_Vector_base"* %115, i32 0, i32 0
  %117 = bitcast %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %116 to %"class.std::allocator"*
  %118 = load %"class.std::vector.0"** %__new_start, align 8
  %119 = load i64* %__elems_before, align 8
  %120 = getelementptr inbounds %"class.std::vector.0"* %118, i64 %119
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorIiSaIiEEEE7destroyERS4_PS3_(%"class.std::allocator"* %117, %"class.std::vector.0"* %120)
          to label %121 unwind label %122

; <label>:121                                     ; preds = %114
  br label %133

; <label>:122                                     ; preds = %137, %133, %131, %126, %114
  %123 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %124 = extractvalue { i8*, i32 } %123, 0
  store i8* %124, i8** %3
  %125 = extractvalue { i8*, i32 } %123, 1
  store i32 %125, i32* %4
  invoke void @__cxa_end_catch()
          to label %138 unwind label %187

; <label>:126                                     ; preds = %109
  %127 = load %"class.std::vector.0"** %__new_start, align 8
  %128 = load %"class.std::vector.0"** %__new_finish, align 8
  %129 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %130 = invoke %"class.std::allocator"* @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %129)
          to label %131 unwind label %122

; <label>:131                                     ; preds = %126
  invoke void @_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E(%"class.std::vector.0"* %127, %"class.std::vector.0"* %128, %"class.std::allocator"* %130)
          to label %132 unwind label %122

; <label>:132                                     ; preds = %131
  br label %133

; <label>:133                                     ; preds = %132, %121
  %134 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %135 = load %"class.std::vector.0"** %__new_start, align 8
  %136 = load i64* %__len, align 8
  invoke void @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base"* %134, %"class.std::vector.0"* %135, i64 %136)
          to label %137 unwind label %122

; <label>:137                                     ; preds = %133
  invoke void @__cxa_rethrow() #14
          to label %190 unwind label %122

; <label>:138                                     ; preds = %122
  br label %182

; <label>:139                                     ; preds = %104
  %140 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %141 = getelementptr inbounds %"struct.std::_Vector_base"* %140, i32 0, i32 0
  %142 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %141, i32 0, i32 0
  %143 = load %"class.std::vector.0"** %142, align 8
  %144 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %145 = getelementptr inbounds %"struct.std::_Vector_base"* %144, i32 0, i32 0
  %146 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %145, i32 0, i32 1
  %147 = load %"class.std::vector.0"** %146, align 8
  %148 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %149 = call %"class.std::allocator"* @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %148)
  call void @_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E(%"class.std::vector.0"* %143, %"class.std::vector.0"* %147, %"class.std::allocator"* %149)
  %150 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %151 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %152 = getelementptr inbounds %"struct.std::_Vector_base"* %151, i32 0, i32 0
  %153 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %152, i32 0, i32 0
  %154 = load %"class.std::vector.0"** %153, align 8
  %155 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %156 = getelementptr inbounds %"struct.std::_Vector_base"* %155, i32 0, i32 0
  %157 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %156, i32 0, i32 2
  %158 = load %"class.std::vector.0"** %157, align 8
  %159 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %160 = getelementptr inbounds %"struct.std::_Vector_base"* %159, i32 0, i32 0
  %161 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %160, i32 0, i32 0
  %162 = load %"class.std::vector.0"** %161, align 8
  %163 = ptrtoint %"class.std::vector.0"* %158 to i64
  %164 = ptrtoint %"class.std::vector.0"* %162 to i64
  %165 = sub i64 %163, %164
  %166 = sdiv exact i64 %165, 24
  call void @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base"* %150, %"class.std::vector.0"* %154, i64 %166)
  %167 = load %"class.std::vector.0"** %__new_start, align 8
  %168 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %169 = getelementptr inbounds %"struct.std::_Vector_base"* %168, i32 0, i32 0
  %170 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %169, i32 0, i32 0
  store %"class.std::vector.0"* %167, %"class.std::vector.0"** %170, align 8
  %171 = load %"class.std::vector.0"** %__new_finish, align 8
  %172 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %173 = getelementptr inbounds %"struct.std::_Vector_base"* %172, i32 0, i32 0
  %174 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %173, i32 0, i32 1
  store %"class.std::vector.0"* %171, %"class.std::vector.0"** %174, align 8
  %175 = load %"class.std::vector.0"** %__new_start, align 8
  %176 = load i64* %__len, align 8
  %177 = getelementptr inbounds %"class.std::vector.0"* %175, i64 %176
  %178 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %179 = getelementptr inbounds %"struct.std::_Vector_base"* %178, i32 0, i32 0
  %180 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %179, i32 0, i32 2
  store %"class.std::vector.0"* %177, %"class.std::vector.0"** %180, align 8
  br label %181

; <label>:181                                     ; preds = %139, %54
  ret void

; <label>:182                                     ; preds = %138, %59
  %183 = load i8** %3
  %184 = load i32* %4
  %185 = insertvalue { i8*, i32 } undef, i8* %183, 0
  %186 = insertvalue { i8*, i32 } %185, i32 %184, 1
  resume { i8*, i32 } %186

; <label>:187                                     ; preds = %122, %55
  %188 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %189 = extractvalue { i8*, i32 } %188, 0
  call void @__clang_call_terminate(i8* %189) #12
  unreachable

; <label>:190                                     ; preds = %137
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr %"class.std::vector.0"* @_ZNSt6vectorIS_IiSaIiEESaIS1_EE3endEv(%"class.std::vector"* %this) #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"** %2
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %5, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator.29"* %1, %"class.std::vector.0"** %6)
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator.29"* %1, i32 0, i32 0
  %8 = load %"class.std::vector.0"** %7
  ret %"class.std::vector.0"* %8
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator.29"* %this, %"class.std::vector.0"** %__i) unnamed_addr #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.29"*, align 8
  %2 = alloca %"class.std::vector.0"**, align 8
  store %"class.__gnu_cxx::__normal_iterator.29"* %this, %"class.__gnu_cxx::__normal_iterator.29"** %1, align 8
  store %"class.std::vector.0"** %__i, %"class.std::vector.0"*** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.29"** %1
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29"* %3, i32 0, i32 0
  %5 = load %"class.std::vector.0"*** %2, align 8
  %6 = load %"class.std::vector.0"** %5, align 8
  store %"class.std::vector.0"* %6, %"class.std::vector.0"** %4, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEEC2ERKS1_(%"class.std::vector.0"* %this, %"class.std::vector.0"* %__x) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %4 = alloca i8*
  %5 = alloca i32
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  store %"class.std::vector.0"* %__x, %"class.std::vector.0"** %2, align 8
  %7 = load %"class.std::vector.0"** %1
  %8 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %9 = load %"class.std::vector.0"** %2, align 8
  %10 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %9)
  %11 = load %"class.std::vector.0"** %2, align 8
  %12 = bitcast %"class.std::vector.0"* %11 to %"struct.std::_Vector_base.1"*
  %13 = call %"class.std::allocator.2"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %12)
  %14 = call %"class.std::allocator.2"* @_ZN9__gnu_cxx14__alloc_traitsISaIiEE17_S_select_on_copyERKS1_(%"class.std::allocator.2"* %13)
  call void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(%"struct.std::_Vector_base.1"* %8, i64 %10, %"class.std::allocator.2"* %14)
  %15 = load %"class.std::vector.0"** %2, align 8
  %16 = invoke i32* @_ZNKSt6vectorIiSaIiEE5beginEv(%"class.std::vector.0"* %15)
          to label %17 unwind label %39

; <label>:17                                      ; preds = %0
  %18 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %3, i32 0, i32 0
  store i32* %16, i32** %18
  %19 = load %"class.std::vector.0"** %2, align 8
  %20 = invoke i32* @_ZNKSt6vectorIiSaIiEE3endEv(%"class.std::vector.0"* %19)
          to label %21 unwind label %39

; <label>:21                                      ; preds = %17
  %22 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %6, i32 0, i32 0
  store i32* %20, i32** %22
  %23 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %24 = getelementptr inbounds %"struct.std::_Vector_base.1"* %23, i32 0, i32 0
  %25 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %24, i32 0, i32 0
  %26 = load i32** %25, align 8
  %27 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %28 = invoke %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %27)
          to label %29 unwind label %39

; <label>:29                                      ; preds = %21
  %30 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %3, i32 0, i32 0
  %31 = load i32** %30
  %32 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %6, i32 0, i32 0
  %33 = load i32** %32
  %34 = invoke i32* @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(i32* %31, i32* %33, i32* %26, %"class.std::allocator.2"* %28)
          to label %35 unwind label %39

; <label>:35                                      ; preds = %29
  %36 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  %37 = getelementptr inbounds %"struct.std::_Vector_base.1"* %36, i32 0, i32 0
  %38 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %37, i32 0, i32 1
  store i32* %34, i32** %38, align 8
  ret void

; <label>:39                                      ; preds = %29, %21, %17, %0
  %40 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %41 = extractvalue { i8*, i32 } %40, 0
  store i8* %41, i8** %4
  %42 = extractvalue { i8*, i32 } %40, 1
  store i32 %42, i32* %5
  %43 = bitcast %"class.std::vector.0"* %7 to %"struct.std::_Vector_base.1"*
  invoke void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base.1"* %43)
          to label %44 unwind label %50

; <label>:44                                      ; preds = %39
  br label %45

; <label>:45                                      ; preds = %44
  %46 = load i8** %4
  %47 = load i32* %5
  %48 = insertvalue { i8*, i32 } undef, i8* %46, 0
  %49 = insertvalue { i8*, i32 } %48, i32 %47, 1
  resume { i8*, i32 } %49

; <label>:50                                      ; preds = %39
  %51 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %52 = extractvalue { i8*, i32 } %51, 0
  call void @__clang_call_terminate(i8* %52) #12
  unreachable
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.std::vector.0"* @_ZSt13copy_backwardIPSt6vectorIiSaIiEES3_ET0_T_S5_S4_(%"class.std::vector.0"* %__first, %"class.std::vector.0"* %__last, %"class.std::vector.0"* %__result) #3 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  %3 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %__first, %"class.std::vector.0"** %1, align 8
  store %"class.std::vector.0"* %__last, %"class.std::vector.0"** %2, align 8
  store %"class.std::vector.0"* %__result, %"class.std::vector.0"** %3, align 8
  %4 = load %"class.std::vector.0"** %1, align 8
  %5 = call %"class.std::vector.0"* @_ZSt12__miter_baseIPSt6vectorIiSaIiEEENSt11_Miter_baseIT_E13iterator_typeES5_(%"class.std::vector.0"* %4)
  %6 = load %"class.std::vector.0"** %2, align 8
  %7 = call %"class.std::vector.0"* @_ZSt12__miter_baseIPSt6vectorIiSaIiEEENSt11_Miter_baseIT_E13iterator_typeES5_(%"class.std::vector.0"* %6)
  %8 = load %"class.std::vector.0"** %3, align 8
  %9 = call %"class.std::vector.0"* @_ZSt23__copy_move_backward_a2ILb0EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_(%"class.std::vector.0"* %5, %"class.std::vector.0"* %7, %"class.std::vector.0"* %8)
  ret %"class.std::vector.0"* %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::vector.0"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.29"* %this) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.29"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.29"* %this, %"class.__gnu_cxx::__normal_iterator.29"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator.29"** %1
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29"* %2, i32 0, i32 0
  ret %"class.std::vector.0"** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::vector.0"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.29"* %this) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.29"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.29"* %this, %"class.__gnu_cxx::__normal_iterator.29"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator.29"** %1
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29"* %2, i32 0, i32 0
  %4 = load %"class.std::vector.0"** %3, align 8
  ret %"class.std::vector.0"* %4
}

; Function Attrs: uwtable
define linkonce_odr %"class.std::vector.0"* @_ZNSt6vectorIiSaIiEEaSERKS1_(%"class.std::vector.0"* %this, %"class.std::vector.0"* %__x) #2 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  %__xlen = alloca i64, align 8
  %__tmp = alloca i32*, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  store %"class.std::vector.0"* %__x, %"class.std::vector.0"** %2, align 8
  %10 = load %"class.std::vector.0"** %1
  %11 = load %"class.std::vector.0"** %2, align 8
  %12 = icmp ne %"class.std::vector.0"* %11, %10
  br i1 %12, label %13, label %149

; <label>:13                                      ; preds = %0
  %14 = load %"class.std::vector.0"** %2, align 8
  %15 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %14)
  store i64 %15, i64* %__xlen, align 8
  %16 = load i64* %__xlen, align 8
  %17 = call i64 @_ZNKSt6vectorIiSaIiEE8capacityEv(%"class.std::vector.0"* %10)
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %72

; <label>:19                                      ; preds = %13
  %20 = load i64* %__xlen, align 8
  %21 = load %"class.std::vector.0"** %2, align 8
  %22 = call i32* @_ZNKSt6vectorIiSaIiEE5beginEv(%"class.std::vector.0"* %21)
  %23 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %3, i32 0, i32 0
  store i32* %22, i32** %23
  %24 = load %"class.std::vector.0"** %2, align 8
  %25 = call i32* @_ZNKSt6vectorIiSaIiEE3endEv(%"class.std::vector.0"* %24)
  %26 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %4, i32 0, i32 0
  store i32* %25, i32** %26
  %27 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %3, i32 0, i32 0
  %28 = load i32** %27
  %29 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %4, i32 0, i32 0
  %30 = load i32** %29
  %31 = call i32* @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_(%"class.std::vector.0"* %10, i64 %20, i32* %28, i32* %30)
  store i32* %31, i32** %__tmp, align 8
  %32 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %33 = getelementptr inbounds %"struct.std::_Vector_base.1"* %32, i32 0, i32 0
  %34 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %33, i32 0, i32 0
  %35 = load i32** %34, align 8
  %36 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %37 = getelementptr inbounds %"struct.std::_Vector_base.1"* %36, i32 0, i32 0
  %38 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %37, i32 0, i32 1
  %39 = load i32** %38, align 8
  %40 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %41 = call %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %40)
  call void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %35, i32* %39, %"class.std::allocator.2"* %41)
  %42 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %43 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %44 = getelementptr inbounds %"struct.std::_Vector_base.1"* %43, i32 0, i32 0
  %45 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %44, i32 0, i32 0
  %46 = load i32** %45, align 8
  %47 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %48 = getelementptr inbounds %"struct.std::_Vector_base.1"* %47, i32 0, i32 0
  %49 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %48, i32 0, i32 2
  %50 = load i32** %49, align 8
  %51 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %52 = getelementptr inbounds %"struct.std::_Vector_base.1"* %51, i32 0, i32 0
  %53 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %52, i32 0, i32 0
  %54 = load i32** %53, align 8
  %55 = ptrtoint i32* %50 to i64
  %56 = ptrtoint i32* %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 4
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.1"* %42, i32* %46, i64 %58)
  %59 = load i32** %__tmp, align 8
  %60 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %61 = getelementptr inbounds %"struct.std::_Vector_base.1"* %60, i32 0, i32 0
  %62 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %61, i32 0, i32 0
  store i32* %59, i32** %62, align 8
  %63 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %64 = getelementptr inbounds %"struct.std::_Vector_base.1"* %63, i32 0, i32 0
  %65 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %64, i32 0, i32 0
  %66 = load i32** %65, align 8
  %67 = load i64* %__xlen, align 8
  %68 = getelementptr inbounds i32* %66, i64 %67
  %69 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %70 = getelementptr inbounds %"struct.std::_Vector_base.1"* %69, i32 0, i32 0
  %71 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %70, i32 0, i32 2
  store i32* %68, i32** %71, align 8
  br label %139

; <label>:72                                      ; preds = %13
  %73 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %10)
  %74 = load i64* %__xlen, align 8
  %75 = icmp uge i64 %73, %74
  br i1 %75, label %76, label %101

; <label>:76                                      ; preds = %72
  %77 = load %"class.std::vector.0"** %2, align 8
  %78 = call i32* @_ZNKSt6vectorIiSaIiEE5beginEv(%"class.std::vector.0"* %77)
  %79 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %6, i32 0, i32 0
  store i32* %78, i32** %79
  %80 = load %"class.std::vector.0"** %2, align 8
  %81 = call i32* @_ZNKSt6vectorIiSaIiEE3endEv(%"class.std::vector.0"* %80)
  %82 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %7, i32 0, i32 0
  store i32* %81, i32** %82
  %83 = call i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector.0"* %10)
  %84 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %8, i32 0, i32 0
  store i32* %83, i32** %84
  %85 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %6, i32 0, i32 0
  %86 = load i32** %85
  %87 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %7, i32 0, i32 0
  %88 = load i32** %87
  %89 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %8, i32 0, i32 0
  %90 = load i32** %89
  %91 = call i32* @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_(i32* %86, i32* %88, i32* %90)
  %92 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  store i32* %91, i32** %92
  %93 = call i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector.0"* %10)
  %94 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %9, i32 0, i32 0
  store i32* %93, i32** %94
  %95 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %96 = call %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %95)
  %97 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  %98 = load i32** %97
  %99 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %9, i32 0, i32 0
  %100 = load i32** %99
  call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RSaIT0_E(i32* %98, i32* %100, %"class.std::allocator.2"* %96)
  br label %138

; <label>:101                                     ; preds = %72
  %102 = load %"class.std::vector.0"** %2, align 8
  %103 = bitcast %"class.std::vector.0"* %102 to %"struct.std::_Vector_base.1"*
  %104 = getelementptr inbounds %"struct.std::_Vector_base.1"* %103, i32 0, i32 0
  %105 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %104, i32 0, i32 0
  %106 = load i32** %105, align 8
  %107 = load %"class.std::vector.0"** %2, align 8
  %108 = bitcast %"class.std::vector.0"* %107 to %"struct.std::_Vector_base.1"*
  %109 = getelementptr inbounds %"struct.std::_Vector_base.1"* %108, i32 0, i32 0
  %110 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %109, i32 0, i32 0
  %111 = load i32** %110, align 8
  %112 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %10)
  %113 = getelementptr inbounds i32* %111, i64 %112
  %114 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %115 = getelementptr inbounds %"struct.std::_Vector_base.1"* %114, i32 0, i32 0
  %116 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %115, i32 0, i32 0
  %117 = load i32** %116, align 8
  %118 = call i32* @_ZSt4copyIPiS0_ET0_T_S2_S1_(i32* %106, i32* %113, i32* %117)
  %119 = load %"class.std::vector.0"** %2, align 8
  %120 = bitcast %"class.std::vector.0"* %119 to %"struct.std::_Vector_base.1"*
  %121 = getelementptr inbounds %"struct.std::_Vector_base.1"* %120, i32 0, i32 0
  %122 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %121, i32 0, i32 0
  %123 = load i32** %122, align 8
  %124 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %10)
  %125 = getelementptr inbounds i32* %123, i64 %124
  %126 = load %"class.std::vector.0"** %2, align 8
  %127 = bitcast %"class.std::vector.0"* %126 to %"struct.std::_Vector_base.1"*
  %128 = getelementptr inbounds %"struct.std::_Vector_base.1"* %127, i32 0, i32 0
  %129 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %128, i32 0, i32 1
  %130 = load i32** %129, align 8
  %131 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %132 = getelementptr inbounds %"struct.std::_Vector_base.1"* %131, i32 0, i32 0
  %133 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %132, i32 0, i32 1
  %134 = load i32** %133, align 8
  %135 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %136 = call %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %135)
  %137 = call i32* @_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E(i32* %125, i32* %130, i32* %134, %"class.std::allocator.2"* %136)
  br label %138

; <label>:138                                     ; preds = %101, %76
  br label %139

; <label>:139                                     ; preds = %138, %19
  %140 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %141 = getelementptr inbounds %"struct.std::_Vector_base.1"* %140, i32 0, i32 0
  %142 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %141, i32 0, i32 0
  %143 = load i32** %142, align 8
  %144 = load i64* %__xlen, align 8
  %145 = getelementptr inbounds i32* %143, i64 %144
  %146 = bitcast %"class.std::vector.0"* %10 to %"struct.std::_Vector_base.1"*
  %147 = getelementptr inbounds %"struct.std::_Vector_base.1"* %146, i32 0, i32 0
  %148 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %147, i32 0, i32 1
  store i32* %145, i32** %148, align 8
  br label %149

; <label>:149                                     ; preds = %139, %0
  ret %"class.std::vector.0"* %10
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc(%"class.std::vector"* %this, i64 %__n, i8* %__s) #2 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %__len = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store i8* %__s, i8** %3, align 8
  %5 = load %"class.std::vector"** %1
  %6 = call i64 @_ZNKSt6vectorIS_IiSaIiEESaIS1_EE8max_sizeEv(%"class.std::vector"* %5)
  %7 = call i64 @_ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv(%"class.std::vector"* %5)
  %8 = sub i64 %6, %7
  %9 = load i64* %2, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = load i8** %3, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %12) #14
  unreachable

; <label>:13                                      ; preds = %0
  %14 = call i64 @_ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv(%"class.std::vector"* %5)
  %15 = call i64 @_ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv(%"class.std::vector"* %5)
  store i64 %15, i64* %4
  %16 = call i64* @_ZSt3maxImERKT_S2_S2_(i64* %4, i64* %2)
  %17 = load i64* %16
  %18 = add i64 %14, %17
  store i64 %18, i64* %__len, align 8
  %19 = load i64* %__len, align 8
  %20 = call i64 @_ZNKSt6vectorIS_IiSaIiEESaIS1_EE4sizeEv(%"class.std::vector"* %5)
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %26, label %22

; <label>:22                                      ; preds = %13
  %23 = load i64* %__len, align 8
  %24 = call i64 @_ZNKSt6vectorIS_IiSaIiEESaIS1_EE8max_sizeEv(%"class.std::vector"* %5)
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

; <label>:26                                      ; preds = %22, %13
  %27 = call i64 @_ZNKSt6vectorIS_IiSaIiEESaIS1_EE8max_sizeEv(%"class.std::vector"* %5)
  br label %30

; <label>:28                                      ; preds = %22
  %29 = load i64* %__len, align 8
  br label %30

; <label>:30                                      ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  ret i64 %31
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(%"class.__gnu_cxx::__normal_iterator.29"* %__lhs, %"class.__gnu_cxx::__normal_iterator.29"* %__rhs) #3 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.29"*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.29"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.29"* %__lhs, %"class.__gnu_cxx::__normal_iterator.29"** %1, align 8
  store %"class.__gnu_cxx::__normal_iterator.29"* %__rhs, %"class.__gnu_cxx::__normal_iterator.29"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.29"** %1, align 8
  %4 = call %"class.std::vector.0"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.29"* %3)
  %5 = load %"class.std::vector.0"** %4
  %6 = load %"class.__gnu_cxx::__normal_iterator.29"** %2, align 8
  %7 = call %"class.std::vector.0"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.29"* %6)
  %8 = load %"class.std::vector.0"** %7
  %9 = ptrtoint %"class.std::vector.0"* %5 to i64
  %10 = ptrtoint %"class.std::vector.0"* %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 24
  ret i64 %12
}

; Function Attrs: uwtable
define linkonce_odr %"class.std::vector.0"* @_ZNSt6vectorIS_IiSaIiEESaIS1_EE5beginEv(%"class.std::vector"* %this) #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"** %2
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %5, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES1_IS3_SaIS3_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator.29"* %1, %"class.std::vector.0"** %6)
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator.29"* %1, i32 0, i32 0
  %8 = load %"class.std::vector.0"** %7
  ret %"class.std::vector.0"* %8
}

; Function Attrs: uwtable
define linkonce_odr %"class.std::vector.0"* @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #2 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  %2 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"struct.std::_Vector_base"** %1
  %4 = load i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %7 to %"class.__gnu_cxx::new_allocator"*
  %9 = load i64* %2, align 8
  %10 = call %"class.std::vector.0"* @_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %8, i64 %9, i8* null)
  br label %12

; <label>:11                                      ; preds = %0
  br label %12

; <label>:12                                      ; preds = %11, %6
  %13 = phi %"class.std::vector.0"* [ %10, %6 ], [ null, %11 ]
  ret %"class.std::vector.0"* %13
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.std::vector.0"* @_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIiSaIiEES3_SaIS2_EET0_T_S6_S5_RT1_(%"class.std::vector.0"* %__first, %"class.std::vector.0"* %__last, %"class.std::vector.0"* %__result, %"class.std::allocator"* %__alloc) #3 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  %3 = alloca %"class.std::vector.0"*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store %"class.std::vector.0"* %__first, %"class.std::vector.0"** %1, align 8
  store %"class.std::vector.0"* %__last, %"class.std::vector.0"** %2, align 8
  store %"class.std::vector.0"* %__result, %"class.std::vector.0"** %3, align 8
  store %"class.std::allocator"* %__alloc, %"class.std::allocator"** %4, align 8
  %5 = load %"class.std::vector.0"** %1, align 8
  %6 = load %"class.std::vector.0"** %2, align 8
  %7 = load %"class.std::vector.0"** %3, align 8
  %8 = load %"class.std::allocator"** %4, align 8
  %9 = call %"class.std::vector.0"* @_ZSt22__uninitialized_copy_aIPSt6vectorIiSaIiEES3_S2_ET0_T_S5_S4_RSaIT1_E(%"class.std::vector.0"* %5, %"class.std::vector.0"* %6, %"class.std::vector.0"* %7, %"class.std::allocator"* %8)
  ret %"class.std::vector.0"* %9
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorIiSaIiEEEE7destroyERS4_PS3_(%"class.std::allocator"* %__a, %"class.std::vector.0"* %__p) #2 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 8
  store %"class.std::vector.0"* %__p, %"class.std::vector.0"** %2, align 8
  %3 = load %"class.std::allocator"** %1, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  %5 = load %"class.std::vector.0"** %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE7destroyEPS3_(%"class.__gnu_cxx::new_allocator"* %4, %"class.std::vector.0"* %5)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE7destroyEPS3_(%"class.__gnu_cxx::new_allocator"* %this, %"class.std::vector.0"* %__p) #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  store %"class.std::vector.0"* %__p, %"class.std::vector.0"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"** %1
  %4 = load %"class.std::vector.0"** %2, align 8
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %4)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.std::vector.0"* @_ZSt22__uninitialized_copy_aIPSt6vectorIiSaIiEES3_S2_ET0_T_S5_S4_RSaIT1_E(%"class.std::vector.0"* %__first, %"class.std::vector.0"* %__last, %"class.std::vector.0"* %__result, %"class.std::allocator"*) #3 {
  %2 = alloca %"class.std::vector.0"*, align 8
  %3 = alloca %"class.std::vector.0"*, align 8
  %4 = alloca %"class.std::vector.0"*, align 8
  %5 = alloca %"class.std::allocator"*, align 8
  store %"class.std::vector.0"* %__first, %"class.std::vector.0"** %2, align 8
  store %"class.std::vector.0"* %__last, %"class.std::vector.0"** %3, align 8
  store %"class.std::vector.0"* %__result, %"class.std::vector.0"** %4, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %5, align 8
  %6 = load %"class.std::vector.0"** %2, align 8
  %7 = load %"class.std::vector.0"** %3, align 8
  %8 = load %"class.std::vector.0"** %4, align 8
  %9 = call %"class.std::vector.0"* @_ZSt18uninitialized_copyIPSt6vectorIiSaIiEES3_ET0_T_S5_S4_(%"class.std::vector.0"* %6, %"class.std::vector.0"* %7, %"class.std::vector.0"* %8)
  ret %"class.std::vector.0"* %9
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.std::vector.0"* @_ZSt18uninitialized_copyIPSt6vectorIiSaIiEES3_ET0_T_S5_S4_(%"class.std::vector.0"* %__first, %"class.std::vector.0"* %__last, %"class.std::vector.0"* %__result) #3 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  %3 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %__first, %"class.std::vector.0"** %1, align 8
  store %"class.std::vector.0"* %__last, %"class.std::vector.0"** %2, align 8
  store %"class.std::vector.0"* %__result, %"class.std::vector.0"** %3, align 8
  %4 = load %"class.std::vector.0"** %1, align 8
  %5 = load %"class.std::vector.0"** %2, align 8
  %6 = load %"class.std::vector.0"** %3, align 8
  %7 = call %"class.std::vector.0"* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPSt6vectorIiSaIiEES5_EET0_T_S7_S6_(%"class.std::vector.0"* %4, %"class.std::vector.0"* %5, %"class.std::vector.0"* %6)
  ret %"class.std::vector.0"* %7
}

; Function Attrs: uwtable
define linkonce_odr %"class.std::vector.0"* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPSt6vectorIiSaIiEES5_EET0_T_S7_S6_(%"class.std::vector.0"* %__first, %"class.std::vector.0"* %__last, %"class.std::vector.0"* %__result) #2 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  %3 = alloca %"class.std::vector.0"*, align 8
  %__cur = alloca %"class.std::vector.0"*, align 8
  %4 = alloca i8*
  %5 = alloca i32
  store %"class.std::vector.0"* %__first, %"class.std::vector.0"** %1, align 8
  store %"class.std::vector.0"* %__last, %"class.std::vector.0"** %2, align 8
  store %"class.std::vector.0"* %__result, %"class.std::vector.0"** %3, align 8
  %6 = load %"class.std::vector.0"** %3, align 8
  store %"class.std::vector.0"* %6, %"class.std::vector.0"** %__cur, align 8
  br label %7

; <label>:7                                       ; preds = %17, %0
  %8 = load %"class.std::vector.0"** %1, align 8
  %9 = load %"class.std::vector.0"** %2, align 8
  %10 = icmp ne %"class.std::vector.0"* %8, %9
  br i1 %10, label %11, label %32

; <label>:11                                      ; preds = %7
  %12 = load %"class.std::vector.0"** %__cur, align 8
  %13 = invoke %"class.std::vector.0"* @_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_(%"class.std::vector.0"* %12)
          to label %14 unwind label %22

; <label>:14                                      ; preds = %11
  %15 = load %"class.std::vector.0"** %1, align 8
  invoke void @_ZSt10_ConstructISt6vectorIiSaIiEES2_EvPT_RKT0_(%"class.std::vector.0"* %13, %"class.std::vector.0"* %15)
          to label %16 unwind label %22

; <label>:16                                      ; preds = %14
  br label %17

; <label>:17                                      ; preds = %16
  %18 = load %"class.std::vector.0"** %1, align 8
  %19 = getelementptr inbounds %"class.std::vector.0"* %18, i32 1
  store %"class.std::vector.0"* %19, %"class.std::vector.0"** %1, align 8
  %20 = load %"class.std::vector.0"** %__cur, align 8
  %21 = getelementptr inbounds %"class.std::vector.0"* %20, i32 1
  store %"class.std::vector.0"* %21, %"class.std::vector.0"** %__cur, align 8
  br label %7

; <label>:22                                      ; preds = %14, %11
  %23 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %24 = extractvalue { i8*, i32 } %23, 0
  store i8* %24, i8** %4
  %25 = extractvalue { i8*, i32 } %23, 1
  store i32 %25, i32* %5
  br label %26

; <label>:26                                      ; preds = %22
  %27 = load i8** %4
  %28 = call i8* @__cxa_begin_catch(i8* %27) #1
  %29 = load %"class.std::vector.0"** %3, align 8
  %30 = load %"class.std::vector.0"** %__cur, align 8
  invoke void @_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_(%"class.std::vector.0"* %29, %"class.std::vector.0"* %30)
          to label %31 unwind label %34

; <label>:31                                      ; preds = %26
  invoke void @__cxa_rethrow() #14
          to label %48 unwind label %34

; <label>:32                                      ; preds = %7
  %33 = load %"class.std::vector.0"** %__cur, align 8
  ret %"class.std::vector.0"* %33

; <label>:34                                      ; preds = %31, %26
  %35 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %36 = extractvalue { i8*, i32 } %35, 0
  store i8* %36, i8** %4
  %37 = extractvalue { i8*, i32 } %35, 1
  store i32 %37, i32* %5
  invoke void @__cxa_end_catch()
          to label %38 unwind label %45

; <label>:38                                      ; preds = %34
  br label %40
                                                  ; No predecessors!
  call void @llvm.trap()
  unreachable

; <label>:40                                      ; preds = %38
  %41 = load i8** %4
  %42 = load i32* %5
  %43 = insertvalue { i8*, i32 } undef, i8* %41, 0
  %44 = insertvalue { i8*, i32 } %43, i32 %42, 1
  resume { i8*, i32 } %44

; <label>:45                                      ; preds = %34
  %46 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %47 = extractvalue { i8*, i32 } %46, 0
  call void @__clang_call_terminate(i8* %47) #12
  unreachable

; <label>:48                                      ; preds = %31
  unreachable
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt10_ConstructISt6vectorIiSaIiEES2_EvPT_RKT0_(%"class.std::vector.0"* %__p, %"class.std::vector.0"* %__value) #3 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %__p, %"class.std::vector.0"** %1, align 8
  store %"class.std::vector.0"* %__value, %"class.std::vector.0"** %2, align 8
  %3 = load %"class.std::vector.0"** %1, align 8
  %4 = bitcast %"class.std::vector.0"* %3 to i8*
  %5 = icmp eq i8* %4, null
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %4 to %"class.std::vector.0"*
  %8 = load %"class.std::vector.0"** %2, align 8
  call void @_ZNSt6vectorIiSaIiEEC2ERKS1_(%"class.std::vector.0"* %7, %"class.std::vector.0"* %8)
  br label %9

; <label>:9                                       ; preds = %6, %0
  %10 = phi %"class.std::vector.0"* [ %7, %6 ], [ null, %0 ]
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"class.std::vector.0"* @_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8*) #2 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %5) #1
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #14
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 24
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to %"class.std::vector.0"*
  ret %"class.std::vector.0"* %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator"** %1
  ret i64 768614336404564650
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIS_IiSaIiEESaIS1_EE8max_sizeEv(%"class.std::vector"* %this) #2 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %4 = call %"class.std::allocator"* @_ZNKSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %3)
  %5 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorIiSaIiEEEE8max_sizeERKS4_(%"class.std::allocator"* %4)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorIiSaIiEEEE8max_sizeERKS4_(%"class.std::allocator"* %__a) #5 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 8
  %2 = load %"class.std::allocator"** %1, align 8
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*
  %4 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %3) #1
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator"* @_ZNKSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #5 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<std::vector<int, std::allocator<int> >, std::allocator<std::vector<int, std::allocator<int> > > >::_Vector_impl"* %3 to %"class.std::allocator"*
  ret %"class.std::allocator"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIiSaIiEE8capacityEv(%"class.std::vector.0"* %this) #5 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  %2 = load %"class.std::vector.0"** %1
  %3 = bitcast %"class.std::vector.0"* %2 to %"struct.std::_Vector_base.1"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %4, i32 0, i32 2
  %6 = load i32** %5, align 8
  %7 = bitcast %"class.std::vector.0"* %2 to %"struct.std::_Vector_base.1"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base.1"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %8, i32 0, i32 0
  %10 = load i32** %9, align 8
  %11 = ptrtoint i32* %6 to i64
  %12 = ptrtoint i32* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 4
  ret i64 %14
}

; Function Attrs: uwtable
define linkonce_odr i32* @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_(%"class.std::vector.0"* %this, i64 %__n, i32* %__first.coerce, i32* %__last.coerce) #2 align 2 {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca i64, align 8
  %__result = alloca i32*, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %5 = alloca i8*
  %6 = alloca i32
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %7
  %8 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %9 = load %"class.std::vector.0"** %1
  %10 = bitcast %"class.std::vector.0"* %9 to %"struct.std::_Vector_base.1"*
  %11 = load i64* %2, align 8
  %12 = call i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base.1"* %10, i64 %11)
  store i32* %12, i32** %__result, align 8
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %3 to i8*
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %4 to i8*
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %17 = load i32** %__result, align 8
  %18 = bitcast %"class.std::vector.0"* %9 to %"struct.std::_Vector_base.1"*
  %19 = invoke %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %18)
          to label %20 unwind label %28

; <label>:20                                      ; preds = %0
  %21 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %3, i32 0, i32 0
  %22 = load i32** %21
  %23 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %4, i32 0, i32 0
  %24 = load i32** %23
  %25 = invoke i32* @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(i32* %22, i32* %24, i32* %17, %"class.std::allocator.2"* %19)
          to label %26 unwind label %28

; <label>:26                                      ; preds = %20
  %27 = load i32** %__result, align 8
  ret i32* %27

; <label>:28                                      ; preds = %20, %0
  %29 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %30 = extractvalue { i8*, i32 } %29, 0
  store i8* %30, i8** %5
  %31 = extractvalue { i8*, i32 } %29, 1
  store i32 %31, i32* %6
  br label %32

; <label>:32                                      ; preds = %28
  %33 = load i8** %5
  %34 = call i8* @__cxa_begin_catch(i8* %33) #1
  %35 = bitcast %"class.std::vector.0"* %9 to %"struct.std::_Vector_base.1"*
  %36 = load i32** %__result, align 8
  %37 = load i64* %2, align 8
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.1"* %35, i32* %36, i64 %37)
          to label %38 unwind label %39

; <label>:38                                      ; preds = %32
  invoke void @__cxa_rethrow() #14
          to label %53 unwind label %39

; <label>:39                                      ; preds = %38, %32
  %40 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %41 = extractvalue { i8*, i32 } %40, 0
  store i8* %41, i8** %5
  %42 = extractvalue { i8*, i32 } %40, 1
  store i32 %42, i32* %6
  invoke void @__cxa_end_catch()
          to label %43 unwind label %50

; <label>:43                                      ; preds = %39
  br label %45
                                                  ; No predecessors!
  call void @llvm.trap()
  unreachable

; <label>:45                                      ; preds = %43
  %46 = load i8** %5
  %47 = load i32* %6
  %48 = insertvalue { i8*, i32 } undef, i8* %46, 0
  %49 = insertvalue { i8*, i32 } %48, i32 %47, 1
  resume { i8*, i32 } %49

; <label>:50                                      ; preds = %39
  %51 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %52 = extractvalue { i8*, i32 } %51, 0
  call void @__clang_call_terminate(i8* %52) #12
  unreachable

; <label>:53                                      ; preds = %38
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr i32* @_ZNKSt6vectorIiSaIiEE5beginEv(%"class.std::vector.0"* %this) #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  %3 = alloca i32*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %2, align 8
  %4 = load %"class.std::vector.0"** %2
  %5 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.1"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %6, i32 0, i32 0
  %8 = load i32** %7, align 8
  store i32* %8, i32** %3
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.30"* %1, i32** %3)
  %9 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %1, i32 0, i32 0
  %10 = load i32** %9
  ret i32* %10
}

; Function Attrs: uwtable
define linkonce_odr i32* @_ZNKSt6vectorIiSaIiEE3endEv(%"class.std::vector.0"* %this) #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  %3 = alloca i32*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %2, align 8
  %4 = load %"class.std::vector.0"** %2
  %5 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.1"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %6, i32 0, i32 1
  %8 = load i32** %7, align 8
  store i32* %8, i32** %3
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.30"* %1, i32** %3)
  %9 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %1, i32 0, i32 0
  %10 = load i32** %9
  ret i32* %10
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RSaIT0_E(i32* %__first.coerce, i32* %__last.coerce, %"class.std::allocator.2"*) #3 {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.std::allocator.2"*, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %5
  %6 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %6
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %2, align 8
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %3 to i8*
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 8, i1 false)
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %4 to i8*
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %11 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %12 = load i32** %11
  %13 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  %14 = load i32** %13
  call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_(i32* %12, i32* %14)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result.coerce) #3 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %__result = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %7
  %8 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %8
  %9 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__result, i32 0, i32 0
  store i32* %__result.coerce, i32** %9
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %3 to i8*
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %12 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %3, i32 0, i32 0
  %13 = load i32** %12
  %14 = call i32* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEENSt11_Miter_baseIT_E13iterator_typeES9_(i32* %13)
  %15 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %2, i32 0, i32 0
  store i32* %14, i32** %15
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %5 to i8*
  %17 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 8, i32 8, i1 false)
  %18 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %5, i32 0, i32 0
  %19 = load i32** %18
  %20 = call i32* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEENSt11_Miter_baseIT_E13iterator_typeES9_(i32* %19)
  %21 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %4, i32 0, i32 0
  store i32* %20, i32** %21
  %22 = bitcast %"class.__gnu_cxx::__normal_iterator"* %6 to i8*
  %23 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 8, i32 8, i1 false)
  %24 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %2, i32 0, i32 0
  %25 = load i32** %24
  %26 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %4, i32 0, i32 0
  %27 = load i32** %26
  %28 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %6, i32 0, i32 0
  %29 = load i32** %28
  %30 = call i32* @_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_(i32* %25, i32* %27, i32* %29)
  %31 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  store i32* %30, i32** %31
  %32 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %33 = load i32** %32
  ret i32* %33
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result.coerce) #3 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %__result = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca i32*, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %6
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %7
  %8 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__result, i32 0, i32 0
  store i32* %__result.coerce, i32** %8
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %3 to i8*
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %11 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %3, i32 0, i32 0
  %12 = load i32** %11
  %13 = call i32* @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEENSt11_Niter_baseIT_E13iterator_typeES9_(i32* %12)
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %4 to i8*
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  %16 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %4, i32 0, i32 0
  %17 = load i32** %16
  %18 = call i32* @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEENSt11_Niter_baseIT_E13iterator_typeES9_(i32* %17)
  %19 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  %20 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %21 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  %22 = load i32** %21
  %23 = call i32* @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEENSt11_Niter_baseIT_E13iterator_typeES8_(i32* %22)
  %24 = call i32* @_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_(i32* %13, i32* %18, i32* %23)
  store i32* %24, i32** %2
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %1, i32** %2)
  %25 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %26 = load i32** %25
  ret i32* %26
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEENSt11_Miter_baseIT_E13iterator_typeES9_(i32* %__it.coerce) #3 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %__it = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %3 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %__it, i32 0, i32 0
  store i32* %__it.coerce, i32** %3
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %2 to i8*
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %2, i32 0, i32 0
  %7 = load i32** %6
  %8 = call i32* @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEELb0EE7_S_baseES7_(i32* %7)
  %9 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %1, i32 0, i32 0
  store i32* %8, i32** %9
  %10 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %1, i32 0, i32 0
  %11 = load i32** %10
  ret i32* %11
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEELb0EE7_S_baseES7_(i32* %__it.coerce) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %__it = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %2 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %__it, i32 0, i32 0
  store i32* %__it.coerce, i32** %2
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %1 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %1, i32 0, i32 0
  %6 = load i32** %5
  ret i32* %6
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_(i32* %__first, i32* %__last, i32* %__result) #8 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %__simple = alloca i8, align 1
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load i32** %1, align 8
  %5 = load i32** %2, align 8
  %6 = load i32** %3, align 8
  %7 = call i32* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32* %4, i32* %5, i32* %6)
  ret i32* %7
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEENSt11_Niter_baseIT_E13iterator_typeES9_(i32* %__it.coerce) #3 {
  %__it = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %2 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %__it, i32 0, i32 0
  store i32* %__it.coerce, i32** %2
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %1 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %1, i32 0, i32 0
  %6 = load i32** %5
  %7 = call i32* @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEELb1EE7_S_baseES7_(i32* %6)
  ret i32* %7
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEENSt11_Niter_baseIT_E13iterator_typeES8_(i32* %__it.coerce) #3 {
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store i32* %__it.coerce, i32** %2
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %1 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %6 = load i32** %5
  %7 = call i32* @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEELb1EE7_S_baseES6_(i32* %6)
  ret i32* %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEELb1EE7_S_baseES6_(i32* %__it.coerce) #5 align 2 {
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %1 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store i32* %__it.coerce, i32** %1
  %2 = call i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__it)
  %3 = load i32** %2
  ret i32* %3
}

; Function Attrs: uwtable
define linkonce_odr i32* @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEELb1EE7_S_baseES7_(i32* %__it.coerce) #2 align 2 {
  %__it = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %1 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %__it, i32 0, i32 0
  store i32* %__it.coerce, i32** %1
  %2 = call i32** @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.30"* %__it)
  %3 = load i32** %2
  ret i32* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32** @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.30"* %this) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.30"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.30"* %this, %"class.__gnu_cxx::__normal_iterator.30"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator.30"** %1
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30"* %2, i32 0, i32 0
  ret i32** %3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_(i32* %__first.coerce, i32* %__last.coerce) #3 {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %3
  %4 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %4
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %1 to i8*
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 8, i1 false)
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %2 to i8*
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 8, i1 false)
  %9 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %10 = load i32** %9
  %11 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %12 = load i32** %11
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_S9_(i32* %10, i32* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_S9_(i32* %.coerce, i32* %.coerce1) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  store i32* %.coerce, i32** %3
  %4 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  store i32* %.coerce1, i32** %4
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.30"* %this, i32** %__i) unnamed_addr #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.30"*, align 8
  %2 = alloca i32**, align 8
  store %"class.__gnu_cxx::__normal_iterator.30"* %this, %"class.__gnu_cxx::__normal_iterator.30"** %1, align 8
  store i32** %__i, i32*** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.30"** %1
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30"* %3, i32 0, i32 0
  %5 = load i32*** %2, align 8
  %6 = load i32** %5, align 8
  store i32* %6, i32** %4, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(i32* %__first.coerce, i32* %__last.coerce, i32* %__result, %"class.std::allocator.2"*) #3 {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %2 = alloca i32*, align 8
  %3 = alloca %"class.std::allocator.2"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %6 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %6
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %7
  store i32* %__result, i32** %2, align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %3, align 8
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %4 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %5 to i8*
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %12 = load i32** %2, align 8
  %13 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %4, i32 0, i32 0
  %14 = load i32** %13
  %15 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %5, i32 0, i32 0
  %16 = load i32** %15
  %17 = call i32* @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(i32* %14, i32* %16, i32* %12)
  ret i32* %17
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #3 {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %1 = alloca i32*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %4 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %4
  %5 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %5
  store i32* %__result, i32** %1, align 8
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %2 to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %3 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load i32** %1, align 8
  %11 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %2, i32 0, i32 0
  %12 = load i32** %11
  %13 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %3, i32 0, i32 0
  %14 = load i32** %13
  %15 = call i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(i32* %12, i32* %14, i32* %10)
  ret i32* %15
}

; Function Attrs: uwtable
define linkonce_odr i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #2 align 2 {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %1 = alloca i32*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %4 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %4
  %5 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %5
  store i32* %__result, i32** %1, align 8
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %2 to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %3 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load i32** %1, align 8
  %11 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %2, i32 0, i32 0
  %12 = load i32** %11
  %13 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %3, i32 0, i32 0
  %14 = load i32** %13
  %15 = call i32* @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(i32* %12, i32* %14, i32* %10)
  ret i32* %15
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #3 {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %1 = alloca i32*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %6 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %6
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %7
  store i32* %__result, i32** %1, align 8
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %3 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %3, i32 0, i32 0
  %11 = load i32** %10
  %12 = call i32* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEENSt11_Miter_baseIT_E13iterator_typeES9_(i32* %11)
  %13 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %2, i32 0, i32 0
  store i32* %12, i32** %13
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %5 to i8*
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  %16 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %5, i32 0, i32 0
  %17 = load i32** %16
  %18 = call i32* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEENSt11_Miter_baseIT_E13iterator_typeES9_(i32* %17)
  %19 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %4, i32 0, i32 0
  store i32* %18, i32** %19
  %20 = load i32** %1, align 8
  %21 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %2, i32 0, i32 0
  %22 = load i32** %21
  %23 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %4, i32 0, i32 0
  %24 = load i32** %23
  %25 = call i32* @_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(i32* %22, i32* %24, i32* %20)
  ret i32* %25
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #3 {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %1 = alloca i32*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %4 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %4
  %5 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %5
  store i32* %__result, i32** %1, align 8
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %2 to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %2, i32 0, i32 0
  %9 = load i32** %8
  %10 = call i32* @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEENSt11_Niter_baseIT_E13iterator_typeES9_(i32* %9)
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %3 to i8*
  %12 = bitcast %"class.__gnu_cxx::__normal_iterator.30"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = getelementptr %"class.__gnu_cxx::__normal_iterator.30"* %3, i32 0, i32 0
  %14 = load i32** %13
  %15 = call i32* @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEENSt11_Niter_baseIT_E13iterator_typeES9_(i32* %14)
  %16 = load i32** %1, align 8
  %17 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %16)
  %18 = call i32* @_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_(i32* %10, i32* %15, i32* %17)
  ret i32* %18
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.std::vector.0"* @_ZSt23__copy_move_backward_a2ILb0EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_(%"class.std::vector.0"* %__first, %"class.std::vector.0"* %__last, %"class.std::vector.0"* %__result) #3 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  %3 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %__first, %"class.std::vector.0"** %1, align 8
  store %"class.std::vector.0"* %__last, %"class.std::vector.0"** %2, align 8
  store %"class.std::vector.0"* %__result, %"class.std::vector.0"** %3, align 8
  %4 = load %"class.std::vector.0"** %1, align 8
  %5 = call %"class.std::vector.0"* @_ZSt12__niter_baseIPSt6vectorIiSaIiEEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.std::vector.0"* %4)
  %6 = load %"class.std::vector.0"** %2, align 8
  %7 = call %"class.std::vector.0"* @_ZSt12__niter_baseIPSt6vectorIiSaIiEEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.std::vector.0"* %6)
  %8 = load %"class.std::vector.0"** %3, align 8
  %9 = call %"class.std::vector.0"* @_ZSt12__niter_baseIPSt6vectorIiSaIiEEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.std::vector.0"* %8)
  %10 = call %"class.std::vector.0"* @_ZSt22__copy_move_backward_aILb0EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_(%"class.std::vector.0"* %5, %"class.std::vector.0"* %7, %"class.std::vector.0"* %9)
  ret %"class.std::vector.0"* %10
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.std::vector.0"* @_ZSt12__miter_baseIPSt6vectorIiSaIiEEENSt11_Miter_baseIT_E13iterator_typeES5_(%"class.std::vector.0"* %__it) #3 {
  %1 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %__it, %"class.std::vector.0"** %1, align 8
  %2 = load %"class.std::vector.0"** %1, align 8
  %3 = call %"class.std::vector.0"* @_ZNSt10_Iter_baseIPSt6vectorIiSaIiEELb0EE7_S_baseES3_(%"class.std::vector.0"* %2)
  ret %"class.std::vector.0"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::vector.0"* @_ZNSt10_Iter_baseIPSt6vectorIiSaIiEELb0EE7_S_baseES3_(%"class.std::vector.0"* %__it) #5 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %__it, %"class.std::vector.0"** %1, align 8
  %2 = load %"class.std::vector.0"** %1, align 8
  ret %"class.std::vector.0"* %2
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %"class.std::vector.0"* @_ZSt22__copy_move_backward_aILb0EPSt6vectorIiSaIiEES3_ET1_T0_S5_S4_(%"class.std::vector.0"* %__first, %"class.std::vector.0"* %__last, %"class.std::vector.0"* %__result) #3 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  %3 = alloca %"class.std::vector.0"*, align 8
  %__simple = alloca i8, align 1
  store %"class.std::vector.0"* %__first, %"class.std::vector.0"** %1, align 8
  store %"class.std::vector.0"* %__last, %"class.std::vector.0"** %2, align 8
  store %"class.std::vector.0"* %__result, %"class.std::vector.0"** %3, align 8
  store i8 0, i8* %__simple, align 1
  %4 = load %"class.std::vector.0"** %1, align 8
  %5 = load %"class.std::vector.0"** %2, align 8
  %6 = load %"class.std::vector.0"** %3, align 8
  %7 = call %"class.std::vector.0"* @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIiSaIiEES6_EET0_T_S8_S7_(%"class.std::vector.0"* %4, %"class.std::vector.0"* %5, %"class.std::vector.0"* %6)
  ret %"class.std::vector.0"* %7
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"class.std::vector.0"* @_ZSt12__niter_baseIPSt6vectorIiSaIiEEENSt11_Niter_baseIT_E13iterator_typeES5_(%"class.std::vector.0"* %__it) #8 {
  %1 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %__it, %"class.std::vector.0"** %1, align 8
  %2 = load %"class.std::vector.0"** %1, align 8
  %3 = call %"class.std::vector.0"* @_ZNSt10_Iter_baseIPSt6vectorIiSaIiEELb0EE7_S_baseES3_(%"class.std::vector.0"* %2)
  ret %"class.std::vector.0"* %3
}

; Function Attrs: uwtable
define linkonce_odr %"class.std::vector.0"* @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt6vectorIiSaIiEES6_EET0_T_S8_S7_(%"class.std::vector.0"* %__first, %"class.std::vector.0"* %__last, %"class.std::vector.0"* %__result) #2 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  %3 = alloca %"class.std::vector.0"*, align 8
  %__n = alloca i64, align 8
  store %"class.std::vector.0"* %__first, %"class.std::vector.0"** %1, align 8
  store %"class.std::vector.0"* %__last, %"class.std::vector.0"** %2, align 8
  store %"class.std::vector.0"* %__result, %"class.std::vector.0"** %3, align 8
  %4 = load %"class.std::vector.0"** %2, align 8
  %5 = load %"class.std::vector.0"** %1, align 8
  %6 = ptrtoint %"class.std::vector.0"* %4 to i64
  %7 = ptrtoint %"class.std::vector.0"* %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 24
  store i64 %9, i64* %__n, align 8
  br label %10

; <label>:10                                      ; preds = %19, %0
  %11 = load i64* %__n, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %22

; <label>:13                                      ; preds = %10
  %14 = load %"class.std::vector.0"** %3, align 8
  %15 = getelementptr inbounds %"class.std::vector.0"* %14, i32 -1
  store %"class.std::vector.0"* %15, %"class.std::vector.0"** %3, align 8
  %16 = load %"class.std::vector.0"** %2, align 8
  %17 = getelementptr inbounds %"class.std::vector.0"* %16, i32 -1
  store %"class.std::vector.0"* %17, %"class.std::vector.0"** %2, align 8
  %18 = call %"class.std::vector.0"* @_ZNSt6vectorIiSaIiEEaSERKS1_(%"class.std::vector.0"* %15, %"class.std::vector.0"* %17)
  br label %19

; <label>:19                                      ; preds = %13
  %20 = load i64* %__n, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %__n, align 8
  br label %10

; <label>:22                                      ; preds = %10
  %23 = load %"class.std::vector.0"** %3, align 8
  ret %"class.std::vector.0"* %23
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.2"* @_ZN9__gnu_cxx14__alloc_traitsISaIiEE17_S_select_on_copyERKS1_(%"class.std::allocator.2"* %__a) #5 align 2 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %1, align 8
  %2 = load %"class.std::allocator.2"** %1, align 8
  ret %"class.std::allocator.2"* %2
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(%"struct.std::_Vector_base.1"* %this, i64 %__n, %"class.std::allocator.2"* %__a) unnamed_addr #2 align 2 {
  %1 = alloca %"struct.std::_Vector_base.1"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %"class.std::allocator.2"*, align 8
  %4 = alloca i8*
  %5 = alloca i32
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %3, align 8
  %6 = load %"struct.std::_Vector_base.1"** %1
  %7 = getelementptr inbounds %"struct.std::_Vector_base.1"* %6, i32 0, i32 0
  %8 = load %"class.std::allocator.2"** %3, align 8
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %7, %"class.std::allocator.2"* %8)
  %9 = load i64* %2, align 8
  invoke void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(%"struct.std::_Vector_base.1"* %6, i64 %9)
          to label %10 unwind label %11

; <label>:10                                      ; preds = %0
  ret void

; <label>:11                                      ; preds = %0
  %12 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %4
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %5
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %7) #1
  br label %15

; <label>:15                                      ; preds = %11
  %16 = load i8** %4
  %17 = load i32* %5
  %18 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base.1"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"struct.std::_Vector_base.1"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %1, align 8
  %4 = load %"struct.std::_Vector_base.1"** %1
  %5 = getelementptr inbounds %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %5, i32 0, i32 0
  %7 = load i32** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %8, i32 0, i32 2
  %10 = load i32** %9, align 8
  %11 = getelementptr inbounds %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %11, i32 0, i32 0
  %13 = load i32** %12, align 8
  %14 = ptrtoint i32* %10 to i64
  %15 = ptrtoint i32* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 4
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.1"* %4, i32* %7, i64 %17)
          to label %18 unwind label %20

; <label>:18                                      ; preds = %0
  %19 = getelementptr inbounds %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %19) #1
  ret void

; <label>:20                                      ; preds = %0
  %21 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %2
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %3
  %24 = getelementptr inbounds %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %24) #1
  br label %25

; <label>:25                                      ; preds = %20
  %26 = load i8** %2
  %27 = load i32* %3
  %28 = insertvalue { i8*, i32 } undef, i8* %26, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this) unnamed_addr #8 align 2 {
  %1 = alloca %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %1
  %3 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2 to %"class.std::allocator.2"*
  call void @_ZNSaIiED2Ev(%"class.std::allocator.2"* %3) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"class.std::allocator.2"* %__a) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, align 8
  %2 = alloca %"class.std::allocator.2"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %1, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %2, align 8
  %3 = load %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %1
  %4 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3 to %"class.std::allocator.2"*
  %5 = load %"class.std::allocator.2"** %2, align 8
  call void @_ZNSaIiEC2ERKS_(%"class.std::allocator.2"* %4, %"class.std::allocator.2"* %5) #1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3, i32 0, i32 0
  store i32* null, i32** %6, align 8
  %7 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3, i32 0, i32 1
  store i32* null, i32** %7, align 8
  %8 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3, i32 0, i32 2
  store i32* null, i32** %8, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(%"struct.std::_Vector_base.1"* %this, i64 %__n) #2 align 2 {
  %1 = alloca %"struct.std::_Vector_base.1"*, align 8
  %2 = alloca i64, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"struct.std::_Vector_base.1"** %1
  %4 = load i64* %2, align 8
  %5 = call i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base.1"* %3, i64 %4)
  %6 = getelementptr inbounds %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %6, i32 0, i32 0
  store i32* %5, i32** %7, align 8
  %8 = getelementptr inbounds %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %8, i32 0, i32 0
  %10 = load i32** %9, align 8
  %11 = getelementptr inbounds %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %11, i32 0, i32 1
  store i32* %10, i32** %12, align 8
  %13 = getelementptr inbounds %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %13, i32 0, i32 0
  %15 = load i32** %14, align 8
  %16 = load i64* %2, align 8
  %17 = getelementptr inbounds i32* %15, i64 %16
  %18 = getelementptr inbounds %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE9constructEPS3_RKS3_(%"class.__gnu_cxx::new_allocator"* %this, %"class.std::vector.0"* %__p, %"class.std::vector.0"* %__val) #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  %3 = alloca %"class.std::vector.0"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  store %"class.std::vector.0"* %__p, %"class.std::vector.0"** %2, align 8
  store %"class.std::vector.0"* %__val, %"class.std::vector.0"** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator"** %1
  %5 = load %"class.std::vector.0"** %2, align 8
  %6 = bitcast %"class.std::vector.0"* %5 to i8*
  %7 = icmp eq i8* %6, null
  br i1 %7, label %11, label %8

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %6 to %"class.std::vector.0"*
  %10 = load %"class.std::vector.0"** %3, align 8
  call void @_ZNSt6vectorIiSaIiEEC2ERKS1_(%"class.std::vector.0"* %9, %"class.std::vector.0"* %10)
  br label %11

; <label>:11                                      ; preds = %8, %0
  %12 = phi %"class.std::vector.0"* [ %9, %8 ], [ null, %0 ]
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEEC2Ev(%"class.std::_Rb_tree"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb0EEC2Ev(%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb0EEC2Ev(%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"** %1, align 8
  %4 = load %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"** %1
  %5 = bitcast %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %4 to %"class.std::allocator.14"*
  call void @_ZNSaISt13_Rb_tree_nodeIiEEC2Ev(%"class.std::allocator.14"* %5) #1
  %6 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %4, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %4, i32 0, i32 1
  %8 = bitcast %"struct.std::_Rb_tree_node_base"* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 32, i32 8, i1 false)
  %9 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %4, i32 0, i32 2
  store i64 0, i64* %9, align 8
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb0EE13_M_initializeEv(%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %4)
          to label %10 unwind label %11

; <label>:10                                      ; preds = %0
  ret void

; <label>:11                                      ; preds = %0
  %12 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %2
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %3
  %15 = bitcast %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %4 to %"class.std::allocator.14"*
  call void @_ZNSaISt13_Rb_tree_nodeIiEED2Ev(%"class.std::allocator.14"* %15) #1
  br label %16

; <label>:16                                      ; preds = %11
  %17 = load i8** %2
  %18 = load i32* %3
  %19 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt13_Rb_tree_nodeIiEEC2Ev(%"class.std::allocator.14"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::allocator.14"*, align 8
  store %"class.std::allocator.14"* %this, %"class.std::allocator.14"** %1, align 8
  %2 = load %"class.std::allocator.14"** %1
  %3 = bitcast %"class.std::allocator.14"* %2 to %"class.__gnu_cxx::new_allocator.15"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEEC2Ev(%"class.__gnu_cxx::new_allocator.15"* %3) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb0EE13_M_initializeEv(%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %this) #5 align 2 {
  %1 = alloca %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"** %1, align 8
  %2 = load %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"** %1
  %3 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %2, i32 0, i32 1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %3, i32 0, i32 0
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %2, i32 0, i32 1
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %5, i32 0, i32 1
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %6, align 8
  %7 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %2, i32 0, i32 1
  %8 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %2, i32 0, i32 1
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %8, i32 0, i32 2
  store %"struct.std::_Rb_tree_node_base"* %7, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %10 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %2, i32 0, i32 1
  %11 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %2, i32 0, i32 1
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %11, i32 0, i32 3
  store %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"** %12, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt13_Rb_tree_nodeIiEED2Ev(%"class.std::allocator.14"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::allocator.14"*, align 8
  store %"class.std::allocator.14"* %this, %"class.std::allocator.14"** %1, align 8
  %2 = load %"class.std::allocator.14"** %1
  %3 = bitcast %"class.std::allocator.14"* %2 to %"class.__gnu_cxx::new_allocator.15"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEED2Ev(%"class.__gnu_cxx::new_allocator.15"* %3) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEED2Ev(%"class.__gnu_cxx::new_allocator.15"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.15"*, align 8
  store %"class.__gnu_cxx::new_allocator.15"* %this, %"class.__gnu_cxx::new_allocator.15"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.15"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEEC2Ev(%"class.__gnu_cxx::new_allocator.15"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.15"*, align 8
  store %"class.__gnu_cxx::new_allocator.15"* %this, %"class.__gnu_cxx::new_allocator.15"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.15"** %1
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base.1"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %1, align 8
  %2 = load %"struct.std::_Vector_base.1"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %1
  %3 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2 to %"class.std::allocator.2"*
  call void @_ZNSaIiEC2Ev(%"class.std::allocator.2"* %3) #1
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2, i32 0, i32 0
  store i32* null, i32** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2, i32 0, i32 1
  store i32* null, i32** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2, i32 0, i32 2
  store i32* null, i32** %6, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEEC2ERKS5_(%"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"* %__x) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  store %"class.std::_Rb_tree"* %__x, %"class.std::_Rb_tree"** %2, align 8
  %5 = load %"class.std::_Rb_tree"** %1
  %6 = getelementptr inbounds %"class.std::_Rb_tree"* %5, i32 0, i32 0
  %7 = load %"class.std::_Rb_tree"** %2, align 8
  %8 = getelementptr inbounds %"class.std::_Rb_tree"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %8, i32 0, i32 0
  %10 = load %"class.std::_Rb_tree"** %2, align 8
  %11 = call %"class.std::allocator.14"* @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %10)
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb0EEC2ERKS3_RKSaISt13_Rb_tree_nodeIiEE(%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %6, %"struct.std::less"* %9, %"class.std::allocator.14"* %11)
  %12 = load %"class.std::_Rb_tree"** %2, align 8
  %13 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_rootEv(%"class.std::_Rb_tree"* %12)
          to label %14 unwind label %47

; <label>:14                                      ; preds = %0
  %15 = icmp ne %"struct.std::_Rb_tree_node_base"* %13, null
  br i1 %15, label %16, label %51

; <label>:16                                      ; preds = %14
  %17 = load %"class.std::_Rb_tree"** %2, align 8
  %18 = invoke %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_beginEv(%"class.std::_Rb_tree"* %17)
          to label %19 unwind label %47

; <label>:19                                      ; preds = %16
  %20 = invoke %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE6_M_endEv(%"class.std::_Rb_tree"* %5)
          to label %21 unwind label %47

; <label>:21                                      ; preds = %19
  %22 = invoke %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyEPKSt13_Rb_tree_nodeIiEPS7_(%"class.std::_Rb_tree"* %5, %"struct.std::_Rb_tree_node"* %18, %"struct.std::_Rb_tree_node"* %20)
          to label %23 unwind label %47

; <label>:23                                      ; preds = %21
  %24 = bitcast %"struct.std::_Rb_tree_node"* %22 to %"struct.std::_Rb_tree_node_base"*
  %25 = invoke %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_rootEv(%"class.std::_Rb_tree"* %5)
          to label %26 unwind label %47

; <label>:26                                      ; preds = %23
  store %"struct.std::_Rb_tree_node_base"* %24, %"struct.std::_Rb_tree_node_base"** %25
  %27 = invoke %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_rootEv(%"class.std::_Rb_tree"* %5)
          to label %28 unwind label %47

; <label>:28                                      ; preds = %26
  %29 = load %"struct.std::_Rb_tree_node_base"** %27
  %30 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_S_minimumEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %29)
          to label %31 unwind label %47

; <label>:31                                      ; preds = %28
  %32 = invoke %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE11_M_leftmostEv(%"class.std::_Rb_tree"* %5)
          to label %33 unwind label %47

; <label>:33                                      ; preds = %31
  store %"struct.std::_Rb_tree_node_base"* %30, %"struct.std::_Rb_tree_node_base"** %32
  %34 = invoke %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_rootEv(%"class.std::_Rb_tree"* %5)
          to label %35 unwind label %47

; <label>:35                                      ; preds = %33
  %36 = load %"struct.std::_Rb_tree_node_base"** %34
  %37 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_S_maximumEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %36)
          to label %38 unwind label %47

; <label>:38                                      ; preds = %35
  %39 = invoke %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE12_M_rightmostEv(%"class.std::_Rb_tree"* %5)
          to label %40 unwind label %47

; <label>:40                                      ; preds = %38
  store %"struct.std::_Rb_tree_node_base"* %37, %"struct.std::_Rb_tree_node_base"** %39
  %41 = load %"class.std::_Rb_tree"** %2, align 8
  %42 = getelementptr inbounds %"class.std::_Rb_tree"* %41, i32 0, i32 0
  %43 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %42, i32 0, i32 2
  %44 = load i64* %43, align 8
  %45 = getelementptr inbounds %"class.std::_Rb_tree"* %5, i32 0, i32 0
  %46 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  br label %51

; <label>:47                                      ; preds = %38, %35, %33, %31, %28, %26, %23, %21, %19, %16, %0
  %48 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %49 = extractvalue { i8*, i32 } %48, 0
  store i8* %49, i8** %3
  %50 = extractvalue { i8*, i32 } %48, 1
  store i32 %50, i32* %4
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb0EED2Ev(%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %6) #1
  br label %52

; <label>:51                                      ; preds = %40, %14
  ret void

; <label>:52                                      ; preds = %47
  %53 = load i8** %3
  %54 = load i32* %4
  %55 = insertvalue { i8*, i32 } undef, i8* %53, 0
  %56 = insertvalue { i8*, i32 } %55, i32 %54, 1
  resume { i8*, i32 } %56
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb0EEC2ERKS3_RKSaISt13_Rb_tree_nodeIiEE(%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %this, %"struct.std::less"* %__comp, %"class.std::allocator.14"* %__a) unnamed_addr #2 align 2 {
  %1 = alloca %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"*, align 8
  %2 = alloca %"struct.std::less"*, align 8
  %3 = alloca %"class.std::allocator.14"*, align 8
  %4 = alloca i8*
  %5 = alloca i32
  store %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"** %1, align 8
  store %"struct.std::less"* %__comp, %"struct.std::less"** %2, align 8
  store %"class.std::allocator.14"* %__a, %"class.std::allocator.14"** %3, align 8
  %6 = load %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"** %1
  %7 = bitcast %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %6 to %"class.std::allocator.14"*
  %8 = load %"class.std::allocator.14"** %3, align 8
  call void @_ZNSaISt13_Rb_tree_nodeIiEEC2ERKS1_(%"class.std::allocator.14"* %7, %"class.std::allocator.14"* %8) #1
  %9 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %6, i32 0, i32 0
  %10 = load %"struct.std::less"** %2, align 8
  %11 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %6, i32 0, i32 1
  %12 = bitcast %"struct.std::_Rb_tree_node_base"* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 32, i32 8, i1 false)
  %13 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %6, i32 0, i32 2
  store i64 0, i64* %13, align 8
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb0EE13_M_initializeEv(%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %6)
          to label %14 unwind label %15

; <label>:14                                      ; preds = %0
  ret void

; <label>:15                                      ; preds = %0
  %16 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  store i8* %17, i8** %4
  %18 = extractvalue { i8*, i32 } %16, 1
  store i32 %18, i32* %5
  %19 = bitcast %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %6 to %"class.std::allocator.14"*
  call void @_ZNSaISt13_Rb_tree_nodeIiEED2Ev(%"class.std::allocator.14"* %19) #1
  br label %20

; <label>:20                                      ; preds = %15
  %21 = load i8** %4
  %22 = load i32* %5
  %23 = insertvalue { i8*, i32 } undef, i8* %21, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %22, 1
  resume { i8*, i32 } %24
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb0EED2Ev(%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %this) unnamed_addr #8 align 2 {
  %1 = alloca %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"** %1, align 8
  %2 = load %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"** %1
  %3 = bitcast %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %2 to %"class.std::allocator.14"*
  call void @_ZNSaISt13_Rb_tree_nodeIiEED2Ev(%"class.std::allocator.14"* %3) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt13_Rb_tree_nodeIiEEC2ERKS1_(%"class.std::allocator.14"* %this, %"class.std::allocator.14"* %__a) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::allocator.14"*, align 8
  %2 = alloca %"class.std::allocator.14"*, align 8
  store %"class.std::allocator.14"* %this, %"class.std::allocator.14"** %1, align 8
  store %"class.std::allocator.14"* %__a, %"class.std::allocator.14"** %2, align 8
  %3 = load %"class.std::allocator.14"** %1
  %4 = bitcast %"class.std::allocator.14"* %3 to %"class.__gnu_cxx::new_allocator.15"*
  %5 = load %"class.std::allocator.14"** %2, align 8
  %6 = bitcast %"class.std::allocator.14"* %5 to %"class.__gnu_cxx::new_allocator.15"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEEC2ERKS3_(%"class.__gnu_cxx::new_allocator.15"* %4, %"class.__gnu_cxx::new_allocator.15"* %6) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeIiEEC2ERKS3_(%"class.__gnu_cxx::new_allocator.15"* %this, %"class.__gnu_cxx::new_allocator.15"*) unnamed_addr #5 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.15"*, align 8
  %3 = alloca %"class.__gnu_cxx::new_allocator.15"*, align 8
  store %"class.__gnu_cxx::new_allocator.15"* %this, %"class.__gnu_cxx::new_allocator.15"** %2, align 8
  store %"class.__gnu_cxx::new_allocator.15"* %0, %"class.__gnu_cxx::new_allocator.15"** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator.15"** %2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE3endEv(%"class.std::_Rb_tree"* %this) #2 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"** %2
  %4 = getelementptr inbounds %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %4, i32 0, i32 1
  %6 = bitcast %"struct.std::_Rb_tree_node_base"* %5 to %"struct.std::_Rb_tree_node"*
  call void @_ZNSt23_Rb_tree_const_iteratorIiEC2EPKSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_const_iterator"* %1, %"struct.std::_Rb_tree_node"* %6)
  %7 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %1, i32 0, i32 0
  %8 = load %"struct.std::_Rb_tree_node_base"** %7
  ret %"struct.std::_Rb_tree_node_base"* %8
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt23_Rb_tree_const_iteratorIiEC2EPKSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_node"* %__x) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %1, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_const_iterator"** %1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %6 = bitcast %"struct.std::_Rb_tree_node"* %5 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::_Rb_tree_node_base"** %4, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5beginEv(%"class.std::_Rb_tree"* %this) #2 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"** %2
  %4 = getelementptr inbounds %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %4, i32 0, i32 1
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %5, i32 0, i32 2
  %7 = load %"struct.std::_Rb_tree_node_base"** %6, align 8
  %8 = bitcast %"struct.std::_Rb_tree_node_base"* %7 to %"struct.std::_Rb_tree_node"*
  call void @_ZNSt23_Rb_tree_const_iteratorIiEC2EPKSt13_Rb_tree_nodeIiE(%"struct.std::_Rb_tree_const_iterator"* %1, %"struct.std::_Rb_tree_node"* %8)
  %9 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %1, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"** %9
  ret %"struct.std::_Rb_tree_node_base"* %10
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEED2Ev(%"class.std::_Rb_tree"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %4 = load %"class.std::_Rb_tree"** %1
  %5 = invoke %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_beginEv(%"class.std::_Rb_tree"* %4)
          to label %6 unwind label %9

; <label>:6                                       ; preds = %0
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(%"class.std::_Rb_tree"* %4, %"struct.std::_Rb_tree_node"* %5)
          to label %7 unwind label %9

; <label>:7                                       ; preds = %6
  %8 = getelementptr inbounds %"class.std::_Rb_tree"* %4, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb0EED2Ev(%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %8) #1
  ret void

; <label>:9                                       ; preds = %6, %0
  %10 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %2
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %3
  %13 = getelementptr inbounds %"class.std::_Rb_tree"* %4, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_Rb_tree_implIS3_Lb0EED2Ev(%"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>, std::allocator<int> >::_Rb_tree_impl"* %13) #1
  br label %14

; <label>:14                                      ; preds = %9
  %15 = load i8** %2
  %16 = load i32* %3
  %17 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %18 = insertvalue { i8*, i32 } %17, i32 %16, 1
  resume { i8*, i32 } %18
}

define internal void @_GLOBAL__I_a() section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline noreturn nounwind }
attributes #5 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5-1ubuntu1 (trunk) (based on LLVM 3.5)"}

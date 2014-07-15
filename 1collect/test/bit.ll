; ModuleID = 'bitint.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i32, i32, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i32 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i32, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type { i32 (...)**, i32 }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type { %"class.std::locale::facet", %struct.__locale_struct*, i8, i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet" }
%"class.std::num_get" = type { %"class.std::locale::facet" }
%class.bitvec = type { i32, i32, i32*, i32 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZSt4cout = external global %"class.std::basic_ostream"
@.str = private unnamed_addr constant [13 x i8] c"\0Adoubling..\0A\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str2 = private unnamed_addr constant [17 x i8] c".set not pushed\0A\00", align 1
@.str3 = private unnamed_addr constant [19 x i8] c".clear not pushed\0A\00", align 1
@.str4 = private unnamed_addr constant [16 x i8] c".q  not pushed\0A\00", align 1
@.str5 = private unnamed_addr constant [8 x i8] c"in [] \0A\00", align 1
@.str6 = private unnamed_addr constant [24 x i8] c"\0A You are at beginning\0A\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"\0AAND\0A\00", align 1
@.str8 = private unnamed_addr constant [12 x i8] c"----------\0A\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"\0AOR\0A\00", align 1
@.str10 = private unnamed_addr constant [6 x i8] c"\0AXOR\0A\00", align 1
@.str11 = private unnamed_addr constant [27 x i8] c"\0A\0A subscript Overloading \0A\00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str13 = private unnamed_addr constant [9 x i8] c"and of \0A\00", align 1
@.str14 = private unnamed_addr constant [10 x i8] c"Iterator\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

@_ZN6bitvecC1Ev = alias void (%class.bitvec*)* @_ZN6bitvecC2Ev
@_ZN6bitvecC1Ei = alias void (%class.bitvec*, i32)* @_ZN6bitvecC2Ei
@_ZN6bitvecD1Ev = alias void (%class.bitvec*)* @_ZN6bitvecD2Ev
@_ZN6bitvecC1ERKS_ = alias void (%class.bitvec*, %class.bitvec*)* @_ZN6bitvecC2ERKS_

define internal void @__cxx_global_var_init() section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #1
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #0

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #0

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #1

define void @_ZN6bitvecC2Ev(%class.bitvec* %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.bitvec*, align 4
  store %class.bitvec* %this, %class.bitvec** %1, align 4
  %2 = load %class.bitvec** %1
  %3 = getelementptr inbounds %class.bitvec* %2, i32 0, i32 0
  store i32 1, i32* %3, align 4
  %4 = getelementptr inbounds %class.bitvec* %2, i32 0, i32 1
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %class.bitvec* %2, i32 0, i32 3
  store i32 0, i32* %5, align 4
  %6 = call noalias i8* @_Znwj(i32 4) #8
  %7 = bitcast i8* %6 to i32*
  %8 = getelementptr inbounds %class.bitvec* %2, i32 0, i32 2
  store i32* %7, i32** %8, align 4
  %9 = getelementptr inbounds %class.bitvec* %2, i32 0, i32 2
  %10 = load i32** %9, align 4
  %11 = getelementptr inbounds i32* %10, i32 0
  store i32 0, i32* %11, align 4
  ret void
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwj(i32) #2

define void @_ZN6bitvecC2Ei(%class.bitvec* %this, i32 %s) unnamed_addr #0 align 2 {
  %1 = alloca %class.bitvec*, align 4
  %2 = alloca i32, align 4
  %i = alloca i32, align 4
  store %class.bitvec* %this, %class.bitvec** %1, align 4
  store i32 %s, i32* %2, align 4
  %3 = load %class.bitvec** %1
  %4 = load i32* %2, align 4
  %5 = sdiv i32 %4, 32
  %6 = add nsw i32 %5, 1
  %7 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 3
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 0
  %11 = load i32* %10, align 4
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 4)
  %13 = extractvalue { i32, i1 } %12, 1
  %14 = extractvalue { i32, i1 } %12, 0
  %15 = select i1 %13, i32 -1, i32 %14
  %16 = call noalias i8* @_Znaj(i32 %15) #8
  %17 = bitcast i8* %16 to i32*
  %18 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 2
  store i32* %17, i32** %18, align 4
  store i32 0, i32* %i, align 4
  br label %19

; <label>:19                                      ; preds = %29, %0
  %20 = load i32* %i, align 4
  %21 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 0
  %22 = load i32* %21, align 4
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %32

; <label>:24                                      ; preds = %19
  %25 = load i32* %i, align 4
  %26 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 2
  %27 = load i32** %26, align 4
  %28 = getelementptr inbounds i32* %27, i32 %25
  store i32 0, i32* %28, align 4
  br label %29

; <label>:29                                      ; preds = %24
  %30 = load i32* %i, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %i, align 4
  br label %19

; <label>:32                                      ; preds = %19
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: nobuiltin
declare noalias i8* @_Znaj(i32) #2

; Function Attrs: nounwind
define void @_ZN6bitvecD2Ev(%class.bitvec* %this) unnamed_addr #4 align 2 {
  %1 = alloca %class.bitvec*, align 4
  store %class.bitvec* %this, %class.bitvec** %1, align 4
  %2 = load %class.bitvec** %1
  %3 = getelementptr inbounds %class.bitvec* %2, i32 0, i32 2
  %4 = load i32** %3, align 4
  %5 = icmp eq i32* %4, null
  br i1 %5, label %8, label %6

; <label>:6                                       ; preds = %0
  %7 = bitcast i32* %4 to i8*
  call void @_ZdlPv(i8* %7) #9
  br label %8

; <label>:8                                       ; preds = %6, %0
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #5

define void @_ZN6bitvecC2ERKS_(%class.bitvec* %this, %class.bitvec* %b2) unnamed_addr #0 align 2 {
  %1 = alloca %class.bitvec*, align 4
  %2 = alloca %class.bitvec*, align 4
  %i = alloca i32, align 4
  store %class.bitvec* %this, %class.bitvec** %1, align 4
  store %class.bitvec* %b2, %class.bitvec** %2, align 4
  %3 = load %class.bitvec** %1
  %4 = load %class.bitvec** %2, align 4
  %5 = getelementptr inbounds %class.bitvec* %4, i32 0, i32 0
  %6 = load i32* %5, align 4
  %7 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load %class.bitvec** %2, align 4
  %9 = getelementptr inbounds %class.bitvec* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 0
  %13 = load i32* %12, align 4
  %14 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 4)
  %15 = extractvalue { i32, i1 } %14, 1
  %16 = extractvalue { i32, i1 } %14, 0
  %17 = select i1 %15, i32 -1, i32 %16
  %18 = call noalias i8* @_Znaj(i32 %17) #8
  %19 = bitcast i8* %18 to i32*
  %20 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 2
  store i32* %19, i32** %20, align 4
  store i32 0, i32* %i, align 4
  br label %21

; <label>:21                                      ; preds = %37, %0
  %22 = load i32* %i, align 4
  %23 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 0
  %24 = load i32* %23, align 4
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %40

; <label>:26                                      ; preds = %21
  %27 = load i32* %i, align 4
  %28 = load %class.bitvec** %2, align 4
  %29 = getelementptr inbounds %class.bitvec* %28, i32 0, i32 2
  %30 = load i32** %29, align 4
  %31 = getelementptr inbounds i32* %30, i32 %27
  %32 = load i32* %31, align 4
  %33 = load i32* %i, align 4
  %34 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 2
  %35 = load i32** %34, align 4
  %36 = getelementptr inbounds i32* %35, i32 %33
  store i32 %32, i32* %36, align 4
  br label %37

; <label>:37                                      ; preds = %26
  %38 = load i32* %i, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %i, align 4
  br label %21

; <label>:40                                      ; preds = %21
  ret void
}

define void @_ZN6bitvec8push_bitEb(%class.bitvec* %this, i1 zeroext %val) #0 align 2 {
  %1 = alloca %class.bitvec*, align 4
  %2 = alloca i8, align 1
  %i = alloca i32, align 4
  %bt = alloca i32*, align 4
  %temp = alloca i32, align 4
  %blno = alloca i32, align 4
  store %class.bitvec* %this, %class.bitvec** %1, align 4
  %3 = zext i1 %val to i8
  store i8 %3, i8* %2, align 1
  %4 = load %class.bitvec** %1
  %5 = getelementptr inbounds %class.bitvec* %4, i32 0, i32 1
  %6 = load i32* %5, align 4
  %7 = getelementptr inbounds %class.bitvec* %4, i32 0, i32 0
  %8 = load i32* %7, align 4
  %9 = mul nsw i32 %8, 32
  %10 = icmp sge i32 %6, %9
  br i1 %10, label %11, label %69

; <label>:11                                      ; preds = %0
  %12 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([13 x i8]* @.str, i32 0, i32 0))
  %13 = getelementptr inbounds %class.bitvec* %4, i32 0, i32 2
  %14 = load i32** %13, align 4
  store i32* %14, i32** %bt, align 4
  %15 = getelementptr inbounds %class.bitvec* %4, i32 0, i32 0
  %16 = load i32* %15, align 4
  %17 = mul nsw i32 %16, 2
  %18 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 4)
  %19 = extractvalue { i32, i1 } %18, 1
  %20 = extractvalue { i32, i1 } %18, 0
  %21 = select i1 %19, i32 -1, i32 %20
  %22 = call noalias i8* @_Znaj(i32 %21) #8
  %23 = bitcast i8* %22 to i32*
  %24 = getelementptr inbounds %class.bitvec* %4, i32 0, i32 2
  store i32* %23, i32** %24, align 4
  store i32 0, i32* %i, align 4
  br label %25

; <label>:25                                      ; preds = %39, %11
  %26 = load i32* %i, align 4
  %27 = getelementptr inbounds %class.bitvec* %4, i32 0, i32 0
  %28 = load i32* %27, align 4
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %42

; <label>:30                                      ; preds = %25
  %31 = load i32* %i, align 4
  %32 = load i32** %bt, align 4
  %33 = getelementptr inbounds i32* %32, i32 %31
  %34 = load i32* %33, align 4
  %35 = load i32* %i, align 4
  %36 = getelementptr inbounds %class.bitvec* %4, i32 0, i32 2
  %37 = load i32** %36, align 4
  %38 = getelementptr inbounds i32* %37, i32 %35
  store i32 %34, i32* %38, align 4
  br label %39

; <label>:39                                      ; preds = %30
  %40 = load i32* %i, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %i, align 4
  br label %25

; <label>:42                                      ; preds = %25
  %43 = getelementptr inbounds %class.bitvec* %4, i32 0, i32 0
  %44 = load i32* %43, align 4
  store i32 %44, i32* %i, align 4
  br label %45

; <label>:45                                      ; preds = %56, %42
  %46 = load i32* %i, align 4
  %47 = getelementptr inbounds %class.bitvec* %4, i32 0, i32 0
  %48 = load i32* %47, align 4
  %49 = mul nsw i32 %48, 2
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %59

; <label>:51                                      ; preds = %45
  %52 = load i32* %i, align 4
  %53 = getelementptr inbounds %class.bitvec* %4, i32 0, i32 2
  %54 = load i32** %53, align 4
  %55 = getelementptr inbounds i32* %54, i32 %52
  store i32 0, i32* %55, align 4
  br label %56

; <label>:56                                      ; preds = %51
  %57 = load i32* %i, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %i, align 4
  br label %45

; <label>:59                                      ; preds = %45
  %60 = getelementptr inbounds %class.bitvec* %4, i32 0, i32 0
  %61 = load i32* %60, align 4
  %62 = mul nsw i32 %61, 2
  %63 = getelementptr inbounds %class.bitvec* %4, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load i32** %bt, align 4
  %65 = icmp eq i32* %64, null
  br i1 %65, label %68, label %66

; <label>:66                                      ; preds = %59
  %67 = bitcast i32* %64 to i8*
  call void @_ZdlPv(i8* %67) #9
  br label %68

; <label>:68                                      ; preds = %66, %59
  br label %69

; <label>:69                                      ; preds = %68, %0
  %70 = load i8* %2, align 1
  %71 = trunc i8 %70 to i1
  br i1 %71, label %72, label %77

; <label>:72                                      ; preds = %69
  store i32 1, i32* %temp, align 4
  %73 = load i32* %temp, align 4
  %74 = getelementptr inbounds %class.bitvec* %4, i32 0, i32 1
  %75 = load i32* %74, align 4
  %76 = shl i32 %73, %75
  store i32 %76, i32* %temp, align 4
  br label %78

; <label>:77                                      ; preds = %69
  store i32 0, i32* %temp, align 4
  br label %78

; <label>:78                                      ; preds = %77, %72
  %79 = getelementptr inbounds %class.bitvec* %4, i32 0, i32 1
  %80 = load i32* %79, align 4
  %81 = sdiv i32 %80, 32
  store i32 %81, i32* %blno, align 4
  %82 = load i32* %blno, align 4
  %83 = getelementptr inbounds %class.bitvec* %4, i32 0, i32 2
  %84 = load i32** %83, align 4
  %85 = getelementptr inbounds i32* %84, i32 %82
  %86 = load i32* %85, align 4
  %87 = load i32* %temp, align 4
  %88 = or i32 %86, %87
  %89 = load i32* %blno, align 4
  %90 = getelementptr inbounds %class.bitvec* %4, i32 0, i32 2
  %91 = load i32** %90, align 4
  %92 = getelementptr inbounds i32* %91, i32 %89
  store i32 %88, i32* %92, align 4
  %93 = getelementptr inbounds %class.bitvec* %4, i32 0, i32 1
  %94 = load i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  ret void
}

declare %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"*, i8*) #0

define void @_ZN6bitvec8show_bitEv(%class.bitvec* %this) #0 align 2 {
  %1 = alloca %class.bitvec*, align 4
  %i = alloca i32, align 4
  store %class.bitvec* %this, %class.bitvec** %1, align 4
  %2 = load %class.bitvec** %1
  %3 = getelementptr inbounds %class.bitvec* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  %5 = sub nsw i32 %4, 1
  store i32 %5, i32* %i, align 4
  br label %6

; <label>:6                                       ; preds = %13, %0
  %7 = load i32* %i, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %16

; <label>:9                                       ; preds = %6
  %10 = load i32* %i, align 4
  %11 = call zeroext i1 @_ZN6bitvec9query_bitEi(%class.bitvec* %2, i32 %10)
  %12 = call %"class.std::basic_ostream"* @_ZNSolsEb(%"class.std::basic_ostream"* @_ZSt4cout, i1 zeroext %11)
  br label %13

; <label>:13                                      ; preds = %9
  %14 = load i32* %i, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %i, align 4
  br label %6

; <label>:16                                      ; preds = %6
  %17 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  ret void
}

declare %"class.std::basic_ostream"* @_ZNSolsEb(%"class.std::basic_ostream"*, i1 zeroext) #0

define zeroext i1 @_ZN6bitvec9query_bitEi(%class.bitvec* %this, i32 %bn) #0 align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %class.bitvec*, align 4
  %3 = alloca i32, align 4
  %sval = alloca i32, align 4
  %temp = alloca i32, align 4
  %bnum = alloca i32, align 4
  store %class.bitvec* %this, %class.bitvec** %2, align 4
  store i32 %bn, i32* %3, align 4
  %4 = load %class.bitvec** %2
  %5 = load i32* %3, align 4
  %6 = getelementptr inbounds %class.bitvec* %4, i32 0, i32 1
  %7 = load i32* %6, align 4
  %8 = icmp sge i32 %5, %7
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %0
  %10 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([16 x i8]* @.str4, i32 0, i32 0))
  br label %33

; <label>:11                                      ; preds = %0
  %12 = load i32* %3, align 4
  %13 = srem i32 %12, 32
  store i32 %13, i32* %sval, align 4
  store i32 1, i32* %temp, align 4
  %14 = load i32* %temp, align 4
  %15 = load i32* %sval, align 4
  %16 = shl i32 %14, %15
  store i32 %16, i32* %temp, align 4
  %17 = load i32* %3, align 4
  %18 = sdiv i32 %17, 32
  store i32 %18, i32* %bnum, align 4
  %19 = load i32* %bnum, align 4
  %20 = getelementptr inbounds %class.bitvec* %4, i32 0, i32 2
  %21 = load i32** %20, align 4
  %22 = getelementptr inbounds i32* %21, i32 %19
  %23 = load i32* %22, align 4
  %24 = load i32* %temp, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %temp, align 4
  %26 = load i32* %temp, align 4
  %27 = load i32* %sval, align 4
  %28 = ashr i32 %26, %27
  store i32 %28, i32* %temp, align 4
  %29 = load i32* %temp, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %11
  store i1 true, i1* %1
  br label %34

; <label>:32                                      ; preds = %11
  store i1 false, i1* %1
  br label %34

; <label>:33                                      ; preds = %9
  call void @llvm.trap()
  unreachable

; <label>:34                                      ; preds = %32, %31
  %35 = load i1* %1
  ret i1 %35
}

define void @_ZN6bitvec7set_bitEi(%class.bitvec* %this, i32 %bn) #0 align 2 {
  %1 = alloca %class.bitvec*, align 4
  %2 = alloca i32, align 4
  %sval = alloca i32, align 4
  %temp = alloca i32, align 4
  %bnum = alloca i32, align 4
  store %class.bitvec* %this, %class.bitvec** %1, align 4
  store i32 %bn, i32* %2, align 4
  %3 = load %class.bitvec** %1
  %4 = load i32* %2, align 4
  %5 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 1
  %6 = load i32* %5, align 4
  %7 = icmp sge i32 %4, %6
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %0
  %9 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([17 x i8]* @.str2, i32 0, i32 0))
  br label %29

; <label>:10                                      ; preds = %0
  %11 = load i32* %2, align 4
  %12 = srem i32 %11, 32
  store i32 %12, i32* %sval, align 4
  store i32 1, i32* %temp, align 4
  %13 = load i32* %temp, align 4
  %14 = load i32* %sval, align 4
  %15 = shl i32 %13, %14
  store i32 %15, i32* %temp, align 4
  %16 = load i32* %2, align 4
  %17 = sdiv i32 %16, 32
  store i32 %17, i32* %bnum, align 4
  %18 = load i32* %bnum, align 4
  %19 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 2
  %20 = load i32** %19, align 4
  %21 = getelementptr inbounds i32* %20, i32 %18
  %22 = load i32* %21, align 4
  %23 = load i32* %temp, align 4
  %24 = or i32 %22, %23
  %25 = load i32* %bnum, align 4
  %26 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 2
  %27 = load i32** %26, align 4
  %28 = getelementptr inbounds i32* %27, i32 %25
  store i32 %24, i32* %28, align 4
  br label %29

; <label>:29                                      ; preds = %10, %8
  ret void
}

define void @_ZN6bitvec9clear_bitEi(%class.bitvec* %this, i32 %bn) #0 align 2 {
  %1 = alloca %class.bitvec*, align 4
  %2 = alloca i32, align 4
  %sval = alloca i32, align 4
  %temp = alloca i32, align 4
  %bnum = alloca i32, align 4
  store %class.bitvec* %this, %class.bitvec** %1, align 4
  store i32 %bn, i32* %2, align 4
  %3 = load %class.bitvec** %1
  %4 = load i32* %2, align 4
  %5 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 1
  %6 = load i32* %5, align 4
  %7 = icmp sge i32 %4, %6
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %0
  %9 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([19 x i8]* @.str3, i32 0, i32 0))
  br label %31

; <label>:10                                      ; preds = %0
  %11 = load i32* %2, align 4
  %12 = srem i32 %11, 32
  store i32 %12, i32* %sval, align 4
  store i32 1, i32* %temp, align 4
  %13 = load i32* %temp, align 4
  %14 = load i32* %sval, align 4
  %15 = shl i32 %13, %14
  store i32 %15, i32* %temp, align 4
  %16 = load i32* %temp, align 4
  %17 = xor i32 %16, -1
  store i32 %17, i32* %temp, align 4
  %18 = load i32* %2, align 4
  %19 = sdiv i32 %18, 32
  store i32 %19, i32* %bnum, align 4
  %20 = load i32* %bnum, align 4
  %21 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 2
  %22 = load i32** %21, align 4
  %23 = getelementptr inbounds i32* %22, i32 %20
  %24 = load i32* %23, align 4
  %25 = load i32* %temp, align 4
  %26 = and i32 %24, %25
  %27 = load i32* %bnum, align 4
  %28 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 2
  %29 = load i32** %28, align 4
  %30 = getelementptr inbounds i32* %29, i32 %27
  store i32 %26, i32* %30, align 4
  br label %31

; <label>:31                                      ; preds = %10, %8
  ret void
}

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #6

define void @_ZN6bitvecanERKS_(%class.bitvec* noalias sret %agg.result, %class.bitvec* %this, %class.bitvec* %b2) #0 align 2 {
  %1 = alloca %class.bitvec*, align 4
  %2 = alloca %class.bitvec*, align 4
  %lsize = alloca i32, align 4
  %i = alloca i32, align 4
  %lblocks = alloca i32, align 4
  %3 = alloca i1
  %4 = alloca i32
  store %class.bitvec* %this, %class.bitvec** %1, align 4
  store %class.bitvec* %b2, %class.bitvec** %2, align 4
  %5 = load %class.bitvec** %1
  %6 = getelementptr inbounds %class.bitvec* %5, i32 0, i32 1
  %7 = load i32* %6, align 4
  %8 = load %class.bitvec** %2, align 4
  %9 = getelementptr inbounds %class.bitvec* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds %class.bitvec* %5, i32 0, i32 1
  %14 = load i32* %13, align 4
  br label %19

; <label>:15                                      ; preds = %0
  %16 = load %class.bitvec** %2, align 4
  %17 = getelementptr inbounds %class.bitvec* %16, i32 0, i32 1
  %18 = load i32* %17, align 4
  br label %19

; <label>:19                                      ; preds = %15, %12
  %20 = phi i32 [ %14, %12 ], [ %18, %15 ]
  store i32 %20, i32* %lsize, align 4
  store i1 false, i1* %3
  %21 = load i32* %lsize, align 4
  call void @_ZN6bitvecC1Ei(%class.bitvec* %agg.result, i32 %21)
  %22 = load i32* %lsize, align 4
  %23 = getelementptr inbounds %class.bitvec* %5, i32 0, i32 1
  %24 = load i32* %23, align 4
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %30

; <label>:26                                      ; preds = %19
  %27 = getelementptr inbounds %class.bitvec* %5, i32 0, i32 1
  %28 = load i32* %27, align 4
  %29 = getelementptr inbounds %class.bitvec* %agg.result, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  br label %35

; <label>:30                                      ; preds = %19
  %31 = load %class.bitvec** %2, align 4
  %32 = getelementptr inbounds %class.bitvec* %31, i32 0, i32 1
  %33 = load i32* %32, align 4
  %34 = getelementptr inbounds %class.bitvec* %agg.result, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  br label %35

; <label>:35                                      ; preds = %30, %26
  %36 = phi i32* [ %29, %26 ], [ %34, %30 ]
  %37 = getelementptr inbounds %class.bitvec* %5, i32 0, i32 0
  %38 = load i32* %37, align 4
  %39 = load %class.bitvec** %2, align 4
  %40 = getelementptr inbounds %class.bitvec* %39, i32 0, i32 0
  %41 = load i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %46

; <label>:43                                      ; preds = %35
  %44 = getelementptr inbounds %class.bitvec* %5, i32 0, i32 0
  %45 = load i32* %44, align 4
  br label %50

; <label>:46                                      ; preds = %35
  %47 = load %class.bitvec** %2, align 4
  %48 = getelementptr inbounds %class.bitvec* %47, i32 0, i32 0
  %49 = load i32* %48, align 4
  br label %50

; <label>:50                                      ; preds = %46, %43
  %51 = phi i32 [ %45, %43 ], [ %49, %46 ]
  store i32 %51, i32* %lblocks, align 4
  store i32 0, i32* %i, align 4
  br label %52

; <label>:52                                      ; preds = %73, %50
  %53 = load i32* %i, align 4
  %54 = load i32* %lblocks, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %76

; <label>:56                                      ; preds = %52
  %57 = load i32* %i, align 4
  %58 = getelementptr inbounds %class.bitvec* %5, i32 0, i32 2
  %59 = load i32** %58, align 4
  %60 = getelementptr inbounds i32* %59, i32 %57
  %61 = load i32* %60, align 4
  %62 = load i32* %i, align 4
  %63 = load %class.bitvec** %2, align 4
  %64 = getelementptr inbounds %class.bitvec* %63, i32 0, i32 2
  %65 = load i32** %64, align 4
  %66 = getelementptr inbounds i32* %65, i32 %62
  %67 = load i32* %66, align 4
  %68 = and i32 %61, %67
  %69 = load i32* %i, align 4
  %70 = getelementptr inbounds %class.bitvec* %agg.result, i32 0, i32 2
  %71 = load i32** %70, align 4
  %72 = getelementptr inbounds i32* %71, i32 %69
  store i32 %68, i32* %72, align 4
  br label %73

; <label>:73                                      ; preds = %56
  %74 = load i32* %i, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %i, align 4
  br label %52

; <label>:76                                      ; preds = %52
  store i1 true, i1* %3
  store i32 1, i32* %4
  %77 = load i1* %3
  br i1 %77, label %79, label %78

; <label>:78                                      ; preds = %76
  call void @_ZN6bitvecD1Ev(%class.bitvec* %agg.result)
  br label %79

; <label>:79                                      ; preds = %78, %76
  ret void
}

define void @_ZN6bitvecorERKS_(%class.bitvec* noalias sret %agg.result, %class.bitvec* %this, %class.bitvec* %b2) #0 align 2 {
  %1 = alloca %class.bitvec*, align 4
  %2 = alloca %class.bitvec*, align 4
  %hsize = alloca i32, align 4
  %i = alloca i32, align 4
  %lblocks = alloca i32, align 4
  %3 = alloca i1
  %4 = alloca i32
  store %class.bitvec* %this, %class.bitvec** %1, align 4
  store %class.bitvec* %b2, %class.bitvec** %2, align 4
  %5 = load %class.bitvec** %1
  %6 = getelementptr inbounds %class.bitvec* %5, i32 0, i32 1
  %7 = load i32* %6, align 4
  %8 = load %class.bitvec** %2, align 4
  %9 = getelementptr inbounds %class.bitvec* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = icmp sgt i32 %7, %10
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds %class.bitvec* %5, i32 0, i32 1
  %14 = load i32* %13, align 4
  br label %19

; <label>:15                                      ; preds = %0
  %16 = load %class.bitvec** %2, align 4
  %17 = getelementptr inbounds %class.bitvec* %16, i32 0, i32 1
  %18 = load i32* %17, align 4
  br label %19

; <label>:19                                      ; preds = %15, %12
  %20 = phi i32 [ %14, %12 ], [ %18, %15 ]
  store i32 %20, i32* %hsize, align 4
  store i1 false, i1* %3
  %21 = load i32* %hsize, align 4
  call void @_ZN6bitvecC1Ei(%class.bitvec* %agg.result, i32 %21)
  %22 = load i32* %hsize, align 4
  %23 = getelementptr inbounds %class.bitvec* %5, i32 0, i32 1
  %24 = load i32* %23, align 4
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %30

; <label>:26                                      ; preds = %19
  %27 = getelementptr inbounds %class.bitvec* %5, i32 0, i32 1
  %28 = load i32* %27, align 4
  %29 = getelementptr inbounds %class.bitvec* %agg.result, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  br label %35

; <label>:30                                      ; preds = %19
  %31 = load %class.bitvec** %2, align 4
  %32 = getelementptr inbounds %class.bitvec* %31, i32 0, i32 1
  %33 = load i32* %32, align 4
  %34 = getelementptr inbounds %class.bitvec* %agg.result, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  br label %35

; <label>:35                                      ; preds = %30, %26
  %36 = phi i32* [ %29, %26 ], [ %34, %30 ]
  %37 = getelementptr inbounds %class.bitvec* %5, i32 0, i32 0
  %38 = load i32* %37, align 4
  %39 = load %class.bitvec** %2, align 4
  %40 = getelementptr inbounds %class.bitvec* %39, i32 0, i32 0
  %41 = load i32* %40, align 4
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %46

; <label>:43                                      ; preds = %35
  %44 = getelementptr inbounds %class.bitvec* %5, i32 0, i32 0
  %45 = load i32* %44, align 4
  br label %50

; <label>:46                                      ; preds = %35
  %47 = load %class.bitvec** %2, align 4
  %48 = getelementptr inbounds %class.bitvec* %47, i32 0, i32 0
  %49 = load i32* %48, align 4
  br label %50

; <label>:50                                      ; preds = %46, %43
  %51 = phi i32 [ %45, %43 ], [ %49, %46 ]
  store i32 %51, i32* %lblocks, align 4
  store i32 0, i32* %i, align 4
  br label %52

; <label>:52                                      ; preds = %73, %50
  %53 = load i32* %i, align 4
  %54 = load i32* %lblocks, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %76

; <label>:56                                      ; preds = %52
  %57 = load i32* %i, align 4
  %58 = getelementptr inbounds %class.bitvec* %5, i32 0, i32 2
  %59 = load i32** %58, align 4
  %60 = getelementptr inbounds i32* %59, i32 %57
  %61 = load i32* %60, align 4
  %62 = load i32* %i, align 4
  %63 = load %class.bitvec** %2, align 4
  %64 = getelementptr inbounds %class.bitvec* %63, i32 0, i32 2
  %65 = load i32** %64, align 4
  %66 = getelementptr inbounds i32* %65, i32 %62
  %67 = load i32* %66, align 4
  %68 = or i32 %61, %67
  %69 = load i32* %i, align 4
  %70 = getelementptr inbounds %class.bitvec* %agg.result, i32 0, i32 2
  %71 = load i32** %70, align 4
  %72 = getelementptr inbounds i32* %71, i32 %69
  store i32 %68, i32* %72, align 4
  br label %73

; <label>:73                                      ; preds = %56
  %74 = load i32* %i, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %i, align 4
  br label %52

; <label>:76                                      ; preds = %52
  store i1 true, i1* %3
  store i32 1, i32* %4
  %77 = load i1* %3
  br i1 %77, label %79, label %78

; <label>:78                                      ; preds = %76
  call void @_ZN6bitvecD1Ev(%class.bitvec* %agg.result)
  br label %79

; <label>:79                                      ; preds = %78, %76
  ret void
}

define void @_ZN6bitveceoERKS_(%class.bitvec* noalias sret %agg.result, %class.bitvec* %this, %class.bitvec* %b2) #0 align 2 {
  %1 = alloca %class.bitvec*, align 4
  %2 = alloca %class.bitvec*, align 4
  %hsize = alloca i32, align 4
  %i = alloca i32, align 4
  %lblocks = alloca i32, align 4
  %3 = alloca i1
  %4 = alloca i32
  store %class.bitvec* %this, %class.bitvec** %1, align 4
  store %class.bitvec* %b2, %class.bitvec** %2, align 4
  %5 = load %class.bitvec** %1
  %6 = getelementptr inbounds %class.bitvec* %5, i32 0, i32 1
  %7 = load i32* %6, align 4
  %8 = load %class.bitvec** %2, align 4
  %9 = getelementptr inbounds %class.bitvec* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = icmp sgt i32 %7, %10
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds %class.bitvec* %5, i32 0, i32 1
  %14 = load i32* %13, align 4
  br label %19

; <label>:15                                      ; preds = %0
  %16 = load %class.bitvec** %2, align 4
  %17 = getelementptr inbounds %class.bitvec* %16, i32 0, i32 1
  %18 = load i32* %17, align 4
  br label %19

; <label>:19                                      ; preds = %15, %12
  %20 = phi i32 [ %14, %12 ], [ %18, %15 ]
  store i32 %20, i32* %hsize, align 4
  store i1 false, i1* %3
  %21 = load i32* %hsize, align 4
  call void @_ZN6bitvecC1Ei(%class.bitvec* %agg.result, i32 %21)
  %22 = load i32* %hsize, align 4
  %23 = getelementptr inbounds %class.bitvec* %5, i32 0, i32 1
  %24 = load i32* %23, align 4
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %30

; <label>:26                                      ; preds = %19
  %27 = getelementptr inbounds %class.bitvec* %5, i32 0, i32 1
  %28 = load i32* %27, align 4
  %29 = getelementptr inbounds %class.bitvec* %agg.result, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  br label %35

; <label>:30                                      ; preds = %19
  %31 = load %class.bitvec** %2, align 4
  %32 = getelementptr inbounds %class.bitvec* %31, i32 0, i32 1
  %33 = load i32* %32, align 4
  %34 = getelementptr inbounds %class.bitvec* %agg.result, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  br label %35

; <label>:35                                      ; preds = %30, %26
  %36 = phi i32* [ %29, %26 ], [ %34, %30 ]
  %37 = getelementptr inbounds %class.bitvec* %5, i32 0, i32 0
  %38 = load i32* %37, align 4
  %39 = load %class.bitvec** %2, align 4
  %40 = getelementptr inbounds %class.bitvec* %39, i32 0, i32 0
  %41 = load i32* %40, align 4
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %46

; <label>:43                                      ; preds = %35
  %44 = getelementptr inbounds %class.bitvec* %5, i32 0, i32 0
  %45 = load i32* %44, align 4
  br label %50

; <label>:46                                      ; preds = %35
  %47 = load %class.bitvec** %2, align 4
  %48 = getelementptr inbounds %class.bitvec* %47, i32 0, i32 0
  %49 = load i32* %48, align 4
  br label %50

; <label>:50                                      ; preds = %46, %43
  %51 = phi i32 [ %45, %43 ], [ %49, %46 ]
  store i32 %51, i32* %lblocks, align 4
  store i32 0, i32* %i, align 4
  br label %52

; <label>:52                                      ; preds = %73, %50
  %53 = load i32* %i, align 4
  %54 = load i32* %lblocks, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %76

; <label>:56                                      ; preds = %52
  %57 = load i32* %i, align 4
  %58 = getelementptr inbounds %class.bitvec* %5, i32 0, i32 2
  %59 = load i32** %58, align 4
  %60 = getelementptr inbounds i32* %59, i32 %57
  %61 = load i32* %60, align 4
  %62 = load i32* %i, align 4
  %63 = load %class.bitvec** %2, align 4
  %64 = getelementptr inbounds %class.bitvec* %63, i32 0, i32 2
  %65 = load i32** %64, align 4
  %66 = getelementptr inbounds i32* %65, i32 %62
  %67 = load i32* %66, align 4
  %68 = xor i32 %61, %67
  %69 = load i32* %i, align 4
  %70 = getelementptr inbounds %class.bitvec* %agg.result, i32 0, i32 2
  %71 = load i32** %70, align 4
  %72 = getelementptr inbounds i32* %71, i32 %69
  store i32 %68, i32* %72, align 4
  br label %73

; <label>:73                                      ; preds = %56
  %74 = load i32* %i, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %i, align 4
  br label %52

; <label>:76                                      ; preds = %52
  store i1 true, i1* %3
  store i32 1, i32* %4
  %77 = load i1* %3
  br i1 %77, label %79, label %78

; <label>:78                                      ; preds = %76
  call void @_ZN6bitvecD1Ev(%class.bitvec* %agg.result)
  br label %79

; <label>:79                                      ; preds = %78, %76
  ret void
}

define i32 @_ZN6bitvecixEi(%class.bitvec* %this, i32 %in) #0 align 2 {
  %1 = alloca %class.bitvec*, align 4
  %2 = alloca i32, align 4
  %o = alloca i32, align 4
  store %class.bitvec* %this, %class.bitvec** %1, align 4
  store i32 %in, i32* %2, align 4
  %3 = load %class.bitvec** %1
  %4 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([8 x i8]* @.str5, i32 0, i32 0))
  %5 = load i32* %2, align 4
  %6 = call zeroext i1 @_ZN6bitvec9query_bitEi(%class.bitvec* %3, i32 %5)
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store i32 1, i32* %o, align 4
  br label %9

; <label>:8                                       ; preds = %0
  store i32 0, i32* %o, align 4
  br label %9

; <label>:9                                       ; preds = %8, %7
  %10 = load i32* %o, align 4
  ret i32 %10
}

define %class.bitvec* @_ZN6bitvecaSERKS_(%class.bitvec* %this, %class.bitvec* %b2) #0 align 2 {
  %1 = alloca %class.bitvec*, align 4
  %2 = alloca %class.bitvec*, align 4
  %i = alloca i32, align 4
  store %class.bitvec* %this, %class.bitvec** %1, align 4
  store %class.bitvec* %b2, %class.bitvec** %2, align 4
  %3 = load %class.bitvec** %1
  %4 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 0
  %5 = load i32* %4, align 4
  %6 = load %class.bitvec** %2, align 4
  %7 = getelementptr inbounds %class.bitvec* %6, i32 0, i32 0
  %8 = load i32* %7, align 4
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %27

; <label>:10                                      ; preds = %0
  %11 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 2
  %12 = load i32** %11, align 4
  %13 = icmp eq i32* %12, null
  br i1 %13, label %16, label %14

; <label>:14                                      ; preds = %10
  %15 = bitcast i32* %12 to i8*
  call void @_ZdlPv(i8* %15) #9
  br label %16

; <label>:16                                      ; preds = %14, %10
  %17 = load %class.bitvec** %2, align 4
  %18 = getelementptr inbounds %class.bitvec* %17, i32 0, i32 0
  %19 = load i32* %18, align 4
  %20 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %19, i32 4)
  %21 = extractvalue { i32, i1 } %20, 1
  %22 = extractvalue { i32, i1 } %20, 0
  %23 = select i1 %21, i32 -1, i32 %22
  %24 = call noalias i8* @_Znaj(i32 %23) #8
  %25 = bitcast i8* %24 to i32*
  %26 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 2
  store i32* %25, i32** %26, align 4
  br label %27

; <label>:27                                      ; preds = %16, %0
  store i32 0, i32* %i, align 4
  br label %28

; <label>:28                                      ; preds = %45, %27
  %29 = load i32* %i, align 4
  %30 = load %class.bitvec** %2, align 4
  %31 = getelementptr inbounds %class.bitvec* %30, i32 0, i32 0
  %32 = load i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %48

; <label>:34                                      ; preds = %28
  %35 = load i32* %i, align 4
  %36 = load %class.bitvec** %2, align 4
  %37 = getelementptr inbounds %class.bitvec* %36, i32 0, i32 2
  %38 = load i32** %37, align 4
  %39 = getelementptr inbounds i32* %38, i32 %35
  %40 = load i32* %39, align 4
  %41 = load i32* %i, align 4
  %42 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 2
  %43 = load i32** %42, align 4
  %44 = getelementptr inbounds i32* %43, i32 %41
  store i32 %40, i32* %44, align 4
  br label %45

; <label>:45                                      ; preds = %34
  %46 = load i32* %i, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %i, align 4
  br label %28

; <label>:48                                      ; preds = %28
  %49 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 0
  %50 = load i32* %49, align 4
  %51 = load %class.bitvec** %2, align 4
  %52 = getelementptr inbounds %class.bitvec* %51, i32 0, i32 0
  %53 = load i32* %52, align 4
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %73

; <label>:55                                      ; preds = %48
  %56 = load %class.bitvec** %2, align 4
  %57 = getelementptr inbounds %class.bitvec* %56, i32 0, i32 0
  %58 = load i32* %57, align 4
  store i32 %58, i32* %i, align 4
  br label %59

; <label>:59                                      ; preds = %69, %55
  %60 = load i32* %i, align 4
  %61 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 0
  %62 = load i32* %61, align 4
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %72

; <label>:64                                      ; preds = %59
  %65 = load i32* %i, align 4
  %66 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 2
  %67 = load i32** %66, align 4
  %68 = getelementptr inbounds i32* %67, i32 %65
  store i32 0, i32* %68, align 4
  br label %69

; <label>:69                                      ; preds = %64
  %70 = load i32* %i, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %i, align 4
  br label %59

; <label>:72                                      ; preds = %59
  br label %73

; <label>:73                                      ; preds = %72, %48
  %74 = load %class.bitvec** %2, align 4
  %75 = getelementptr inbounds %class.bitvec* %74, i32 0, i32 0
  %76 = load i32* %75, align 4
  %77 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 0
  store i32 %76, i32* %77, align 4
  %78 = load %class.bitvec** %2, align 4
  %79 = getelementptr inbounds %class.bitvec* %78, i32 0, i32 1
  %80 = load i32* %79, align 4
  %81 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  ret %class.bitvec* %3
}

define zeroext i1 @_ZN6bitvec8getbeginEv(%class.bitvec* %this) #0 align 2 {
  %1 = alloca %class.bitvec*, align 4
  store %class.bitvec* %this, %class.bitvec** %1, align 4
  %2 = load %class.bitvec** %1
  %3 = call zeroext i1 @_ZN6bitvec9query_bitEi(%class.bitvec* %2, i32 0)
  ret i1 %3
}

define zeroext i1 @_ZN6bitvec6getendEv(%class.bitvec* %this) #0 align 2 {
  %1 = alloca %class.bitvec*, align 4
  store %class.bitvec* %this, %class.bitvec** %1, align 4
  %2 = load %class.bitvec** %1
  %3 = getelementptr inbounds %class.bitvec* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  %5 = sub nsw i32 %4, 1
  %6 = call zeroext i1 @_ZN6bitvec9query_bitEi(%class.bitvec* %2, i32 %5)
  ret i1 %6
}

; Function Attrs: nounwind
define i32 @_ZN6bitvec7itbeginEv(%class.bitvec* %this) #4 align 2 {
  %1 = alloca %class.bitvec*, align 4
  store %class.bitvec* %this, %class.bitvec** %1, align 4
  %2 = load %class.bitvec** %1
  ret i32 0
}

; Function Attrs: nounwind
define i32 @_ZN6bitvec5itendEv(%class.bitvec* %this) #4 align 2 {
  %1 = alloca %class.bitvec*, align 4
  store %class.bitvec* %this, %class.bitvec** %1, align 4
  %2 = load %class.bitvec** %1
  %3 = getelementptr inbounds %class.bitvec* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  ret i32 %4
}

define zeroext i1 @_ZN6bitvec4nextEv(%class.bitvec* %this) #0 align 2 {
  %1 = alloca %class.bitvec*, align 4
  store %class.bitvec* %this, %class.bitvec** %1, align 4
  %2 = load %class.bitvec** %1
  %3 = getelementptr inbounds %class.bitvec* %2, i32 0, i32 3
  %4 = load i32* %3, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* %3, align 4
  %6 = call zeroext i1 @_ZN6bitvec9query_bitEi(%class.bitvec* %2, i32 %4)
  ret i1 %6
}

define zeroext i1 @_ZN6bitvec8previousEv(%class.bitvec* %this) #0 align 2 {
  %1 = alloca %class.bitvec*, align 4
  store %class.bitvec* %this, %class.bitvec** %1, align 4
  %2 = load %class.bitvec** %1
  %3 = getelementptr inbounds %class.bitvec* %2, i32 0, i32 3
  %4 = load i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([24 x i8]* @.str6, i32 0, i32 0))
  br label %13

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %class.bitvec* %2, i32 0, i32 3
  %10 = load i32* %9, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 4
  %12 = call zeroext i1 @_ZN6bitvec9query_bitEi(%class.bitvec* %2, i32 %11)
  ret i1 %12

; <label>:13                                      ; preds = %6
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define void @_ZN6bitvec5setitEi(%class.bitvec* %this, i32 %i) #4 align 2 {
  %1 = alloca %class.bitvec*, align 4
  %2 = alloca i32, align 4
  store %class.bitvec* %this, %class.bitvec** %1, align 4
  store i32 %i, i32* %2, align 4
  %3 = load %class.bitvec** %1
  %4 = load i32* %2, align 4
  %5 = getelementptr inbounds %class.bitvec* %3, i32 0, i32 3
  store i32 %4, i32* %5, align 4
  ret void
}

define i32 @main() #0 {
  %1 = alloca i32, align 4
  %bv1 = alloca %class.bitvec, align 4
  %bv2 = alloca %class.bitvec, align 4
  %2 = alloca i8*
  %3 = alloca i32
  %bv3 = alloca %class.bitvec, align 4
  %bv4 = alloca %class.bitvec, align 4
  %i = alloca i32, align 4
  %band = alloca %class.bitvec, align 4
  %bor = alloca %class.bitvec, align 4
  %bxor = alloca %class.bitvec, align 4
  %4 = alloca %class.bitvec, align 4
  %5 = alloca %class.bitvec, align 4
  %6 = alloca %class.bitvec, align 4
  %7 = alloca %class.bitvec, align 4
  %8 = alloca %class.bitvec, align 4
  %9 = alloca %class.bitvec, align 4
  %10 = alloca %class.bitvec, align 4
  %11 = alloca %class.bitvec, align 4
  %12 = alloca %class.bitvec, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %bvaa = alloca %class.bitvec, align 4
  %13 = alloca %class.bitvec, align 4
  %i3 = alloca i32, align 4
  %be1 = alloca %class.bitvec, align 4
  %be2 = alloca %class.bitvec, align 4
  %be3 = alloca %class.bitvec, align 4
  %be4 = alloca %class.bitvec, align 4
  %14 = alloca i32
  store i32 0, i32* %1
  call void @_ZN6bitvecC1Ev(%class.bitvec* %bv1)
  invoke void @_ZN6bitvecC1Ev(%class.bitvec* %bv2)
          to label %15 unwind label %29

; <label>:15                                      ; preds = %0
  invoke void @_ZN6bitvecC1Ev(%class.bitvec* %bv3)
          to label %16 unwind label %33

; <label>:16                                      ; preds = %15
  invoke void @_ZN6bitvecC1Ev(%class.bitvec* %bv4)
          to label %17 unwind label %37

; <label>:17                                      ; preds = %16
  store i32 0, i32* %i, align 4
  br label %18

; <label>:18                                      ; preds = %26, %17
  %19 = load i32* %i, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %45

; <label>:21                                      ; preds = %18
  invoke void @_ZN6bitvec8push_bitEb(%class.bitvec* %bv1, i1 zeroext false)
          to label %22 unwind label %41

; <label>:22                                      ; preds = %21
  invoke void @_ZN6bitvec8push_bitEb(%class.bitvec* %bv2, i1 zeroext false)
          to label %23 unwind label %41

; <label>:23                                      ; preds = %22
  invoke void @_ZN6bitvec8push_bitEb(%class.bitvec* %bv3, i1 zeroext false)
          to label %24 unwind label %41

; <label>:24                                      ; preds = %23
  invoke void @_ZN6bitvec8push_bitEb(%class.bitvec* %bv4, i1 zeroext false)
          to label %25 unwind label %41

; <label>:25                                      ; preds = %24
  br label %26

; <label>:26                                      ; preds = %25
  %27 = load i32* %i, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %i, align 4
  br label %18

; <label>:29                                      ; preds = %310, %0
  %30 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %31 = extractvalue { i8*, i32 } %30, 0
  store i8* %31, i8** %2
  %32 = extractvalue { i8*, i32 } %30, 1
  store i32 %32, i32* %3
  br label %317

; <label>:33                                      ; preds = %307, %15
  %34 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %35 = extractvalue { i8*, i32 } %34, 0
  store i8* %35, i8** %2
  %36 = extractvalue { i8*, i32 } %34, 1
  store i32 %36, i32* %3
  br label %315

; <label>:37                                      ; preds = %304, %16
  %38 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %39 = extractvalue { i8*, i32 } %38, 0
  store i8* %39, i8** %2
  %40 = extractvalue { i8*, i32 } %38, 1
  store i32 %40, i32* %3
  br label %311

; <label>:41                                      ; preds = %301, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %24, %23, %22, %21
  %42 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %43 = extractvalue { i8*, i32 } %42, 0
  store i8* %43, i8** %2
  %44 = extractvalue { i8*, i32 } %42, 1
  store i32 %44, i32* %3
  br label %308

; <label>:45                                      ; preds = %18
  invoke void @_ZN6bitvec7set_bitEi(%class.bitvec* %bv1, i32 1)
          to label %46 unwind label %41

; <label>:46                                      ; preds = %45
  invoke void @_ZN6bitvec7set_bitEi(%class.bitvec* %bv1, i32 2)
          to label %47 unwind label %41

; <label>:47                                      ; preds = %46
  invoke void @_ZN6bitvec7set_bitEi(%class.bitvec* %bv1, i32 3)
          to label %48 unwind label %41

; <label>:48                                      ; preds = %47
  invoke void @_ZN6bitvec7set_bitEi(%class.bitvec* %bv1, i32 7)
          to label %49 unwind label %41

; <label>:49                                      ; preds = %48
  invoke void @_ZN6bitvec7set_bitEi(%class.bitvec* %bv1, i32 4)
          to label %50 unwind label %41

; <label>:50                                      ; preds = %49
  invoke void @_ZN6bitvec9clear_bitEi(%class.bitvec* %bv1, i32 7)
          to label %51 unwind label %41

; <label>:51                                      ; preds = %50
  invoke void @_ZN6bitvec7set_bitEi(%class.bitvec* %bv2, i32 1)
          to label %52 unwind label %41

; <label>:52                                      ; preds = %51
  invoke void @_ZN6bitvec7set_bitEi(%class.bitvec* %bv2, i32 3)
          to label %53 unwind label %41

; <label>:53                                      ; preds = %52
  invoke void @_ZN6bitvec7set_bitEi(%class.bitvec* %bv2, i32 4)
          to label %54 unwind label %41

; <label>:54                                      ; preds = %53
  invoke void @_ZN6bitvec7set_bitEi(%class.bitvec* %bv2, i32 5)
          to label %55 unwind label %41

; <label>:55                                      ; preds = %54
  invoke void @_ZN6bitvec7set_bitEi(%class.bitvec* %bv3, i32 1)
          to label %56 unwind label %41

; <label>:56                                      ; preds = %55
  invoke void @_ZN6bitvec7set_bitEi(%class.bitvec* %bv3, i32 2)
          to label %57 unwind label %41

; <label>:57                                      ; preds = %56
  invoke void @_ZN6bitvec7set_bitEi(%class.bitvec* %bv3, i32 3)
          to label %58 unwind label %41

; <label>:58                                      ; preds = %57
  invoke void @_ZN6bitvec7set_bitEi(%class.bitvec* %bv3, i32 7)
          to label %59 unwind label %41

; <label>:59                                      ; preds = %58
  invoke void @_ZN6bitvec7set_bitEi(%class.bitvec* %bv4, i32 1)
          to label %60 unwind label %41

; <label>:60                                      ; preds = %59
  invoke void @_ZN6bitvec7set_bitEi(%class.bitvec* %bv4, i32 2)
          to label %61 unwind label %41

; <label>:61                                      ; preds = %60
  invoke void @_ZN6bitvec7set_bitEi(%class.bitvec* %bv4, i32 3)
          to label %62 unwind label %41

; <label>:62                                      ; preds = %61
  invoke void @_ZN6bitvec7set_bitEi(%class.bitvec* %bv4, i32 5)
          to label %63 unwind label %41

; <label>:63                                      ; preds = %62
  invoke void @_ZN6bitvecC1Ev(%class.bitvec* %band)
          to label %64 unwind label %41

; <label>:64                                      ; preds = %63
  invoke void @_ZN6bitvecC1Ev(%class.bitvec* %bor)
          to label %65 unwind label %140

; <label>:65                                      ; preds = %64
  invoke void @_ZN6bitvecC1Ev(%class.bitvec* %bxor)
          to label %66 unwind label %144

; <label>:66                                      ; preds = %65
  invoke void @_ZN6bitvecanERKS_(%class.bitvec* sret %6, %class.bitvec* %bv1, %class.bitvec* %bv2)
          to label %67 unwind label %148

; <label>:67                                      ; preds = %66
  invoke void @_ZN6bitvecanERKS_(%class.bitvec* sret %5, %class.bitvec* %6, %class.bitvec* %bv3)
          to label %68 unwind label %152

; <label>:68                                      ; preds = %67
  invoke void @_ZN6bitvecanERKS_(%class.bitvec* sret %4, %class.bitvec* %5, %class.bitvec* %bv4)
          to label %69 unwind label %156

; <label>:69                                      ; preds = %68
  %70 = invoke %class.bitvec* @_ZN6bitvecaSERKS_(%class.bitvec* %band, %class.bitvec* %4)
          to label %71 unwind label %160

; <label>:71                                      ; preds = %69
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %4)
          to label %72 unwind label %156

; <label>:72                                      ; preds = %71
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %5)
          to label %73 unwind label %152

; <label>:73                                      ; preds = %72
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %6)
          to label %74 unwind label %148

; <label>:74                                      ; preds = %73
  %75 = invoke %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0))
          to label %76 unwind label %148

; <label>:76                                      ; preds = %74
  invoke void @_ZN6bitvec8show_bitEv(%class.bitvec* %bv1)
          to label %77 unwind label %148

; <label>:77                                      ; preds = %76
  invoke void @_ZN6bitvec8show_bitEv(%class.bitvec* %bv2)
          to label %78 unwind label %148

; <label>:78                                      ; preds = %77
  invoke void @_ZN6bitvec8show_bitEv(%class.bitvec* %bv3)
          to label %79 unwind label %148

; <label>:79                                      ; preds = %78
  invoke void @_ZN6bitvec8show_bitEv(%class.bitvec* %bv4)
          to label %80 unwind label %148

; <label>:80                                      ; preds = %79
  %81 = invoke %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([12 x i8]* @.str8, i32 0, i32 0))
          to label %82 unwind label %148

; <label>:82                                      ; preds = %80
  invoke void @_ZN6bitvec8show_bitEv(%class.bitvec* %band)
          to label %83 unwind label %148

; <label>:83                                      ; preds = %82
  invoke void @_ZN6bitvecorERKS_(%class.bitvec* sret %9, %class.bitvec* %bv1, %class.bitvec* %bv2)
          to label %84 unwind label %148

; <label>:84                                      ; preds = %83
  invoke void @_ZN6bitvecorERKS_(%class.bitvec* sret %8, %class.bitvec* %9, %class.bitvec* %bv3)
          to label %85 unwind label %169

; <label>:85                                      ; preds = %84
  invoke void @_ZN6bitvecorERKS_(%class.bitvec* sret %7, %class.bitvec* %8, %class.bitvec* %bv4)
          to label %86 unwind label %173

; <label>:86                                      ; preds = %85
  %87 = invoke %class.bitvec* @_ZN6bitvecaSERKS_(%class.bitvec* %bor, %class.bitvec* %7)
          to label %88 unwind label %177

; <label>:88                                      ; preds = %86
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %7)
          to label %89 unwind label %173

; <label>:89                                      ; preds = %88
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %8)
          to label %90 unwind label %169

; <label>:90                                      ; preds = %89
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %9)
          to label %91 unwind label %148

; <label>:91                                      ; preds = %90
  %92 = invoke %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0))
          to label %93 unwind label %148

; <label>:93                                      ; preds = %91
  invoke void @_ZN6bitvec8show_bitEv(%class.bitvec* %bv1)
          to label %94 unwind label %148

; <label>:94                                      ; preds = %93
  invoke void @_ZN6bitvec8show_bitEv(%class.bitvec* %bv2)
          to label %95 unwind label %148

; <label>:95                                      ; preds = %94
  invoke void @_ZN6bitvec8show_bitEv(%class.bitvec* %bv3)
          to label %96 unwind label %148

; <label>:96                                      ; preds = %95
  invoke void @_ZN6bitvec8show_bitEv(%class.bitvec* %bv4)
          to label %97 unwind label %148

; <label>:97                                      ; preds = %96
  %98 = invoke %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([12 x i8]* @.str8, i32 0, i32 0))
          to label %99 unwind label %148

; <label>:99                                      ; preds = %97
  invoke void @_ZN6bitvec8show_bitEv(%class.bitvec* %bor)
          to label %100 unwind label %148

; <label>:100                                     ; preds = %99
  invoke void @_ZN6bitveceoERKS_(%class.bitvec* sret %12, %class.bitvec* %bv1, %class.bitvec* %bv2)
          to label %101 unwind label %148

; <label>:101                                     ; preds = %100
  invoke void @_ZN6bitveceoERKS_(%class.bitvec* sret %11, %class.bitvec* %12, %class.bitvec* %bv3)
          to label %102 unwind label %186

; <label>:102                                     ; preds = %101
  invoke void @_ZN6bitveceoERKS_(%class.bitvec* sret %10, %class.bitvec* %11, %class.bitvec* %bv4)
          to label %103 unwind label %190

; <label>:103                                     ; preds = %102
  %104 = invoke %class.bitvec* @_ZN6bitvecaSERKS_(%class.bitvec* %bxor, %class.bitvec* %10)
          to label %105 unwind label %194

; <label>:105                                     ; preds = %103
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %10)
          to label %106 unwind label %190

; <label>:106                                     ; preds = %105
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %11)
          to label %107 unwind label %186

; <label>:107                                     ; preds = %106
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %12)
          to label %108 unwind label %148

; <label>:108                                     ; preds = %107
  %109 = invoke %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([6 x i8]* @.str10, i32 0, i32 0))
          to label %110 unwind label %148

; <label>:110                                     ; preds = %108
  invoke void @_ZN6bitvec8show_bitEv(%class.bitvec* %bv1)
          to label %111 unwind label %148

; <label>:111                                     ; preds = %110
  invoke void @_ZN6bitvec8show_bitEv(%class.bitvec* %bv2)
          to label %112 unwind label %148

; <label>:112                                     ; preds = %111
  invoke void @_ZN6bitvec8show_bitEv(%class.bitvec* %bv3)
          to label %113 unwind label %148

; <label>:113                                     ; preds = %112
  invoke void @_ZN6bitvec8show_bitEv(%class.bitvec* %bv4)
          to label %114 unwind label %148

; <label>:114                                     ; preds = %113
  %115 = invoke %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([12 x i8]* @.str8, i32 0, i32 0))
          to label %116 unwind label %148

; <label>:116                                     ; preds = %114
  invoke void @_ZN6bitvec8show_bitEv(%class.bitvec* %bxor)
          to label %117 unwind label %148

; <label>:117                                     ; preds = %116
  %118 = invoke %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([27 x i8]* @.str11, i32 0, i32 0))
          to label %119 unwind label %148

; <label>:119                                     ; preds = %117
  %120 = invoke i32 @_ZN6bitvecixEi(%class.bitvec* %bv1, i32 0)
          to label %121 unwind label %148

; <label>:121                                     ; preds = %119
  %122 = invoke %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %120)
          to label %123 unwind label %148

; <label>:123                                     ; preds = %121
  %124 = invoke %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %122, i8* getelementptr inbounds ([4 x i8]* @.str12, i32 0, i32 0))
          to label %125 unwind label %148

; <label>:125                                     ; preds = %123
  %126 = invoke i32 @_ZN6bitvecixEi(%class.bitvec* %bv1, i32 1)
          to label %127 unwind label %148

; <label>:127                                     ; preds = %125
  %128 = invoke %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %124, i32 %126)
          to label %129 unwind label %148

; <label>:129                                     ; preds = %127
  %130 = invoke %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %128, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
          to label %131 unwind label %148

; <label>:131                                     ; preds = %129
  store i32 8, i32* %i1, align 4
  br label %132

; <label>:132                                     ; preds = %137, %131
  %133 = load i32* %i1, align 4
  %134 = icmp slt i32 %133, 40
  br i1 %134, label %135, label %203

; <label>:135                                     ; preds = %132
  invoke void @_ZN6bitvec8push_bitEb(%class.bitvec* %bv1, i1 zeroext false)
          to label %136 unwind label %148

; <label>:136                                     ; preds = %135
  br label %137

; <label>:137                                     ; preds = %136
  %138 = load i32* %i1, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %i1, align 4
  br label %132

; <label>:140                                     ; preds = %298, %64
  %141 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %142 = extractvalue { i8*, i32 } %141, 0
  store i8* %142, i8** %2
  %143 = extractvalue { i8*, i32 } %141, 1
  store i32 %143, i32* %3
  br label %305

; <label>:144                                     ; preds = %295, %65
  %145 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %146 = extractvalue { i8*, i32 } %145, 0
  store i8* %146, i8** %2
  %147 = extractvalue { i8*, i32 } %145, 1
  store i32 %147, i32* %3
  br label %302

; <label>:148                                     ; preds = %292, %218, %217, %216, %215, %214, %213, %212, %207, %135, %129, %127, %125, %123, %121, %119, %117, %116, %114, %113, %112, %111, %110, %108, %107, %100, %99, %97, %96, %95, %94, %93, %91, %90, %83, %82, %80, %79, %78, %77, %76, %74, %73, %66
  %149 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %150 = extractvalue { i8*, i32 } %149, 0
  store i8* %150, i8** %2
  %151 = extractvalue { i8*, i32 } %149, 1
  store i32 %151, i32* %3
  br label %299

; <label>:152                                     ; preds = %72, %67
  %153 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %154 = extractvalue { i8*, i32 } %153, 0
  store i8* %154, i8** %2
  %155 = extractvalue { i8*, i32 } %153, 1
  store i32 %155, i32* %3
  br label %167

; <label>:156                                     ; preds = %71, %68
  %157 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %158 = extractvalue { i8*, i32 } %157, 0
  store i8* %158, i8** %2
  %159 = extractvalue { i8*, i32 } %157, 1
  store i32 %159, i32* %3
  br label %165

; <label>:160                                     ; preds = %69
  %161 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %162 = extractvalue { i8*, i32 } %161, 0
  store i8* %162, i8** %2
  %163 = extractvalue { i8*, i32 } %161, 1
  store i32 %163, i32* %3
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %4)
          to label %164 unwind label %324

; <label>:164                                     ; preds = %160
  br label %165

; <label>:165                                     ; preds = %164, %156
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %5)
          to label %166 unwind label %324

; <label>:166                                     ; preds = %165
  br label %167

; <label>:167                                     ; preds = %166, %152
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %6)
          to label %168 unwind label %324

; <label>:168                                     ; preds = %167
  br label %299

; <label>:169                                     ; preds = %89, %84
  %170 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %171 = extractvalue { i8*, i32 } %170, 0
  store i8* %171, i8** %2
  %172 = extractvalue { i8*, i32 } %170, 1
  store i32 %172, i32* %3
  br label %184

; <label>:173                                     ; preds = %88, %85
  %174 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %175 = extractvalue { i8*, i32 } %174, 0
  store i8* %175, i8** %2
  %176 = extractvalue { i8*, i32 } %174, 1
  store i32 %176, i32* %3
  br label %182

; <label>:177                                     ; preds = %86
  %178 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %179 = extractvalue { i8*, i32 } %178, 0
  store i8* %179, i8** %2
  %180 = extractvalue { i8*, i32 } %178, 1
  store i32 %180, i32* %3
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %7)
          to label %181 unwind label %324

; <label>:181                                     ; preds = %177
  br label %182

; <label>:182                                     ; preds = %181, %173
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %8)
          to label %183 unwind label %324

; <label>:183                                     ; preds = %182
  br label %184

; <label>:184                                     ; preds = %183, %169
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %9)
          to label %185 unwind label %324

; <label>:185                                     ; preds = %184
  br label %299

; <label>:186                                     ; preds = %106, %101
  %187 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %188 = extractvalue { i8*, i32 } %187, 0
  store i8* %188, i8** %2
  %189 = extractvalue { i8*, i32 } %187, 1
  store i32 %189, i32* %3
  br label %201

; <label>:190                                     ; preds = %105, %102
  %191 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %192 = extractvalue { i8*, i32 } %191, 0
  store i8* %192, i8** %2
  %193 = extractvalue { i8*, i32 } %191, 1
  store i32 %193, i32* %3
  br label %199

; <label>:194                                     ; preds = %103
  %195 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %196 = extractvalue { i8*, i32 } %195, 0
  store i8* %196, i8** %2
  %197 = extractvalue { i8*, i32 } %195, 1
  store i32 %197, i32* %3
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %10)
          to label %198 unwind label %324

; <label>:198                                     ; preds = %194
  br label %199

; <label>:199                                     ; preds = %198, %190
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %11)
          to label %200 unwind label %324

; <label>:200                                     ; preds = %199
  br label %201

; <label>:201                                     ; preds = %200, %186
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %12)
          to label %202 unwind label %324

; <label>:202                                     ; preds = %201
  br label %299

; <label>:203                                     ; preds = %132
  store i32 8, i32* %i2, align 4
  br label %204

; <label>:204                                     ; preds = %209, %203
  %205 = load i32* %i2, align 4
  %206 = icmp slt i32 %205, 40
  br i1 %206, label %207, label %212

; <label>:207                                     ; preds = %204
  invoke void @_ZN6bitvec8push_bitEb(%class.bitvec* %bv2, i1 zeroext false)
          to label %208 unwind label %148

; <label>:208                                     ; preds = %207
  br label %209

; <label>:209                                     ; preds = %208
  %210 = load i32* %i2, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %i2, align 4
  br label %204

; <label>:212                                     ; preds = %204
  invoke void @_ZN6bitvec8push_bitEb(%class.bitvec* %bv2, i1 zeroext false)
          to label %213 unwind label %148

; <label>:213                                     ; preds = %212
  invoke void @_ZN6bitvec7set_bitEi(%class.bitvec* %bv2, i32 20)
          to label %214 unwind label %148

; <label>:214                                     ; preds = %213
  invoke void @_ZN6bitvec7set_bitEi(%class.bitvec* %bv1, i32 20)
          to label %215 unwind label %148

; <label>:215                                     ; preds = %214
  invoke void @_ZN6bitvec7set_bitEi(%class.bitvec* %bv2, i32 22)
          to label %216 unwind label %148

; <label>:216                                     ; preds = %215
  invoke void @_ZN6bitvec8push_bitEb(%class.bitvec* %bv1, i1 zeroext true)
          to label %217 unwind label %148

; <label>:217                                     ; preds = %216
  invoke void @_ZN6bitvec8show_bitEv(%class.bitvec* %bv1)
          to label %218 unwind label %148

; <label>:218                                     ; preds = %217
  invoke void @_ZN6bitvecC1Ev(%class.bitvec* %bvaa)
          to label %219 unwind label %148

; <label>:219                                     ; preds = %218
  invoke void @_ZN6bitvecanERKS_(%class.bitvec* sret %13, %class.bitvec* %bv1, %class.bitvec* %bv2)
          to label %220 unwind label %248

; <label>:220                                     ; preds = %219
  %221 = invoke %class.bitvec* @_ZN6bitvecaSERKS_(%class.bitvec* %bvaa, %class.bitvec* %13)
          to label %222 unwind label %252

; <label>:222                                     ; preds = %220
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %13)
          to label %223 unwind label %248

; <label>:223                                     ; preds = %222
  %224 = invoke %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([9 x i8]* @.str13, i32 0, i32 0))
          to label %225 unwind label %248

; <label>:225                                     ; preds = %223
  invoke void @_ZN6bitvec8show_bitEv(%class.bitvec* %bv1)
          to label %226 unwind label %248

; <label>:226                                     ; preds = %225
  invoke void @_ZN6bitvec8show_bitEv(%class.bitvec* %bv2)
          to label %227 unwind label %248

; <label>:227                                     ; preds = %226
  %228 = invoke %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([12 x i8]* @.str8, i32 0, i32 0))
          to label %229 unwind label %248

; <label>:229                                     ; preds = %227
  invoke void @_ZN6bitvec8show_bitEv(%class.bitvec* %bvaa)
          to label %230 unwind label %248

; <label>:230                                     ; preds = %229
  %231 = invoke %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([10 x i8]* @.str14, i32 0, i32 0))
          to label %232 unwind label %248

; <label>:232                                     ; preds = %230
  %233 = invoke i32 @_ZN6bitvec7itbeginEv(%class.bitvec* %bv1)
          to label %234 unwind label %248

; <label>:234                                     ; preds = %232
  store i32 %233, i32* %i3, align 4
  br label %235

; <label>:235                                     ; preds = %245, %234
  %236 = load i32* %i3, align 4
  %237 = invoke i32 @_ZN6bitvec5itendEv(%class.bitvec* %bv1)
          to label %238 unwind label %248

; <label>:238                                     ; preds = %235
  %239 = icmp slt i32 %236, %237
  br i1 %239, label %240, label %257

; <label>:240                                     ; preds = %238
  %241 = invoke zeroext i1 @_ZN6bitvec4nextEv(%class.bitvec* %bv1)
          to label %242 unwind label %248

; <label>:242                                     ; preds = %240
  %243 = invoke %"class.std::basic_ostream"* @_ZNSolsEb(%"class.std::basic_ostream"* @_ZSt4cout, i1 zeroext %241)
          to label %244 unwind label %248

; <label>:244                                     ; preds = %242
  br label %245

; <label>:245                                     ; preds = %244
  %246 = load i32* %i3, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %i3, align 4
  br label %235

; <label>:248                                     ; preds = %289, %259, %257, %242, %240, %235, %232, %230, %229, %227, %226, %225, %223, %222, %219
  %249 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %250 = extractvalue { i8*, i32 } %249, 0
  store i8* %250, i8** %2
  %251 = extractvalue { i8*, i32 } %249, 1
  store i32 %251, i32* %3
  br label %296

; <label>:252                                     ; preds = %220
  %253 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %254 = extractvalue { i8*, i32 } %253, 0
  store i8* %254, i8** %2
  %255 = extractvalue { i8*, i32 } %253, 1
  store i32 %255, i32* %3
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %13)
          to label %256 unwind label %324

; <label>:256                                     ; preds = %252
  br label %296

; <label>:257                                     ; preds = %238
  %258 = invoke %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
          to label %259 unwind label %248

; <label>:259                                     ; preds = %257
  invoke void @_ZN6bitvecC1Ev(%class.bitvec* %be1)
          to label %260 unwind label %248

; <label>:260                                     ; preds = %259
  invoke void @_ZN6bitvecC1Ev(%class.bitvec* %be2)
          to label %261 unwind label %268

; <label>:261                                     ; preds = %260
  invoke void @_ZN6bitvecC1Ev(%class.bitvec* %be3)
          to label %262 unwind label %272

; <label>:262                                     ; preds = %261
  invoke void @_ZN6bitvecC1Ev(%class.bitvec* %be4)
          to label %263 unwind label %276

; <label>:263                                     ; preds = %262
  invoke void @_ZN6bitvec8show_bitEv(%class.bitvec* %be1)
          to label %264 unwind label %280

; <label>:264                                     ; preds = %263
  invoke void @_ZN6bitvec8show_bitEv(%class.bitvec* %be2)
          to label %265 unwind label %280

; <label>:265                                     ; preds = %264
  invoke void @_ZN6bitvec8show_bitEv(%class.bitvec* %be3)
          to label %266 unwind label %280

; <label>:266                                     ; preds = %265
  invoke void @_ZN6bitvec8show_bitEv(%class.bitvec* %be4)
          to label %267 unwind label %280

; <label>:267                                     ; preds = %266
  store i32 0, i32* %1
  store i32 1, i32* %14
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %be4)
          to label %284 unwind label %276

; <label>:268                                     ; preds = %286, %260
  %269 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %270 = extractvalue { i8*, i32 } %269, 0
  store i8* %270, i8** %2
  %271 = extractvalue { i8*, i32 } %269, 1
  store i32 %271, i32* %3
  br label %293

; <label>:272                                     ; preds = %284, %261
  %273 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %274 = extractvalue { i8*, i32 } %273, 0
  store i8* %274, i8** %2
  %275 = extractvalue { i8*, i32 } %273, 1
  store i32 %275, i32* %3
  br label %290

; <label>:276                                     ; preds = %267, %262
  %277 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %278 = extractvalue { i8*, i32 } %277, 0
  store i8* %278, i8** %2
  %279 = extractvalue { i8*, i32 } %277, 1
  store i32 %279, i32* %3
  br label %287

; <label>:280                                     ; preds = %266, %265, %264, %263
  %281 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %282 = extractvalue { i8*, i32 } %281, 0
  store i8* %282, i8** %2
  %283 = extractvalue { i8*, i32 } %281, 1
  store i32 %283, i32* %3
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %be4)
          to label %285 unwind label %324

; <label>:284                                     ; preds = %267
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %be3)
          to label %286 unwind label %272

; <label>:285                                     ; preds = %280
  br label %287

; <label>:286                                     ; preds = %284
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %be2)
          to label %289 unwind label %268

; <label>:287                                     ; preds = %285, %276
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %be3)
          to label %288 unwind label %324

; <label>:288                                     ; preds = %287
  br label %290

; <label>:289                                     ; preds = %286
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %be1)
          to label %292 unwind label %248

; <label>:290                                     ; preds = %288, %272
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %be2)
          to label %291 unwind label %324

; <label>:291                                     ; preds = %290
  br label %293

; <label>:292                                     ; preds = %289
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %bvaa)
          to label %295 unwind label %148

; <label>:293                                     ; preds = %291, %268
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %be1)
          to label %294 unwind label %324

; <label>:294                                     ; preds = %293
  br label %296

; <label>:295                                     ; preds = %292
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %bxor)
          to label %298 unwind label %144

; <label>:296                                     ; preds = %294, %256, %248
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %bvaa)
          to label %297 unwind label %324

; <label>:297                                     ; preds = %296
  br label %299

; <label>:298                                     ; preds = %295
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %bor)
          to label %301 unwind label %140

; <label>:299                                     ; preds = %297, %202, %185, %168, %148
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %bxor)
          to label %300 unwind label %324

; <label>:300                                     ; preds = %299
  br label %302

; <label>:301                                     ; preds = %298
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %band)
          to label %304 unwind label %41

; <label>:302                                     ; preds = %300, %144
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %bor)
          to label %303 unwind label %324

; <label>:303                                     ; preds = %302
  br label %305

; <label>:304                                     ; preds = %301
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %bv4)
          to label %307 unwind label %37

; <label>:305                                     ; preds = %303, %140
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %band)
          to label %306 unwind label %324

; <label>:306                                     ; preds = %305
  br label %308

; <label>:307                                     ; preds = %304
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %bv3)
          to label %310 unwind label %33

; <label>:308                                     ; preds = %306, %41
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %bv4)
          to label %309 unwind label %324

; <label>:309                                     ; preds = %308
  br label %311

; <label>:310                                     ; preds = %307
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %bv2)
          to label %313 unwind label %29

; <label>:311                                     ; preds = %309, %37
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %bv3)
          to label %312 unwind label %324

; <label>:312                                     ; preds = %311
  br label %315

; <label>:313                                     ; preds = %310
  call void @_ZN6bitvecD1Ev(%class.bitvec* %bv1)
  %314 = load i32* %1
  ret i32 %314

; <label>:315                                     ; preds = %312, %33
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %bv2)
          to label %316 unwind label %324

; <label>:316                                     ; preds = %315
  br label %317

; <label>:317                                     ; preds = %316, %29
  invoke void @_ZN6bitvecD1Ev(%class.bitvec* %bv1)
          to label %318 unwind label %324

; <label>:318                                     ; preds = %317
  br label %319

; <label>:319                                     ; preds = %318
  %320 = load i8** %2
  %321 = load i32* %3
  %322 = insertvalue { i8*, i32 } undef, i8* %320, 0
  %323 = insertvalue { i8*, i32 } %322, i32 %321, 1
  resume { i8*, i32 } %323

; <label>:324                                     ; preds = %317, %315, %311, %308, %305, %302, %299, %296, %293, %290, %287, %280, %252, %201, %199, %194, %184, %182, %177, %167, %165, %160
  %325 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %326 = extractvalue { i8*, i32 } %325, 0
  call void @__clang_call_terminate(i8* %326) #6
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #7 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #1
  call void @_ZSt9terminatev() #6
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

declare %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #0

define internal void @_GLOBAL__I_a() section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { noinline noreturn nounwind }
attributes #8 = { builtin }
attributes #9 = { builtin nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}

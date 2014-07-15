; ModuleID = 'p1.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"This code is unreachable\0A\00", align 1
@.str1 = private unnamed_addr constant [57 x i8] c"This code is reachable from label2, but not from entry.\0A\00", align 1
@.str2 = private unnamed_addr constant [30 x i8] c"Expected result: 5*3*2*5=150\0A\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %1
  store i32 5, i32* %n, align 4
  br label %14
                                                  ; No predecessors!
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %n, align 4
  br label %4

; <label>:4                                       ; preds = %14, %2
  %5 = load i32* %n, align 4
  %6 = mul nsw i32 %5, 2
  store i32 %6, i32* %n, align 4
  br label %11
                                                  ; No predecessors!
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %n, align 4
  br label %9

; <label>:9                                       ; preds = %7
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([57 x i8]* @.str1, i32 0, i32 0))
  store i32 0, i32* %n, align 4
  br label %11

; <label>:11                                      ; preds = %9, %4
  %12 = load i32* %n, align 4
  %13 = mul nsw i32 %12, 5
  store i32 %13, i32* %n, align 4
  br label %17

; <label>:14                                      ; preds = %0
  %15 = load i32* %n, align 4
  %16 = mul nsw i32 %15, 3
  store i32 %16, i32* %n, align 4
  br label %4

; <label>:17                                      ; preds = %11
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str2, i32 0, i32 0))
  %19 = load i32* %n, align 4
  %20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32 %19)
  %21 = load i32* %1
  ret i32 %21
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}

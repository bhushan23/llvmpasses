; ModuleID = '<stdin>'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"inside tempf\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"sf\00", align 1

; Function Attrs: nounwind
define i32 @tempf() #0 {
  br label %1

; <label>:1                                       ; preds = %5, %0
  %i.0 = phi i32 [ 0, %0 ], [ %6, %5 ]
  %2 = icmp slt i32 %i.0, 5
  br i1 %2, label %3, label %7

; <label>:3                                       ; preds = %1
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str, i32 0, i32 0))
  br label %5

; <label>:5                                       ; preds = %3
  %6 = add nsw i32 %i.0, 1
  br label %1

; <label>:7                                       ; preds = %1
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
define i32 @main() #0 {
  %1 = call i32 @tempf()
  br label %2

; <label>:2                                       ; preds = %12, %0
  %i.0 = phi i32 [ 0, %0 ], [ %13, %12 ]
  %3 = icmp slt i32 %i.0, 5
  br i1 %3, label %4, label %14

; <label>:4                                       ; preds = %2
  br label %5

; <label>:5                                       ; preds = %9, %4
  %j.0 = phi i32 [ 0, %4 ], [ %10, %9 ]
  %6 = icmp slt i32 %j.0, 5
  br i1 %6, label %7, label %11

; <label>:7                                       ; preds = %5
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i32 %i.0)
  br label %9

; <label>:9                                       ; preds = %7
  %10 = add nsw i32 %j.0, 1
  br label %5

; <label>:11                                      ; preds = %5
  br label %12

; <label>:12                                      ; preds = %11
  %13 = add nsw i32 %i.0, 1
  br label %2

; <label>:14                                      ; preds = %2
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0))
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}

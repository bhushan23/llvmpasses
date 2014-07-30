; ModuleID = './test/test3.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"sf\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"f \00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i5 = alloca i32, align 4
  %i9 = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i1, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %1 = load i32* %i1, align 4
  %cmp3 = icmp slt i32 %1, 5
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %2 = load i32* %i1, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i1, align 4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  store i32 0, i32* %i5, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc17, %for.end
  %3 = load i32* %i5, align 4
  %cmp7 = icmp slt i32 %3, 5
  br i1 %cmp7, label %for.body8, label %for.end19

for.body8:                                        ; preds = %for.cond6
  store i32 0, i32* %i9, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc14, %for.body8
  %4 = load i32* %i9, align 4
  %cmp11 = icmp slt i32 %4, 5
  br i1 %cmp11, label %for.body12, label %for.end16

for.body12:                                       ; preds = %for.cond10
  %call13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0))
  br label %for.inc14

for.inc14:                                        ; preds = %for.body12
  %5 = load i32* %i9, align 4
  %inc15 = add nsw i32 %5, 1
  store i32 %inc15, i32* %i9, align 4
  br label %for.cond10

for.end16:                                        ; preds = %for.cond10
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %6 = load i32* %i5, align 4
  %inc18 = add nsw i32 %6, 1
  store i32 %inc18, i32* %i5, align 4
  br label %for.cond6

for.end19:                                        ; preds = %for.cond6
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %7 = load i32* %i, align 4
  %inc21 = add nsw i32 %7, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond

for.end22:                                        ; preds = %for.cond
  %8 = load i32* %retval
  ret i32 %8
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"}

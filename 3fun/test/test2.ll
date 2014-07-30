; ModuleID = 'test2.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @fun1() #0 {
entry:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  %1 = load i32* %t, align 4
  %add = add nsw i32 %1, 2
  store i32 %add, i32* %t, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32* %j, align 4
  %cmp2 = icmp slt i32 %2, 5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32* %i, align 4
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0), i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32* %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %5 = load i32* %t, align 4
  %inc4 = add nsw i32 %5, 1
  store i32 %inc4, i32* %t, align 4
  %6 = load i32* %t, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %t, align 4
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %7 = load i32* %i, align 4
  %inc6 = add nsw i32 %7, 1
  store i32 %inc6, i32* %i, align 4
  br label %for.cond

for.end7:                                         ; preds = %for.cond
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"}

; ModuleID = 'test2.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %c = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 10, i32* %a, align 4
  store i32 20, i32* %b, align 4
  store i32 30, i32* %c, align 4
  %0 = load i32* %a, align 4
  %1 = load i32* %b, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32* %a, align 4
  %3 = load i32* %b, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %c, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32* %b, align 4
  %5 = load i32* %a, align 4
  %sub = sub nsw i32 %4, %5
  store i32 %sub, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32* %c, align 4
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0), i32 %6)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"}

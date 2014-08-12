; ModuleID = '<stdin>'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %b = alloca i32, align 4
  store i32 8, i32* %b, align 4
  %0 = load i32* %b, align 4
  %sub = sub i32 %0, 1
  %and = and i32 %0, %sub
  %cmp0with = icmp eq i32 %and, 0
  br i1 %cmp0with, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %and1 = and i32 11, %sub
  br label %ifend

if.else:                                          ; preds = %entry
  %urem = urem i32 11, %0
  br label %ifend

ifend:                                            ; preds = %if.else, %if.then
  %phians = phi i32 [ %and1, %if.then ], [ %urem, %if.else ]
  %call = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0), i32* %b)
  %1 = load i32* %b, align 4
  %sub2 = sub i32 %1, 1
  %and3 = and i32 %1, %sub2
  %cmp0with4 = icmp eq i32 %and3, 0
  br i1 %cmp0with4, label %if.then7, label %if.else8

if.then7:                                         ; preds = %ifend
  %and9 = and i32 11, %sub2
  br label %ifend6

if.else8:                                         ; preds = %ifend
  %urem10 = urem i32 11, %1
  br label %ifend6

ifend6:                                           ; preds = %if.else8, %if.then7
  %phians5 = phi i32 [ %and9, %if.then7 ], [ %urem10, %if.else8 ]
  %call2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 %phians, i32 %phians, i32 %phians5)
  ret i32 0
}

declare i32 @__isoc99_scanf(i8*, ...) #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"}

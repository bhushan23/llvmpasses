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
  %tempcmp0 = icmp eq i32 %and, 0
  br i1 %tempcmp0, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %AND = and i32 11, %sub
  br label %ifend

if.else:                                          ; preds = %entry
  %UREM = urem i32 11, %0
  br label %ifend

ifend:                                            ; preds = %if.else, %if.then
  %rem = urem i32 11, %0
  %call = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0), i32* %b)
  %1 = load i32* %b, align 4
  %sub1 = sub i32 %1, 1
  %and2 = and i32 %1, %sub1
  %tempcmp03 = icmp eq i32 %and2, 0
  br i1 %tempcmp03, label %if.then5, label %if.else6

if.then5:                                         ; preds = %ifend
  %AND7 = and i32 11, %sub1
  br label %ifend4

if.else6:                                         ; preds = %ifend
  %UREM8 = urem i32 11, %1
  br label %ifend4

ifend4:                                           ; preds = %if.else6, %if.then5
  %rem1 = urem i32 11, %1
  %call2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 %rem, i32 %rem, i32 %rem1)
  ret i32 0
}

declare i32 @__isoc99_scanf(i8*, ...) #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"}

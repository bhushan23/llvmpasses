; ModuleID = '<stdin>'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"%d %d \00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %b = alloca i32, align 4
  store i32 8, i32* %b, align 4
  %0 = load i32* %b, align 4
  %sub = sub i32 %0, 1
  %and = and i32 %0, %sub
  %rem = urem i32 11, %0
  %call = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0), i32* %b)
  %1 = load i32* %b, align 4
  %and1 = and i32 %1, %sub
  %rem1 = urem i32 11, %1
  %call2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0), i32 %rem1, i32 %rem1)
  ret i32 0

if.then:                                          ; No predecessors!
  br label %if.end

if.else:                                          ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %end

end:                                              ; preds = %if.end
  ret i32 0

if.then2:                                         ; No predecessors!
  br label %if.end4

if.else3:                                         ; No predecessors!
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.then2
  br label %end5

end5:                                             ; preds = %if.end4
  ret i32 0
}

declare i32 @__isoc99_scanf(i8*, ...) #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"}

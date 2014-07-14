; ModuleID = '../temp.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: nounwind
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 0, i32* %1
  br label %2

; <label>:2                                       ; preds = %0
  %3 = load i32* %a, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* %a, align 4
  br label %8
                                                  ; No predecessors!
  %6 = load i32* %a, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %a, align 4
  br label %8

; <label>:8                                       ; preds = %5, %2
  %9 = load i32* %a, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %a, align 4
  %11 = load i32* %1
  ret i32 %11
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}

WARNING: You're attempting to print out a bitcode file.
This is inadvisable as it may cause display problems. If
you REALLY want to taste LLVM bitcode first-hand, you
can force output with the `-f' option.

Processing Function: Block : 
entry:
  %b = alloca i32, align 4
  store i32 8, i32* %b, align 4
  %0 = load i32* %b, align 4
  %sub = sub i32 %0, 1
  %and = and i32 %0, %sub
  %cmp0with = icmp eq i32 %and, 0
  br i1 %cmp0with, label %if.then, label %if.else

 Succc 
if.then:                                          ; preds = %entry
  %and1 = and i32 11, %sub
  br label %ifend

--------------------
if.else:                                          ; preds = %entry
  %urem = urem i32 11, %0
  br label %ifend

--------------------ENDBlock : 
if.then:                                          ; preds = %entry
  %and1 = and i32 11, %sub
  br label %ifend

 Succc 
ifend:                                            ; preds = %if.else, %if.then
  %phians = phi i32 [ %and1, %if.then ], [ %urem, %if.else ]
  %call = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0), i32* %b)
  %1 = load i32* %b, align 4
  %sub2 = sub i32 %1, 1
  %and3 = and i32 %1, %sub2
  %cmp0with4 = icmp eq i32 %and3, 0
  br i1 %cmp0with4, label %if.then7, label %if.else8

--------------------ENDBlock : 
if.else:                                          ; preds = %entry
  %urem = urem i32 11, %0
  br label %ifend

 Succc 
ifend:                                            ; preds = %if.else, %if.then
  %phians = phi i32 [ %and1, %if.then ], [ %urem, %if.else ]
  %call = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0), i32* %b)
  %1 = load i32* %b, align 4
  %sub2 = sub i32 %1, 1
  %and3 = and i32 %1, %sub2
  %cmp0with4 = icmp eq i32 %and3, 0
  br i1 %cmp0with4, label %if.then7, label %if.else8

--------------------ENDBlock : 
ifend:                                            ; preds = %if.else, %if.then
  %phians = phi i32 [ %and1, %if.then ], [ %urem, %if.else ]
  %call = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0), i32* %b)
  %1 = load i32* %b, align 4
  %sub2 = sub i32 %1, 1
  %and3 = and i32 %1, %sub2
  %cmp0with4 = icmp eq i32 %and3, 0
  br i1 %cmp0with4, label %if.then7, label %if.else8

 Succc 
if.then7:                                         ; preds = %ifend
  %and9 = and i32 11, %sub2
  br label %ifend6

--------------------
if.else8:                                         ; preds = %ifend
  %urem10 = urem i32 11, %1
  br label %ifend6

--------------------ENDBlock : 
if.then7:                                         ; preds = %ifend
  %and9 = and i32 11, %sub2
  br label %ifend6

 Succc 
ifend6:                                           ; preds = %if.else8, %if.then7
  %phians5 = phi i32 [ %and9, %if.then7 ], [ %urem10, %if.else8 ]
  %call2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 %phians, i32 %phians, i32 %phians5)
  ret i32 0

--------------------ENDBlock : 
if.else8:                                         ; preds = %ifend
  %urem10 = urem i32 11, %1
  br label %ifend6

 Succc 
ifend6:                                           ; preds = %if.else8, %if.then7
  %phians5 = phi i32 [ %and9, %if.then7 ], [ %urem10, %if.else8 ]
  %call2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 %phians, i32 %phians, i32 %phians5)
  ret i32 0

--------------------ENDBlock : 
ifend6:                                           ; preds = %if.else8, %if.then7
  %phians5 = phi i32 [ %and9, %if.then7 ], [ %urem10, %if.else8 ]
  %call2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 %phians, i32 %phians, i32 %phians5)
  ret i32 0

 Succc END
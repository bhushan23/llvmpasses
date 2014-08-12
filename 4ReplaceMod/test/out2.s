	.file	"out2.ll"
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Ltmp6:
	.cfi_offset %rbx, -24
	movl	$8, -12(%rbp)
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB0_1
# BB#2:                                 # %if.else
	movl	$8, %ecx
	movl	$11, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %ebx
	jmp	.LBB0_3
.LBB0_1:                                # %if.then
	movl	$7, %ebx
	andl	$11, %ebx
.LBB0_3:                                # %ifend
	leaq	-12(%rbp), %rsi
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	__isoc99_scanf
	movl	-12(%rbp), %esi
	leal	-1(%rsi), %ecx
	testl	%ecx, %esi
	je	.LBB0_4
# BB#5:                                 # %if.else8
	movl	$11, %eax
	xorl	%edx, %edx
	divl	%esi
	movl	%edx, %ecx
	jmp	.LBB0_6
.LBB0_4:                                # %if.then7
	andl	$11, %ecx
.LBB0_6:                                # %ifend6
	movl	$.L.str1, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
	movl	%ebx, %edx
	callq	printf
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp7:
	.size	main, .Ltmp7-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d"
	.size	.L.str, 3

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	"%d %d %d"
	.size	.L.str1, 9


	.ident	"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"
	.section	".note.GNU-stack","",@progbits

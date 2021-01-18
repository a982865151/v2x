	.file	"main.c"
	.data
	.align 4
	.type	h, @object
	.size	h, 4
h:
	.long	20
	.comm	j,4,4
	.globl	x
	.align 4
	.type	x, @object
	.size	x, 4
x:
	.long	12
	.globl	y
	.align 4
	.type	y, @object
	.size	y, 4
y:
	.long	13
	.globl	z
	.align 4
	.type	z, @object
	.size	z, 4
z:
	.long	14
	.globl	r
	.section	.rodata
	.align 4
	.type	r, @object
	.size	r, 4
r:
	.long	789
	.globl	test
	.data
	.align 8
	.type	test, @object
	.size	test, 8
test:
	.long	1
	.long	2
	.globl	g_ptr
	.section	.rodata
.LC0:
	.string	"qqqqqqqqqqqq"
	.data
	.align 8
	.type	g_ptr, @object
	.size	g_ptr, 8
g_ptr:
	.quad	.LC0
	.globl	g_arry
	.align 8
	.type	g_arry, @object
	.size	g_arry, 12
g_arry:
	.string	"wwwwwwwwwww"
	.section	.rodata
.LC1:
	.string	"yuo yioe"
.LC2:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$12, -48(%rbp)
	movl	$456, -44(%rbp)
	movq	$.LC1, -40(%rbp)
	movabsq	$7453016979220293754, %rax
	movq	%rax, -32(%rbp)
	movl	$1634363513, -24(%rbp)
	movw	$106, -20(%rbp)
	movl	test(%rip), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	test(%rip), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	test+4(%rip), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L3
	call	__stack_chk_fail
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.data
	.align 4
	.type	p.2299, @object
	.size	p.2299, 4
p.2299:
	.long	100
	.local	l.2297
	.comm	l.2297,4,4
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

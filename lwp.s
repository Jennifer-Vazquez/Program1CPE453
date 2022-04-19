	.file	"lwp.c"
	.text
	.comm	lwp_ptable,960,32
	.globl	lwp_procs
	.bss
	.align 4
	.type	lwp_procs, @object
	.size	lwp_procs, 4
lwp_procs:
	.zero	4
	.globl	lwp_running
	.align 4
	.type	lwp_running, @object
	.size	lwp_running, 4
lwp_running:
	.zero	4
	.globl	SF
	.align 8
	.type	SF, @object
	.size	SF, 8
SF:
	.zero	8
	.globl	mainSP
	.align 8
	.type	mainSP, @object
	.size	mainSP, 8
mainSP:
	.zero	8
	.text
	.globl	new_lwp
	.type	new_lwp, @function
new_lwp:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	lwp_procs(%rip), %eax
	cmpl	$30, %eax
	jne	.L2
	movl	$-1, %eax
	jmp	.L4
.L2:
	movq	-88(%rbp), %rax
	sall	$3, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	salq	$3, %rax
	addq	%rax, -56(%rbp)
	subq	$8, -56(%rbp)
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	subq	$8, -56(%rbp)
	leaq	lwp_exit(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	subq	$8, -56(%rbp)
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	subq	$8, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	$-1, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	subq	$8, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	$4369, (%rax)
	subq	$8, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	$8738, (%rax)
	subq	$8, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	$13107, (%rax)
	subq	$8, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	$17476, (%rax)
	subq	$8, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	$21845, (%rax)
	subq	$8, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	$26214, (%rax)
	subq	$8, -56(%rbp)
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movl	lwp_procs(%rip), %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	lwp_procs(%rip), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rsi
	leaq	lwp_ptable(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rsi,%rcx)
	movq	%rdx, 8(%rsi,%rcx)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rsi,%rcx)
	movq	%rdx, 24(%rsi,%rcx)
	movl	lwp_procs(%rip), %eax
	addl	$1, %eax
	movl	%eax, lwp_procs(%rip)
	movl	lwp_running(%rip), %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	new_lwp, .-new_lwp
	.globl	lwp_start
	.type	lwp_start, @function
lwp_start:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	lwp_procs(%rip), %eax
	testl	%eax, %eax
	je	.L10
#APP
# 84 "lwp.c" 1
	pushq %rax
# 0 "" 2
# 84 "lwp.c" 1
	pushq %rbx
# 0 "" 2
# 84 "lwp.c" 1
	pushq %rcx
# 0 "" 2
# 84 "lwp.c" 1
	pushq %rdx
# 0 "" 2
# 84 "lwp.c" 1
	pushq %rsi
# 0 "" 2
# 84 "lwp.c" 1
	pushq %rdi
# 0 "" 2
# 84 "lwp.c" 1
	pushq %r8
# 0 "" 2
# 84 "lwp.c" 1
	pushq %r9
# 0 "" 2
# 84 "lwp.c" 1
	pushq %r10
# 0 "" 2
# 84 "lwp.c" 1
	pushq %r11
# 0 "" 2
# 84 "lwp.c" 1
	pushq %r12
# 0 "" 2
# 84 "lwp.c" 1
	pushq %r13
# 0 "" 2
# 84 "lwp.c" 1
	pushq %r14
# 0 "" 2
# 84 "lwp.c" 1
	pushq %r15
# 0 "" 2
# 84 "lwp.c" 1
	pushq %rbp
# 0 "" 2
# 85 "lwp.c" 1
	movq  %rsp,%rax
# 0 "" 2
#NO_APP
	movq	%rax, mainSP(%rip)
	movq	SF(%rip), %rax
	testq	%rax, %rax
	jne	.L8
	movl	$0, lwp_running(%rip)
	jmp	.L9
.L8:
	movq	SF(%rip), %rax
	call	*%rax
	movl	%eax, lwp_running(%rip)
.L9:
	movl	lwp_running(%rip), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+lwp_ptable(%rip), %rax
	movq	(%rdx,%rax), %rax
#APP
# 95 "lwp.c" 1
	movq  %rax,%rsp
# 0 "" 2
# 96 "lwp.c" 1
	popq  %rbp
# 0 "" 2
# 96 "lwp.c" 1
	popq  %r15
# 0 "" 2
# 96 "lwp.c" 1
	popq  %r14
# 0 "" 2
# 96 "lwp.c" 1
	popq  %r13
# 0 "" 2
# 96 "lwp.c" 1
	popq  %r12
# 0 "" 2
# 96 "lwp.c" 1
	popq  %r11
# 0 "" 2
# 96 "lwp.c" 1
	popq  %r10
# 0 "" 2
# 96 "lwp.c" 1
	popq  %r9
# 0 "" 2
# 96 "lwp.c" 1
	popq  %r8
# 0 "" 2
# 96 "lwp.c" 1
	popq  %rdi
# 0 "" 2
# 96 "lwp.c" 1
	popq  %rsi
# 0 "" 2
# 96 "lwp.c" 1
	popq  %rdx
# 0 "" 2
# 96 "lwp.c" 1
	popq  %rcx
# 0 "" 2
# 96 "lwp.c" 1
	popq  %rbx
# 0 "" 2
# 96 "lwp.c" 1
	popq  %rax
# 0 "" 2
# 96 "lwp.c" 1
	movq  %rbp,%rsp
# 0 "" 2
#NO_APP
	jmp	.L5
.L10:
	nop
.L5:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	lwp_start, .-lwp_start
	.globl	lwp_yield
	.type	lwp_yield, @function
lwp_yield:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
#APP
# 103 "lwp.c" 1
	pushq %rax
# 0 "" 2
# 103 "lwp.c" 1
	pushq %rbx
# 0 "" 2
# 103 "lwp.c" 1
	pushq %rcx
# 0 "" 2
# 103 "lwp.c" 1
	pushq %rdx
# 0 "" 2
# 103 "lwp.c" 1
	pushq %rsi
# 0 "" 2
# 103 "lwp.c" 1
	pushq %rdi
# 0 "" 2
# 103 "lwp.c" 1
	pushq %r8
# 0 "" 2
# 103 "lwp.c" 1
	pushq %r9
# 0 "" 2
# 103 "lwp.c" 1
	pushq %r10
# 0 "" 2
# 103 "lwp.c" 1
	pushq %r11
# 0 "" 2
# 103 "lwp.c" 1
	pushq %r12
# 0 "" 2
# 103 "lwp.c" 1
	pushq %r13
# 0 "" 2
# 103 "lwp.c" 1
	pushq %r14
# 0 "" 2
# 103 "lwp.c" 1
	pushq %r15
# 0 "" 2
# 103 "lwp.c" 1
	pushq %rbp
# 0 "" 2
#NO_APP
	movl	lwp_running(%rip), %edx
#APP
# 104 "lwp.c" 1
	movq  %rsp,%rax
# 0 "" 2
#NO_APP
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$5, %rcx
	leaq	24+lwp_ptable(%rip), %rdx
	movq	%rax, (%rcx,%rdx)
	movq	SF(%rip), %rax
	testq	%rax, %rax
	jne	.L12
	movl	lwp_running(%rip), %eax
	addl	$1, %eax
	movl	lwp_procs(%rip), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	movl	%eax, lwp_running(%rip)
	jmp	.L13
.L12:
	movq	SF(%rip), %rax
	call	*%rax
	movl	%eax, lwp_running(%rip)
.L13:
	movl	lwp_running(%rip), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+lwp_ptable(%rip), %rax
	movq	(%rdx,%rax), %rax
#APP
# 113 "lwp.c" 1
	movq  %rax,%rsp
# 0 "" 2
# 114 "lwp.c" 1
	popq  %rbp
# 0 "" 2
# 114 "lwp.c" 1
	popq  %r15
# 0 "" 2
# 114 "lwp.c" 1
	popq  %r14
# 0 "" 2
# 114 "lwp.c" 1
	popq  %r13
# 0 "" 2
# 114 "lwp.c" 1
	popq  %r12
# 0 "" 2
# 114 "lwp.c" 1
	popq  %r11
# 0 "" 2
# 114 "lwp.c" 1
	popq  %r10
# 0 "" 2
# 114 "lwp.c" 1
	popq  %r9
# 0 "" 2
# 114 "lwp.c" 1
	popq  %r8
# 0 "" 2
# 114 "lwp.c" 1
	popq  %rdi
# 0 "" 2
# 114 "lwp.c" 1
	popq  %rsi
# 0 "" 2
# 114 "lwp.c" 1
	popq  %rdx
# 0 "" 2
# 114 "lwp.c" 1
	popq  %rcx
# 0 "" 2
# 114 "lwp.c" 1
	popq  %rbx
# 0 "" 2
# 114 "lwp.c" 1
	popq  %rax
# 0 "" 2
# 114 "lwp.c" 1
	movq  %rbp,%rsp
# 0 "" 2
#NO_APP
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	lwp_yield, .-lwp_yield
	.globl	lwp_exit
	.type	lwp_exit, @function
lwp_exit:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	lwp_running(%rip), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+lwp_ptable(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	lwp_running(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.L15
.L16:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rsi
	leaq	lwp_ptable(%rip), %rcx
	movslq	%edx, %rax
	salq	$5, %rax
	movq	%rax, %r8
	leaq	lwp_ptable(%rip), %rdi
	movq	(%r8,%rdi), %rax
	movq	8(%r8,%rdi), %rdx
	movq	%rax, (%rsi,%rcx)
	movq	%rdx, 8(%rsi,%rcx)
	movq	16(%r8,%rdi), %rax
	movq	24(%r8,%rdi), %rdx
	movq	%rax, 16(%rsi,%rcx)
	movq	%rdx, 24(%rsi,%rcx)
	addl	$1, -4(%rbp)
.L15:
	movl	lwp_procs(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L16
	movl	lwp_procs(%rip), %eax
	subl	$1, %eax
	movl	%eax, lwp_procs(%rip)
	movl	lwp_procs(%rip), %eax
	testl	%eax, %eax
	jne	.L17
	movl	$0, %eax
	call	lwp_stop
	jmp	.L21
.L17:
	movq	SF(%rip), %rax
	testq	%rax, %rax
	jne	.L19
	movl	$0, lwp_running(%rip)
	jmp	.L20
.L19:
	movq	SF(%rip), %rax
	call	*%rax
	movl	%eax, lwp_running(%rip)
.L20:
	movl	lwp_running(%rip), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+lwp_ptable(%rip), %rax
	movq	(%rdx,%rax), %rax
#APP
# 139 "lwp.c" 1
	movq  %rax,%rsp
# 0 "" 2
# 140 "lwp.c" 1
	popq  %rbp
# 0 "" 2
# 140 "lwp.c" 1
	popq  %r15
# 0 "" 2
# 140 "lwp.c" 1
	popq  %r14
# 0 "" 2
# 140 "lwp.c" 1
	popq  %r13
# 0 "" 2
# 140 "lwp.c" 1
	popq  %r12
# 0 "" 2
# 140 "lwp.c" 1
	popq  %r11
# 0 "" 2
# 140 "lwp.c" 1
	popq  %r10
# 0 "" 2
# 140 "lwp.c" 1
	popq  %r9
# 0 "" 2
# 140 "lwp.c" 1
	popq  %r8
# 0 "" 2
# 140 "lwp.c" 1
	popq  %rdi
# 0 "" 2
# 140 "lwp.c" 1
	popq  %rsi
# 0 "" 2
# 140 "lwp.c" 1
	popq  %rdx
# 0 "" 2
# 140 "lwp.c" 1
	popq  %rcx
# 0 "" 2
# 140 "lwp.c" 1
	popq  %rbx
# 0 "" 2
# 140 "lwp.c" 1
	popq  %rax
# 0 "" 2
# 140 "lwp.c" 1
	movq  %rbp,%rsp
# 0 "" 2
#NO_APP
.L21:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	lwp_exit, .-lwp_exit
	.globl	lwp_stop
	.type	lwp_stop, @function
lwp_stop:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
#APP
# 147 "lwp.c" 1
	pushq %rax
# 0 "" 2
# 147 "lwp.c" 1
	pushq %rbx
# 0 "" 2
# 147 "lwp.c" 1
	pushq %rcx
# 0 "" 2
# 147 "lwp.c" 1
	pushq %rdx
# 0 "" 2
# 147 "lwp.c" 1
	pushq %rsi
# 0 "" 2
# 147 "lwp.c" 1
	pushq %rdi
# 0 "" 2
# 147 "lwp.c" 1
	pushq %r8
# 0 "" 2
# 147 "lwp.c" 1
	pushq %r9
# 0 "" 2
# 147 "lwp.c" 1
	pushq %r10
# 0 "" 2
# 147 "lwp.c" 1
	pushq %r11
# 0 "" 2
# 147 "lwp.c" 1
	pushq %r12
# 0 "" 2
# 147 "lwp.c" 1
	pushq %r13
# 0 "" 2
# 147 "lwp.c" 1
	pushq %r14
# 0 "" 2
# 147 "lwp.c" 1
	pushq %r15
# 0 "" 2
# 147 "lwp.c" 1
	pushq %rbp
# 0 "" 2
#NO_APP
	movq	mainSP(%rip), %rax
#APP
# 148 "lwp.c" 1
	movq  %rax,%rsp
# 0 "" 2
# 149 "lwp.c" 1
	popq  %rbp
# 0 "" 2
# 149 "lwp.c" 1
	popq  %r15
# 0 "" 2
# 149 "lwp.c" 1
	popq  %r14
# 0 "" 2
# 149 "lwp.c" 1
	popq  %r13
# 0 "" 2
# 149 "lwp.c" 1
	popq  %r12
# 0 "" 2
# 149 "lwp.c" 1
	popq  %r11
# 0 "" 2
# 149 "lwp.c" 1
	popq  %r10
# 0 "" 2
# 149 "lwp.c" 1
	popq  %r9
# 0 "" 2
# 149 "lwp.c" 1
	popq  %r8
# 0 "" 2
# 149 "lwp.c" 1
	popq  %rdi
# 0 "" 2
# 149 "lwp.c" 1
	popq  %rsi
# 0 "" 2
# 149 "lwp.c" 1
	popq  %rdx
# 0 "" 2
# 149 "lwp.c" 1
	popq  %rcx
# 0 "" 2
# 149 "lwp.c" 1
	popq  %rbx
# 0 "" 2
# 149 "lwp.c" 1
	popq  %rax
# 0 "" 2
# 149 "lwp.c" 1
	movq  %rbp,%rsp
# 0 "" 2
#NO_APP
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	lwp_stop, .-lwp_stop
	.globl	lwp_set_scheduler
	.type	lwp_set_scheduler, @function
lwp_set_scheduler:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, SF(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	lwp_set_scheduler, .-lwp_set_scheduler
	.globl	lwp_getpid
	.type	lwp_getpid, @function
lwp_getpid:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	lwp_running(%rip), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	lwp_ptable(%rip), %rax
	movq	(%rdx,%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	lwp_getpid, .-lwp_getpid
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:

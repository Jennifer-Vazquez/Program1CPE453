	.file	"lwp.c"
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
.LFB2:
	.cfi_startproc
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
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	salq	$3, %rax
	addq	%rax, -16(%rbp)
	subq	$8, -16(%rbp)
	movq	-80(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	subq	$8, -16(%rbp)
	movl	$lwp_exit, %edx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	subq	$8, -16(%rbp)
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	subq	$8, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$-1, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	subq	$8, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$4369, (%rax)
	subq	$8, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$8738, (%rax)
	subq	$8, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$13107, (%rax)
	subq	$8, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$17476, (%rax)
	subq	$8, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$21845, (%rax)
	subq	$8, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$26214, (%rax)
	subq	$8, -16(%rbp)
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	lwp_procs(%rip), %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	lwp_procs(%rip), %eax
	cltq
	salq	$5, %rax
	addq	$lwp_ptable, %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	lwp_procs(%rip), %eax
	addl	$1, %eax
	movl	%eax, lwp_procs(%rip)
	movl	lwp_running(%rip), %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	new_lwp, .-new_lwp
	.globl	lwp_start
	.type	lwp_start, @function
lwp_start:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	lwp_procs(%rip), %eax
	testl	%eax, %eax
	jne	.L6
	jmp	.L5
.L6:
#APP
# 81 "lwp.c" 1
	pushq %rax
# 0 "" 2
# 81 "lwp.c" 1
	pushq %rbx
# 0 "" 2
# 81 "lwp.c" 1
	pushq %rcx
# 0 "" 2
# 81 "lwp.c" 1
	pushq %rdx
# 0 "" 2
# 81 "lwp.c" 1
	pushq %rsi
# 0 "" 2
# 81 "lwp.c" 1
	pushq %rdi
# 0 "" 2
# 81 "lwp.c" 1
	pushq %r8
# 0 "" 2
# 81 "lwp.c" 1
	pushq %r9
# 0 "" 2
# 81 "lwp.c" 1
	pushq %r10
# 0 "" 2
# 81 "lwp.c" 1
	pushq %r11
# 0 "" 2
# 81 "lwp.c" 1
	pushq %r12
# 0 "" 2
# 81 "lwp.c" 1
	pushq %r13
# 0 "" 2
# 81 "lwp.c" 1
	pushq %r14
# 0 "" 2
# 81 "lwp.c" 1
	pushq %r15
# 0 "" 2
# 81 "lwp.c" 1
	pushq %rbp
# 0 "" 2
# 82 "lwp.c" 1
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
	addq	$lwp_ptable+16, %rax
	movq	8(%rax), %rax
#APP
# 92 "lwp.c" 1
	movq  %rax,%rsp
# 0 "" 2
# 93 "lwp.c" 1
	popq  %rbp
# 0 "" 2
# 93 "lwp.c" 1
	popq  %r15
# 0 "" 2
# 93 "lwp.c" 1
	popq  %r14
# 0 "" 2
# 93 "lwp.c" 1
	popq  %r13
# 0 "" 2
# 93 "lwp.c" 1
	popq  %r12
# 0 "" 2
# 93 "lwp.c" 1
	popq  %r11
# 0 "" 2
# 93 "lwp.c" 1
	popq  %r10
# 0 "" 2
# 93 "lwp.c" 1
	popq  %r9
# 0 "" 2
# 93 "lwp.c" 1
	popq  %r8
# 0 "" 2
# 93 "lwp.c" 1
	popq  %rdi
# 0 "" 2
# 93 "lwp.c" 1
	popq  %rsi
# 0 "" 2
# 93 "lwp.c" 1
	popq  %rdx
# 0 "" 2
# 93 "lwp.c" 1
	popq  %rcx
# 0 "" 2
# 93 "lwp.c" 1
	popq  %rbx
# 0 "" 2
# 93 "lwp.c" 1
	popq  %rax
# 0 "" 2
# 93 "lwp.c" 1
	movq  %rbp,%rsp
# 0 "" 2
#NO_APP
.L5:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	lwp_start, .-lwp_start
	.globl	lwp_yield
	.type	lwp_yield, @function
lwp_yield:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
#APP
# 99 "lwp.c" 1
	pushq %rax
# 0 "" 2
# 99 "lwp.c" 1
	pushq %rbx
# 0 "" 2
# 99 "lwp.c" 1
	pushq %rcx
# 0 "" 2
# 99 "lwp.c" 1
	pushq %rdx
# 0 "" 2
# 99 "lwp.c" 1
	pushq %rsi
# 0 "" 2
# 99 "lwp.c" 1
	pushq %rdi
# 0 "" 2
# 99 "lwp.c" 1
	pushq %r8
# 0 "" 2
# 99 "lwp.c" 1
	pushq %r9
# 0 "" 2
# 99 "lwp.c" 1
	pushq %r10
# 0 "" 2
# 99 "lwp.c" 1
	pushq %r11
# 0 "" 2
# 99 "lwp.c" 1
	pushq %r12
# 0 "" 2
# 99 "lwp.c" 1
	pushq %r13
# 0 "" 2
# 99 "lwp.c" 1
	pushq %r14
# 0 "" 2
# 99 "lwp.c" 1
	pushq %r15
# 0 "" 2
# 99 "lwp.c" 1
	pushq %rbp
# 0 "" 2
#NO_APP
	movl	lwp_running(%rip), %edx
#APP
# 100 "lwp.c" 1
	movq  %rsp,%rax
# 0 "" 2
#NO_APP
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	$lwp_ptable+16, %rdx
	movq	%rax, 8(%rdx)
	movq	SF(%rip), %rax
	testq	%rax, %rax
	jne	.L11
	movl	lwp_running(%rip), %eax
	addl	$1, %eax
	movl	lwp_procs(%rip), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	movl	%eax, lwp_running(%rip)
	jmp	.L12
.L11:
	movq	SF(%rip), %rax
	call	*%rax
	movl	%eax, lwp_running(%rip)
.L12:
	movl	lwp_running(%rip), %eax
	cltq
	salq	$5, %rax
	addq	$lwp_ptable+16, %rax
	movq	8(%rax), %rax
#APP
# 108 "lwp.c" 1
	movq  %rax,%rsp
# 0 "" 2
# 109 "lwp.c" 1
	popq  %rbp
# 0 "" 2
# 109 "lwp.c" 1
	popq  %r15
# 0 "" 2
# 109 "lwp.c" 1
	popq  %r14
# 0 "" 2
# 109 "lwp.c" 1
	popq  %r13
# 0 "" 2
# 109 "lwp.c" 1
	popq  %r12
# 0 "" 2
# 109 "lwp.c" 1
	popq  %r11
# 0 "" 2
# 109 "lwp.c" 1
	popq  %r10
# 0 "" 2
# 109 "lwp.c" 1
	popq  %r9
# 0 "" 2
# 109 "lwp.c" 1
	popq  %r8
# 0 "" 2
# 109 "lwp.c" 1
	popq  %rdi
# 0 "" 2
# 109 "lwp.c" 1
	popq  %rsi
# 0 "" 2
# 109 "lwp.c" 1
	popq  %rdx
# 0 "" 2
# 109 "lwp.c" 1
	popq  %rcx
# 0 "" 2
# 109 "lwp.c" 1
	popq  %rbx
# 0 "" 2
# 109 "lwp.c" 1
	popq  %rax
# 0 "" 2
# 109 "lwp.c" 1
	movq  %rbp,%rsp
# 0 "" 2
#NO_APP
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	lwp_yield, .-lwp_yield
	.globl	lwp_exit
	.type	lwp_exit, @function
lwp_exit:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	lwp_running(%rip), %eax
	cltq
	salq	$5, %rax
	addq	$lwp_ptable, %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free
	movl	lwp_running(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.L14
.L15:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	$lwp_ptable, %rax
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	$lwp_ptable, %rdx
	movq	(%rdx), %rcx
	movq	%rcx, (%rax)
	movq	8(%rdx), %rcx
	movq	%rcx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	%rcx, 16(%rax)
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
	addl	$1, -4(%rbp)
.L14:
	movl	lwp_procs(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L15
	movl	lwp_procs(%rip), %eax
	subl	$1, %eax
	movl	%eax, lwp_procs(%rip)
	movl	lwp_procs(%rip), %eax
	testl	%eax, %eax
	jne	.L16
	movl	$0, %eax
	call	lwp_stop
	jmp	.L13
.L16:
	movq	SF(%rip), %rax
	testq	%rax, %rax
	jne	.L18
	movl	$0, lwp_running(%rip)
	jmp	.L19
.L18:
	movq	SF(%rip), %rax
	call	*%rax
	movl	%eax, lwp_running(%rip)
.L19:
	movl	lwp_running(%rip), %eax
	cltq
	salq	$5, %rax
	addq	$lwp_ptable+16, %rax
	movq	8(%rax), %rax
#APP
# 133 "lwp.c" 1
	movq  %rax,%rsp
# 0 "" 2
# 134 "lwp.c" 1
	popq  %rbp
# 0 "" 2
# 134 "lwp.c" 1
	popq  %r15
# 0 "" 2
# 134 "lwp.c" 1
	popq  %r14
# 0 "" 2
# 134 "lwp.c" 1
	popq  %r13
# 0 "" 2
# 134 "lwp.c" 1
	popq  %r12
# 0 "" 2
# 134 "lwp.c" 1
	popq  %r11
# 0 "" 2
# 134 "lwp.c" 1
	popq  %r10
# 0 "" 2
# 134 "lwp.c" 1
	popq  %r9
# 0 "" 2
# 134 "lwp.c" 1
	popq  %r8
# 0 "" 2
# 134 "lwp.c" 1
	popq  %rdi
# 0 "" 2
# 134 "lwp.c" 1
	popq  %rsi
# 0 "" 2
# 134 "lwp.c" 1
	popq  %rdx
# 0 "" 2
# 134 "lwp.c" 1
	popq  %rcx
# 0 "" 2
# 134 "lwp.c" 1
	popq  %rbx
# 0 "" 2
# 134 "lwp.c" 1
	popq  %rax
# 0 "" 2
# 134 "lwp.c" 1
	movq  %rbp,%rsp
# 0 "" 2
#NO_APP
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	lwp_exit, .-lwp_exit
	.globl	lwp_stop
	.type	lwp_stop, @function
lwp_stop:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
#APP
# 139 "lwp.c" 1
	pushq %rax
# 0 "" 2
# 139 "lwp.c" 1
	pushq %rbx
# 0 "" 2
# 139 "lwp.c" 1
	pushq %rcx
# 0 "" 2
# 139 "lwp.c" 1
	pushq %rdx
# 0 "" 2
# 139 "lwp.c" 1
	pushq %rsi
# 0 "" 2
# 139 "lwp.c" 1
	pushq %rdi
# 0 "" 2
# 139 "lwp.c" 1
	pushq %r8
# 0 "" 2
# 139 "lwp.c" 1
	pushq %r9
# 0 "" 2
# 139 "lwp.c" 1
	pushq %r10
# 0 "" 2
# 139 "lwp.c" 1
	pushq %r11
# 0 "" 2
# 139 "lwp.c" 1
	pushq %r12
# 0 "" 2
# 139 "lwp.c" 1
	pushq %r13
# 0 "" 2
# 139 "lwp.c" 1
	pushq %r14
# 0 "" 2
# 139 "lwp.c" 1
	pushq %r15
# 0 "" 2
# 139 "lwp.c" 1
	pushq %rbp
# 0 "" 2
#NO_APP
	movq	mainSP(%rip), %rax
#APP
# 140 "lwp.c" 1
	movq  %rax,%rsp
# 0 "" 2
# 141 "lwp.c" 1
	popq  %rbp
# 0 "" 2
# 141 "lwp.c" 1
	popq  %r15
# 0 "" 2
# 141 "lwp.c" 1
	popq  %r14
# 0 "" 2
# 141 "lwp.c" 1
	popq  %r13
# 0 "" 2
# 141 "lwp.c" 1
	popq  %r12
# 0 "" 2
# 141 "lwp.c" 1
	popq  %r11
# 0 "" 2
# 141 "lwp.c" 1
	popq  %r10
# 0 "" 2
# 141 "lwp.c" 1
	popq  %r9
# 0 "" 2
# 141 "lwp.c" 1
	popq  %r8
# 0 "" 2
# 141 "lwp.c" 1
	popq  %rdi
# 0 "" 2
# 141 "lwp.c" 1
	popq  %rsi
# 0 "" 2
# 141 "lwp.c" 1
	popq  %rdx
# 0 "" 2
# 141 "lwp.c" 1
	popq  %rcx
# 0 "" 2
# 141 "lwp.c" 1
	popq  %rbx
# 0 "" 2
# 141 "lwp.c" 1
	popq  %rax
# 0 "" 2
# 141 "lwp.c" 1
	movq  %rbp,%rsp
# 0 "" 2
#NO_APP
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	lwp_stop, .-lwp_stop
	.globl	lwp_set_scheduler
	.type	lwp_set_scheduler, @function
lwp_set_scheduler:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, SF(%rip)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	lwp_set_scheduler, .-lwp_set_scheduler
	.globl	lwp_getpid
	.type	lwp_getpid, @function
lwp_getpid:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	lwp_running(%rip), %eax
	cltq
	salq	$5, %rax
	addq	$lwp_ptable, %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	lwp_getpid, .-lwp_getpid
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits

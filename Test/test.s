	.file	"test.cpp"
	.text
	.p2align 4,,15
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB2530:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "Timing full:\0"
.LC1:
	.ascii "Timing:\0"
.LC3:
	.ascii "Output:\0"
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2167:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$136, %rsp
	.seh_stackalloc	136
	.seh_endprologue
	leaq	32(%rsp), %rbp
	call	__main
	movq	%rbp, %rdi
	xorl	%eax, %eax
	movl	$10, %ecx
	rep stosq
	movq	$0, 112(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movl	$1000000, %r10d
	movq	%rax, %rsi
	xorl	%r9d, %r9d
	.p2align 4,,10
.L7:
	leaq	16(%rbp), %rcx
	movl	$8, %eax
	movl	$1, %edx
	movl	$1, %r8d
	jmp	.L5
	.p2align 4,,10
.L10:
	xorq	(%rcx), %rbx
	xorl	%edx, %edx
	addq	$8, %rcx
	popcntq	%rbx, %rdx
.L5:
	shlx	%eax, %r8d, %ebx
	cmpl	$10, %edx
	movslq	%ebx, %rbx
	cmovge	%r9, %rbx
	addl	$1, %eax
	cmpl	$18, %eax
	movq	%rbx, 32(%rsp)
	jne	.L10
	subl	$1, %r10d
	jne	.L7
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC0(%rip), %rdx
	movl	$12, %r8d
	subq	%rsi, %rax
	movq	%rax, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	%rsi, %rdx
	call	_ZNSo9_M_insertIxEERSoT_
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	movl	$7, %r8d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vxorps	%xmm1, %xmm1, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rcx
	vcvtsi2ssq	%rsi, %xmm1, %xmm1
	vdivss	.LC2(%rip), %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	movl	$7, %r8d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	%rbx, %rdx
	call	_ZNSo9_M_insertIyEERSoT_
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	xorl	%eax, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_GLOBAL__sub_I_main;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_main
_GLOBAL__sub_I_main:
.LFB2531:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	addq	$40, %rsp
	jmp	atexit
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_main
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 4
.LC2:
	.long	1232348160
	.ident	"GCC: (Rev3, Built by MSYS2 project) 5.2.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIxEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIyEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout

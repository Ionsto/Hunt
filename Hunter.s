	.file	"main.cpp"
	.section	.text$_ZNKSt5ctypeIcE8do_widenEc,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZNKSt5ctypeIcE8do_widenEc
	.def	_ZNKSt5ctypeIcE8do_widenEc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt5ctypeIcE8do_widenEc
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1585:
	.seh_endprologue
	movl	%edx, %eax
	ret
	.seh_endproc
	.section	.text$_ZN12RenderObject18GetRayIntersectionER9RenderRay,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN12RenderObject18GetRayIntersectionER9RenderRay
	.def	_ZN12RenderObject18GetRayIntersectionER9RenderRay;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12RenderObject18GetRayIntersectionER9RenderRay
_ZN12RenderObject18GetRayIntersectionER9RenderRay:
.LFB2335:
	.seh_endprologue
	movq	%rcx, %rax
	movb	$0, (%rcx)
	movl	$0x00000000, 4(%rcx)
	movl	$0, 8(%rcx)
	ret
	.seh_endproc
	.section	.text$_ZN11NeuralBrainILi83ELi100EE9RandomiseEf,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN11NeuralBrainILi83ELi100EE9RandomiseEf
	.def	_ZN11NeuralBrainILi83ELi100EE9RandomiseEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11NeuralBrainILi83ELi100EE9RandomiseEf
_ZN11NeuralBrainILi83ELi100EE9RandomiseEf:
.LFB9623:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	vmovaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	vmovaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	vmovaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	.seh_endprologue
	vxorpd	%xmm8, %xmm8, %xmm8
	leaq	772(%rcx), %rbx
	leaq	74372(%rcx), %rdi
	vmovsd	.LC1(%rip), %xmm7
	vcvtss2sd	%xmm1, %xmm8, %xmm8
	vmovsd	.LC2(%rip), %xmm6
	.p2align 4,,10
.L5:
	leaq	736(%rbx), %rsi
	.p2align 4,,10
.L4:
	call	rand
	vxorpd	%xmm1, %xmm1, %xmm1
	addq	$4, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorps	%xmm2, %xmm2, %xmm2
	vcvtss2sd	-4(%rbx), %xmm1, %xmm1
	vcvtsi2sd	%eax, %xmm0, %xmm0
	vfmadd132sd	%xmm7, %xmm6, %xmm0
	vfmadd132sd	%xmm8, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm2, %xmm2
	vmovss	%xmm2, -4(%rbx)
	cmpq	%rsi, %rbx
	jne	.L4
	cmpq	%rbx, %rdi
	jne	.L5
	vmovaps	32(%rsp), %xmm6
	vmovaps	48(%rsp), %xmm7
	vmovaps	64(%rsp), %xmm8
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.section	.text$_ZN11NeuralBrainILi40ELi40EE9RandomiseEf,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN11NeuralBrainILi40ELi40EE9RandomiseEf
	.def	_ZN11NeuralBrainILi40ELi40EE9RandomiseEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11NeuralBrainILi40ELi40EE9RandomiseEf
_ZN11NeuralBrainILi40ELi40EE9RandomiseEf:
.LFB10714:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	vmovaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	vmovaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	vmovaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	.seh_endprologue
	vxorpd	%xmm8, %xmm8, %xmm8
	leaq	360(%rcx), %rbx
	leaq	13320(%rcx), %rdi
	vmovsd	.LC1(%rip), %xmm7
	vcvtss2sd	%xmm1, %xmm8, %xmm8
	vmovsd	.LC2(%rip), %xmm6
	.p2align 4,,10
.L11:
	leaq	324(%rbx), %rsi
	.p2align 4,,10
.L10:
	call	rand
	vxorpd	%xmm1, %xmm1, %xmm1
	addq	$4, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorps	%xmm2, %xmm2, %xmm2
	vcvtss2sd	-4(%rbx), %xmm1, %xmm1
	vcvtsi2sd	%eax, %xmm0, %xmm0
	vfmadd132sd	%xmm7, %xmm6, %xmm0
	vfmadd132sd	%xmm8, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm2, %xmm2
	vmovss	%xmm2, -4(%rbx)
	cmpq	%rsi, %rbx
	jne	.L10
	cmpq	%rbx, %rdi
	jne	.L11
	vmovaps	32(%rsp), %xmm6
	vmovaps	48(%rsp), %xmm7
	vmovaps	64(%rsp), %xmm8
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.section	.text$_ZN11NeuralBrainILi83ELi100EED1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN11NeuralBrainILi83ELi100EED1Ev
	.def	_ZN11NeuralBrainILi83ELi100EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11NeuralBrainILi83ELi100EED1Ev
_ZN11NeuralBrainILi83ELi100EED1Ev:
.LFB9666:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rcx, %rbx
	movq	%rax, (%rcx)
	movq	74376(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L15
	call	_ZdlPv
.L15:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L16
	call	_ZdlPv
.L16:
	movq	%rbx, %rcx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN9NeuralNetD2Ev
	.seh_endproc
	.section	.text$_ZN11NeuralBrainILi40ELi40EED1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN11NeuralBrainILi40ELi40EED1Ev
	.def	_ZN11NeuralBrainILi40ELi40EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11NeuralBrainILi40ELi40EED1Ev
_ZN11NeuralBrainILi40ELi40EED1Ev:
.LFB10092:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	16+_ZTV11NeuralBrainILi40ELi40EE(%rip), %rax
	movq	%rcx, %rbx
	movq	%rax, (%rcx)
	movq	13320(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L24
	call	_ZdlPv
.L24:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L25
	call	_ZdlPv
.L25:
	movq	%rbx, %rcx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN9NeuralNetD2Ev
	.seh_endproc
	.section	.text$_ZN18RenderObjectCircle18GetRayIntersectionER9RenderRay,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN18RenderObjectCircle18GetRayIntersectionER9RenderRay
	.def	_ZN18RenderObjectCircle18GetRayIntersectionER9RenderRay;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN18RenderObjectCircle18GetRayIntersectionER9RenderRay
_ZN18RenderObjectCircle18GetRayIntersectionER9RenderRay:
.LFB2342:
	.seh_endprologue
	vmovss	12(%rdx), %xmm1
	movq	%rcx, %rax
	vsubss	4(%r8), %xmm1, %xmm1
	vmovss	8(%rdx), %xmm2
	vsubss	(%r8), %xmm2, %xmm2
	vmulss	12(%r8), %xmm1, %xmm0
	vfmadd231ss	8(%r8), %xmm2, %xmm0
	vcomiss	.LC0(%rip), %xmm0
	jbe	.L33
	vmulss	%xmm0, %xmm0, %xmm0
	vmovss	16(%r8), %xmm4
	vmovaps	%xmm4, %xmm5
	vmovss	20(%rdx), %xmm3
	vfmadd132ss	%xmm4, %xmm3, %xmm5
	vcomiss	%xmm0, %xmm5
	jbe	.L33
	vmulss	%xmm2, %xmm2, %xmm2
	vfmadd132ss	%xmm1, %xmm2, %xmm1
	vsubss	%xmm0, %xmm1, %xmm1
	vcomiss	%xmm1, %xmm3
	jb	.L33
	vsubss	%xmm1, %xmm3, %xmm1
	vsqrtss	%xmm0, %xmm0, %xmm0
	vsqrtss	%xmm1, %xmm1, %xmm1
	vsubss	%xmm1, %xmm0, %xmm0
	vcomiss	%xmm0, %xmm4
	jb	.L33
	movl	16(%rdx), %edx
	movb	$1, (%rcx)
	vmovss	%xmm0, 4(%rcx)
	movl	%edx, 8(%rcx)
	ret
	.p2align 4,,10
.L33:
	movb	$0, (%rax)
	movl	$0x00000000, 4(%rax)
	movl	$0, 8(%rax)
	ret
	.seh_endproc
	.text
	.p2align 4,,15
	.def	_ZL9vsnprintfPcyPKcS_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL9vsnprintfPcyPKcS_
_ZL9vsnprintfPcyPKcS_:
.LFB908:
	.seh_endprologue
	jmp	__mingw_vsnprintf
	.seh_endproc
	.p2align 4,,15
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB10713:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.p2align 4,,15
	.def	_ZSt18generate_canonicalIdLy53ESt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EEET_RT1_.constprop.210;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZSt18generate_canonicalIdLy53ESt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EEET_RT1_.constprop.210
_ZSt18generate_canonicalIdLy53ESt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EEET_RT1_.constprop.210:
.LFB10937:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	vmovaps	%xmm6, 16(%rsp)
	.seh_savexmm	%xmm6, 16
	vmovaps	%xmm7, 32(%rsp)
	.seh_savexmm	%xmm7, 32
	vmovaps	%xmm8, 48(%rsp)
	.seh_savexmm	%xmm8, 48
	.seh_endprologue
	vxorpd	%xmm8, %xmm8, %xmm8
	leaq	gen(%rip), %r10
	leaq	896+gen(%rip), %rcx
	leaq	2464+gen(%rip), %r9
	movl	$2, %r8d
	vmovsd	.LC4(%rip), %xmm3
	movq	2496+gen(%rip), %rbx
	vmovdqa	.LC5(%rip), %ymm7
	movl	$-1727483681, %r11d
	vmovsd	%xmm3, 8(%rsp)
	vpxor	%xmm3, %xmm3, %xmm3
	vmovdqa	.LC6(%rip), %ymm6
	vmovdqa	.LC7(%rip), %ymm5
	vmovdqa	.LC8(%rip), %ymm4
	flds	.LC9(%rip)
.L54:
	cmpq	$623, %rbx
	ja	.L47
	movl	(%r10,%rbx,4), %eax
	addq	$1, %rbx
.L48:
	movl	%eax, %edx
	fld	%st(0)
	shrl	$11, %edx
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%edx, %eax
	fmull	8(%rsp)
	movl	%eax, %edx
	sall	$7, %edx
	andl	$-1658038656, %edx
	xorl	%edx, %eax
	movl	%eax, %edx
	sall	$15, %edx
	andl	$-272236544, %edx
	xorl	%edx, %eax
	movl	%eax, %edx
	shrl	$18, %edx
	xorl	%edx, %eax
	subq	$1, %r8
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vfmadd231sd	8(%rsp), %xmm0, %xmm8
	fstpl	8(%rsp)
	jne	.L54
	fstp	%st(0)
	vdivsd	8(%rsp), %xmm8, %xmm0
	movq	%rbx, 2496+gen(%rip)
	vzeroupper
	vmovaps	16(%rsp), %xmm6
	vmovaps	32(%rsp), %xmm7
	vmovaps	48(%rsp), %xmm8
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L47:
	leaq	gen(%rip), %rax
	.p2align 4,,10
.L49:
	vmovdqu	4(%rax), %xmm0
	addq	$32, %rax
	vpand	-32(%rax), %ymm7, %ymm1
	vinserti128	$0x1, -12(%rax), %ymm0, %ymm0
	vpand	%ymm0, %ymm6, %ymm0
	vpor	%ymm0, %ymm1, %ymm0
	vpand	%ymm5, %ymm0, %ymm1
	vpsrld	$1, %ymm0, %ymm0
	vpcmpeqd	%ymm3, %ymm1, %ymm1
	vpandn	%ymm4, %ymm1, %ymm2
	vmovdqu	1556(%rax), %xmm1
	vinserti128	$0x1, 1572(%rax), %ymm1, %ymm1
	vpxor	%ymm1, %ymm2, %ymm1
	vpxor	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, -32(%rax)
	cmpq	%rax, %rcx
	jne	.L49
	movl	900+gen(%rip), %eax
	movl	896+gen(%rip), %ebx
	movl	908+gen(%rip), %esi
	movl	%eax, %edx
	andl	$-2147483648, %ebx
	andl	$-2147483648, %eax
	andl	$2147483647, %edx
	orl	%ebx, %edx
	movl	%edx, %ebx
	shrl	%edx
	andl	$1, %ebx
	negl	%ebx
	andl	$-1727483681, %ebx
	xorl	2484+gen(%rip), %ebx
	xorl	%ebx, %edx
	movl	%eax, %ebx
	movl	%edx, 896+gen(%rip)
	movl	904+gen(%rip), %edx
	movl	%edx, %eax
	andl	$-2147483648, %edx
	andl	$2147483647, %eax
	orl	%ebx, %eax
	movl	%eax, %ebx
	shrl	%eax
	andl	$1, %ebx
	negl	%ebx
	andl	$-1727483681, %ebx
	xorl	2488+gen(%rip), %ebx
	xorl	%ebx, %eax
	movl	%eax, 900+gen(%rip)
	movl	%esi, %eax
	andl	$-2147483648, %esi
	andl	$2147483647, %eax
	orl	%edx, %eax
	movl	%eax, %ebx
	shrl	%eax
	andl	$1, %ebx
	negl	%ebx
	andl	$-1727483681, %ebx
	xorl	2492+gen(%rip), %ebx
	xorl	%ebx, %eax
	movl	%eax, 904+gen(%rip)
	movl	912+gen(%rip), %eax
	movl	%eax, %edx
	andl	$2147483647, %edx
	orl	%esi, %edx
	movl	%edx, %ebx
	andl	$1, %ebx
	negl	%ebx
	andl	$-1727483681, %ebx
	xorl	gen(%rip), %ebx
	shrl	%edx
	andl	$-2147483648, %eax
	xorl	%ebx, %edx
	movl	%eax, %ebx
	movl	%edx, 908+gen(%rip)
	movl	916+gen(%rip), %edx
	movl	%edx, %eax
	andl	$2147483647, %eax
	orl	%ebx, %eax
	movl	%eax, %ebx
	shrl	%eax
	andl	$1, %ebx
	negl	%ebx
	andl	$-1727483681, %ebx
	xorl	4+gen(%rip), %ebx
	xorl	%ebx, %eax
	movl	%edx, %ebx
	movl	%eax, 912+gen(%rip)
	movl	920+gen(%rip), %eax
	andl	$-2147483648, %ebx
	movl	%eax, %edx
	andl	$-2147483648, %eax
	andl	$2147483647, %edx
	orl	%ebx, %edx
	movl	%edx, %ebx
	shrl	%edx
	andl	$1, %ebx
	negl	%ebx
	andl	$-1727483681, %ebx
	xorl	8+gen(%rip), %ebx
	xorl	%ebx, %edx
	movl	%eax, %ebx
	movl	%edx, 916+gen(%rip)
	movl	924+gen(%rip), %edx
	movl	%edx, %eax
	andl	$2147483647, %eax
	orl	%ebx, %eax
	movl	%eax, %ebx
	shrl	%eax
	andl	$1, %ebx
	negl	%ebx
	andl	$-1727483681, %ebx
	xorl	12+gen(%rip), %ebx
	xorl	%ebx, %eax
	movl	%eax, 920+gen(%rip)
	movl	928+gen(%rip), %eax
	andl	$2147483647, %eax
	andl	$-2147483648, %edx
	orl	%edx, %eax
	movl	%eax, %edx
	shrl	%eax
	andl	$1, %edx
	negl	%edx
	andl	$-1727483681, %edx
	xorl	16+gen(%rip), %edx
	xorl	%edx, %eax
	movl	%eax, 924+gen(%rip)
	leaq	928+gen(%rip), %rax
	.p2align 4,,10
.L50:
	vmovdqu	4(%rax), %xmm0
	addq	$32, %rax
	vpand	-32(%rax), %ymm7, %ymm1
	vinserti128	$0x1, -12(%rax), %ymm0, %ymm0
	vpand	%ymm0, %ymm6, %ymm0
	vpor	%ymm1, %ymm0, %ymm0
	vpand	%ymm5, %ymm0, %ymm1
	vpsrld	$1, %ymm0, %ymm0
	vpcmpeqd	%ymm3, %ymm1, %ymm1
	vpandn	%ymm4, %ymm1, %ymm2
	vmovdqu	-940(%rax), %xmm1
	vinserti128	$0x1, -924(%rax), %ymm1, %ymm1
	vpxor	%ymm1, %ymm2, %ymm1
	vpxor	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, -32(%rax)
	cmpq	%r9, %rax
	jne	.L50
	movl	2468+gen(%rip), %eax
	movl	2464+gen(%rip), %ebx
	movl	%eax, %edx
	andl	$-2147483648, %ebx
	andl	$-2147483648, %eax
	andl	$2147483647, %edx
	orl	%ebx, %edx
	movl	%edx, %ebx
	shrl	%edx
	andl	$1, %ebx
	negl	%ebx
	andl	$-1727483681, %ebx
	xorl	1556+gen(%rip), %ebx
	xorl	%ebx, %edx
	movl	%eax, %ebx
	movl	%edx, 2464+gen(%rip)
	movl	2472+gen(%rip), %edx
	movl	%edx, %eax
	andl	$2147483647, %eax
	orl	%ebx, %eax
	movl	%eax, %ebx
	shrl	%eax
	andl	$1, %ebx
	negl	%ebx
	andl	$-1727483681, %ebx
	xorl	1560+gen(%rip), %ebx
	xorl	%ebx, %eax
	movl	%edx, %ebx
	movl	%eax, 2468+gen(%rip)
	movl	2476+gen(%rip), %eax
	andl	$-2147483648, %ebx
	movl	%eax, %edx
	andl	$-2147483648, %eax
	andl	$2147483647, %edx
	orl	%ebx, %edx
	movl	%edx, %ebx
	shrl	%edx
	andl	$1, %ebx
	negl	%ebx
	andl	$-1727483681, %ebx
	xorl	1564+gen(%rip), %ebx
	xorl	%ebx, %edx
	movl	%eax, %ebx
	movl	%edx, 2472+gen(%rip)
	movl	2480+gen(%rip), %edx
	movl	%edx, %eax
	andl	$2147483647, %eax
	orl	%ebx, %eax
	movl	%eax, %ebx
	andl	$1, %ebx
	negl	%ebx
	andl	$-1727483681, %ebx
	xorl	1568+gen(%rip), %ebx
	shrl	%eax
	xorl	%ebx, %eax
	movl	%edx, %ebx
	movl	%eax, 2476+gen(%rip)
	movl	2484+gen(%rip), %eax
	andl	$-2147483648, %ebx
	movl	%eax, %edx
	andl	$-2147483648, %eax
	andl	$2147483647, %edx
	orl	%ebx, %edx
	movl	%edx, %ebx
	shrl	%edx
	andl	$1, %ebx
	negl	%ebx
	andl	$-1727483681, %ebx
	xorl	1572+gen(%rip), %ebx
	xorl	%ebx, %edx
	movl	2488+gen(%rip), %ebx
	movl	%edx, 2480+gen(%rip)
	movl	%eax, %edx
	movl	%ebx, %eax
	andl	$-2147483648, %ebx
	andl	$2147483647, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	shrl	%eax
	andl	$1, %edx
	negl	%edx
	andl	$-1727483681, %edx
	xorl	1576+gen(%rip), %edx
	xorl	%edx, %eax
	movl	2492+gen(%rip), %edx
	movl	%eax, 2484+gen(%rip)
	movl	%edx, %eax
	andl	$2147483647, %eax
	orl	%ebx, %eax
	movl	%eax, %ebx
	shrl	%eax
	andl	$1, %ebx
	negl	%ebx
	andl	$-1727483681, %ebx
	xorl	1580+gen(%rip), %ebx
	xorl	%ebx, %eax
	movl	%edx, %ebx
	movl	%eax, 2488+gen(%rip)
	movl	gen(%rip), %eax
	andl	$-2147483648, %ebx
	movl	%eax, %edx
	andl	$2147483647, %edx
	orl	%ebx, %edx
	movl	%edx, %ebx
	shrl	%ebx
	xorl	1584+gen(%rip), %ebx
	andl	$1, %edx
	cmovne	%r11d, %edx
	xorl	%ebx, %edx
	movl	$1, %ebx
	movl	%edx, 2492+gen(%rip)
	jmp	.L48
	.seh_endproc
	.section	.text$_ZN11NeuralBrainILi40ELi40EE6UpdateERKSt6vectorIfSaIfEE,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN11NeuralBrainILi40ELi40EE6UpdateERKSt6vectorIfSaIfEE
	.def	_ZN11NeuralBrainILi40ELi40EE6UpdateERKSt6vectorIfSaIfEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11NeuralBrainILi40ELi40EE6UpdateERKSt6vectorIfSaIfEE
_ZN11NeuralBrainILi40ELi40EE6UpdateERKSt6vectorIfSaIfEE:
.LFB10106:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	.seh_endprologue
	movq	(%r8), %r8
	leaq	40(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rcx, 176(%rsp)
	leaq	32(%r8), %rdx
	cmpq	%rdx, %rax
	jnb	.L112
	leaq	72(%rbx), %rdx
	cmpq	%rdx, %r8
	jb	.L61
.L112:
	andl	$31, %eax
	movq	%rax, %rdx
	shrq	$2, %rdx
	negq	%rdx
	andl	$7, %edx
	je	.L91
	vmovss	(%r8), %xmm0
	cmpl	$1, %edx
	vmovss	%xmm0, 40(%rbx)
	je	.L92
	vmovss	4(%r8), %xmm0
	cmpl	$2, %edx
	vmovss	%xmm0, 44(%rbx)
	je	.L93
	vmovss	8(%r8), %xmm0
	cmpl	$3, %edx
	vmovss	%xmm0, 48(%rbx)
	je	.L94
	vmovss	12(%r8), %xmm0
	cmpl	$4, %edx
	vmovss	%xmm0, 52(%rbx)
	je	.L95
	vmovss	16(%r8), %xmm0
	cmpl	$5, %edx
	vmovss	%xmm0, 56(%rbx)
	je	.L96
	vmovss	20(%r8), %xmm0
	cmpl	$6, %edx
	vmovss	%xmm0, 60(%rbx)
	je	.L97
	vmovss	24(%r8), %xmm0
	movl	$33, %ecx
	movl	$7, %eax
	vmovss	%xmm0, 64(%rbx)
.L64:
	movl	$40, %r11d
	movl	%edx, %r9d
	movl	$32, %r10d
	subl	%edx, %r11d
	movl	$4, %esi
.L63:
	salq	$2, %r9
	cmpl	$4, %esi
	leaq	(%r8,%r9), %rdx
	leaq	40(%rbx,%r9), %r9
	vmovups	(%rdx), %xmm0
	vinsertf128	$0x1, 16(%rdx), %ymm0, %ymm0
	vmovaps	%ymm0, (%r9)
	vmovups	32(%rdx), %xmm0
	vinsertf128	$0x1, 48(%rdx), %ymm0, %ymm0
	vmovaps	%ymm0, 32(%r9)
	vmovups	64(%rdx), %xmm0
	vinsertf128	$0x1, 80(%rdx), %ymm0, %ymm0
	vmovaps	%ymm0, 64(%r9)
	vmovups	96(%rdx), %xmm0
	vinsertf128	$0x1, 112(%rdx), %ymm0, %ymm0
	vmovaps	%ymm0, 96(%r9)
	je	.L65
	vmovups	128(%rdx), %xmm0
	vinsertf128	$0x1, 144(%rdx), %ymm0, %ymm0
	vmovaps	%ymm0, 128(%r9)
.L65:
	addl	%r10d, %eax
	subl	%r10d, %ecx
	cmpl	%r10d, %r11d
	je	.L68
	leal	1(%rax), %r9d
	movslq	%eax, %rdx
	cmpl	$1, %ecx
	vmovss	(%r8,%rdx,4), %xmm0
	movslq	%r9d, %r9
	vmovss	%xmm0, 36(%rbx,%r9,4)
	je	.L68
	leal	2(%rax), %edx
	vmovss	(%r8,%r9,4), %xmm0
	cmpl	$2, %ecx
	movslq	%edx, %rdx
	vmovss	%xmm0, 36(%rbx,%rdx,4)
	je	.L68
	leal	3(%rax), %r9d
	vmovss	(%r8,%rdx,4), %xmm0
	cmpl	$3, %ecx
	movslq	%r9d, %r9
	vmovss	%xmm0, 36(%rbx,%r9,4)
	je	.L68
	leal	4(%rax), %edx
	vmovss	(%r8,%r9,4), %xmm0
	cmpl	$4, %ecx
	movslq	%edx, %rdx
	vmovss	%xmm0, 36(%rbx,%rdx,4)
	je	.L68
	leal	5(%rax), %r9d
	vmovss	(%r8,%rdx,4), %xmm0
	cmpl	$5, %ecx
	movslq	%r9d, %r9
	vmovss	%xmm0, 36(%rbx,%r9,4)
	je	.L68
	leal	6(%rax), %edx
	vmovss	(%r8,%r9,4), %xmm0
	cmpl	$6, %ecx
	movslq	%edx, %rdx
	vmovss	%xmm0, 36(%rbx,%rdx,4)
	je	.L68
	addl	$7, %eax
	vmovss	(%r8,%rdx,4), %xmm0
	cltq
	vmovss	%xmm0, 36(%rbx,%rax,4)
.L68:
	leaq	64(%rsp), %rsi
	movl	$81, %eax
	movl	$4, 52(%rsp)
	vmovsd	.LC11(%rip), %xmm4
	movq	%rsi, %rdi
	vmovsd	.LC4(%rip), %xmm3
	shrq	$2, %rdi
	andl	$4, %edi
	subl	%edi, %eax
	movl	%edi, %ecx
	movl	%eax, 48(%rsp)
	movl	$73, %eax
	leaq	90(%rcx), %r15
	subl	%edi, %eax
	shrl	$3, %eax
	addl	$1, %eax
	movl	%eax, 36(%rsp)
	leal	0(,%rax,8), %r13d
	leaq	9(%rcx), %rax
	salq	$2, %rax
	leaq	(%rbx,%rax), %rdx
	leaq	-36(%rsi,%rax), %r8
	leaq	200(%rbx), %rax
	movq	%rax, 40(%rsp)
	leaq	384(%rbx), %rax
	movq	%rax, 56(%rsp)
.L76:
	movq	40(%rsp), %r12
	movq	56(%rsp), %r9
	xorl	%r11d, %r11d
	jmp	.L75
	.p2align 4,,10
.L179:
	vmovss	64(%rsp), %xmm5
	cmpl	$1, %edi
	vmovss	36(%rbx), %xmm0
	vfmadd132ss	-24(%r9), %xmm5, %xmm0
	vmovss	%xmm0, 64(%rsp)
	je	.L99
	vmovss	40(%rbx), %xmm5
	cmpl	$2, %edi
	vfmadd231ss	-20(%r9), %xmm5, %xmm0
	vmovss	%xmm0, 64(%rsp)
	je	.L100
	vmovss	44(%rbx), %xmm5
	cmpl	$3, %edi
	vfmadd231ss	-16(%r9), %xmm5, %xmm0
	vmovss	%xmm0, 64(%rsp)
	je	.L101
	vmovss	48(%rbx), %xmm5
	cmpl	$4, %edi
	vfmadd231ss	-12(%r9), %xmm5, %xmm0
	vmovss	%xmm0, 64(%rsp)
	je	.L102
	vmovss	52(%rbx), %xmm5
	movl	$75, %ecx
	movl	$6, %eax
	vfmadd231ss	-8(%r9), %xmm5, %xmm0
	vmovss	56(%rbx), %xmm5
	vfmadd231ss	-4(%r9), %xmm5, %xmm0
	vmovss	%xmm0, 64(%rsp)
.L70:
	leaq	(%r15,%r11), %rbp
	vmovups	(%rdx), %xmm1
	leaq	(%rbx,%rbp,4), %rbp
	vinsertf128	$0x1, 16(%rdx), %ymm1, %ymm1
	vmovups	0(%rbp), %xmm0
	vinsertf128	$0x1, 16(%rbp), %ymm0, %ymm0
	vfmadd213ps	(%r8), %ymm0, %ymm1
	vmovaps	%ymm1, (%r8)
	vmovups	32(%rdx), %xmm0
	vinsertf128	$0x1, 48(%rdx), %ymm0, %ymm2
	vmovups	32(%rbp), %xmm0
	vinsertf128	$0x1, 48(%rbp), %ymm0, %ymm0
	vfmadd132ps	%ymm2, %ymm1, %ymm0
	vmovaps	%ymm0, (%r8)
	vmovups	64(%rdx), %xmm2
	vmovups	64(%rbp), %xmm1
	vinsertf128	$0x1, 80(%rdx), %ymm2, %ymm2
	vinsertf128	$0x1, 80(%rbp), %ymm1, %ymm1
	vfmadd132ps	%ymm1, %ymm0, %ymm2
	vmovaps	%ymm2, (%r8)
	vmovups	96(%rdx), %xmm1
	vmovups	96(%rbp), %xmm0
	vinsertf128	$0x1, 112(%rdx), %ymm1, %ymm1
	vinsertf128	$0x1, 112(%rbp), %ymm0, %ymm0
	vfmadd132ps	%ymm0, %ymm2, %ymm1
	vmovaps	%ymm1, (%r8)
	vmovups	128(%rdx), %xmm0
	vinsertf128	$0x1, 144(%rdx), %ymm0, %ymm2
	vmovups	128(%rbp), %xmm0
	vinsertf128	$0x1, 144(%rbp), %ymm0, %ymm0
	vfmadd132ps	%ymm2, %ymm1, %ymm0
	vmovaps	%ymm0, (%r8)
	vmovups	160(%rdx), %xmm2
	vmovups	160(%rbp), %xmm1
	vinsertf128	$0x1, 176(%rdx), %ymm2, %ymm2
	vinsertf128	$0x1, 176(%rbp), %ymm1, %ymm1
	vfmadd132ps	%ymm1, %ymm0, %ymm2
	vmovaps	%ymm2, (%r8)
	vmovups	192(%rdx), %xmm1
	vinsertf128	$0x1, 208(%rdx), %ymm1, %ymm1
	vmovups	192(%rbp), %xmm0
	cmpl	$10, 36(%rsp)
	vinsertf128	$0x1, 208(%rbp), %ymm0, %ymm0
	vfmadd132ps	%ymm0, %ymm2, %ymm1
	vmovaps	%ymm1, (%r8)
	vmovups	224(%rdx), %xmm0
	vinsertf128	$0x1, 240(%rdx), %ymm0, %ymm2
	vmovups	224(%rbp), %xmm0
	vinsertf128	$0x1, 240(%rbp), %ymm0, %ymm0
	vfmadd132ps	%ymm2, %ymm1, %ymm0
	vmovaps	%ymm0, (%r8)
	vmovups	256(%rdx), %xmm2
	vmovups	256(%rbp), %xmm1
	vinsertf128	$0x1, 272(%rdx), %ymm2, %ymm2
	vinsertf128	$0x1, 272(%rbp), %ymm1, %ymm1
	vfmadd231ps	%ymm1, %ymm2, %ymm0
	vmovaps	%ymm0, (%r8)
	jne	.L72
	vmovups	288(%rdx), %xmm2
	vmovups	288(%rbp), %xmm1
	vinsertf128	$0x1, 304(%rdx), %ymm2, %ymm2
	vinsertf128	$0x1, 304(%rbp), %ymm1, %ymm1
	vfmadd231ps	%ymm1, %ymm2, %ymm0
	vmovaps	%ymm0, (%r8)
.L72:
	addl	%r13d, %eax
	subl	%r13d, %ecx
	cmpl	%r13d, 48(%rsp)
	je	.L73
	leal	(%rax,%r10), %ebp
	movslq	%eax, %r14
	cmpl	$1, %ecx
	vmovss	64(%rsp), %xmm5
	movslq	%ebp, %rbp
	vmovss	36(%rbx,%r14,4), %xmm0
	vfmadd132ss	36(%rbx,%rbp,4), %xmm5, %xmm0
	leal	1(%rax), %ebp
	vmovss	%xmm0, 64(%rsp)
	je	.L73
	movslq	%ebp, %r14
	addl	%r10d, %ebp
	cmpl	$2, %ecx
	movslq	%ebp, %rbp
	vmovss	36(%rbx,%r14,4), %xmm5
	vfmadd231ss	36(%rbx,%rbp,4), %xmm5, %xmm0
	leal	2(%rax), %ebp
	vmovss	%xmm0, 64(%rsp)
	je	.L73
	movslq	%ebp, %r14
	addl	%r10d, %ebp
	cmpl	$3, %ecx
	movslq	%ebp, %rbp
	vmovss	36(%rbx,%r14,4), %xmm5
	vfmadd231ss	36(%rbx,%rbp,4), %xmm5, %xmm0
	leal	3(%rax), %ebp
	vmovss	%xmm0, 64(%rsp)
	je	.L73
	movslq	%ebp, %r14
	addl	%r10d, %ebp
	cmpl	$4, %ecx
	movslq	%ebp, %rbp
	vmovss	36(%rbx,%r14,4), %xmm5
	vfmadd231ss	36(%rbx,%rbp,4), %xmm5, %xmm0
	leal	4(%rax), %ebp
	vmovss	%xmm0, 64(%rsp)
	je	.L73
	movslq	%ebp, %r14
	addl	%r10d, %ebp
	cmpl	$5, %ecx
	movslq	%ebp, %rbp
	vmovss	36(%rbx,%r14,4), %xmm5
	vfmadd231ss	36(%rbx,%rbp,4), %xmm5, %xmm0
	leal	5(%rax), %ebp
	vmovss	%xmm0, 64(%rsp)
	je	.L73
	movslq	%ebp, %r14
	addl	%r10d, %ebp
	addl	$6, %eax
	movslq	%ebp, %rbp
	vmovss	36(%rbx,%r14,4), %xmm5
	cmpl	$6, %ecx
	vfmadd231ss	36(%rbx,%rbp,4), %xmm5, %xmm0
	vmovss	%xmm0, 64(%rsp)
	je	.L73
	movslq	%eax, %rcx
	addl	%r10d, %eax
	cltq
	vmovss	36(%rbx,%rcx,4), %xmm5
	vfmadd231ss	36(%rbx,%rax,4), %xmm5, %xmm0
	vmovss	%xmm0, 64(%rsp)
.L73:
	vmovss	64(%rsp), %xmm0
	vxorps	%xmm5, %xmm5, %xmm5
	vaddss	68(%rsp), %xmm0, %xmm0
	addq	$81, %r11
	addq	$4, %r12
	addq	$324, %r9
	vaddss	72(%rsp), %xmm0, %xmm0
	vaddss	76(%rsp), %xmm0, %xmm0
	vaddss	80(%rsp), %xmm0, %xmm0
	vaddss	84(%rsp), %xmm0, %xmm0
	vaddss	88(%rsp), %xmm0, %xmm0
	vaddss	92(%rsp), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmovapd	%xmm0, %xmm1
	vandpd	%xmm4, %xmm1, %xmm1
	vaddsd	%xmm3, %xmm1, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm5, %xmm5
	vmovss	%xmm5, -4(%r12)
	cmpq	$3240, %r11
	je	.L178
.L75:
	testl	%edi, %edi
	leal	81(%r11), %r10d
	movq	$0, (%rsi)
	movq	$0, 8(%rsi)
	movq	$0, 16(%rsi)
	movq	$0, 24(%rsi)
	jne	.L179
	movl	$81, %ecx
	xorl	%eax, %eax
	jmp	.L70
	.p2align 4,,10
.L102:
	movl	$77, %ecx
	movl	$4, %eax
	jmp	.L70
	.p2align 4,,10
.L101:
	movl	$78, %ecx
	movl	$3, %eax
	jmp	.L70
	.p2align 4,,10
.L100:
	movl	$79, %ecx
	movl	$2, %eax
	jmp	.L70
	.p2align 4,,10
.L99:
	movl	$80, %ecx
	movl	$1, %eax
	jmp	.L70
	.p2align 4,,10
.L178:
	subl	$1, 52(%rsp)
	jne	.L76
	movq	8(%rbx), %r8
	leaq	360(%rbx), %rax
	cmpq	%rax, %r8
	leaq	160(%r8), %rcx
	jnb	.L113
	cmpq	%rcx, 40(%rsp)
	jb	.L77
.L113:
	leaq	328(%rbx), %rdx
	andl	$31, %edx
	shrq	$2, %rdx
	testl	%edx, %edx
	je	.L105
	vmovss	356(%rbx), %xmm0
	cmpl	$1, %edx
	vmovss	%xmm0, (%r8)
	je	.L106
	vmovss	352(%rbx), %xmm0
	cmpl	$2, %edx
	vmovss	%xmm0, 4(%r8)
	je	.L107
	vmovss	348(%rbx), %xmm0
	cmpl	$3, %edx
	vmovss	%xmm0, 8(%r8)
	je	.L108
	vmovss	344(%rbx), %xmm0
	cmpl	$4, %edx
	vmovss	%xmm0, 12(%r8)
	je	.L109
	vmovss	340(%rbx), %xmm0
	cmpl	$5, %edx
	vmovss	%xmm0, 16(%r8)
	je	.L110
	vmovss	336(%rbx), %xmm0
	cmpl	$6, %edx
	vmovss	%xmm0, 20(%r8)
	je	.L111
	vmovss	332(%rbx), %xmm0
	movl	$33, %ecx
	movl	$7, %eax
	vmovss	%xmm0, 24(%r8)
.L80:
	movl	$40, %r11d
	movl	%edx, %esi
	movl	$4, %edi
	subl	%edx, %r11d
	movl	$32, %r10d
.L79:
	movq	%rsi, %rdx
	vmovdqa	.LC12(%rip), %ymm0
	negq	%rdx
	cmpl	$4, %edi
	leaq	328(%rbx,%rdx,4), %r9
	leaq	(%r8,%rsi,4), %rdx
	vpermd	(%r9), %ymm0, %ymm1
	vmovups	%xmm1, (%rdx)
	vextractf128	$0x1, %ymm1, 16(%rdx)
	vpermd	-32(%r9), %ymm0, %ymm1
	vmovups	%xmm1, 32(%rdx)
	vextractf128	$0x1, %ymm1, 48(%rdx)
	vpermd	-64(%r9), %ymm0, %ymm1
	vmovups	%xmm1, 64(%rdx)
	vextractf128	$0x1, %ymm1, 80(%rdx)
	vpermd	-96(%r9), %ymm0, %ymm1
	vmovups	%xmm1, 96(%rdx)
	vextractf128	$0x1, %ymm1, 112(%rdx)
	je	.L81
	vpermd	-128(%r9), %ymm0, %ymm0
	vmovups	%xmm0, 128(%rdx)
	vextractf128	$0x1, %ymm0, 144(%rdx)
.L81:
	addl	%r10d, %eax
	subl	%r10d, %ecx
	cmpl	%r10d, %r11d
	je	.L84
	movl	$80, %edx
	movl	%edx, %r9d
	subl	%eax, %r9d
	cmpl	$1, %ecx
	movslq	%r9d, %r9
	vmovss	36(%rbx,%r9,4), %xmm0
	movslq	%eax, %r9
	vmovss	%xmm0, (%r8,%r9,4)
	leal	1(%rax), %r9d
	je	.L84
	movl	%edx, %r10d
	subl	%r9d, %r10d
	movslq	%r9d, %r9
	cmpl	$2, %ecx
	movslq	%r10d, %r10
	vmovss	36(%rbx,%r10,4), %xmm0
	vmovss	%xmm0, (%r8,%r9,4)
	leal	2(%rax), %r9d
	je	.L84
	movl	%edx, %r10d
	subl	%r9d, %r10d
	movslq	%r9d, %r9
	cmpl	$3, %ecx
	movslq	%r10d, %r10
	vmovss	36(%rbx,%r10,4), %xmm0
	vmovss	%xmm0, (%r8,%r9,4)
	leal	3(%rax), %r9d
	je	.L84
	movl	%edx, %r10d
	subl	%r9d, %r10d
	movslq	%r9d, %r9
	cmpl	$4, %ecx
	movslq	%r10d, %r10
	vmovss	36(%rbx,%r10,4), %xmm0
	vmovss	%xmm0, (%r8,%r9,4)
	leal	4(%rax), %r9d
	je	.L84
	movl	%edx, %r10d
	subl	%r9d, %r10d
	movslq	%r9d, %r9
	cmpl	$5, %ecx
	movslq	%r10d, %r10
	vmovss	36(%rbx,%r10,4), %xmm0
	vmovss	%xmm0, (%r8,%r9,4)
	leal	5(%rax), %r9d
	je	.L84
	movl	%edx, %r10d
	addl	$6, %eax
	subl	%r9d, %r10d
	movslq	%r9d, %r9
	cmpl	$6, %ecx
	movslq	%r10d, %r10
	vmovss	36(%rbx,%r10,4), %xmm0
	vmovss	%xmm0, (%r8,%r9,4)
	je	.L84
	subl	%eax, %edx
	cltq
	movslq	%edx, %rdx
	vmovss	36(%rbx,%rdx,4), %xmm0
	vmovss	%xmm0, (%r8,%rax,4)
.L84:
	movq	16(%rbx), %rsi
	movq	176(%rsp), %rdi
	subq	%r8, %rsi
	movq	$0, (%rdi)
	movq	$0, 8(%rdi)
	movq	%rsi, %rax
	movq	$0, 16(%rdi)
	sarq	$2, %rax
	testq	%rax, %rax
	je	.L180
	movabsq	$4611686018427387903, %rdx
	cmpq	%rdx, %rax
	ja	.L181
	movq	%rsi, %rcx
	vzeroupper
	call	_Znwy
	movq	%rax, %r9
	movq	176(%rsp), %rax
.L87:
	addq	%r9, %rsi
	movq	%r9, (%rax)
	movq	%r9, 8(%rax)
	movq	%rsi, 16(%rax)
	movq	8(%rbx), %rdx
	movq	16(%rbx), %rax
	subq	%rdx, %rax
	movq	%rax, %rbx
	sarq	$2, %rax
	testq	%rax, %rax
	jne	.L182
.L90:
	movq	176(%rsp), %rax
	addq	%r9, %rbx
	movq	%rbx, 8(%rax)
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L111:
	movl	$34, %ecx
	movl	$6, %eax
	jmp	.L80
.L109:
	movl	$36, %ecx
	movl	$4, %eax
	jmp	.L80
.L108:
	movl	$37, %ecx
	movl	$3, %eax
	jmp	.L80
.L97:
	movl	$34, %ecx
	movl	$6, %eax
	jmp	.L64
.L96:
	movl	$35, %ecx
	movl	$5, %eax
	jmp	.L64
.L95:
	movl	$36, %ecx
	movl	$4, %eax
	jmp	.L64
.L94:
	movl	$37, %ecx
	movl	$3, %eax
	jmp	.L64
.L93:
	movl	$38, %ecx
	movl	$2, %eax
	jmp	.L64
.L92:
	movl	$39, %ecx
	movl	$1, %eax
	jmp	.L64
.L91:
	movl	$40, %r10d
	movl	$5, %esi
	movl	$40, %r11d
	xorl	%r9d, %r9d
	movl	$40, %ecx
	xorl	%eax, %eax
	jmp	.L63
.L61:
	xorl	%eax, %eax
	.p2align 4,,10
.L69:
	vmovss	(%r8,%rax), %xmm0
	vmovss	%xmm0, 40(%rbx,%rax)
	addq	$4, %rax
	cmpq	$160, %rax
	jne	.L69
	jmp	.L68
.L107:
	movl	$38, %ecx
	movl	$2, %eax
	jmp	.L80
.L106:
	movl	$39, %ecx
	movl	$1, %eax
	jmp	.L80
.L105:
	movl	$40, %ecx
	xorl	%esi, %esi
	movl	$40, %r11d
	movl	$5, %edi
	movl	$40, %r10d
	xorl	%eax, %eax
	jmp	.L79
.L77:
	leaq	356(%rbx), %rdx
	movq	%r8, %rax
	.p2align 4,,10
.L85:
	vmovss	(%rdx), %xmm0
	addq	$4, %rax
	subq	$4, %rdx
	vmovss	%xmm0, -4(%rax)
	cmpq	%rcx, %rax
	jne	.L85
	jmp	.L84
.L110:
	movl	$35, %ecx
	movl	$5, %eax
	jmp	.L80
.L182:
	movq	%r9, %rcx
	movq	%rbx, %r8
	call	memmove
	movq	%rax, %r9
	jmp	.L90
.L181:
	vzeroupper
	call	_ZSt17__throw_bad_allocv
.L180:
	xorl	%r9d, %r9d
	vzeroupper
	movq	%rdi, %rax
	jmp	.L87
	.seh_endproc
	.text
	.p2align 4,,15
	.def	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.constprop.215;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.constprop.215
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.constprop.215:
.LFB10932:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	movq	240(%rdx,%rax), %rbx
	testq	%rbx, %rbx
	je	.L188
	cmpb	$0, 56(%rbx)
	je	.L185
	movzbl	67(%rbx), %eax
.L186:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movsbl	%al, %edx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZNSo5flushEv
.L185:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %r8
	movl	$10, %eax
	cmpq	%rdx, %r8
	je	.L186
	movl	$10, %edx
	movq	%rbx, %rcx
	call	*%r8
	jmp	.L186
.L188:
	call	_ZSt16__throw_bad_castv
	nop
	.seh_endproc
	.section	.text$_ZN11NeuralBrainILi83ELi100EE6UpdateERKSt6vectorIfSaIfEE,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN11NeuralBrainILi83ELi100EE6UpdateERKSt6vectorIfSaIfEE
	.def	_ZN11NeuralBrainILi83ELi100EE6UpdateERKSt6vectorIfSaIfEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11NeuralBrainILi83ELi100EE6UpdateERKSt6vectorIfSaIfEE
_ZN11NeuralBrainILi83ELi100EE6UpdateERKSt6vectorIfSaIfEE:
.LFB10715:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$120, %rsp
	.seh_stackalloc	120
	.seh_endprologue
	movq	(%r8), %r9
	leaq	40(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rcx, 192(%rsp)
	leaq	32(%r9), %rdx
	cmpq	%rdx, %rax
	jnb	.L242
	leaq	72(%rbx), %rdx
	cmpq	%rdx, %r9
	jb	.L190
.L242:
	andl	$31, %eax
	movq	%rax, %rdx
	shrq	$2, %rdx
	negq	%rdx
	andl	$7, %edx
	je	.L221
	vmovss	(%r9), %xmm0
	cmpl	$1, %edx
	vmovss	%xmm0, 40(%rbx)
	je	.L222
	vmovss	4(%r9), %xmm0
	cmpl	$2, %edx
	vmovss	%xmm0, 44(%rbx)
	je	.L223
	vmovss	8(%r9), %xmm0
	cmpl	$3, %edx
	vmovss	%xmm0, 48(%rbx)
	je	.L224
	vmovss	12(%r9), %xmm0
	cmpl	$4, %edx
	vmovss	%xmm0, 52(%rbx)
	je	.L225
	vmovss	16(%r9), %xmm0
	cmpl	$5, %edx
	vmovss	%xmm0, 56(%rbx)
	je	.L226
	vmovss	20(%r9), %xmm0
	cmpl	$6, %edx
	vmovss	%xmm0, 60(%rbx)
	je	.L227
	vmovss	24(%r9), %xmm0
	movl	$76, %r10d
	movl	$7, %eax
	vmovss	%xmm0, 64(%rbx)
.L193:
	movl	$75, %r8d
	movl	$83, %r11d
	movl	%edx, %ecx
	subl	%edx, %r8d
	subl	%edx, %r11d
	shrl	$3, %r8d
	addl	$1, %r8d
	leal	0(,%r8,8), %esi
.L192:
	salq	$2, %rcx
	cmpl	$9, %r8d
	leaq	(%r9,%rcx), %rdx
	leaq	40(%rbx,%rcx), %rcx
	vmovups	(%rdx), %xmm0
	vinsertf128	$0x1, 16(%rdx), %ymm0, %ymm0
	vmovaps	%ymm0, (%rcx)
	vmovups	32(%rdx), %xmm0
	vinsertf128	$0x1, 48(%rdx), %ymm0, %ymm0
	vmovaps	%ymm0, 32(%rcx)
	vmovups	64(%rdx), %xmm0
	vinsertf128	$0x1, 80(%rdx), %ymm0, %ymm0
	vmovaps	%ymm0, 64(%rcx)
	vmovups	96(%rdx), %xmm0
	vinsertf128	$0x1, 112(%rdx), %ymm0, %ymm0
	vmovaps	%ymm0, 96(%rcx)
	vmovups	128(%rdx), %xmm0
	vinsertf128	$0x1, 144(%rdx), %ymm0, %ymm0
	vmovaps	%ymm0, 128(%rcx)
	vmovups	160(%rdx), %xmm0
	vinsertf128	$0x1, 176(%rdx), %ymm0, %ymm0
	vmovaps	%ymm0, 160(%rcx)
	vmovups	192(%rdx), %xmm0
	vinsertf128	$0x1, 208(%rdx), %ymm0, %ymm0
	vmovaps	%ymm0, 192(%rcx)
	vmovups	224(%rdx), %xmm0
	vinsertf128	$0x1, 240(%rdx), %ymm0, %ymm0
	vmovaps	%ymm0, 224(%rcx)
	vmovups	256(%rdx), %xmm0
	vinsertf128	$0x1, 272(%rdx), %ymm0, %ymm0
	vmovaps	%ymm0, 256(%rcx)
	je	.L194
	vmovups	288(%rdx), %xmm0
	vinsertf128	$0x1, 304(%rdx), %ymm0, %ymm0
	vmovaps	%ymm0, 288(%rcx)
.L194:
	addl	%esi, %eax
	subl	%esi, %r10d
	cmpl	%esi, %r11d
	je	.L197
	leal	1(%rax), %ecx
	movslq	%eax, %rdx
	cmpl	$1, %r10d
	vmovss	(%r9,%rdx,4), %xmm0
	movslq	%ecx, %rcx
	vmovss	%xmm0, 36(%rbx,%rcx,4)
	je	.L197
	leal	2(%rax), %edx
	vmovss	(%r9,%rcx,4), %xmm0
	cmpl	$2, %r10d
	movslq	%edx, %rdx
	vmovss	%xmm0, 36(%rbx,%rdx,4)
	je	.L197
	leal	3(%rax), %ecx
	vmovss	(%r9,%rdx,4), %xmm0
	cmpl	$3, %r10d
	movslq	%ecx, %rcx
	vmovss	%xmm0, 36(%rbx,%rcx,4)
	je	.L197
	leal	4(%rax), %edx
	vmovss	(%r9,%rcx,4), %xmm0
	cmpl	$4, %r10d
	movslq	%edx, %rdx
	vmovss	%xmm0, 36(%rbx,%rdx,4)
	je	.L197
	leal	5(%rax), %ecx
	vmovss	(%r9,%rdx,4), %xmm0
	cmpl	$5, %r10d
	movslq	%ecx, %rcx
	vmovss	%xmm0, 36(%rbx,%rcx,4)
	je	.L197
	leal	6(%rax), %edx
	vmovss	(%r9,%rcx,4), %xmm0
	cmpl	$6, %r10d
	movslq	%edx, %rdx
	vmovss	%xmm0, 36(%rbx,%rdx,4)
	je	.L197
	addl	$7, %eax
	vmovss	(%r9,%rdx,4), %xmm0
	cltq
	vmovss	%xmm0, 36(%rbx,%rax,4)
.L197:
	leaq	80(%rsp), %r13
	movl	$176, %esi
	movl	$184, %edx
	vmovsd	.LC11(%rip), %xmm3
	movq	%r13, %r14
	vmovsd	.LC4(%rip), %xmm2
	shrq	$2, %r14
	movl	$4, 68(%rsp)
	andl	$4, %r14d
	subl	%r14d, %esi
	movl	%r14d, %eax
	subl	%r14d, %edx
	shrl	$3, %esi
	movl	%edx, 52(%rsp)
	leaq	9(%rax), %rdx
	addl	$1, %esi
	addq	$193, %rax
	leal	0(,%rsi,8), %edi
	salq	$2, %rdx
	movq	%rax, 40(%rsp)
	leaq	(%rbx,%rdx), %r10
	leaq	-36(%r13,%rdx), %r11
	movl	%edi, 64(%rsp)
	leaq	372(%rbx), %rdi
	movq	%rdi, 56(%rsp)
	leaq	796(%rbx), %rdi
	movq	%rdi, 72(%rsp)
.L206:
	movq	56(%rsp), %r15
	movq	72(%rsp), %rdi
	xorl	%r12d, %r12d
	.p2align 4,,10
.L205:
	testl	%r14d, %r14d
	leal	184(%r12), %ebp
	movq	$0, 0(%r13)
	movq	$0, 8(%r13)
	movq	$0, 16(%r13)
	movq	$0, 24(%r13)
	je	.L228
	vmovss	80(%rsp), %xmm5
	cmpl	$1, %r14d
	vmovss	36(%rbx), %xmm0
	vfmadd132ss	-24(%rdi), %xmm5, %xmm0
	vmovss	%xmm0, 80(%rsp)
	je	.L229
	vmovss	40(%rbx), %xmm5
	cmpl	$2, %r14d
	vfmadd231ss	-20(%rdi), %xmm5, %xmm0
	vmovss	%xmm0, 80(%rsp)
	je	.L230
	vmovss	44(%rbx), %xmm5
	cmpl	$3, %r14d
	vfmadd231ss	-16(%rdi), %xmm5, %xmm0
	vmovss	%xmm0, 80(%rsp)
	je	.L231
	vmovss	48(%rbx), %xmm5
	cmpl	$4, %r14d
	vfmadd231ss	-12(%rdi), %xmm5, %xmm0
	vmovss	%xmm0, 80(%rsp)
	je	.L232
	vmovss	52(%rbx), %xmm5
	movl	$178, %r9d
	movl	$6, %r8d
	vfmadd231ss	-8(%rdi), %xmm5, %xmm0
	vmovss	56(%rbx), %xmm5
	vfmadd231ss	-4(%rdi), %xmm5, %xmm0
	vmovss	%xmm0, 80(%rsp)
.L199:
	movq	40(%rsp), %rax
	vmovaps	(%r11), %ymm4
	xorl	%edx, %edx
	addq	%r12, %rax
	leaq	(%rbx,%rax,4), %rcx
	xorl	%eax, %eax
	.p2align 4,,10
.L201:
	vmovups	(%r10,%rax), %xmm1
	addl	$1, %edx
	vmovups	(%rcx,%rax), %xmm0
	vinsertf128	$0x1, 16(%r10,%rax), %ymm1, %ymm1
	vinsertf128	$0x1, 16(%rcx,%rax), %ymm0, %ymm0
	addq	$32, %rax
	cmpl	%esi, %edx
	vfmadd231ps	%ymm0, %ymm1, %ymm4
	vmovaps	%ymm4, (%r11)
	jb	.L201
	movl	64(%rsp), %eax
	addl	%eax, %r8d
	subl	%eax, %r9d
	cmpl	%eax, 52(%rsp)
	je	.L203
	leal	(%r8,%rbp), %eax
	movslq	%r8d, %rdx
	cmpl	$1, %r9d
	vmovss	80(%rsp), %xmm5
	cltq
	vmovss	36(%rbx,%rdx,4), %xmm0
	vfmadd132ss	36(%rbx,%rax,4), %xmm5, %xmm0
	leal	1(%r8), %eax
	vmovss	%xmm0, 80(%rsp)
	je	.L203
	movslq	%eax, %rdx
	addl	%ebp, %eax
	cmpl	$2, %r9d
	cltq
	vmovss	36(%rbx,%rdx,4), %xmm5
	vfmadd231ss	36(%rbx,%rax,4), %xmm5, %xmm0
	leal	2(%r8), %eax
	vmovss	%xmm0, 80(%rsp)
	je	.L203
	movslq	%eax, %rdx
	addl	%ebp, %eax
	cmpl	$3, %r9d
	cltq
	vmovss	36(%rbx,%rdx,4), %xmm5
	vfmadd231ss	36(%rbx,%rax,4), %xmm5, %xmm0
	leal	3(%r8), %eax
	vmovss	%xmm0, 80(%rsp)
	je	.L203
	movslq	%eax, %rdx
	addl	%ebp, %eax
	cmpl	$4, %r9d
	cltq
	vmovss	36(%rbx,%rdx,4), %xmm4
	vfmadd231ss	36(%rbx,%rax,4), %xmm4, %xmm0
	leal	4(%r8), %eax
	vmovss	%xmm0, 80(%rsp)
	je	.L203
	movslq	%eax, %rdx
	addl	%ebp, %eax
	cmpl	$5, %r9d
	cltq
	vmovss	36(%rbx,%rdx,4), %xmm5
	vfmadd231ss	36(%rbx,%rax,4), %xmm5, %xmm0
	leal	5(%r8), %eax
	vmovss	%xmm0, 80(%rsp)
	je	.L203
	movslq	%eax, %rdx
	addl	%ebp, %eax
	addl	$6, %r8d
	cltq
	vmovss	36(%rbx,%rdx,4), %xmm4
	cmpl	$6, %r9d
	vfmadd231ss	36(%rbx,%rax,4), %xmm4, %xmm0
	vmovss	%xmm0, 80(%rsp)
	je	.L203
	movslq	%r8d, %rax
	addl	%ebp, %r8d
	movslq	%r8d, %rdx
	vmovss	36(%rbx,%rax,4), %xmm5
	vfmadd231ss	36(%rbx,%rdx,4), %xmm5, %xmm0
	vmovss	%xmm0, 80(%rsp)
.L203:
	vmovss	80(%rsp), %xmm0
	vxorps	%xmm5, %xmm5, %xmm5
	vaddss	84(%rsp), %xmm0, %xmm0
	addq	$184, %r12
	addq	$4, %r15
	addq	$736, %rdi
	vaddss	88(%rsp), %xmm0, %xmm0
	vaddss	92(%rsp), %xmm0, %xmm0
	vaddss	96(%rsp), %xmm0, %xmm0
	vaddss	100(%rsp), %xmm0, %xmm0
	vaddss	104(%rsp), %xmm0, %xmm0
	vaddss	108(%rsp), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmovapd	%xmm0, %xmm1
	vandpd	%xmm3, %xmm1, %xmm1
	vaddsd	%xmm2, %xmm1, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm5, %xmm5
	vmovss	%xmm5, -4(%r15)
	cmpq	$18400, %r12
	jne	.L205
	subl	$1, 68(%rsp)
	jne	.L206
	movq	8(%rbx), %rcx
	leaq	772(%rbx), %rax
	cmpq	%rax, %rcx
	leaq	400(%rcx), %r8
	jnb	.L243
	cmpq	56(%rsp), %r8
	ja	.L207
.L243:
	leaq	740(%rbx), %rdx
	andl	$31, %edx
	shrq	$2, %rdx
	testl	%edx, %edx
	je	.L235
	vmovss	768(%rbx), %xmm0
	cmpl	$1, %edx
	vmovss	%xmm0, (%rcx)
	je	.L236
	vmovss	764(%rbx), %xmm0
	cmpl	$2, %edx
	vmovss	%xmm0, 4(%rcx)
	je	.L237
	vmovss	760(%rbx), %xmm0
	cmpl	$3, %edx
	vmovss	%xmm0, 8(%rcx)
	je	.L238
	vmovss	756(%rbx), %xmm0
	cmpl	$4, %edx
	vmovss	%xmm0, 12(%rcx)
	je	.L239
	vmovss	752(%rbx), %xmm0
	cmpl	$5, %edx
	vmovss	%xmm0, 16(%rcx)
	je	.L240
	vmovss	748(%rbx), %xmm0
	cmpl	$6, %edx
	vmovss	%xmm0, 20(%rcx)
	je	.L241
	vmovss	744(%rbx), %xmm0
	movl	$93, %r9d
	movl	$7, %r10d
	vmovss	%xmm0, 24(%rcx)
.L210:
	movl	$92, %r8d
	movl	$100, %r11d
	movl	%edx, %eax
	subl	%edx, %r8d
	subl	%edx, %r11d
	shrl	$3, %r8d
	addl	$1, %r8d
	leal	0(,%r8,8), %esi
.L209:
	movq	%rax, %rdx
	vmovdqa	.LC12(%rip), %ymm0
	leaq	(%rcx,%rax,4), %rax
	negq	%rdx
	cmpl	$11, %r8d
	leaq	740(%rbx,%rdx,4), %rdx
	vpermd	(%rdx), %ymm0, %ymm1
	vmovups	%xmm1, (%rax)
	vextractf128	$0x1, %ymm1, 16(%rax)
	vpermd	-32(%rdx), %ymm0, %ymm1
	vmovups	%xmm1, 32(%rax)
	vextractf128	$0x1, %ymm1, 48(%rax)
	vpermd	-64(%rdx), %ymm0, %ymm1
	vmovups	%xmm1, 64(%rax)
	vextractf128	$0x1, %ymm1, 80(%rax)
	vpermd	-96(%rdx), %ymm0, %ymm1
	vmovups	%xmm1, 96(%rax)
	vextractf128	$0x1, %ymm1, 112(%rax)
	vpermd	-128(%rdx), %ymm0, %ymm1
	vmovups	%xmm1, 128(%rax)
	vextractf128	$0x1, %ymm1, 144(%rax)
	vpermd	-160(%rdx), %ymm0, %ymm1
	vmovups	%xmm1, 160(%rax)
	vextractf128	$0x1, %ymm1, 176(%rax)
	vpermd	-192(%rdx), %ymm0, %ymm1
	vmovups	%xmm1, 192(%rax)
	vextractf128	$0x1, %ymm1, 208(%rax)
	vpermd	-224(%rdx), %ymm0, %ymm1
	vmovups	%xmm1, 224(%rax)
	vextractf128	$0x1, %ymm1, 240(%rax)
	vpermd	-256(%rdx), %ymm0, %ymm1
	vmovups	%xmm1, 256(%rax)
	vextractf128	$0x1, %ymm1, 272(%rax)
	vpermd	-288(%rdx), %ymm0, %ymm1
	vmovups	%xmm1, 288(%rax)
	vextractf128	$0x1, %ymm1, 304(%rax)
	vpermd	-320(%rdx), %ymm0, %ymm1
	vmovups	%xmm1, 320(%rax)
	vextractf128	$0x1, %ymm1, 336(%rax)
	je	.L211
	vpermd	-352(%rdx), %ymm0, %ymm0
	vmovups	%xmm0, 352(%rax)
	vextractf128	$0x1, %ymm0, 368(%rax)
.L211:
	subl	%esi, %r9d
	cmpl	%esi, %r11d
	leal	(%rsi,%r10), %eax
	je	.L214
	movl	$183, %edx
	movl	%edx, %r8d
	subl	%eax, %r8d
	cmpl	$1, %r9d
	movslq	%r8d, %r8
	vmovss	36(%rbx,%r8,4), %xmm0
	movslq	%eax, %r8
	vmovss	%xmm0, (%rcx,%r8,4)
	leal	1(%rax), %r8d
	je	.L214
	movl	%edx, %r10d
	subl	%r8d, %r10d
	movslq	%r8d, %r8
	cmpl	$2, %r9d
	movslq	%r10d, %r10
	vmovss	36(%rbx,%r10,4), %xmm0
	vmovss	%xmm0, (%rcx,%r8,4)
	leal	2(%rax), %r8d
	je	.L214
	movl	%edx, %r10d
	subl	%r8d, %r10d
	movslq	%r8d, %r8
	cmpl	$3, %r9d
	movslq	%r10d, %r10
	vmovss	36(%rbx,%r10,4), %xmm0
	vmovss	%xmm0, (%rcx,%r8,4)
	leal	3(%rax), %r8d
	je	.L214
	movl	%edx, %r10d
	subl	%r8d, %r10d
	movslq	%r8d, %r8
	cmpl	$4, %r9d
	movslq	%r10d, %r10
	vmovss	36(%rbx,%r10,4), %xmm0
	vmovss	%xmm0, (%rcx,%r8,4)
	leal	4(%rax), %r8d
	je	.L214
	movl	%edx, %r10d
	subl	%r8d, %r10d
	movslq	%r8d, %r8
	cmpl	$5, %r9d
	movslq	%r10d, %r10
	vmovss	36(%rbx,%r10,4), %xmm0
	vmovss	%xmm0, (%rcx,%r8,4)
	leal	5(%rax), %r8d
	je	.L214
	movl	%edx, %r10d
	addl	$6, %eax
	subl	%r8d, %r10d
	movslq	%r8d, %r8
	cmpl	$6, %r9d
	movslq	%r10d, %r10
	vmovss	36(%rbx,%r10,4), %xmm0
	vmovss	%xmm0, (%rcx,%r8,4)
	je	.L214
	subl	%eax, %edx
	cltq
	movslq	%edx, %rdx
	vmovss	36(%rbx,%rdx,4), %xmm0
	vmovss	%xmm0, (%rcx,%rax,4)
.L214:
	movq	16(%rbx), %rsi
	movq	192(%rsp), %rdi
	subq	%rcx, %rsi
	movq	$0, (%rdi)
	movq	$0, 8(%rdi)
	movq	%rsi, %rax
	movq	$0, 16(%rdi)
	sarq	$2, %rax
	testq	%rax, %rax
	je	.L311
	movabsq	$4611686018427387903, %rdx
	cmpq	%rdx, %rax
	ja	.L312
	movq	%rsi, %rcx
	vzeroupper
	call	_Znwy
	movq	%rax, %r9
	movq	192(%rsp), %rax
.L217:
	addq	%r9, %rsi
	movq	%r9, (%rax)
	movq	%r9, 8(%rax)
	movq	%rsi, 16(%rax)
	movq	8(%rbx), %rdx
	movq	16(%rbx), %rax
	subq	%rdx, %rax
	movq	%rax, %rbx
	sarq	$2, %rax
	testq	%rax, %rax
	je	.L220
	movq	%r9, %rcx
	movq	%rbx, %r8
	call	memmove
	movq	%rax, %r9
.L220:
	movq	192(%rsp), %rax
	addq	%r9, %rbx
	movq	%rbx, 8(%rax)
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L228:
	movl	$184, %r9d
	xorl	%r8d, %r8d
	jmp	.L199
	.p2align 4,,10
.L232:
	movl	$180, %r9d
	movl	$4, %r8d
	jmp	.L199
	.p2align 4,,10
.L231:
	movl	$181, %r9d
	movl	$3, %r8d
	jmp	.L199
	.p2align 4,,10
.L230:
	movl	$182, %r9d
	movl	$2, %r8d
	jmp	.L199
	.p2align 4,,10
.L229:
	movl	$183, %r9d
	movl	$1, %r8d
	jmp	.L199
.L312:
	vzeroupper
	call	_ZSt17__throw_bad_allocv
.L311:
	xorl	%r9d, %r9d
	vzeroupper
	movq	%rdi, %rax
	jmp	.L217
.L241:
	movl	$94, %r9d
	movl	$6, %r10d
	jmp	.L210
.L240:
	movl	$95, %r9d
	movl	$5, %r10d
	jmp	.L210
.L239:
	movl	$96, %r9d
	movl	$4, %r10d
	jmp	.L210
.L238:
	movl	$97, %r9d
	movl	$3, %r10d
	jmp	.L210
.L237:
	movl	$98, %r9d
	movl	$2, %r10d
	jmp	.L210
.L236:
	movl	$99, %r9d
	movl	$1, %r10d
	jmp	.L210
.L235:
	movl	$100, %r9d
	xorl	%eax, %eax
	movl	$100, %r11d
	movl	$12, %r8d
	movl	$96, %esi
	xorl	%r10d, %r10d
	jmp	.L209
.L207:
	leaq	768(%rbx), %rdx
	movq	%rcx, %rax
.L215:
	vmovss	(%rdx), %xmm0
	addq	$4, %rax
	subq	$4, %rdx
	vmovss	%xmm0, -4(%rax)
	cmpq	%r8, %rax
	jne	.L215
	jmp	.L214
.L227:
	movl	$77, %r10d
	movl	$6, %eax
	jmp	.L193
.L226:
	movl	$78, %r10d
	movl	$5, %eax
	jmp	.L193
.L225:
	movl	$79, %r10d
	movl	$4, %eax
	jmp	.L193
.L224:
	movl	$80, %r10d
	movl	$3, %eax
	jmp	.L193
.L223:
	movl	$81, %r10d
	movl	$2, %eax
	jmp	.L193
.L222:
	movl	$82, %r10d
	movl	$1, %eax
	jmp	.L193
.L221:
	movl	$80, %esi
	movl	$10, %r8d
	movl	$83, %r11d
	xorl	%ecx, %ecx
	movl	$83, %r10d
	xorl	%eax, %eax
	jmp	.L192
.L190:
	xorl	%eax, %eax
.L198:
	vmovss	(%r9,%rax), %xmm0
	vmovss	%xmm0, 40(%rbx,%rax)
	addq	$4, %rax
	cmpq	$332, %rax
	jne	.L198
	jmp	.L197
	.seh_endproc
	.section	.text$_ZN11NeuralBrainILi40ELi40EED0Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN11NeuralBrainILi40ELi40EED0Ev
	.def	_ZN11NeuralBrainILi40ELi40EED0Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11NeuralBrainILi40ELi40EED0Ev
_ZN11NeuralBrainILi40ELi40EED0Ev:
.LFB10093:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	16+_ZTV11NeuralBrainILi40ELi40EE(%rip), %rax
	movq	%rcx, %rbx
	movq	%rax, (%rcx)
	movq	13320(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L314
	call	_ZdlPv
.L314:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L315
	call	_ZdlPv
.L315:
	movq	%rbx, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$13344, %edx
	movq	%rbx, %rcx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZdlPvy
	.seh_endproc
	.section .rdata,"dr"
.LC13:
	.ascii "%d\0"
	.text
	.p2align 4,,15
	.def	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_yPKS8_PcEySB_z.constprop.211;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_yPKS8_PcEySB_z.constprop.211
_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_yPKS8_PcEySB_z.constprop.211:
.LFB10936:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	leaq	.LC13(%rip), %r8
	movl	$16, %edx
	subq	$48, %rsp
	movq	%rcx, %rbx
	movq	%rbp, %r9
	leaq	63(%rsp), %rdi
	movq	%rbp, -96(%rbp)
	andq	$-32, %rdi
	movq	%rdi, %rcx
	call	__mingw_vsnprintf
	leaq	16(%rbx), %rcx
	movslq	%eax, %rsi
	cmpq	$15, %rsi
	movq	%rsi, -88(%rbp)
	movq	%rcx, (%rbx)
	ja	.L327
	cmpq	$1, %rsi
	jne	.L324
	movzbl	(%rdi), %eax
	movb	%al, 16(%rbx)
	movl	$1, %eax
	jmp	.L325
	.p2align 4,,10
.L327:
	leaq	-88(%rbp), %rdx
	movq	%rbx, %rcx
	xorl	%r8d, %r8d
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
	movq	-88(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rax, %rcx
	movq	%rdx, 16(%rbx)
.L324:
	movq	%rsi, %r8
	movq	%rdi, %rdx
	call	memcpy
	movq	-88(%rbp), %rax
	movq	(%rbx), %rcx
.L325:
	movq	%rax, 8(%rbx)
	movb	$0, (%rcx,%rax)
	movq	%rbx, %rax
	leaq	-72(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN11NeuralBrainILi83ELi100EED0Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN11NeuralBrainILi83ELi100EED0Ev
	.def	_ZN11NeuralBrainILi83ELi100EED0Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11NeuralBrainILi83ELi100EED0Ev
_ZN11NeuralBrainILi83ELi100EED0Ev:
.LFB9667:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rcx, %rbx
	movq	%rax, (%rcx)
	movq	74376(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L329
	call	_ZdlPv
.L329:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L330
	call	_ZdlPv
.L330:
	movq	%rbx, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rbx, %rcx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZdlPvy
	.seh_endproc
	.section	.text$_ZN5WorldD1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN5WorldD1Ev
	.def	_ZN5WorldD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5WorldD1Ev
_ZN5WorldD1Ev:
.LFB9390:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rdi
	leaq	56(%rcx), %rbx
	movq	80(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L338
	call	_ZdlPv
.L338:
	movq	56(%rdi), %rcx
	testq	%rcx, %rcx
	je	.L339
	call	_ZdlPv
.L339:
	leaq	24(%rdi), %rsi
	.p2align 4,,10
.L341:
	subq	$8, %rbx
	movq	(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L340
	movl	$32, %edx
	call	_ZdlPvy
.L340:
	cmpq	%rbx, %rsi
	jne	.L341
	movq	8(%rdi), %rsi
	movq	(%rdi), %rbx
	cmpq	%rbx, %rsi
	je	.L342
	.p2align 4,,10
.L344:
	movq	(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L343
	movq	(%rcx), %rax
	call	*8(%rax)
.L343:
	addq	$8, %rbx
	cmpq	%rbx, %rsi
	jne	.L344
	movq	(%rdi), %rsi
.L342:
	testq	%rsi, %rsi
	je	.L360
	movq	%rsi, %rcx
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	_ZdlPv
	.p2align 4,,10
.L360:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC14:
	.ascii " \0"
	.text
	.p2align 4,,15
	.globl	_Z16OutputDataRenderP12RenderCameraRSt14basic_ofstreamIcSt11char_traitsIcEE
	.def	_Z16OutputDataRenderP12RenderCameraRSt14basic_ofstreamIcSt11char_traitsIcEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z16OutputDataRenderP12RenderCameraRSt14basic_ofstreamIcSt11char_traitsIcEE
_Z16OutputDataRenderP12RenderCameraRSt14basic_ofstreamIcSt11char_traitsIcEE:
.LFB9408:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	32(%rcx), %rbx
	movq	40(%rcx), %rbp
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %r13
	movq	%rdx, %r12
	cmpq	%rbp, %rbx
	jne	.L369
	jmp	.L371
	.p2align 4,,10
.L373:
	movsbl	67(%rsi), %edx
.L365:
	movq	%rdi, %rcx
	addq	$28, %rbx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	cmpq	%rbx, %rbp
	je	.L371
.L369:
	vxorpd	%xmm1, %xmm1, %xmm1
	movl	24(%rbx), %edi
	movq	%r12, %rcx
	vcvtss2sd	20(%rbx), %xmm1, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rsi
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	%edi, %edx
	movq	%rsi, %rcx
	call	_ZNSolsEi
	movq	%rax, %rdi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rdi,%rax), %rsi
	testq	%rsi, %rsi
	je	.L372
	cmpb	$0, 56(%rsi)
	jne	.L373
	movq	%rsi, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rsi), %rax
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%r13, %rax
	je	.L365
	movq	%rsi, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L365
	.p2align 4,,10
.L371:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L372:
	call	_ZSt16__throw_bad_castv
	nop
	.seh_endproc
	.p2align 4,,15
	.globl	_Z18OutputDataPositionP8EntityAIRSt14basic_ofstreamIcSt11char_traitsIcEE
	.def	_Z18OutputDataPositionP8EntityAIRSt14basic_ofstreamIcSt11char_traitsIcEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z18OutputDataPositionP8EntityAIRSt14basic_ofstreamIcSt11char_traitsIcEE
_Z18OutputDataPositionP8EntityAIRSt14basic_ofstreamIcSt11char_traitsIcEE:
.LFB9409:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	vmovaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	vmovaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	160(%rcx), %rax
	vmovss	36(%rcx), %xmm6
	vcvtss2sd	8(%rcx), %xmm1, %xmm1
	vmovss	12(%rcx), %xmm7
	movq	%rdx, %rcx
	movl	16(%rax), %esi
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC14(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	%rbx, %rcx
	vcvtss2sd	%xmm7, %xmm1, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC14(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	%rbx, %rcx
	vcvtss2sd	%xmm6, %xmm1, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rbx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	%esi, %edx
	movq	%rbx, %rcx
	call	_ZNSolsEi
	movq	%rax, %rsi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rsi,%rax), %rbx
	testq	%rbx, %rbx
	je	.L379
	cmpb	$0, 56(%rbx)
	je	.L376
	movsbl	67(%rbx), %edx
.L377:
	movq	%rsi, %rcx
	call	_ZNSo3putEc
	nop
	vmovaps	32(%rsp), %xmm6
	movq	%rax, %rcx
	vmovaps	48(%rsp), %xmm7
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	jmp	_ZNSo5flushEv
	.p2align 4,,10
.L376:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L377
	movq	%rbx, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L377
.L379:
	call	_ZSt16__throw_bad_castv
	nop
	.seh_endproc
	.section	.text$_ZNSt6vectorI8PlayDataSaIS0_EED1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZNSt6vectorI8PlayDataSaIS0_EED1Ev
	.def	_ZNSt6vectorI8PlayDataSaIS0_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI8PlayDataSaIS0_EED1Ev
_ZNSt6vectorI8PlayDataSaIS0_EED1Ev:
.LFB9600:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	8(%rcx), %rdi
	movq	(%rcx), %rsi
	movq	%rcx, %r12
	cmpq	%rsi, %rdi
	je	.L381
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rbp
	jmp	.L386
	.p2align 4,,10
.L400:
	movq	74376(%rbx), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rbx)
	testq	%rcx, %rcx
	je	.L384
	call	_ZdlPv
.L384:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L385
	call	_ZdlPv
.L385:
	movq	%rbx, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L382:
	addq	$16, %rsi
	cmpq	%rsi, %rdi
	je	.L399
.L386:
	movq	(%rsi), %rbx
	testq	%rbx, %rbx
	je	.L382
	movq	(%rbx), %rax
	movq	8(%rax), %rax
	cmpq	%rbp, %rax
	je	.L400
	addq	$16, %rsi
	movq	%rbx, %rcx
	call	*%rax
	cmpq	%rsi, %rdi
	jne	.L386
	.p2align 4,,10
.L399:
	movq	(%r12), %rdi
.L381:
	testq	%rdi, %rdi
	je	.L398
	movq	%rdi, %rcx
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	jmp	_ZdlPv
	.p2align 4,,10
.L398:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIP12RenderObjectSaIS1_EE19_M_emplace_back_auxIJRKS1_EEEvDpOT_,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZNSt6vectorIP12RenderObjectSaIS1_EE19_M_emplace_back_auxIJRKS1_EEEvDpOT_
	.def	_ZNSt6vectorIP12RenderObjectSaIS1_EE19_M_emplace_back_auxIJRKS1_EEEvDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIP12RenderObjectSaIS1_EE19_M_emplace_back_auxIJRKS1_EEEvDpOT_
_ZNSt6vectorIP12RenderObjectSaIS1_EE19_M_emplace_back_auxIJRKS1_EEEvDpOT_:
.LFB10074:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	8(%rcx), %rax
	subq	(%rcx), %rax
	movq	%rcx, %r12
	movq	%rdx, %rbp
	sarq	$3, %rax
	testq	%rax, %rax
	je	.L409
	leaq	(%rax,%rax), %rdx
	cmpq	%rdx, %rax
	jbe	.L421
.L410:
	movq	$-8, %r13
	jmp	.L402
	.p2align 4,,10
.L409:
	movl	$8, %r13d
.L402:
	movq	%r13, %rcx
	call	_Znwy
	movq	%rax, %rbx
.L408:
	movq	(%r12), %rdi
	movq	8(%r12), %rsi
	movq	%rbx, %rax
	movq	0(%rbp), %rdx
	subq	%rdi, %rsi
	addq	%rsi, %rax
	je	.L404
	movq	%rdx, (%rax)
.L404:
	movq	%rsi, %rax
	sarq	$3, %rax
	testq	%rax, %rax
	jne	.L422
	testq	%rdi, %rdi
	leaq	8(%rbx,%rsi), %rsi
	je	.L407
.L406:
	movq	%rdi, %rcx
	call	_ZdlPv
.L407:
	movq	%rbx, (%r12)
	addq	%r13, %rbx
	movq	%rsi, 8(%r12)
	movq	%rbx, 16(%r12)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L422:
	movq	%rsi, %r8
	movq	%rdi, %rdx
	movq	%rbx, %rcx
	call	memmove
	leaq	8(%rbx,%rsi), %rsi
	jmp	.L406
.L421:
	movabsq	$2305843009213693951, %rcx
	cmpq	%rcx, %rdx
	ja	.L410
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
	testq	%rdx, %rdx
	je	.L408
	salq	$4, %rax
	movq	%rax, %r13
	jmp	.L402
	.seh_endproc
	.weak	_ZNSt6vectorIP12RenderObjectSaIS1_EE19_M_emplace_back_auxIIRKS1_EEEvDpOT_
	.def	_ZNSt6vectorIP12RenderObjectSaIS1_EE19_M_emplace_back_auxIIRKS1_EEEvDpOT_;	.scl	2;	.type	32;	.endef
	.set	_ZNSt6vectorIP12RenderObjectSaIS1_EE19_M_emplace_back_auxIIRKS1_EEEvDpOT_,_ZNSt6vectorIP12RenderObjectSaIS1_EE19_M_emplace_back_auxIJRKS1_EEEvDpOT_
	.section	.text$_ZNSt6vectorIP12RenderCameraSaIS1_EE19_M_emplace_back_auxIJRKS1_EEEvDpOT_,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZNSt6vectorIP12RenderCameraSaIS1_EE19_M_emplace_back_auxIJRKS1_EEEvDpOT_
	.def	_ZNSt6vectorIP12RenderCameraSaIS1_EE19_M_emplace_back_auxIJRKS1_EEEvDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIP12RenderCameraSaIS1_EE19_M_emplace_back_auxIJRKS1_EEEvDpOT_
_ZNSt6vectorIP12RenderCameraSaIS1_EE19_M_emplace_back_auxIJRKS1_EEEvDpOT_:
.LFB10077:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	8(%rcx), %rax
	subq	(%rcx), %rax
	movq	%rcx, %r12
	movq	%rdx, %rbp
	sarq	$3, %rax
	testq	%rax, %rax
	je	.L431
	leaq	(%rax,%rax), %rdx
	cmpq	%rdx, %rax
	jbe	.L443
.L432:
	movq	$-8, %r13
	jmp	.L424
	.p2align 4,,10
.L431:
	movl	$8, %r13d
.L424:
	movq	%r13, %rcx
	call	_Znwy
	movq	%rax, %rbx
.L430:
	movq	(%r12), %rdi
	movq	8(%r12), %rsi
	movq	%rbx, %rax
	movq	0(%rbp), %rdx
	subq	%rdi, %rsi
	addq	%rsi, %rax
	je	.L426
	movq	%rdx, (%rax)
.L426:
	movq	%rsi, %rax
	sarq	$3, %rax
	testq	%rax, %rax
	jne	.L444
	testq	%rdi, %rdi
	leaq	8(%rbx,%rsi), %rsi
	je	.L429
.L428:
	movq	%rdi, %rcx
	call	_ZdlPv
.L429:
	movq	%rbx, (%r12)
	addq	%r13, %rbx
	movq	%rsi, 8(%r12)
	movq	%rbx, 16(%r12)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L444:
	movq	%rsi, %r8
	movq	%rdi, %rdx
	movq	%rbx, %rcx
	call	memmove
	leaq	8(%rbx,%rsi), %rsi
	jmp	.L428
.L443:
	movabsq	$2305843009213693951, %rcx
	cmpq	%rcx, %rdx
	ja	.L432
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
	testq	%rdx, %rdx
	je	.L430
	salq	$4, %rax
	movq	%rax, %r13
	jmp	.L424
	.seh_endproc
	.weak	_ZNSt6vectorIP12RenderCameraSaIS1_EE19_M_emplace_back_auxIIRKS1_EEEvDpOT_
	.def	_ZNSt6vectorIP12RenderCameraSaIS1_EE19_M_emplace_back_auxIIRKS1_EEEvDpOT_;	.scl	2;	.type	32;	.endef
	.set	_ZNSt6vectorIP12RenderCameraSaIS1_EE19_M_emplace_back_auxIIRKS1_EEEvDpOT_,_ZNSt6vectorIP12RenderCameraSaIS1_EE19_M_emplace_back_auxIJRKS1_EEEvDpOT_
	.section .rdata,"dr"
.LC21:
	.ascii "./Render/data\0"
.LC22:
	.ascii "basic_string::append\0"
.LC23:
	.ascii ".txt\0"
	.text
	.p2align 4,,15
	.globl	_Z15RaytraceTestingv
	.def	_Z15RaytraceTestingv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z15RaytraceTestingv
_Z15RaytraceTestingv:
.LFB9410:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$728, %rsp
	.seh_stackalloc	728
	vmovaps	%xmm6, 704(%rsp)
	.seh_savexmm	%xmm6, 704
	.seh_endprologue
	leaq	192(%rsp), %rax
	movq	%rax, %rcx
	movq	%rax, 56(%rsp)
.LEHB0:
	call	_ZN11RenderSceneC1Ev
.LEHE0:
	movl	$56, %ecx
.LEHB1:
	call	_Znwy
.LEHE1:
	movl	$1000, %edx
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB2:
	call	_ZN12RenderCameraC1Ei
.LEHE2:
	movl	$24, %ecx
	movq	%rbx, 64(%rsp)
.LEHB3:
	call	_Znwy
	movq	224(%rsp), %rdx
	cmpq	232(%rsp), %rdx
	leaq	16+_ZTV18RenderObjectCircle(%rip), %rdi
	movl	$0x00000000, 12(%rax)
	movl	$0x3f800000, 20(%rax)
	movq	%rdi, (%rax)
	movl	$1, 16(%rax)
	movq	%rax, 72(%rsp)
	movl	$0x40c00000, 8(%rax)
	je	.L446
	testq	%rdx, %rdx
	je	.L447
	movq	%rax, (%rdx)
	movq	224(%rsp), %rdx
.L447:
	addq	$8, %rdx
	movq	%rdx, 224(%rsp)
.L448:
	movl	$24, %ecx
	call	_Znwy
	movq	224(%rsp), %rdx
	cmpq	232(%rsp), %rdx
	leaq	16+_ZTV18RenderObjectCircle(%rip), %rdi
	movl	$0x3d23d70b, 20(%rax)
	movl	$1, 16(%rax)
	movq	%rdi, (%rax)
	movq	%rax, 80(%rsp)
	movl	$0x40a00000, 8(%rax)
	movl	$0xbf800000, 12(%rax)
	je	.L449
	testq	%rdx, %rdx
	je	.L450
	movq	%rax, (%rdx)
	movq	224(%rsp), %rdx
.L450:
	addq	$8, %rdx
	movq	%rdx, 224(%rsp)
.L451:
	movl	$24, %ecx
	call	_Znwy
.LEHE3:
	movq	224(%rsp), %rdx
	cmpq	232(%rsp), %rdx
	leaq	16+_ZTV18RenderObjectCircle(%rip), %rdi
	movl	$0x00000000, 12(%rax)
	movl	$0x3d23d70b, 20(%rax)
	movq	%rdi, (%rax)
	movq	%rax, 88(%rsp)
	movl	$2, 16(%rax)
	movl	$0xc0400000, 8(%rax)
	je	.L452
	testq	%rdx, %rdx
	je	.L453
	movq	%rax, (%rdx)
	movq	224(%rsp), %rdx
.L453:
	addq	$8, %rdx
	movq	%rdx, 224(%rsp)
.L454:
	movq	200(%rsp), %rax
	cmpq	208(%rsp), %rax
	je	.L455
	testq	%rax, %rax
	movq	64(%rsp), %rdx
	je	.L456
	movq	%rdx, (%rax)
	movq	200(%rsp), %rax
.L456:
	addq	$8, %rax
	movq	%rax, 200(%rsp)
.L458:
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	xorl	%ebp, %ebp
	leaq	96(%rsp), %r13
	vmovsd	.LC24(%rip), %xmm6
	addq	$16, %rax
	movq	%rax, 48(%rsp)
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	leaq	24(%rax), %r15
	jmp	.L457
	.p2align 4,,10
.L459:
	movq	%rcx, 128(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 144(%rsp)
.L460:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	movq	%rcx, 136(%rsp)
	movq	$0, 8(%rax)
	movq	%rdx, (%rax)
	movabsq	$9223372036854775807, %rax
	subq	136(%rsp), %rax
	cmpq	$3, %rax
	jbe	.L530
	leaq	.LC23(%rip), %rdx
	movl	$4, %r8d
	movq	%rsi, %rcx
.LEHB4:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE4:
	leaq	160(%rsp), %rdi
	leaq	16(%rdi), %rdx
	movq	%rdx, 160(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L531
	movq	%rcx, 160(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 176(%rsp)
.L463:
	movq	8(%rax), %rcx
	leaq	240(%rsp), %rbx
	movb	$0, 16(%rax)
	movq	%rcx, 168(%rsp)
	leaq	200(%rbx), %rcx
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	call	_ZNSt8ios_baseC2Ev
	movq	48(%rsp), %rax
	movb	$0, 664(%rsp)
	movq	%rbx, %rcx
	movq	$0, 656(%rsp)
	movb	$0, 665(%rsp)
	xorl	%edx, %edx
	movq	$0, 672(%rsp)
	movq	$0, 680(%rsp)
	movq	%rax, 440(%rsp)
	movq	.refptr._ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	$0, 688(%rsp)
	movq	$0, 696(%rsp)
	movq	8(%rax), %r12
	movq	16(%rax), %r14
	addq	-24(%r12), %rcx
	movq	%r12, 240(%rsp)
	movq	%r14, (%rcx)
.LEHB5:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE5:
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	leaq	8(%rbx), %rcx
	movq	%r15, 240(%rsp)
	addq	$64, %rax
	movq	%rax, 440(%rsp)
.LEHB6:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE6:
	leaq	8(%rbx), %rdx
	leaq	200(%rbx), %rcx
.LEHB7:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	movq	160(%rsp), %rdx
	leaq	8(%rbx), %rcx
	movl	$48, %r8d
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	testq	%rax, %rax
	movq	%rbx, %rcx
	movq	240(%rsp), %rax
	je	.L532
	addq	-24(%rax), %rcx
	xorl	%edx, %edx
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE7:
.L465:
	movq	160(%rsp), %rcx
	addq	$16, %rdi
	cmpq	%rdi, %rcx
	je	.L471
	call	_ZdlPv
.L471:
	movq	128(%rsp), %rcx
	addq	$16, %rsi
	cmpq	%rsi, %rcx
	je	.L472
	call	_ZdlPv
.L472:
	movq	96(%rsp), %rcx
	leaq	16(%r13), %rax
	cmpq	%rax, %rcx
	je	.L473
	call	_ZdlPv
.L473:
	movq	56(%rsp), %rcx
.LEHB8:
	call	_ZN11RenderScene6RenderEv
	movq	64(%rsp), %rcx
	movq	%rbx, %rdx
	call	_Z16OutputDataRenderP12RenderCameraRSt14basic_ofstreamIcSt11char_traitsIcEE
	movq	64(%rsp), %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	leaq	8(%rbx), %rcx
	vcvtss2sd	8(%rax), %xmm0, %xmm0
	vaddsd	%xmm6, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm1, %xmm1
	vmovss	%xmm1, 8(%rax)
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE8:
	testq	%rax, %rax
	je	.L474
.L476:
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	leaq	8(%rbx), %rcx
	movq	%r15, 240(%rsp)
	addl	$1, %ebp
	addq	$64, %rax
	movq	%rax, 440(%rsp)
	movq	.refptr._ZTVSt13basic_filebufIcSt11char_traitsIcEE(%rip), %rax
	addq	$16, %rax
	movq	%rax, 248(%rsp)
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	leaq	80(%rbx), %rcx
	call	_ZNSt12__basic_fileIcED1Ev
	movq	.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	64(%rbx), %rcx
	addq	$16, %rax
	movq	%rax, 248(%rsp)
	call	_ZNSt6localeD1Ev
	movq	-24(%r12), %rax
	leaq	200(%rbx), %rcx
	movq	%r14, 240(%rsp,%rax)
	movq	48(%rsp), %rax
	movq	%rax, 440(%rsp)
	call	_ZNSt8ios_baseD2Ev
	cmpl	$36, %ebp
	je	.L533
.L457:
	leaq	.LC13(%rip), %r9
	leaq	_ZL9vsnprintfPcyPKcS_(%rip), %rdx
	movl	%ebp, 32(%rsp)
	movl	$16, %r8d
	movq	%r13, %rcx
.LEHB9:
	call	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_yPKS8_PcEySB_z.constprop.211
.LEHE9:
	leaq	.LC21(%rip), %r9
	movq	$13, 32(%rsp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r13, %rcx
.LEHB10:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
.LEHE10:
	leaq	128(%rsp), %rsi
	leaq	16(%rsi), %rdx
	movq	%rdx, 128(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	jne	.L459
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, 144(%rsp)
	movq	%rbx, 152(%rsp)
	jmp	.L460
	.p2align 4,,10
.L532:
	addq	-24(%rax), %rcx
	movl	32(%rcx), %edx
	orl	$4, %edx
.LEHB11:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE11:
	jmp	.L465
	.p2align 4,,10
.L531:
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, 176(%rsp)
	movq	%rbx, 184(%rsp)
	jmp	.L463
	.p2align 4,,10
.L474:
	movq	240(%rsp), %rax
	movq	%rbx, %rcx
	addq	-24(%rax), %rcx
	movl	32(%rcx), %edx
	orl	$4, %edx
.LEHB12:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE12:
	jmp	.L476
	.p2align 4,,10
.L533:
	movq	80(%rsp), %rcx
	movl	$24, %edx
	call	_ZdlPvy
	movq	88(%rsp), %rcx
	movl	$24, %edx
	call	_ZdlPvy
	movq	72(%rsp), %rcx
	movl	$24, %edx
	call	_ZdlPvy
	movq	64(%rsp), %rbx
	testq	%rbx, %rbx
	je	.L477
	movq	32(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L478
	call	_ZdlPv
.L478:
	movl	$56, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L477:
	movq	216(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L479
	call	_ZdlPv
.L479:
	movq	192(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L528
	call	_ZdlPv
	nop
.L528:
	vmovaps	704(%rsp), %xmm6
	addq	$728, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L446:
	movq	56(%rsp), %rax
	leaq	72(%rsp), %rdx
	leaq	24(%rax), %rcx
.LEHB13:
	call	_ZNSt6vectorIP12RenderObjectSaIS1_EE19_M_emplace_back_auxIJRKS1_EEEvDpOT_
	jmp	.L448
.L449:
	movq	56(%rsp), %rax
	leaq	80(%rsp), %rdx
	leaq	24(%rax), %rcx
	call	_ZNSt6vectorIP12RenderObjectSaIS1_EE19_M_emplace_back_auxIJRKS1_EEEvDpOT_
	jmp	.L451
.L452:
	movq	56(%rsp), %rax
	leaq	88(%rsp), %rdx
	leaq	24(%rax), %rcx
	call	_ZNSt6vectorIP12RenderObjectSaIS1_EE19_M_emplace_back_auxIJRKS1_EEEvDpOT_
	jmp	.L454
.L455:
	movq	56(%rsp), %rcx
	leaq	64(%rsp), %rdx
	call	_ZNSt6vectorIP12RenderCameraSaIS1_EE19_M_emplace_back_auxIJRKS1_EEEvDpOT_
.LEHE13:
	jmp	.L458
.L530:
	leaq	.LC22(%rip), %rcx
.LEHB14:
	call	_ZSt20__throw_length_errorPKc
.LEHE14:
.L493:
	movq	%rax, %rbx
	vzeroupper
.L483:
	movq	128(%rsp), %rcx
	addq	$16, %rsi
	cmpq	%rsi, %rcx
	je	.L485
	call	_ZdlPv
.L485:
	movq	96(%rsp), %rcx
	addq	$16, %r13
	cmpq	%r13, %rcx
	je	.L482
	call	_ZdlPv
.L482:
	movq	216(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L488
	call	_ZdlPv
.L488:
	movq	192(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L489
	call	_ZdlPv
.L489:
	movq	%rbx, %rcx
.LEHB15:
	call	_Unwind_Resume
.LEHE15:
.L492:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L485
.L496:
	vzeroupper
.L467:
	movq	-24(%r12), %rdx
	movq	%rax, %rbp
	movq	%r14, 240(%rsp,%rdx)
.L468:
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	leaq	200(%rbx), %rcx
	addq	$16, %rdi
	addq	$16, %rax
	movq	%rax, 440(%rsp)
	call	_ZNSt8ios_baseD2Ev
	movq	160(%rsp), %rcx
	cmpq	%rdi, %rcx
	je	.L470
	call	_ZdlPv
.L470:
	movq	%rbp, %rbx
	jmp	.L483
.L495:
	movq	%rax, %rbp
	vzeroupper
	jmp	.L468
.L491:
	movq	%rax, %rsi
	movl	$56, %edx
	movq	%rbx, %rcx
	vzeroupper
	call	_ZdlPvy
	movq	%rsi, %rbx
	jmp	.L482
.L490:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L482
.L494:
	movq	%rax, %rsi
	movq	%rbx, %rcx
	vzeroupper
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	movq	%rsi, %rbx
	jmp	.L482
.L497:
	leaq	8(%rbx), %rcx
	movq	%rax, %rbp
	vzeroupper
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
	movq	%rbp, %rax
	jmp	.L467
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9410:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9410-.LLSDACSB9410
.LLSDACSB9410:
	.uleb128 .LEHB0-.LFB9410
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB9410
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L490-.LFB9410
	.uleb128 0
	.uleb128 .LEHB2-.LFB9410
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L491-.LFB9410
	.uleb128 0
	.uleb128 .LEHB3-.LFB9410
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L490-.LFB9410
	.uleb128 0
	.uleb128 .LEHB4-.LFB9410
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L493-.LFB9410
	.uleb128 0
	.uleb128 .LEHB5-.LFB9410
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L495-.LFB9410
	.uleb128 0
	.uleb128 .LEHB6-.LFB9410
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L496-.LFB9410
	.uleb128 0
	.uleb128 .LEHB7-.LFB9410
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L497-.LFB9410
	.uleb128 0
	.uleb128 .LEHB8-.LFB9410
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L494-.LFB9410
	.uleb128 0
	.uleb128 .LEHB9-.LFB9410
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L490-.LFB9410
	.uleb128 0
	.uleb128 .LEHB10-.LFB9410
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L492-.LFB9410
	.uleb128 0
	.uleb128 .LEHB11-.LFB9410
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L497-.LFB9410
	.uleb128 0
	.uleb128 .LEHB12-.LFB9410
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L494-.LFB9410
	.uleb128 0
	.uleb128 .LEHB13-.LFB9410
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L490-.LFB9410
	.uleb128 0
	.uleb128 .LEHB14-.LFB9410
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L493-.LFB9410
	.uleb128 0
	.uleb128 .LEHB15-.LFB9410
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE9410:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC25:
	.ascii "vector::_M_fill_insert\0"
	.section	.text$_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEyRKf,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEyRKf
	.def	_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEyRKf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEyRKf
_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEyRKf:
.LFB10372:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	vmovaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	testq	%r8, %r8
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%r8, %rbx
	je	.L731
	movq	8(%rcx), %rbp
	movq	16(%rcx), %rax
	subq	%rbp, %rax
	movq	%rbp, %r12
	sarq	$2, %rax
	cmpq	%rax, %r8
	ja	.L537
	subq	%rdx, %r12
	vmovss	(%r9), %xmm6
	movq	%r12, %r8
	sarq	$2, %r8
	cmpq	%r8, %rbx
	jnb	.L538
	salq	$2, %rbx
	movq	%rbp, %r12
	movq	%rbp, %r8
	subq	%rbx, %r12
	movq	%rbp, %rax
	subq	%r12, %r8
	movq	%r8, %rdx
	sarq	$2, %rdx
	testq	%rdx, %rdx
	jne	.L738
.L539:
	movq	%r12, %r8
	addq	%rbx, %rax
	subq	%rsi, %r8
	movq	%rax, 8(%rdi)
	movq	%r8, %rax
	sarq	$2, %rax
	testq	%rax, %rax
	jne	.L739
.L540:
	addq	%rsi, %rbx
	cmpq	%rbx, %rsi
	je	.L731
	leaq	4(%rsi), %rdx
	movq	%rbx, %r8
	movq	%rsi, %rax
	andl	$31, %eax
	subq	%rdx, %r8
	shrq	$2, %rax
	shrq	$2, %r8
	negq	%rax
	leaq	1(%r8), %rcx
	andl	$7, %eax
	cmpq	%rcx, %rax
	cmova	%rcx, %rax
	cmpq	$10, %rcx
	ja	.L740
	movq	%rcx, %rax
.L542:
	cmpq	$1, %rax
	vmovss	%xmm6, (%rsi)
	je	.L544
	cmpq	$2, %rax
	vmovss	%xmm6, 4(%rsi)
	leaq	8(%rsi), %rdx
	je	.L544
	cmpq	$3, %rax
	vmovss	%xmm6, 8(%rsi)
	leaq	12(%rsi), %rdx
	je	.L544
	cmpq	$4, %rax
	vmovss	%xmm6, 12(%rsi)
	leaq	16(%rsi), %rdx
	je	.L544
	cmpq	$5, %rax
	vmovss	%xmm6, 16(%rsi)
	leaq	20(%rsi), %rdx
	je	.L544
	cmpq	$6, %rax
	vmovss	%xmm6, 20(%rsi)
	leaq	24(%rsi), %rdx
	je	.L544
	cmpq	$7, %rax
	vmovss	%xmm6, 24(%rsi)
	leaq	28(%rsi), %rdx
	je	.L544
	cmpq	$8, %rax
	vmovss	%xmm6, 28(%rsi)
	leaq	32(%rsi), %rdx
	je	.L544
	cmpq	$9, %rax
	vmovss	%xmm6, 32(%rsi)
	leaq	36(%rsi), %rdx
	je	.L544
	vmovss	%xmm6, 36(%rsi)
	leaq	40(%rsi), %rdx
.L544:
	cmpq	%rax, %rcx
	je	.L731
.L543:
	subq	%rax, %rcx
	subq	%rax, %r8
	leaq	-8(%rcx), %r9
	shrq	$3, %r9
	addq	$1, %r9
	cmpq	$6, %r8
	leaq	0(,%r9,8), %r10
	jbe	.L546
	vbroadcastss	%xmm6, %ymm0
	leaq	(%rsi,%rax,4), %r8
	xorl	%eax, %eax
.L548:
	addq	$1, %rax
	vmovaps	%ymm0, (%r8)
	addq	$32, %r8
	cmpq	%rax, %r9
	ja	.L548
	cmpq	%rcx, %r10
	leaq	(%rdx,%r10,4), %rdx
	je	.L731
.L546:
	leaq	4(%rdx), %rax
	vmovss	%xmm6, (%rdx)
	cmpq	%rax, %rbx
	je	.L731
	leaq	8(%rdx), %rax
	vmovss	%xmm6, 4(%rdx)
	cmpq	%rax, %rbx
	je	.L731
	leaq	12(%rdx), %rax
	vmovss	%xmm6, 8(%rdx)
	cmpq	%rax, %rbx
	je	.L731
	leaq	16(%rdx), %rax
	vmovss	%xmm6, 12(%rdx)
	cmpq	%rax, %rbx
	je	.L731
	leaq	20(%rdx), %rax
	vmovss	%xmm6, 16(%rdx)
	cmpq	%rax, %rbx
	je	.L731
	leaq	24(%rdx), %rax
	vmovss	%xmm6, 20(%rdx)
	cmpq	%rax, %rbx
	je	.L731
	vmovss	%xmm6, 24(%rdx)
.L731:
	vmovaps	48(%rsp), %xmm6
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L538:
	subq	%r8, %rbx
	je	.L595
	movq	%rbp, %rax
	andl	$31, %eax
	shrq	$2, %rax
	negq	%rax
	andl	$7, %eax
	cmpq	%rbx, %rax
	cmova	%rbx, %rax
	cmpq	$10, %rbx
	ja	.L741
	movq	%rbx, %rax
.L552:
	leaq	-1(%rbx), %r10
	cmpq	$1, %rax
	vmovss	%xmm6, 0(%rbp)
	leaq	4(%rbp), %rdx
	movq	%r10, %rcx
	je	.L554
	cmpq	$2, %rax
	vmovss	%xmm6, 4(%rbp)
	leaq	-2(%rbx), %rcx
	leaq	8(%rbp), %rdx
	je	.L554
	cmpq	$3, %rax
	vmovss	%xmm6, 8(%rbp)
	leaq	-3(%rbx), %rcx
	leaq	12(%rbp), %rdx
	je	.L554
	cmpq	$4, %rax
	vmovss	%xmm6, 12(%rbp)
	leaq	-4(%rbx), %rcx
	leaq	16(%rbp), %rdx
	je	.L554
	cmpq	$5, %rax
	vmovss	%xmm6, 16(%rbp)
	leaq	-5(%rbx), %rcx
	leaq	20(%rbp), %rdx
	je	.L554
	cmpq	$6, %rax
	vmovss	%xmm6, 20(%rbp)
	leaq	-6(%rbx), %rcx
	leaq	24(%rbp), %rdx
	je	.L554
	cmpq	$7, %rax
	vmovss	%xmm6, 24(%rbp)
	leaq	-7(%rbx), %rcx
	leaq	28(%rbp), %rdx
	je	.L554
	cmpq	$8, %rax
	vmovss	%xmm6, 28(%rbp)
	leaq	-8(%rbx), %rcx
	leaq	32(%rbp), %rdx
	je	.L554
	cmpq	$9, %rax
	vmovss	%xmm6, 32(%rbp)
	leaq	-9(%rbx), %rcx
	leaq	36(%rbp), %rdx
	je	.L554
	vmovss	%xmm6, 36(%rbp)
	leaq	-10(%rbx), %rcx
	leaq	40(%rbp), %rdx
.L554:
	cmpq	%rax, %rbx
	je	.L555
.L553:
	movq	%rbx, %r11
	subq	%rax, %r10
	subq	%rax, %r11
	leaq	-8(%r11), %r9
	shrq	$3, %r9
	addq	$1, %r9
	cmpq	$6, %r10
	leaq	0(,%r9,8), %r13
	jbe	.L556
	vbroadcastss	%xmm6, %ymm0
	leaq	0(%rbp,%rax,4), %r10
	xorl	%eax, %eax
.L558:
	addq	$1, %rax
	vmovaps	%ymm0, (%r10)
	addq	$32, %r10
	cmpq	%r9, %rax
	jb	.L558
	subq	%r13, %rcx
	cmpq	%r13, %r11
	leaq	(%rdx,%r13,4), %rdx
	je	.L555
.L556:
	cmpq	$1, %rcx
	vmovss	%xmm6, (%rdx)
	je	.L555
	cmpq	$2, %rcx
	vmovss	%xmm6, 4(%rdx)
	je	.L555
	cmpq	$3, %rcx
	vmovss	%xmm6, 8(%rdx)
	je	.L555
	cmpq	$4, %rcx
	vmovss	%xmm6, 12(%rdx)
	je	.L555
	cmpq	$5, %rcx
	vmovss	%xmm6, 16(%rdx)
	je	.L555
	cmpq	$6, %rcx
	vmovss	%xmm6, 20(%rdx)
	je	.L555
	vmovss	%xmm6, 24(%rdx)
.L555:
	leaq	0(%rbp,%rbx,4), %rcx
.L551:
	testq	%r8, %r8
	movq	%rcx, 8(%rdi)
	jne	.L742
.L562:
	addq	%rcx, %r12
	cmpq	%rsi, %rbp
	movq	%r12, 8(%rdi)
	je	.L731
	leaq	4(%rsi), %rdx
	movq	%rbp, %r8
	movq	%rsi, %rax
	andl	$31, %eax
	subq	%rdx, %r8
	shrq	$2, %rax
	shrq	$2, %r8
	negq	%rax
	leaq	1(%r8), %rcx
	andl	$7, %eax
	cmpq	%rcx, %rax
	cmova	%rcx, %rax
	cmpq	$10, %rcx
	ja	.L743
	movq	%rcx, %rax
.L563:
	cmpq	$1, %rax
	vmovss	%xmm6, (%rsi)
	je	.L565
	cmpq	$2, %rax
	vmovss	%xmm6, 4(%rsi)
	leaq	8(%rsi), %rdx
	je	.L565
	cmpq	$3, %rax
	vmovss	%xmm6, 8(%rsi)
	leaq	12(%rsi), %rdx
	je	.L565
	cmpq	$4, %rax
	vmovss	%xmm6, 12(%rsi)
	leaq	16(%rsi), %rdx
	je	.L565
	cmpq	$5, %rax
	vmovss	%xmm6, 16(%rsi)
	leaq	20(%rsi), %rdx
	je	.L565
	cmpq	$6, %rax
	vmovss	%xmm6, 20(%rsi)
	leaq	24(%rsi), %rdx
	je	.L565
	cmpq	$7, %rax
	vmovss	%xmm6, 24(%rsi)
	leaq	28(%rsi), %rdx
	je	.L565
	cmpq	$8, %rax
	vmovss	%xmm6, 28(%rsi)
	leaq	32(%rsi), %rdx
	je	.L565
	cmpq	$9, %rax
	vmovss	%xmm6, 32(%rsi)
	leaq	36(%rsi), %rdx
	je	.L565
	vmovss	%xmm6, 36(%rsi)
	leaq	40(%rsi), %rdx
.L565:
	cmpq	%rax, %rcx
	je	.L732
.L564:
	subq	%rax, %rcx
	subq	%rax, %r8
	leaq	-8(%rcx), %r9
	shrq	$3, %r9
	addq	$1, %r9
	cmpq	$6, %r8
	leaq	0(,%r9,8), %r10
	jbe	.L567
	vbroadcastss	%xmm6, %ymm0
	leaq	(%rsi,%rax,4), %r8
	xorl	%eax, %eax
.L569:
	addq	$1, %rax
	vmovaps	%ymm0, (%r8)
	addq	$32, %r8
	cmpq	%r9, %rax
	jb	.L569
	cmpq	%r10, %rcx
	leaq	(%rdx,%r10,4), %rdx
	je	.L731
.L567:
	leaq	4(%rdx), %rax
	vmovss	%xmm6, (%rdx)
	cmpq	%rax, %rbp
	je	.L731
	leaq	8(%rdx), %rax
	vmovss	%xmm6, 4(%rdx)
	cmpq	%rax, %rbp
	je	.L731
	leaq	12(%rdx), %rax
	vmovss	%xmm6, 8(%rdx)
	cmpq	%rax, %rbp
	je	.L731
	leaq	16(%rdx), %rax
	vmovss	%xmm6, 12(%rdx)
	cmpq	%rax, %rbp
	je	.L731
	leaq	20(%rdx), %rax
	vmovss	%xmm6, 16(%rdx)
	cmpq	%rax, %rbp
	je	.L731
	leaq	24(%rdx), %rax
	vmovss	%xmm6, 20(%rdx)
	cmpq	%rax, %rbp
	je	.L732
	vmovss	%xmm6, 24(%rdx)
.L732:
	vzeroupper
	jmp	.L731
	.p2align 4,,10
.L537:
	movq	(%rcx), %r13
	movq	%rbp, %rax
	movabsq	$4611686018427387903, %rdx
	movq	%rdx, %rcx
	subq	%r13, %rax
	sarq	$2, %rax
	subq	%rax, %rcx
	cmpq	%rcx, %r8
	ja	.L744
	cmpq	%rax, %r8
	movq	%rax, %rbp
	cmovnb	%r8, %rbp
	addq	%rbp, %rax
	jc	.L573
	cmpq	%rdx, %rax
	ja	.L573
	movq	%rsi, %r15
	subq	%r13, %r15
	testq	%rax, %rax
	jne	.L590
	movq	%r15, 32(%rsp)
	xorl	%ebp, %ebp
	xorl	%r14d, %r14d
	movq	%r15, %rax
	jmp	.L591
	.p2align 4,,10
.L739:
	movq	%rbp, %rcx
	movq	%rsi, %rdx
	subq	%r8, %rcx
	call	memmove
	jmp	.L540
	.p2align 4,,10
.L738:
	movq	%r12, %rdx
	movq	%rbp, %rcx
	call	memmove
	movq	8(%rdi), %rax
	jmp	.L539
	.p2align 4,,10
.L573:
	movq	%rsi, %rax
	movq	$-4, %rbp
	subq	%r13, %rax
	movq	%rax, 32(%rsp)
.L589:
	movq	%rbp, %rcx
	movq	%r9, 40(%rsp)
	movq	%rsi, %r15
	call	_Znwy
	movq	(%rdi), %r13
	movq	%rax, %r14
	addq	%rax, %rbp
	movq	8(%rdi), %r12
	movq	40(%rsp), %r9
	movq	32(%rsp), %rax
	subq	%r13, %r15
.L591:
	addq	%r14, %rax
	vmovss	(%r9), %xmm0
	movq	%rax, %rdx
	andl	$31, %edx
	shrq	$2, %rdx
	negq	%rdx
	andl	$7, %edx
	cmpq	%rbx, %rdx
	cmova	%rbx, %rdx
	cmpq	$10, %rbx
	ja	.L745
	movq	%rbx, %rdx
.L575:
	leaq	-1(%rbx), %r9
	cmpq	$1, %rdx
	vmovss	%xmm0, (%rax)
	leaq	4(%rax), %r8
	movq	%r9, %rcx
	jbe	.L610
	cmpq	$2, %rdx
	vmovss	%xmm0, 4(%rax)
	leaq	-2(%rbx), %rcx
	leaq	8(%rax), %r8
	je	.L610
	cmpq	$3, %rdx
	vmovss	%xmm0, 8(%rax)
	leaq	-3(%rbx), %rcx
	leaq	12(%rax), %r8
	je	.L610
	cmpq	$4, %rdx
	vmovss	%xmm0, 12(%rax)
	leaq	-4(%rbx), %rcx
	leaq	16(%rax), %r8
	je	.L610
	cmpq	$5, %rdx
	vmovss	%xmm0, 16(%rax)
	leaq	-5(%rbx), %rcx
	leaq	20(%rax), %r8
	je	.L610
	cmpq	$6, %rdx
	vmovss	%xmm0, 20(%rax)
	leaq	-6(%rbx), %rcx
	leaq	24(%rax), %r8
	je	.L610
	cmpq	$7, %rdx
	vmovss	%xmm0, 24(%rax)
	leaq	-7(%rbx), %rcx
	leaq	28(%rax), %r8
	je	.L610
	cmpq	$8, %rdx
	vmovss	%xmm0, 28(%rax)
	leaq	-8(%rbx), %rcx
	leaq	32(%rax), %r8
	je	.L610
	cmpq	$9, %rdx
	vmovss	%xmm0, 32(%rax)
	leaq	-9(%rbx), %rcx
	leaq	36(%rax), %r8
	je	.L610
	leaq	-10(%rbx), %rcx
	vmovss	%xmm0, 36(%rax)
	addq	$40, %rax
.L577:
	cmpq	%rdx, %rbx
	je	.L578
.L576:
	movq	%rbx, %r10
	subq	%rdx, %r9
	subq	%rdx, %r10
	leaq	-8(%r10), %r8
	shrq	$3, %r8
	addq	$1, %r8
	cmpq	$6, %r9
	leaq	0(,%r8,8), %r11
	jbe	.L579
	movq	32(%rsp), %r9
	vbroadcastss	%xmm0, %ymm1
	leaq	(%r9,%rdx,4), %rdx
	xorl	%r9d, %r9d
	addq	%r14, %rdx
.L581:
	addq	$1, %r9
	vmovaps	%ymm1, (%rdx)
	addq	$32, %rdx
	cmpq	%r8, %r9
	jb	.L581
	subq	%r11, %rcx
	cmpq	%r11, %r10
	leaq	(%rax,%r11,4), %rax
	je	.L730
	vzeroupper
.L579:
	cmpq	$1, %rcx
	vmovss	%xmm0, (%rax)
	je	.L578
	cmpq	$2, %rcx
	vmovss	%xmm0, 4(%rax)
	je	.L578
	cmpq	$3, %rcx
	vmovss	%xmm0, 8(%rax)
	je	.L578
	cmpq	$4, %rcx
	vmovss	%xmm0, 12(%rax)
	je	.L578
	cmpq	$5, %rcx
	vmovss	%xmm0, 16(%rax)
	je	.L578
	cmpq	$6, %rcx
	vmovss	%xmm0, 20(%rax)
	je	.L578
	vmovss	%xmm0, 24(%rax)
.L578:
	movq	%r15, %rax
	sarq	$2, %rax
	testq	%rax, %rax
	jne	.L746
.L585:
	subq	%rsi, %r12
	leaq	(%r15,%rbx,4), %r9
	movq	%r12, %rax
	sarq	$2, %rax
	addq	%r14, %r9
	testq	%rax, %rax
	jne	.L747
.L587:
	addq	%r9, %r12
	testq	%r13, %r13
	je	.L588
	movq	%r13, %rcx
	call	_ZdlPv
.L588:
	movq	%r14, (%rdi)
	movq	%r12, 8(%rdi)
	movq	%rbp, 16(%rdi)
	jmp	.L731
	.p2align 4,,10
.L610:
	movq	%r8, %rax
	jmp	.L577
	.p2align 4,,10
.L743:
	testq	%rax, %rax
	jne	.L563
	movq	%rsi, %rdx
	jmp	.L564
	.p2align 4,,10
.L740:
	testq	%rax, %rax
	jne	.L542
	movq	%rsi, %rdx
	jmp	.L543
	.p2align 4,,10
.L741:
	testq	%rax, %rax
	jne	.L552
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	leaq	-1(%rbx), %r10
	jmp	.L553
	.p2align 4,,10
.L742:
	movq	%r12, %r8
	movq	%rsi, %rdx
	call	memmove
	movq	8(%rdi), %rcx
	jmp	.L562
	.p2align 4,,10
.L745:
	testq	%rdx, %rdx
	jne	.L575
	movq	%rbx, %rcx
	leaq	-1(%rbx), %r9
	jmp	.L576
	.p2align 4,,10
.L747:
	movq	%r9, %rcx
	movq	%r12, %r8
	movq	%rsi, %rdx
	call	memcpy
	movq	%rax, %r9
	jmp	.L587
	.p2align 4,,10
.L746:
	movq	%r15, %r8
	movq	%r13, %rdx
	movq	%r14, %rcx
	call	memmove
	jmp	.L585
	.p2align 4,,10
.L595:
	movq	%rbp, %rcx
	jmp	.L551
.L590:
	leaq	0(,%rax,4), %rbp
	movq	%r15, 32(%rsp)
	jmp	.L589
	.p2align 4,,10
.L730:
	vzeroupper
	jmp	.L578
.L744:
	leaq	.LC25(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_endproc
	.section	.text$_ZN11NeuralBrainILi40ELi40EEC1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN11NeuralBrainILi40ELi40EEC1Ev
	.def	_ZN11NeuralBrainILi40ELi40EEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11NeuralBrainILi40ELi40EEC1Ev
_ZN11NeuralBrainILi40ELi40EEC1Ev:
.LFB10089:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rcx, %rbx
.LEHB16:
	call	_ZN9NeuralNetC2Ev
.LEHE16:
	leaq	16+_ZTV11NeuralBrainILi40ELi40EE(%rip), %rax
	leaq	36(%rbx), %rcx
	movq	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	movq	$0, 24(%rbx)
	movl	$13284, %r8d
	movq	%rax, (%rbx)
	movl	$0, 32(%rbx)
	xorl	%edx, %edx
	call	memset
	movq	$0, 13320(%rbx)
	movq	$0, 13328(%rbx)
	movl	$160, %ecx
	movq	$0, 13336(%rbx)
.LEHB17:
	call	_Znwy
.LEHE17:
	leaq	8(%rax), %rdi
	movq	%rax, %rcx
	leaq	160(%rax), %r8
	movq	%rax, 13320(%rbx)
	movq	%rax, %rdx
	andq	$-8, %rdi
	movq	%r8, 13336(%rbx)
	movq	$0, (%rax)
	subq	%rdi, %rcx
	movq	$0, 152(%rax)
	xorl	%eax, %eax
	addl	$160, %ecx
	shrl	$3, %ecx
	rep stosq
	movq	%rdx, %rax
	movq	%r8, 13328(%rbx)
	movl	$0x3f800000, 36(%rbx)
	andl	$31, %eax
	shrq	$2, %rax
	negq	%rax
	andl	$7, %eax
	jne	.L796
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
.L749:
	movl	$40, %r8d
	movl	$39, %r10d
	movq	%r8, %r11
	movl	$32, %r8d
	subq	%r9, %r10
	subq	%r9, %r8
	subq	%r9, %r11
	shrq	$3, %r8
	addq	$1, %r8
	cmpq	$6, %r10
	leaq	0(,%r8,8), %rdi
	jbe	.L752
	vmovaps	.LC26(%rip), %ymm0
	leaq	(%rdx,%r9,4), %r10
	xorl	%r9d, %r9d
.L753:
	addq	$1, %r9
	vmovaps	%ymm0, (%r10)
	addq	$32, %r10
	cmpq	%r9, %r8
	ja	.L753
	addl	%edi, %ecx
	addq	%rdi, %rax
	cmpq	%rdi, %r11
	je	.L792
	vzeroupper
.L752:
	movl	$0x3f800000, (%rdx,%rax,4)
	leal	1(%rcx), %eax
	cltq
	cmpq	$39, %rax
	ja	.L751
	movl	$0x3f800000, (%rdx,%rax,4)
	leal	2(%rcx), %eax
	cltq
	cmpq	$39, %rax
	ja	.L751
	movl	$0x3f800000, (%rdx,%rax,4)
	leal	3(%rcx), %eax
	cltq
	cmpq	$39, %rax
	ja	.L751
	movl	$0x3f800000, (%rdx,%rax,4)
	leal	4(%rcx), %eax
	cltq
	cmpq	$39, %rax
	ja	.L751
	movl	$0x3f800000, (%rdx,%rax,4)
	leal	5(%rcx), %eax
	cltq
	cmpq	$39, %rax
	ja	.L751
	movl	$0x3f800000, (%rdx,%rax,4)
	leal	6(%rcx), %eax
	cltq
	cmpq	$39, %rax
	ja	.L751
	movl	$0x3f800000, (%rdx,%rax,4)
.L751:
	movq	8(%rbx), %rcx
	movq	$0, 16(%rbx)
	movq	$0, 8(%rbx)
	movq	$0, 24(%rbx)
	testq	%rcx, %rcx
	je	.L757
	call	_ZdlPv
	movq	16(%rbx), %rdx
	movq	8(%rbx), %rcx
	movl	$0x00000000, 44(%rsp)
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	cmpq	$39, %rax
	movq	%rax, %r10
	jbe	.L765
	cmpq	$40, %rax
	je	.L794
	addq	$160, %rcx
	movq	%rcx, 16(%rbx)
.L794:
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	ret
.L796:
	cmpq	$1, %rax
	movq	%rax, %r9
	movl	$0x3f800000, (%rdx)
	je	.L767
	cmpq	$2, %rax
	movl	$0x3f800000, 4(%rdx)
	je	.L768
	cmpq	$3, %rax
	movl	$0x3f800000, 8(%rdx)
	je	.L769
	cmpq	$4, %rax
	movl	$0x3f800000, 12(%rdx)
	je	.L770
	cmpq	$5, %rax
	movl	$0x3f800000, 16(%rdx)
	je	.L771
	cmpq	$6, %rax
	movl	$0x3f800000, 20(%rdx)
	je	.L772
	cmpq	$7, %rax
	movl	$0x3f800000, 24(%rdx)
	je	.L773
	movl	$0x3f800000, 28(%rdx)
	movl	$0x3f800000, 32(%rdx)
	movl	$9, %eax
	movl	$9, %ecx
	jmp	.L749
	.p2align 4,,10
.L757:
	movl	$0x00000000, 44(%rsp)
	xorl	%r10d, %r10d
	xorl	%edx, %edx
.L765:
	movl	$40, %r8d
	leaq	8(%rbx), %rcx
	leaq	44(%rsp), %r9
	subq	%r10, %r8
.LEHB18:
	call	_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEyRKf
.LEHE18:
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	ret
	.p2align 4,,10
.L792:
	vzeroupper
	jmp	.L751
	.p2align 4,,10
.L767:
	movl	$1, %ecx
	jmp	.L749
	.p2align 4,,10
.L768:
	movl	$2, %ecx
	jmp	.L749
	.p2align 4,,10
.L769:
	movl	$3, %ecx
	jmp	.L749
	.p2align 4,,10
.L770:
	movl	$4, %ecx
	jmp	.L749
	.p2align 4,,10
.L771:
	movl	$5, %ecx
	jmp	.L749
	.p2align 4,,10
.L772:
	movl	$6, %ecx
	jmp	.L749
	.p2align 4,,10
.L773:
	movl	$7, %ecx
	jmp	.L749
.L776:
	movq	%rax, %rdi
	vzeroupper
.L763:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L764
	call	_ZdlPv
.L764:
	movq	%rbx, %rcx
	call	_ZN9NeuralNetD2Ev
	movq	%rdi, %rcx
.LEHB19:
	call	_Unwind_Resume
.LEHE19:
.L777:
	movq	13320(%rbx), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L793
	vzeroupper
	call	_ZdlPv
	jmp	.L763
.L793:
	vzeroupper
	jmp	.L763
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA10089:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10089-.LLSDACSB10089
.LLSDACSB10089:
	.uleb128 .LEHB16-.LFB10089
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB10089
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L776-.LFB10089
	.uleb128 0
	.uleb128 .LEHB18-.LFB10089
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L777-.LFB10089
	.uleb128 0
	.uleb128 .LEHB19-.LFB10089
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE10089:
	.section	.text$_ZN11NeuralBrainILi40ELi40EEC1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC27:
	.ascii "Stats:\0"
.LC28:
	.ascii "-\0"
.LC29:
	.ascii "Timing full:\0"
.LC31:
	.ascii "Timing single:\0"
.LC33:
	.ascii "FPS est:\0"
	.section	.text$_Z15NeuralBrainTestILi40ELi40EEvv,"x"
	.linkonce discard
	.p2align 4,,15
	.globl	_Z15NeuralBrainTestILi40ELi40EEvv
	.def	_Z15NeuralBrainTestILi40ELi40EEvv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z15NeuralBrainTestILi40ELi40EEvv
_Z15NeuralBrainTestILi40ELi40EEvv:
.LFB9775:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	movl	$13472, %eax
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	call	___chkstk_ms
	subq	%rax, %rsp
	.seh_stackalloc	13472
	vmovaps	%xmm6, 13440(%rsp)
	.seh_savexmm	%xmm6, 13440
	vmovaps	%xmm7, 13456(%rsp)
	.seh_savexmm	%xmm7, 13456
	.seh_endprologue
	leaq	96(%rsp), %rsi
	movq	%rsi, %rcx
.LEHB20:
	call	_ZN11NeuralBrainILi40ELi40EEC1Ev
.LEHE20:
	movl	$160, %ecx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
.LEHB21:
	call	_Znwy
.LEHE21:
	leaq	8(%rax), %rdi
	leaq	160(%rax), %rdx
	movq	%rax, 32(%rsp)
	leaq	64(%rsp), %rbp
	movl	$2, %ebx
	andq	$-8, %rdi
	movq	%rdx, 48(%rsp)
	movq	$0, (%rax)
	movq	$0, 152(%rax)
	subq	%rdi, %rax
	leal	160(%rax), %ecx
	xorl	%eax, %eax
	shrl	$3, %ecx
	rep stosq
	leaq	32(%rsp), %rdi
	movq	%rdx, 40(%rsp)
	movl	$0x00000000, 64(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r12
.L799:
	movq	%rdi, %r8
	movq	%rsi, %rdx
	movq	%rbp, %rcx
.LEHB22:
	call	_ZN11NeuralBrainILi40ELi40EE6UpdateERKSt6vectorIfSaIfEE
	movq	64(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L798
	call	_ZdlPv
.L798:
	subl	$1, %ebx
	jne	.L799
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	subq	%r12, %rax
	movl	$6, %r8d
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$40, %edx
	call	_ZNSolsEi
	leaq	.LC28(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$40, %edx
	movq	%rdi, %rcx
	call	_ZNSolsEi
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rdi
	testq	%rdi, %rdi
	je	.L843
	cmpb	$0, 56(%rdi)
	je	.L801
	movsbl	67(%rdi), %edx
.L802:
	movq	%rbp, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	movl	$12, %r8d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	%rbx, %rdx
	call	_ZNSo9_M_insertIxEERSoT_
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rdi
	testq	%rdi, %rdi
	je	.L844
	cmpb	$0, 56(%rdi)
	je	.L804
	movsbl	67(%rdi), %edx
.L805:
	movq	%rbp, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	vxorps	%xmm6, %xmm6, %xmm6
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	movl	$14, %r8d
	vcvtsi2ssq	%rbx, %xmm6, %xmm6
	vmulss	.LC30(%rip), %xmm6, %xmm7
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rcx
	vcvtss2sd	%xmm7, %xmm1, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rdi,%rax), %rbx
	testq	%rbx, %rbx
	je	.L845
	cmpb	$0, 56(%rbx)
	je	.L807
	movsbl	67(%rbx), %edx
.L808:
	movq	%rdi, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	vmulss	.LC32(%rip), %xmm6, %xmm6
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	vmovsd	.LC4(%rip), %xmm0
	movl	$8, %r8d
	vcvtss2sd	%xmm6, %xmm6, %xmm6
	vdivsd	%xmm6, %xmm0, %xmm6
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	vmovapd	%xmm6, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rdi,%rax), %rbx
	testq	%rbx, %rbx
	je	.L846
	cmpb	$0, 56(%rbx)
	je	.L810
	movsbl	67(%rbx), %edx
.L811:
	movq	%rdi, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	32(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L812
	call	_ZdlPv
.L812:
	movq	13416(%rsp), %rcx
	leaq	16+_ZTV11NeuralBrainILi40ELi40EE(%rip), %rax
	movq	%rax, 96(%rsp)
	testq	%rcx, %rcx
	je	.L813
	call	_ZdlPv
.L813:
	movq	104(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L814
	call	_ZdlPv
.L814:
	movq	%rsi, %rcx
	call	_ZN9NeuralNetD2Ev
	nop
	vmovaps	13440(%rsp), %xmm6
	vmovaps	13456(%rsp), %xmm7
	addq	$13472, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L801:
	movq	%rdi, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rdi), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L802
	movq	%rdi, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L802
	.p2align 4,,10
.L804:
	movq	%rdi, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rdi), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L805
	movq	%rdi, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L805
	.p2align 4,,10
.L807:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L808
	movq	%rbx, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L808
	.p2align 4,,10
.L810:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L811
	movq	%rbx, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L811
.L844:
	call	_ZSt16__throw_bad_castv
.L845:
	call	_ZSt16__throw_bad_castv
.L846:
	call	_ZSt16__throw_bad_castv
.LEHE22:
.L823:
	movq	32(%rsp), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	je	.L841
	vzeroupper
	call	_ZdlPv
.L817:
	movq	%rsi, %rcx
	call	_ZN11NeuralBrainILi40ELi40EED1Ev
	movq	%rbx, %rcx
.LEHB23:
	call	_Unwind_Resume
.LEHE23:
.L822:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L817
.L843:
.LEHB24:
	call	_ZSt16__throw_bad_castv
.LEHE24:
.L841:
	vzeroupper
	jmp	.L817
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9775:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9775-.LLSDACSB9775
.LLSDACSB9775:
	.uleb128 .LEHB20-.LFB9775
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB9775
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L822-.LFB9775
	.uleb128 0
	.uleb128 .LEHB22-.LFB9775
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L823-.LFB9775
	.uleb128 0
	.uleb128 .LEHB23-.LFB9775
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB24-.LFB9775
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L823-.LFB9775
	.uleb128 0
.LLSDACSE9775:
	.section	.text$_Z15NeuralBrainTestILi40ELi40EEvv,"x"
	.linkonce discard
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC34:
	.ascii "Start:\0"
.LC35:
	.ascii "End:\0"
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB9416:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	call	__main
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	movl	$6, %r8d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.constprop.215
	call	_Z15NeuralBrainTestILi40ELi40EEvv
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	movl	$4, %r8d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.constprop.215
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.seh_endproc
	.section	.text$_ZN11NeuralBrainILi83ELi100EEC1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN11NeuralBrainILi83ELi100EEC1Ev
	.def	_ZN11NeuralBrainILi83ELi100EEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11NeuralBrainILi83ELi100EEC1Ev
_ZN11NeuralBrainILi83ELi100EEC1Ev:
.LFB9949:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rcx, %rbx
.LEHB25:
	call	_ZN9NeuralNetC2Ev
.LEHE25:
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	leaq	36(%rbx), %rcx
	movq	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	movq	$0, 24(%rbx)
	movl	$74336, %r8d
	movq	%rax, (%rbx)
	movl	$0, 32(%rbx)
	xorl	%edx, %edx
	call	memset
	movq	$0, 74376(%rbx)
	movq	$0, 74384(%rbx)
	movl	$400, %ecx
	movq	$0, 74392(%rbx)
.LEHB26:
	call	_Znwy
.LEHE26:
	leaq	8(%rax), %rdi
	movq	%rax, %rcx
	leaq	400(%rax), %r8
	movq	%rax, 74376(%rbx)
	movq	%rax, %rdx
	andq	$-8, %rdi
	movq	%r8, 74392(%rbx)
	movq	$0, (%rax)
	subq	%rdi, %rcx
	movq	$0, 392(%rax)
	xorl	%eax, %eax
	addl	$400, %ecx
	shrl	$3, %ecx
	rep stosq
	movq	%rdx, %rax
	movq	%r8, 74384(%rbx)
	movl	$0x3f800000, 36(%rbx)
	andl	$31, %eax
	shrq	$2, %rax
	negq	%rax
	andl	$7, %eax
	jne	.L896
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
.L849:
	movl	$100, %r8d
	movl	$99, %r10d
	movq	%r8, %r11
	movl	$92, %r8d
	subq	%r9, %r10
	subq	%r9, %r8
	subq	%r9, %r11
	shrq	$3, %r8
	addq	$1, %r8
	cmpq	$6, %r10
	leaq	0(,%r8,8), %rdi
	jbe	.L852
	vmovaps	.LC26(%rip), %ymm0
	leaq	(%rdx,%r9,4), %r10
	xorl	%r9d, %r9d
.L853:
	addq	$1, %r9
	vmovaps	%ymm0, (%r10)
	addq	$32, %r10
	cmpq	%r9, %r8
	ja	.L853
	addl	%edi, %ecx
	addq	%rdi, %rax
	cmpq	%rdi, %r11
	je	.L892
	vzeroupper
.L852:
	movl	$0x3f800000, (%rdx,%rax,4)
	leal	1(%rcx), %eax
	cltq
	cmpq	$99, %rax
	ja	.L851
	movl	$0x3f800000, (%rdx,%rax,4)
	leal	2(%rcx), %eax
	cltq
	cmpq	$99, %rax
	ja	.L851
	movl	$0x3f800000, (%rdx,%rax,4)
	leal	3(%rcx), %eax
	cltq
	cmpq	$99, %rax
	ja	.L851
	movl	$0x3f800000, (%rdx,%rax,4)
	leal	4(%rcx), %eax
	cltq
	cmpq	$99, %rax
	ja	.L851
	movl	$0x3f800000, (%rdx,%rax,4)
	leal	5(%rcx), %eax
	cltq
	cmpq	$99, %rax
	ja	.L851
	movl	$0x3f800000, (%rdx,%rax,4)
	leal	6(%rcx), %eax
	cltq
	cmpq	$99, %rax
	ja	.L851
	movl	$0x3f800000, (%rdx,%rax,4)
.L851:
	movq	8(%rbx), %rcx
	movq	$0, 16(%rbx)
	movq	$0, 8(%rbx)
	movq	$0, 24(%rbx)
	testq	%rcx, %rcx
	je	.L857
	call	_ZdlPv
	movq	16(%rbx), %rdx
	movq	8(%rbx), %rcx
	movl	$0x00000000, 44(%rsp)
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	cmpq	$99, %rax
	movq	%rax, %r10
	jbe	.L865
	cmpq	$100, %rax
	je	.L894
	addq	$400, %rcx
	movq	%rcx, 16(%rbx)
.L894:
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	ret
.L896:
	cmpq	$1, %rax
	movq	%rax, %r9
	movl	$0x3f800000, (%rdx)
	je	.L867
	cmpq	$2, %rax
	movl	$0x3f800000, 4(%rdx)
	je	.L868
	cmpq	$3, %rax
	movl	$0x3f800000, 8(%rdx)
	je	.L869
	cmpq	$4, %rax
	movl	$0x3f800000, 12(%rdx)
	je	.L870
	cmpq	$5, %rax
	movl	$0x3f800000, 16(%rdx)
	je	.L871
	cmpq	$6, %rax
	movl	$0x3f800000, 20(%rdx)
	je	.L872
	cmpq	$7, %rax
	movl	$0x3f800000, 24(%rdx)
	je	.L873
	movl	$0x3f800000, 28(%rdx)
	movl	$0x3f800000, 32(%rdx)
	movl	$9, %eax
	movl	$9, %ecx
	jmp	.L849
	.p2align 4,,10
.L857:
	movl	$0x00000000, 44(%rsp)
	xorl	%r10d, %r10d
	xorl	%edx, %edx
.L865:
	movl	$100, %r8d
	leaq	8(%rbx), %rcx
	leaq	44(%rsp), %r9
	subq	%r10, %r8
.LEHB27:
	call	_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEyRKf
.LEHE27:
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	ret
	.p2align 4,,10
.L892:
	vzeroupper
	jmp	.L851
	.p2align 4,,10
.L867:
	movl	$1, %ecx
	jmp	.L849
	.p2align 4,,10
.L868:
	movl	$2, %ecx
	jmp	.L849
	.p2align 4,,10
.L869:
	movl	$3, %ecx
	jmp	.L849
	.p2align 4,,10
.L870:
	movl	$4, %ecx
	jmp	.L849
	.p2align 4,,10
.L871:
	movl	$5, %ecx
	jmp	.L849
	.p2align 4,,10
.L872:
	movl	$6, %ecx
	jmp	.L849
	.p2align 4,,10
.L873:
	movl	$7, %ecx
	jmp	.L849
.L876:
	movq	%rax, %rdi
	vzeroupper
.L863:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L864
	call	_ZdlPv
.L864:
	movq	%rbx, %rcx
	call	_ZN9NeuralNetD2Ev
	movq	%rdi, %rcx
.LEHB28:
	call	_Unwind_Resume
.LEHE28:
.L877:
	movq	74376(%rbx), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L893
	vzeroupper
	call	_ZdlPv
	jmp	.L863
.L893:
	vzeroupper
	jmp	.L863
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9949:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9949-.LLSDACSB9949
.LLSDACSB9949:
	.uleb128 .LEHB25-.LFB9949
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB9949
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L876-.LFB9949
	.uleb128 0
	.uleb128 .LEHB27-.LFB9949
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L877-.LFB9949
	.uleb128 0
	.uleb128 .LEHB28-.LFB9949
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
.LLSDACSE9949:
	.section	.text$_ZN11NeuralBrainILi83ELi100EEC1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN11NeuralBrainILi83ELi100EEC1ERKS0_,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN11NeuralBrainILi83ELi100EEC1ERKS0_
	.def	_ZN11NeuralBrainILi83ELi100EEC1ERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11NeuralBrainILi83ELi100EEC1ERKS0_
_ZN11NeuralBrainILi83ELi100EEC1ERKS0_:
.LFB9663:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, %rdi
.LEHB29:
	call	_ZN11NeuralBrainILi83ELi100EEC1Ev
.LEHE29:
	leaq	36(%rbx), %rcx
	leaq	36(%rdi), %rdx
	leaq	48(%rbx), %rdi
	movl	$74336, %r8d
	call	memcpy
	andq	$-8, %rdi
	movl	%ebx, %eax
	movq	$0, 40(%rbx)
	subl	%edi, %eax
	movq	$0, 764(%rbx)
	leal	772(%rax), %ecx
	xorl	%eax, %eax
	shrl	$3, %ecx
	rep stosq
	movq	$0, 16(%rbx)
	movq	$0, 24(%rbx)
	movq	8(%rbx), %rcx
	movq	$0, 8(%rbx)
	testq	%rcx, %rcx
	je	.L898
	call	_ZdlPv
	movq	16(%rbx), %rdx
	movq	8(%rbx), %rcx
	movl	$0x00000000, 44(%rsp)
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	cmpq	$99, %rax
	movq	%rax, %r10
	jbe	.L903
	cmpq	$100, %rax
	je	.L908
	addq	$400, %rcx
	movq	%rcx, 16(%rbx)
.L908:
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	ret
	.p2align 4,,10
.L898:
	movl	$0x00000000, 44(%rsp)
	xorl	%edx, %edx
	xorl	%r10d, %r10d
.L903:
	movl	$100, %r8d
	leaq	8(%rbx), %rcx
	leaq	44(%rsp), %r9
	subq	%r10, %r8
.LEHB30:
	call	_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEyRKf
.LEHE30:
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	ret
.L904:
	movq	%rax, %rdi
	movq	%rbx, %rcx
	vzeroupper
	call	_ZN11NeuralBrainILi83ELi100EED1Ev
	movq	%rdi, %rcx
.LEHB31:
	call	_Unwind_Resume
	nop
.LEHE31:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9663:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9663-.LLSDACSB9663
.LLSDACSB9663:
	.uleb128 .LEHB29-.LFB9663
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB30-.LFB9663
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L904-.LFB9663
	.uleb128 0
	.uleb128 .LEHB31-.LFB9663
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
.LLSDACSE9663:
	.section	.text$_ZN11NeuralBrainILi83ELi100EEC1ERKS0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorI8PlayDataSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZNSt6vectorI8PlayDataSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_
	.def	_ZNSt6vectorI8PlayDataSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI8PlayDataSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_
_ZNSt6vectorI8PlayDataSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_:
.LFB9931:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	8(%rcx), %r12
	movq	(%rcx), %rbp
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%r12, %rax
	subq	%rbp, %rax
	movq	%rax, %r15
	sarq	$4, %r15
	testq	%r15, %r15
	je	.L948
	leaq	(%r15,%r15), %rdx
	cmpq	%rdx, %r15
	jbe	.L995
.L949:
	movq	$-16, %r15
.L910:
	movq	%r15, %rcx
.LEHB32:
	call	_Znwy
.LEHE32:
	movq	8(%r14), %r12
	movq	(%r14), %rbp
	movq	%rax, %r13
	movq	%r12, %rax
	subq	%rbp, %rax
.L945:
	addq	%r13, %rax
	je	.L912
	movq	(%rbx), %rdx
	movq	$0, (%rbx)
	movq	8(%r14), %r12
	movq	(%r14), %rbp
	movq	%rdx, (%rax)
	movl	8(%rbx), %edx
	movl	$0, 8(%rbx)
	movl	%edx, 8(%rax)
	movl	12(%rbx), %edx
	movl	$0, 12(%rbx)
	movl	%edx, 12(%rax)
.L912:
	cmpq	%r12, %rbp
	je	.L913
	leaq	60(%rsp), %rax
	movq	%r13, %rsi
	movq	%rax, 40(%rsp)
	jmp	.L929
	.p2align 4,,10
.L997:
	call	_ZdlPv
	movq	16(%rbx), %rdx
	movq	8(%rbx), %rcx
	movl	$0x00000000, 60(%rsp)
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	cmpq	$99, %rax
	movq	%rax, %r10
	jbe	.L947
	cmpq	$100, %rax
	je	.L918
	addq	$400, %rcx
	movq	%rcx, 16(%rbx)
.L918:
	movq	(%rsi), %rdi
	movq	%rbx, (%rsi)
	testq	%rdi, %rdi
	je	.L925
	movq	(%rdi), %rax
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rdx
	movq	8(%rax), %rax
	cmpq	%rdx, %rax
	jne	.L922
	movq	74376(%rdi), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rdi)
	testq	%rcx, %rcx
	je	.L923
	call	_ZdlPv
.L923:
	movq	8(%rdi), %rcx
	testq	%rcx, %rcx
	je	.L924
	call	_ZdlPv
.L924:
	movq	%rdi, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
.L925:
	movl	8(%rbp), %eax
	movl	%eax, 8(%rsi)
	movl	12(%rbp), %eax
	movl	%eax, 12(%rsi)
.L914:
	addq	$16, %rbp
	addq	$16, %rsi
	cmpq	%r12, %rbp
	je	.L996
.L929:
	testq	%rsi, %rsi
	je	.L914
	movq	$0, (%rsi)
	movl	$0, 8(%rsi)
	movl	$74400, %ecx
	movl	$0, 12(%rsi)
	movq	0(%rbp), %rdi
.LEHB33:
	call	_Znwy
.LEHE33:
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB34:
	call	_ZN11NeuralBrainILi83ELi100EEC1Ev
.LEHE34:
	leaq	36(%rbx), %rcx
	leaq	36(%rdi), %rdx
	leaq	48(%rbx), %rdi
	movl	$74336, %r8d
	call	memcpy
	andq	$-8, %rdi
	movl	%ebx, %eax
	movq	$0, 40(%rbx)
	subl	%edi, %eax
	movq	$0, 764(%rbx)
	leal	772(%rax), %ecx
	xorl	%eax, %eax
	shrl	$3, %ecx
	rep stosq
	movq	$0, 16(%rbx)
	movq	$0, 24(%rbx)
	movq	8(%rbx), %rcx
	movq	$0, 8(%rbx)
	testq	%rcx, %rcx
	jne	.L997
	movl	$0x00000000, 60(%rsp)
	xorl	%edx, %edx
	xorl	%r10d, %r10d
.L947:
	movq	40(%rsp), %r9
	movl	$100, %r8d
	leaq	8(%rbx), %rcx
	subq	%r10, %r8
.LEHB35:
	call	_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEyRKf
.LEHE35:
	jmp	.L918
	.p2align 4,,10
.L922:
	movq	%rdi, %rcx
	call	*%rax
	jmp	.L925
	.p2align 4,,10
.L996:
	movq	8(%r14), %rbp
	movq	(%r14), %rdi
	addq	$16, %rsi
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %r12
	cmpq	%rdi, %rbp
	jne	.L941
	jmp	.L930
	.p2align 4,,10
.L999:
	movq	74376(%rbx), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rbx)
	testq	%rcx, %rcx
	je	.L939
	call	_ZdlPv
.L939:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L940
	call	_ZdlPv
.L940:
	movq	%rbx, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L937:
	addq	$16, %rdi
	cmpq	%rdi, %rbp
	je	.L998
.L941:
	movq	(%rdi), %rbx
	testq	%rbx, %rbx
	je	.L937
	movq	(%rbx), %rax
	movq	8(%rax), %rax
	cmpq	%r12, %rax
	je	.L999
	addq	$16, %rdi
	movq	%rbx, %rcx
	call	*%rax
	cmpq	%rdi, %rbp
	jne	.L941
.L998:
	movq	(%r14), %rbp
.L930:
	testq	%rbp, %rbp
	je	.L942
	movq	%rbp, %rcx
	call	_ZdlPv
.L942:
	movq	%r13, (%r14)
	addq	%r15, %r13
	movq	%rsi, 8(%r14)
	movq	%r13, 16(%r14)
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L948:
	movl	$16, %r15d
	jmp	.L910
.L995:
	movabsq	$1152921504606846975, %rcx
	cmpq	%rcx, %rdx
	ja	.L949
	testq	%rdx, %rdx
	jne	.L1000
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	jmp	.L945
.L913:
	leaq	16(%r13), %rsi
	jmp	.L930
.L955:
	movq	%rax, %rdi
	vzeroupper
.L920:
	movl	$74400, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L921:
	movq	(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L926
	movq	(%rcx), %rax
	call	*8(%rax)
.L926:
	movq	%rdi, %rcx
	call	__cxa_begin_catch
	cmpq	%r13, %rsi
	je	.L927
	movq	%r13, %rbx
.L933:
	movq	(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L932
	movq	(%rcx), %rax
	call	*8(%rax)
.L932:
	addq	$16, %rbx
	cmpq	%rbx, %rsi
	jne	.L933
.L927:
.LEHB36:
	call	__cxa_rethrow
.LEHE36:
.L956:
	movq	%rax, %rdi
	movq	%rbx, %rcx
	vzeroupper
	call	_ZN11NeuralBrainILi83ELi100EED1Ev
	jmp	.L920
.L953:
	movq	%rax, %rbx
	vzeroupper
	call	__cxa_end_catch
	movq	%rbx, %rcx
	call	__cxa_begin_catch
	movq	8(%r14), %rax
	subq	(%r14), %rax
	movq	0(%r13,%rax), %rcx
	testq	%rcx, %rcx
	je	.L936
	movq	(%rcx), %rax
	call	*8(%rax)
.L936:
	testq	%r13, %r13
	je	.L943
	movq	%r13, %rcx
	call	_ZdlPv
.L943:
.LEHB37:
	call	__cxa_rethrow
.LEHE37:
.L954:
	movq	%rax, %rdi
	vzeroupper
	jmp	.L921
.L1000:
	salq	$5, %r15
	jmp	.L910
.L952:
	movq	%rax, %rbx
	vzeroupper
	call	__cxa_end_catch
	movq	%rbx, %rcx
.LEHB38:
	call	_Unwind_Resume
	nop
.LEHE38:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA9931:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT9931-.LLSDATTD9931
.LLSDATTD9931:
	.byte	0x1
	.uleb128 .LLSDACSE9931-.LLSDACSB9931
.LLSDACSB9931:
	.uleb128 .LEHB32-.LFB9931
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB33-.LFB9931
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L954-.LFB9931
	.uleb128 0x3
	.uleb128 .LEHB34-.LFB9931
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L955-.LFB9931
	.uleb128 0x3
	.uleb128 .LEHB35-.LFB9931
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L956-.LFB9931
	.uleb128 0x3
	.uleb128 .LEHB36-.LFB9931
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L953-.LFB9931
	.uleb128 0x3
	.uleb128 .LEHB37-.LFB9931
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L952-.LFB9931
	.uleb128 0
	.uleb128 .LEHB38-.LFB9931
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
.LLSDACSE9931:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATT9931:
	.section	.text$_ZNSt6vectorI8PlayDataSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_,"x"
	.linkonce discard
	.seh_endproc
	.weak	_ZNSt6vectorI8PlayDataSaIS0_EE19_M_emplace_back_auxIIS0_EEEvDpOT_
	.def	_ZNSt6vectorI8PlayDataSaIS0_EE19_M_emplace_back_auxIIS0_EEEvDpOT_;	.scl	2;	.type	32;	.endef
	.set	_ZNSt6vectorI8PlayDataSaIS0_EE19_M_emplace_back_auxIIS0_EEEvDpOT_,_ZNSt6vectorI8PlayDataSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_
	.text
	.p2align 4,,15
	.globl	_Z16CreateGeneration11NeuralBrainILi83ELi100EE
	.def	_Z16CreateGeneration11NeuralBrainILi83ELi100EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z16CreateGeneration11NeuralBrainILi83ELi100EE
_Z16CreateGeneration11NeuralBrainILi83ELi100EE:
.LFB9376:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$120, %rsp
	.seh_stackalloc	120
	vmovaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	vmovaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	vmovaps	%xmm8, 96(%rsp)
	.seh_savexmm	%xmm8, 96
	.seh_endprologue
	movq	%rcx, %rdi
	movq	%rdx, %r13
	movq	$0, (%rcx)
	movq	$0, 8(%rcx)
	movq	$0, 16(%rcx)
	movl	$74400, %ecx
.LEHB39:
	call	_Znwy
.LEHE39:
	movq	%r13, %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB40:
	call	_ZN11NeuralBrainILi83ELi100EEC1ERKS0_
.LEHE40:
	movq	8(%rdi), %rax
	cmpq	16(%rdi), %rax
	movl	$0, 56(%rsp)
	movl	$0, 60(%rsp)
	movq	%rbx, 48(%rsp)
	je	.L1077
	testq	%rax, %rax
	je	.L1006
	movq	$0, (%rax)
	movq	48(%rsp), %rdx
	movl	$0, 8(%rax)
	movl	$0, 12(%rax)
	movq	%rdx, (%rax)
	movl	56(%rsp), %edx
	movl	%edx, 8(%rax)
	movl	60(%rsp), %edx
	movl	%edx, 12(%rax)
	addq	$16, 8(%rdi)
.L1007:
	xorl	%r12d, %r12d
	cmpl	$1, GenerationSize(%rip)
	jle	.L1069
	leaq	48(%rsp), %rax
	leaq	_ZN11NeuralBrainILi83ELi100EE9RandomiseEf(%rip), %r14
	vmovsd	.LC1(%rip), %xmm6
	vmovsd	.LC2(%rip), %xmm7
	movq	%rax, 40(%rsp)
	vmovsd	.LC36(%rip), %xmm8
.L1066:
	movl	$74400, %ecx
.LEHB41:
	call	_Znwy
.LEHE41:
	movq	%r13, %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB42:
	call	_ZN11NeuralBrainILi83ELi100EEC1ERKS0_
.LEHE42:
	movq	(%rsi), %rax
	leaq	772(%rsi), %r15
	leaq	74372(%rsi), %rbp
	cmpq	%r14, 24(%rax)
	jne	.L1078
	.p2align 4,,10
.L1020:
	leaq	736(%r15), %rbx
	.p2align 4,,10
.L1018:
	call	rand
	vxorpd	%xmm1, %xmm1, %xmm1
	addq	$4, %r15
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorps	%xmm2, %xmm2, %xmm2
	vcvtss2sd	-4(%r15), %xmm1, %xmm1
	vcvtsi2sd	%eax, %xmm0, %xmm0
	vfmadd132sd	%xmm6, %xmm7, %xmm0
	vfmadd132sd	%xmm8, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm2, %xmm2
	vmovss	%xmm2, -4(%r15)
	cmpq	%rbx, %r15
	jne	.L1018
	cmpq	%r15, %rbp
	jne	.L1020
.L1019:
	movq	8(%rdi), %rax
	cmpq	16(%rdi), %rax
	movl	$0, 56(%rsp)
	movl	$0, 60(%rsp)
	movq	%rsi, 48(%rsp)
	je	.L1021
	testq	%rax, %rax
	je	.L1022
	movq	$0, (%rax)
	movq	48(%rsp), %rdx
	movl	$0, 8(%rax)
	movl	$0, 12(%rax)
	movq	%rdx, (%rax)
	movl	56(%rsp), %edx
	movl	%edx, 8(%rax)
	movl	60(%rsp), %edx
	movl	%edx, 12(%rax)
	addq	$16, 8(%rdi)
.L1023:
	movl	GenerationSize(%rip), %eax
	addl	$1, %r12d
	subl	$1, %eax
	cmpl	%r12d, %eax
	jg	.L1066
.L1069:
	vmovaps	64(%rsp), %xmm6
	movq	%rdi, %rax
	vmovaps	80(%rsp), %xmm7
	vmovaps	96(%rsp), %xmm8
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1078:
	vmovss	.LC30(%rip), %xmm1
	movq	%rsi, %rcx
	call	_ZN11NeuralBrainILi83ELi100EE9RandomiseEf
	jmp	.L1019
.L1022:
	movq	$16, 8(%rdi)
.L1024:
	movq	(%rsi), %rax
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rdx
	movq	8(%rax), %rax
	cmpq	%rdx, %rax
	jne	.L1026
	movq	74376(%rsi), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rsi)
	testq	%rcx, %rcx
	je	.L1027
	call	_ZdlPv
.L1027:
	movq	8(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L1028
	call	_ZdlPv
.L1028:
	movq	%rsi, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	jmp	.L1023
.L1026:
	movq	%rsi, %rcx
	call	*%rax
	jmp	.L1023
.L1021:
	movq	40(%rsp), %rdx
	movq	%rdi, %rcx
.LEHB43:
	call	_ZNSt6vectorI8PlayDataSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_
.LEHE43:
	movq	48(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.L1024
	jmp	.L1023
.L1042:
	movq	%rax, %rbx
	movl	$74400, %edx
	movq	%rsi, %rcx
	vzeroupper
	call	_ZdlPvy
.L1005:
	movq	%rdi, %rcx
	call	_ZNSt6vectorI8PlayDataSaIS0_EED1Ev
	movq	%rbx, %rcx
.LEHB44:
	call	_Unwind_Resume
.LEHE44:
.L1040:
.L1072:
	movq	48(%rsp), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	je	.L1068
	movq	(%rcx), %rax
	vzeroupper
	call	*8(%rax)
	jmp	.L1005
.L1006:
	movq	$16, 8(%rdi)
.L1008:
	movq	(%rbx), %rax
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rdx
	movq	8(%rax), %rax
	cmpq	%rdx, %rax
	jne	.L1010
	movq	74376(%rbx), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rbx)
	testq	%rcx, %rcx
	je	.L1011
	call	_ZdlPv
.L1011:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1012
	call	_ZdlPv
.L1012:
	movq	%rbx, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	jmp	.L1007
.L1010:
	movq	%rbx, %rcx
	call	*%rax
	jmp	.L1007
.L1041:
	movq	%rax, %rsi
	movl	$74400, %edx
	movq	%rbx, %rcx
	vzeroupper
	call	_ZdlPvy
	movq	%rsi, %rbx
	jmp	.L1005
.L1038:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L1005
.L1077:
	leaq	48(%rsp), %rdx
	movq	%rdi, %rcx
.LEHB45:
	call	_ZNSt6vectorI8PlayDataSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_
.LEHE45:
	movq	48(%rsp), %rbx
	testq	%rbx, %rbx
	jne	.L1008
	jmp	.L1007
.L1068:
	vzeroupper
	jmp	.L1005
.L1039:
	jmp	.L1072
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9376:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9376-.LLSDACSB9376
.LLSDACSB9376:
	.uleb128 .LEHB39-.LFB9376
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L1038-.LFB9376
	.uleb128 0
	.uleb128 .LEHB40-.LFB9376
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L1041-.LFB9376
	.uleb128 0
	.uleb128 .LEHB41-.LFB9376
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L1038-.LFB9376
	.uleb128 0
	.uleb128 .LEHB42-.LFB9376
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L1042-.LFB9376
	.uleb128 0
	.uleb128 .LEHB43-.LFB9376
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L1040-.LFB9376
	.uleb128 0
	.uleb128 .LEHB44-.LFB9376
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB45-.LFB9376
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L1039-.LFB9376
	.uleb128 0
.LLSDACSE9376:
	.text
	.seh_endproc
	.section	.text$_ZN8PlayDataC1ERKS_,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN8PlayDataC1ERKS_
	.def	_ZN8PlayDataC1ERKS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8PlayDataC1ERKS_
_ZN8PlayDataC1ERKS_:
.LFB9369:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	$0, (%rcx)
	movq	%rcx, %rsi
	movl	$0, 8(%rcx)
	movl	$0, 12(%rcx)
	movl	$74400, %ecx
	movq	%rdx, %rbp
	movq	(%rdx), %rdi
.LEHB46:
	call	_Znwy
.LEHE46:
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB47:
	call	_ZN11NeuralBrainILi83ELi100EEC1Ev
.LEHE47:
	leaq	36(%rbx), %rcx
	leaq	36(%rdi), %rdx
	leaq	48(%rbx), %rdi
	movl	$74336, %r8d
	call	memcpy
	andq	$-8, %rdi
	movl	%ebx, %eax
	movq	$0, 40(%rbx)
	subl	%edi, %eax
	movq	$0, 764(%rbx)
	leal	772(%rax), %ecx
	xorl	%eax, %eax
	shrl	$3, %ecx
	rep stosq
	movq	$0, 16(%rbx)
	movq	$0, 24(%rbx)
	movq	8(%rbx), %rcx
	movq	$0, 8(%rbx)
	testq	%rcx, %rcx
	je	.L1080
	call	_ZdlPv
	movq	16(%rbx), %rdx
	movq	8(%rbx), %rcx
	movl	$0x00000000, 44(%rsp)
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	cmpq	$99, %rax
	movq	%rax, %r10
	jbe	.L1093
	cmpq	$100, %rax
	je	.L1083
	addq	$400, %rcx
	movq	%rcx, 16(%rbx)
.L1083:
	movq	(%rsi), %rdi
	movq	%rbx, (%rsi)
	testq	%rdi, %rdi
	je	.L1090
	movq	(%rdi), %rax
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rdx
	movq	8(%rax), %rax
	cmpq	%rdx, %rax
	jne	.L1087
	movq	74376(%rdi), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rdi)
	testq	%rcx, %rcx
	je	.L1088
	call	_ZdlPv
.L1088:
	movq	8(%rdi), %rcx
	testq	%rcx, %rcx
	je	.L1089
	call	_ZdlPv
.L1089:
	movq	%rdi, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
.L1090:
	movl	8(%rbp), %eax
	movl	%eax, 8(%rsi)
	movl	12(%rbp), %eax
	movl	%eax, 12(%rsi)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L1080:
	movl	$0x00000000, 44(%rsp)
	xorl	%r10d, %r10d
	xorl	%edx, %edx
.L1093:
	movl	$100, %r8d
	leaq	8(%rbx), %rcx
	leaq	44(%rsp), %r9
	subq	%r10, %r8
.LEHB48:
	call	_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEyRKf
.LEHE48:
	jmp	.L1083
	.p2align 4,,10
.L1087:
	movq	%rdi, %rcx
	call	*%rax
	jmp	.L1090
.L1094:
	movq	%rax, %rdi
	vzeroupper
.L1086:
	movq	(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L1091
	movq	(%rcx), %rax
	call	*8(%rax)
.L1091:
	movq	%rdi, %rcx
.LEHB49:
	call	_Unwind_Resume
.LEHE49:
.L1096:
	movq	%rax, %rdi
	movq	%rbx, %rcx
	vzeroupper
	call	_ZN11NeuralBrainILi83ELi100EED1Ev
.L1085:
	movl	$74400, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	jmp	.L1086
.L1095:
	movq	%rax, %rdi
	vzeroupper
	jmp	.L1085
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9369:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9369-.LLSDACSB9369
.LLSDACSB9369:
	.uleb128 .LEHB46-.LFB9369
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L1094-.LFB9369
	.uleb128 0
	.uleb128 .LEHB47-.LFB9369
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L1095-.LFB9369
	.uleb128 0
	.uleb128 .LEHB48-.LFB9369
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L1096-.LFB9369
	.uleb128 0
	.uleb128 .LEHB49-.LFB9369
	.uleb128 .LEHE49-.LEHB49
	.uleb128 0
	.uleb128 0
.LLSDACSE9369:
	.section	.text$_ZN8PlayDataC1ERKS_,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC38:
	.ascii "PlayTest\0"
.LC39:
	.ascii "swap pred\0"
.LC40:
	.ascii "start play\0"
.LC42:
	.ascii "./Games/Gen\0"
.LC43:
	.ascii "Frame \0"
	.text
	.p2align 4,,15
	.globl	_Z8PlayTestiP11NeuralBrainILi83ELi100EES1_
	.def	_Z8PlayTestiP11NeuralBrainILi83ELi100EES1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z8PlayTestiP11NeuralBrainILi83ELi100EES1_
_Z8PlayTestiP11NeuralBrainILi83ELi100EES1_:
.LFB9414:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$1304, %rsp
	.seh_stackalloc	1304
	vmovaps	%xmm6, 1248(%rsp)
	.seh_savexmm	%xmm6, 1248
	vmovaps	%xmm7, 1264(%rsp)
	.seh_savexmm	%xmm7, 1264
	vmovaps	%xmm8, 1280(%rsp)
	.seh_savexmm	%xmm8, 1280
	.seh_endprologue
	vxorpd	%xmm7, %xmm7, %xmm7
	vmovss	.LC37(%rip), %xmm6
	movl	%ecx, %ebp
	movq	%rdx, %rsi
	leaq	.LC38(%rip), %rdx
	vmovss	width(%rip), %xmm0
	movq	.refptr._ZSt4cout(%rip), %rcx
	vcvtss2sd	%xmm0, %xmm7, %xmm7
	vxorps	%xmm6, %xmm0, %xmm0
	vxorpd	%xmm6, %xmm6, %xmm6
	movq	%r8, %rdi
	movl	$8, %r8d
	vcvtss2sd	%xmm0, %xmm6, %xmm6
.LEHB50:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %r12
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.L1263
	cmpb	$0, 56(%rbx)
	je	.L1113
	movsbl	67(%rbx), %edx
.L1114:
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	leaq	208(%rsp), %rax
	movq	%rax, %rcx
	movq	%rax, 64(%rsp)
	call	_ZN5WorldC1Ev
.LEHE50:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	movl	$9, %r8d
.LEHB51:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.L1264
	cmpb	$0, 56(%rbx)
	je	.L1116
	movsbl	67(%rbx), %edx
.L1117:
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	216(%rsp), %rax
	subq	208(%rsp), %rax
	movl	$1, %ebx
	cmpq	$15, %rax
	jbe	.L1125
	.p2align 4,,10
.L1243:
	movl	$74400, %ecx
	call	_Znwy
.LEHE51:
	movq	%rsi, %rdx
	movq	%rax, %rcx
	movq	%rax, %r13
.LEHB52:
	call	_ZN11NeuralBrainILi83ELi100EEC1ERKS0_
.LEHE52:
	movq	208(%rsp), %rax
	movq	(%rax,%rbx,8), %rdx
	movq	144(%rdx), %rcx
	movq	%r13, 144(%rdx)
	testq	%rcx, %rcx
	je	.L1121
	movq	(%rcx), %rax
	call	*8(%rax)
	movq	208(%rsp), %rax
.L1121:
	movq	216(%rsp), %rdx
	addq	$1, %rbx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	cmpq	%rbx, %rax
	ja	.L1243
.L1125:
	movl	$74400, %ecx
.LEHB53:
	call	_Znwy
.LEHE53:
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB54:
	call	_ZN11NeuralBrainILi83ELi100EEC1Ev
.LEHE54:
	leaq	36(%rsi), %rcx
	leaq	36(%rdi), %rdx
	leaq	48(%rsi), %rdi
	movl	$74336, %r8d
	call	memcpy
	andq	$-8, %rdi
	movl	%esi, %eax
	movq	$0, 40(%rsi)
	subl	%edi, %eax
	movq	$0, 764(%rsi)
	leal	772(%rax), %ecx
	xorl	%eax, %eax
	shrl	$3, %ecx
	rep stosq
	movq	$0, 16(%rsi)
	movq	$0, 24(%rsi)
	movq	8(%rsi), %rcx
	movq	$0, 8(%rsi)
	testq	%rcx, %rcx
	je	.L1126
	call	_ZdlPv
	movq	16(%rsi), %rdx
	movq	8(%rsi), %rcx
	movl	$0x00000000, 784(%rsp)
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	cmpq	$99, %rax
	movq	%rax, %r10
	jbe	.L1208
	cmpq	$100, %rax
	je	.L1129
	addq	$400, %rcx
	movq	%rcx, 16(%rsi)
.L1129:
	movq	208(%rsp), %rbx
	movq	(%rbx), %rax
	movq	144(%rax), %rcx
	movq	%rsi, 144(%rax)
	testq	%rcx, %rcx
	je	.L1207
	movq	(%rcx), %rax
	call	*8(%rax)
	movq	208(%rsp), %rbx
.L1207:
	movq	216(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L1135
	vsubsd	%xmm6, %xmm7, %xmm7
	vmovsd	.LC41(%rip), %xmm8
	.p2align 4,,10
.L1134:
	movq	(%rbx), %rsi
	addq	$8, %rbx
	call	_ZSt18generate_canonicalIdLy53ESt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EEET_RT1_.constprop.210
	vfmadd132sd	%xmm7, %xmm6, %xmm0
	vxorps	%xmm2, %xmm2, %xmm2
	vcvtsd2ss	%xmm0, %xmm2, %xmm2
	vmovss	%xmm2, 8(%rsi)
	movq	-8(%rbx), %rsi
	call	_ZSt18generate_canonicalIdLy53ESt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EEET_RT1_.constprop.210
	vfmadd132sd	%xmm7, %xmm6, %xmm0
	vxorps	%xmm3, %xmm3, %xmm3
	vcvtsd2ss	%xmm0, %xmm3, %xmm3
	vmovss	%xmm3, 12(%rsi)
	movq	-8(%rbx), %rsi
	call	_ZSt18generate_canonicalIdLy53ESt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EEET_RT1_.constprop.210
	vmulsd	%xmm8, %xmm0, %xmm0
	cmpq	%rbx, %rdi
	vxorps	%xmm4, %xmm4, %xmm4
	vcvtsd2ss	%xmm0, %xmm4, %xmm4
	vmovss	%xmm4, 36(%rsi)
	jne	.L1134
.L1135:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	movl	$10, %r8d
.LEHB55:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.L1265
	cmpb	$0, 56(%rbx)
	je	.L1137
	movsbl	67(%rbx), %edx
.L1138:
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	leaq	144(%rsp), %rax
	leaq	.LC13(%rip), %r9
	leaq	_ZL9vsnprintfPcyPKcS_(%rip), %rdx
	movl	%ebp, 32(%rsp)
	movl	$16, %r8d
	movq	%rax, %rcx
	movq	%rax, %rsi
	movq	%rax, 88(%rsp)
	call	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_yPKS8_PcEySB_z.constprop.211
.LEHE55:
	leaq	.LC42(%rip), %r9
	movq	$11, 32(%rsp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%rsi, %rcx
.LEHB56:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
.LEHE56:
	leaq	192(%rsp), %rdx
	leaq	176(%rsp), %rsi
	movq	%rdx, 176(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	movq	%rsi, 56(%rsp)
	cmpq	%rdx, %rcx
	je	.L1266
	movq	%rcx, 176(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 192(%rsp)
.L1140:
	movq	8(%rax), %rcx
	movq	%rcx, 184(%rsp)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	%rdx, (%rax)
	movabsq	$9223372036854775807, %rax
	subq	184(%rsp), %rax
	cmpq	$3, %rax
	jbe	.L1267
	movq	56(%rsp), %rcx
	leaq	.LC23(%rip), %rdx
	movl	$4, %r8d
.LEHB57:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE57:
	leaq	784(%rsp), %r13
	leaq	16(%r13), %rdx
	movq	%rdx, 784(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L1268
	movq	%rcx, 784(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 800(%rsp)
.L1143:
	movq	8(%rax), %rcx
	leaq	320(%rsp), %rbp
	movq	%rcx, 792(%rsp)
	leaq	200(%rbp), %rcx
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	call	_ZNSt8ios_baseC2Ev
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movb	$0, 744(%rsp)
	movq	%rbp, %rcx
	movq	$0, 736(%rsp)
	movb	$0, 745(%rsp)
	xorl	%edx, %edx
	movq	$0, 752(%rsp)
	movq	$0, 760(%rsp)
	addq	$16, %rax
	movq	$0, 768(%rsp)
	movq	$0, 776(%rsp)
	movq	%rax, 520(%rsp)
	movq	.refptr._ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	8(%rax), %rbx
	movq	16(%rax), %rsi
	addq	-24(%rbx), %rcx
	movq	%rbx, 320(%rsp)
	movq	%rsi, (%rcx)
.LEHB58:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE58:
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	leaq	8(%rbp), %rcx
	addq	$24, %rax
	movq	%rax, 320(%rsp)
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	addq	$64, %rax
	movq	%rax, 520(%rsp)
.LEHB59:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE59:
	leaq	8(%rbp), %rdx
	leaq	200(%rbp), %rcx
.LEHB60:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	movq	784(%rsp), %rdx
	leaq	8(%rbp), %rcx
	movl	$48, %r8d
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	testq	%rax, %rax
	movq	%rbp, %rcx
	movq	320(%rsp), %rax
	je	.L1269
	addq	-24(%rax), %rcx
	xorl	%edx, %edx
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE60:
.L1145:
	movq	784(%rsp), %rcx
	leaq	16(%r13), %rax
	cmpq	%rax, %rcx
	je	.L1151
	call	_ZdlPv
.L1151:
	movq	56(%rsp), %rax
	movq	176(%rsp), %rcx
	addq	$16, %rax
	cmpq	%rax, %rcx
	je	.L1152
	call	_ZdlPv
.L1152:
	movq	88(%rsp), %rax
	movq	144(%rsp), %rcx
	addq	$16, %rax
	cmpq	%rax, %rcx
	je	.L1153
	call	_ZdlPv
.L1153:
	movl	MaxPlayTime(%rip), %eax
	testl	%eax, %eax
	jle	.L1154
	leaq	112(%rsp), %rax
	movq	88(%rsp), %rsi
	xorl	%r15d, %r15d
	movq	%rax, 72(%rsp)
	leaq	128(%rsp), %rax
	addq	$16, %rsi
	movq	%rax, 96(%rsp)
	movq	.refptr._ZTVSt13basic_filebufIcSt11char_traitsIcEE(%rip), %rax
	movq	%rsi, 80(%rsp)
	addq	$16, %rax
	movq	%rax, 104(%rsp)
	.p2align 4,,10
.L1184:
	leaq	.LC43(%rip), %rdx
	movl	$6, %r8d
	movq	%rbp, %rcx
.LEHB61:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	%r15d, %edx
	movq	%rbp, %rcx
	call	_ZNSolsEi
	movq	%rax, %rsi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rsi,%rax), %rbx
	testq	%rbx, %rbx
	je	.L1270
	cmpb	$0, 56(%rbx)
	je	.L1156
	movsbl	67(%rbx), %edx
.L1157:
	movq	%rsi, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	64(%rsp), %rcx
	call	_ZN5World6UpdateEv
	movq	216(%rsp), %r12
	movq	208(%rsp), %rsi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %r14
	cmpq	%rsi, %r12
	jne	.L1242
	jmp	.L1164
	.p2align 4,,10
.L1272:
	movsbl	67(%rbx), %edx
.L1162:
	movq	%rdi, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	addq	$8, %rsi
	cmpq	%rsi, %r12
	je	.L1164
.L1242:
	movq	(%rsi), %rax
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	%rbp, %rcx
	movq	160(%rax), %rdx
	vcvtss2sd	8(%rax), %xmm1, %xmm1
	vmovss	36(%rax), %xmm6
	vmovss	12(%rax), %xmm7
	movl	16(%rdx), %edi
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC14(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	%rbx, %rcx
	vcvtss2sd	%xmm7, %xmm1, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC14(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	%rbx, %rcx
	vcvtss2sd	%xmm6, %xmm1, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC14(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	%edi, %edx
	movq	%rbx, %rcx
	call	_ZNSolsEi
	movq	%rax, %rdi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rdi,%rax), %rbx
	testq	%rbx, %rbx
	je	.L1271
	cmpb	$0, 56(%rbx)
	jne	.L1272
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%r14, %rax
	je	.L1162
	movq	%rbx, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L1162
	.p2align 4,,10
.L1164:
	movq	72(%rsp), %rcx
	leaq	.LC13(%rip), %r9
	leaq	_ZL9vsnprintfPcyPKcS_(%rip), %rdx
	movl	%r15d, 32(%rsp)
	movl	$16, %r8d
	call	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_yPKS8_PcEySB_z.constprop.211
.LEHE61:
	movq	72(%rsp), %rcx
	leaq	.LC21(%rip), %r9
	movq	$13, 32(%rsp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
.LEHB62:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
.LEHE62:
	movq	80(%rsp), %rsi
	leaq	16(%rax), %rdx
	movq	%rsi, 144(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	je	.L1273
	movq	%rcx, 144(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 160(%rsp)
.L1166:
	movq	8(%rax), %rcx
	movq	%rcx, 152(%rsp)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	%rdx, (%rax)
	movabsq	$9223372036854775807, %rax
	subq	152(%rsp), %rax
	cmpq	$3, %rax
	jbe	.L1274
	movq	88(%rsp), %rcx
	leaq	.LC23(%rip), %rdx
	movl	$4, %r8d
.LEHB63:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE63:
	movq	56(%rsp), %rsi
	leaq	16(%rsi), %rdx
	movq	%rdx, 176(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L1275
	movq	%rcx, 176(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 192(%rsp)
.L1169:
	movq	8(%rax), %rcx
	movq	%rcx, 184(%rsp)
	leaq	200(%r13), %rcx
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	call	_ZNSt8ios_baseC2Ev
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movb	$0, 1208(%rsp)
	movq	%r13, %rcx
	movq	$0, 1200(%rsp)
	movb	$0, 1209(%rsp)
	xorl	%edx, %edx
	movq	$0, 1216(%rsp)
	movq	$0, 1224(%rsp)
	addq	$16, %rax
	movq	$0, 1232(%rsp)
	movq	$0, 1240(%rsp)
	movq	%rax, 984(%rsp)
	movq	.refptr._ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	8(%rax), %rbx
	movq	16(%rax), %rsi
	addq	-24(%rbx), %rcx
	movq	%rbx, 784(%rsp)
	movq	%rsi, (%rcx)
.LEHB64:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE64:
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	leaq	8(%r13), %rcx
	addq	$24, %rax
	movq	%rax, 784(%rsp)
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	addq	$64, %rax
	movq	%rax, 984(%rsp)
.LEHB65:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE65:
	leaq	8(%r13), %rdx
	leaq	200(%r13), %rcx
.LEHB66:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	movq	176(%rsp), %rdx
	leaq	8(%r13), %rcx
	movl	$48, %r8d
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	testq	%rax, %rax
	movq	%r13, %rcx
	movq	784(%rsp), %rax
	je	.L1276
	addq	-24(%rax), %rcx
	xorl	%edx, %edx
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE66:
.L1171:
	movq	56(%rsp), %rax
	movq	176(%rsp), %rcx
	addq	$16, %rax
	cmpq	%rax, %rcx
	je	.L1177
	call	_ZdlPv
.L1177:
	movq	144(%rsp), %rcx
	cmpq	80(%rsp), %rcx
	je	.L1178
	call	_ZdlPv
.L1178:
	movq	112(%rsp), %rcx
	cmpq	96(%rsp), %rcx
	je	.L1179
	call	_ZdlPv
.L1179:
	movq	208(%rsp), %rax
	movq	%r13, %rdx
	movq	8(%rax), %rax
	movq	152(%rax), %rcx
.LEHB67:
	call	_Z16OutputDataRenderP12RenderCameraRSt14basic_ofstreamIcSt11char_traitsIcEE
	leaq	8(%r13), %rcx
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	testq	%rax, %rax
	je	.L1180
.L1182:
	movq	64(%rsp), %rcx
	call	_ZN5World12CheckPredWinEv
.LEHE67:
	testb	%al, %al
	jne	.L1277
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	leaq	8(%r13), %rcx
	addl	$1, %r15d
	addq	$24, %rax
	movq	%rax, 784(%rsp)
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	addq	$64, %rax
	movq	%rax, 984(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 792(%rsp)
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	leaq	80(%r13), %rcx
	call	_ZNSt12__basic_fileIcED1Ev
	movq	.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	64(%r13), %rcx
	addq	$16, %rax
	movq	%rax, 792(%rsp)
	call	_ZNSt6localeD1Ev
	movq	-24(%rbx), %rax
	leaq	200(%r13), %rcx
	movq	%rsi, 784(%rsp,%rax)
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	addq	$16, %rax
	movq	%rax, 984(%rsp)
	call	_ZNSt8ios_baseD2Ev
	cmpl	%r15d, MaxPlayTime(%rip)
	jg	.L1184
.L1154:
	leaq	8(%rbp), %rcx
.LEHB68:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE68:
	testq	%rax, %rax
	je	.L1185
.L1188:
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	leaq	8(%rbp), %rcx
	addq	$24, %rax
	movq	%rax, 320(%rsp)
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	addq	$64, %rax
	movq	%rax, 520(%rsp)
	movq	.refptr._ZTVSt13basic_filebufIcSt11char_traitsIcEE(%rip), %rax
	addq	$16, %rax
	movq	%rax, 328(%rsp)
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	leaq	80(%rbp), %rcx
	call	_ZNSt12__basic_fileIcED1Ev
	movq	.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	64(%rbp), %rcx
	addq	$16, %rax
	movq	%rax, 328(%rsp)
	call	_ZNSt6localeD1Ev
	movq	-24(%rbx), %rax
	leaq	200(%rbp), %rcx
	movq	%rsi, 320(%rsp,%rax)
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	addq	$16, %rax
	movq	%rax, 520(%rsp)
	call	_ZNSt8ios_baseD2Ev
	movq	288(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1187
	call	_ZdlPv
.L1187:
	movq	264(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1189
	call	_ZdlPv
.L1189:
	movq	64(%rsp), %rax
	leaq	56(%rax), %rbx
	leaq	24(%rax), %rsi
	.p2align 4,,10
.L1191:
	subq	$8, %rbx
	movq	(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1190
	movl	$32, %edx
	call	_ZdlPvy
.L1190:
	cmpq	%rsi, %rbx
	jne	.L1191
	movq	216(%rsp), %rsi
	movq	208(%rsp), %rbx
	cmpq	%rbx, %rsi
	je	.L1192
	.p2align 4,,10
.L1194:
	movq	(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1193
	movq	(%rcx), %rax
	call	*8(%rax)
.L1193:
	addq	$8, %rbx
	cmpq	%rbx, %rsi
	jne	.L1194
	movq	208(%rsp), %rsi
.L1192:
	testq	%rsi, %rsi
	je	.L1258
	movq	%rsi, %rcx
	call	_ZdlPv
	nop
.L1258:
	vmovaps	1248(%rsp), %xmm6
	vmovaps	1264(%rsp), %xmm7
	vmovaps	1280(%rsp), %xmm8
	addq	$1304, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L1156:
	movq	%rbx, %rcx
.LEHB69:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L1157
	movq	%rbx, %rcx
	call	*%rax
.LEHE69:
	movsbl	%al, %edx
	jmp	.L1157
.L1180:
	movq	784(%rsp), %rax
	movq	%r13, %rcx
	addq	-24(%rax), %rcx
	movl	32(%rcx), %edx
	orl	$4, %edx
.LEHB70:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE70:
	jmp	.L1182
.L1276:
	addq	-24(%rax), %rcx
	movl	32(%rcx), %edx
	orl	$4, %edx
.LEHB71:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE71:
	jmp	.L1171
.L1275:
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, 192(%rsp)
	movq	%rbx, 200(%rsp)
	jmp	.L1169
.L1273:
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, 160(%rsp)
	movq	%rbx, 168(%rsp)
	jmp	.L1166
.L1113:
	movq	%rbx, %rcx
.LEHB72:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L1114
	movq	%rbx, %rcx
	call	*%rax
.LEHE72:
	movsbl	%al, %edx
	jmp	.L1114
.L1277:
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	leaq	8(%r13), %rcx
	addq	$24, %rax
	movq	%rax, 784(%rsp)
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	addq	$64, %rax
	movq	%rax, 984(%rsp)
	movq	.refptr._ZTVSt13basic_filebufIcSt11char_traitsIcEE(%rip), %rax
	addq	$16, %rax
	movq	%rax, 792(%rsp)
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	leaq	80(%r13), %rcx
	call	_ZNSt12__basic_fileIcED1Ev
	movq	.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	64(%r13), %rcx
	addq	$16, %rax
	movq	%rax, 792(%rsp)
	call	_ZNSt6localeD1Ev
	movq	-24(%rbx), %rax
	leaq	200(%r13), %rcx
	movq	%rsi, 784(%rsp,%rax)
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	addq	$16, %rax
	movq	%rax, 984(%rsp)
	call	_ZNSt8ios_baseD2Ev
	jmp	.L1154
.L1137:
	movq	%rbx, %rcx
.LEHB73:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L1138
	movq	%rbx, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L1138
.L1116:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L1117
	movq	%rbx, %rcx
	call	*%rax
.LEHE73:
	movsbl	%al, %edx
	jmp	.L1117
.L1126:
	movl	$0x00000000, 784(%rsp)
	xorl	%edx, %edx
	xorl	%r10d, %r10d
.L1208:
	movl	$100, %r8d
	leaq	8(%rsi), %rcx
	leaq	784(%rsp), %r9
	subq	%r10, %r8
.LEHB74:
	call	_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEyRKf
.LEHE74:
	jmp	.L1129
.L1271:
.LEHB75:
	call	_ZSt16__throw_bad_castv
.L1268:
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, 800(%rsp)
	movq	%rbx, 808(%rsp)
	jmp	.L1143
.L1266:
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, 192(%rsp)
	movq	%rbx, 200(%rsp)
	jmp	.L1140
.L1185:
	movq	320(%rsp), %rax
	movq	%rbp, %rcx
	addq	-24(%rax), %rcx
	movl	32(%rcx), %edx
	orl	$4, %edx
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE75:
	jmp	.L1188
.L1269:
	addq	-24(%rax), %rcx
	movl	32(%rcx), %edx
	orl	$4, %edx
.LEHB76:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE76:
	jmp	.L1145
.L1222:
	movq	%rax, %rbx
	vzeroupper
.L1204:
	movq	%rbp, %rcx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.L1123:
	movq	64(%rsp), %rcx
	call	_ZN5WorldD1Ev
	movq	%rbx, %rcx
.LEHB77:
	call	_Unwind_Resume
.LEHE77:
.L1267:
	leaq	.LC22(%rip), %rcx
.LEHB78:
	call	_ZSt20__throw_length_errorPKc
.LEHE78:
.L1218:
	movq	%rax, %rbx
	vzeroupper
.L1196:
	movq	56(%rsp), %rdx
	movq	176(%rsp), %rcx
	addq	$16, %rdx
	cmpq	%rdx, %rcx
	je	.L1198
	call	_ZdlPv
.L1198:
	movq	88(%rsp), %rax
	movq	144(%rsp), %rcx
	addq	$16, %rax
	cmpq	%rax, %rcx
	je	.L1123
	call	_ZdlPv
	jmp	.L1123
.L1227:
	vzeroupper
.L1147:
	movq	-24(%rbx), %rdx
	movq	%rax, %rbx
	movq	%rsi, 320(%rsp,%rdx)
.L1148:
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	leaq	200(%rbp), %rcx
	addq	$16, %r13
	addq	$16, %rax
	movq	%rax, 520(%rsp)
	call	_ZNSt8ios_baseD2Ev
	movq	784(%rsp), %rcx
	cmpq	%r13, %rcx
	je	.L1196
	call	_ZdlPv
	jmp	.L1196
.L1226:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L1148
.L1270:
.LEHB79:
	call	_ZSt16__throw_bad_castv
.LEHE79:
.L1228:
	leaq	8(%rbp), %rcx
	movq	%rax, %rdi
	vzeroupper
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
	movq	%rdi, %rax
	jmp	.L1147
.L1219:
	movq	%rax, %rbx
	vzeroupper
.L1202:
	movq	72(%rsp), %rdx
	movq	112(%rsp), %rcx
	addq	$16, %rdx
	cmpq	%rdx, %rcx
	je	.L1204
	call	_ZdlPv
	jmp	.L1204
.L1263:
.LEHB80:
	call	_ZSt16__throw_bad_castv
.LEHE80:
.L1221:
	movq	%rax, %rbx
	movq	%r13, %rcx
	vzeroupper
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	jmp	.L1204
.L1231:
	leaq	8(%r13), %rcx
	movq	%rax, %rdi
	vzeroupper
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
	movq	%rdi, %rax
.L1173:
	movq	-24(%rbx), %rdx
	movq	%rax, %rbx
	movq	%rsi, 784(%rsp,%rdx)
.L1174:
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	leaq	200(%r13), %rcx
	addq	$16, %rax
	movq	%rax, 984(%rsp)
	call	_ZNSt8ios_baseD2Ev
	movq	56(%rsp), %rax
	movq	176(%rsp), %rcx
	addq	$16, %rax
	cmpq	%rax, %rcx
	je	.L1200
	call	_ZdlPv
.L1200:
	movq	88(%rsp), %rdx
	movq	144(%rsp), %rcx
	addq	$16, %rdx
	cmpq	%rdx, %rcx
	je	.L1202
	call	_ZdlPv
	jmp	.L1202
.L1230:
	vzeroupper
	jmp	.L1173
.L1229:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L1174
.L1217:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L1198
.L1223:
	movq	%rax, %rbx
	movl	$74400, %edx
	movq	%r13, %rcx
	vzeroupper
	call	_ZdlPvy
	jmp	.L1123
.L1264:
.LEHB81:
	call	_ZSt16__throw_bad_castv
.L1216:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L1123
.L1265:
	call	_ZSt16__throw_bad_castv
.LEHE81:
.L1224:
	movq	%rax, %rbx
	vzeroupper
.L1131:
	movl	$74400, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	jmp	.L1123
.L1220:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L1200
.L1274:
	leaq	.LC22(%rip), %rcx
.LEHB82:
	call	_ZSt20__throw_length_errorPKc
.LEHE82:
.L1225:
	movq	%rax, %rbx
	movq	%rsi, %rcx
	vzeroupper
	call	_ZN11NeuralBrainILi83ELi100EED1Ev
	jmp	.L1131
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9414:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9414-.LLSDACSB9414
.LLSDACSB9414:
	.uleb128 .LEHB50-.LFB9414
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB51-.LFB9414
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L1216-.LFB9414
	.uleb128 0
	.uleb128 .LEHB52-.LFB9414
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L1223-.LFB9414
	.uleb128 0
	.uleb128 .LEHB53-.LFB9414
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L1216-.LFB9414
	.uleb128 0
	.uleb128 .LEHB54-.LFB9414
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L1224-.LFB9414
	.uleb128 0
	.uleb128 .LEHB55-.LFB9414
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L1216-.LFB9414
	.uleb128 0
	.uleb128 .LEHB56-.LFB9414
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L1217-.LFB9414
	.uleb128 0
	.uleb128 .LEHB57-.LFB9414
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L1218-.LFB9414
	.uleb128 0
	.uleb128 .LEHB58-.LFB9414
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L1226-.LFB9414
	.uleb128 0
	.uleb128 .LEHB59-.LFB9414
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L1227-.LFB9414
	.uleb128 0
	.uleb128 .LEHB60-.LFB9414
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L1228-.LFB9414
	.uleb128 0
	.uleb128 .LEHB61-.LFB9414
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L1222-.LFB9414
	.uleb128 0
	.uleb128 .LEHB62-.LFB9414
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L1219-.LFB9414
	.uleb128 0
	.uleb128 .LEHB63-.LFB9414
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L1220-.LFB9414
	.uleb128 0
	.uleb128 .LEHB64-.LFB9414
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L1229-.LFB9414
	.uleb128 0
	.uleb128 .LEHB65-.LFB9414
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L1230-.LFB9414
	.uleb128 0
	.uleb128 .LEHB66-.LFB9414
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L1231-.LFB9414
	.uleb128 0
	.uleb128 .LEHB67-.LFB9414
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L1221-.LFB9414
	.uleb128 0
	.uleb128 .LEHB68-.LFB9414
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L1222-.LFB9414
	.uleb128 0
	.uleb128 .LEHB69-.LFB9414
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L1222-.LFB9414
	.uleb128 0
	.uleb128 .LEHB70-.LFB9414
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L1221-.LFB9414
	.uleb128 0
	.uleb128 .LEHB71-.LFB9414
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L1231-.LFB9414
	.uleb128 0
	.uleb128 .LEHB72-.LFB9414
	.uleb128 .LEHE72-.LEHB72
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB73-.LFB9414
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L1216-.LFB9414
	.uleb128 0
	.uleb128 .LEHB74-.LFB9414
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L1225-.LFB9414
	.uleb128 0
	.uleb128 .LEHB75-.LFB9414
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L1222-.LFB9414
	.uleb128 0
	.uleb128 .LEHB76-.LFB9414
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L1228-.LFB9414
	.uleb128 0
	.uleb128 .LEHB77-.LFB9414
	.uleb128 .LEHE77-.LEHB77
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB78-.LFB9414
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L1218-.LFB9414
	.uleb128 0
	.uleb128 .LEHB79-.LFB9414
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L1222-.LFB9414
	.uleb128 0
	.uleb128 .LEHB80-.LFB9414
	.uleb128 .LEHE80-.LEHB80
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB81-.LFB9414
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L1216-.LFB9414
	.uleb128 0
	.uleb128 .LEHB82-.LFB9414
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L1220-.LFB9414
	.uleb128 0
.LLSDACSE9414:
	.text
	.seh_endproc
	.p2align 4,,15
	.def	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8PlayDataSt6vectorIS2_SaIS2_EEEExS2_NS0_5__ops15_Iter_comp_iterIZ16CreateGenerationS6_EUlRKS2_SB_E_EEEvT_T0_SF_T1_T2_.isra.197;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8PlayDataSt6vectorIS2_SaIS2_EEEExS2_NS0_5__ops15_Iter_comp_iterIZ16CreateGenerationS6_EUlRKS2_SB_E_EEEvT_T0_SF_T1_T2_.isra.197
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8PlayDataSt6vectorIS2_SaIS2_EEEExS2_NS0_5__ops15_Iter_comp_iterIZ16CreateGenerationS6_EUlRKS2_SB_E_EEEvT_T0_SF_T1_T2_.isra.197:
.LFB10915:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	%r8, %rax
	movq	%rcx, %r15
	movq	%rdx, 152(%rsp)
	subq	$1, %rax
	movq	%r8, 160(%rsp)
	movq	%r9, %r14
	movq	%rax, %r12
	shrq	$63, %r12
	addq	%r12, %rax
	sarq	%rax
	cmpq	%rax, %rdx
	movq	%rax, %r12
	jl	.L1390
	jmp	.L1398
	.p2align 4,,10
.L1399:
	movq	74376(%r13), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, 0(%r13)
	testq	%rcx, %rcx
	je	.L1286
	call	_ZdlPv
.L1286:
	movq	8(%r13), %rcx
	testq	%rcx, %rcx
	je	.L1287
	call	_ZdlPv
.L1287:
	movq	%r13, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%r13, %rcx
	call	_ZdlPvy
.L1283:
	movl	8(%rbx), %eax
	cmpq	%r12, %rsi
	movl	%eax, 8(%rdi)
	movl	12(%rbx), %eax
	movl	%eax, 12(%rdi)
	jge	.L1280
	movq	%rsi, %rdx
.L1390:
	leaq	1(%rdx), %rax
	leaq	(%rax,%rax), %rcx
	salq	$5, %rax
	addq	%r15, %rax
	leaq	-1(%rcx), %rsi
	movq	%rsi, %rbx
	salq	$4, %rbx
	addq	%r15, %rbx
	movl	8(%rbx), %edi
	cmpl	%edi, 8(%rax)
	jg	.L1281
	movq	%rax, %rbx
	movq	%rcx, %rsi
.L1281:
	movq	(%rbx), %r13
	salq	$4, %rdx
	movl	$74400, %ecx
	leaq	(%r15,%rdx), %rdi
.LEHB83:
	call	_Znwy
.LEHE83:
	movq	%r13, %rdx
	movq	%rax, %rcx
	movq	%rax, %rbp
.LEHB84:
	call	_ZN11NeuralBrainILi83ELi100EEC1ERKS0_
.LEHE84:
	movq	(%rdi), %r13
	movq	%rbp, (%rdi)
	testq	%r13, %r13
	je	.L1283
	movq	0(%r13), %rdx
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rax
	movq	8(%rdx), %rdx
	cmpq	%rax, %rdx
	je	.L1399
	movq	%r13, %rcx
	call	*%rdx
	jmp	.L1283
.L1398:
	movl	$4, %eax
	movq	%rdx, %rsi
	shlx	%rax, %rdx, %rbx
	addq	%rcx, %rbx
	.p2align 4,,10
.L1280:
	testb	$1, 160(%rsp)
	jne	.L1289
	movq	160(%rsp), %rax
	leaq	-2(%rax), %r13
	movq	%r13, %rax
	shrq	$63, %rax
	addq	%rax, %r13
	movq	%r13, %rax
	sarq	%rax
	cmpq	%rsi, %rax
	je	.L1400
.L1289:
	movl	8(%r14), %eax
	cmpq	152(%rsp), %rsi
	movq	(%r14), %rbp
	movl	$0, 8(%r14)
	movq	$0, (%r14)
	movl	%eax, %edi
	movl	%eax, 40(%rsp)
	movl	12(%r14), %eax
	movl	$0, 12(%r14)
	movl	%eax, 44(%rsp)
	jle	.L1300
	leaq	-1(%rsi), %rax
	movq	%rax, %r12
	shrq	$63, %r12
	addq	%r12, %rax
	sarq	%rax
	movq	%rax, %r12
	salq	$4, %rax
	cmpl	8(%r15,%rax), %edi
	jge	.L1300
	leaq	60(%rsp), %rax
	xorl	%r14d, %r14d
	movq	%rax, 32(%rsp)
	.p2align 4,,10
.L1302:
	movq	%r12, %rbx
	salq	$4, %rsi
	movl	$74400, %ecx
	salq	$4, %rbx
	leaq	(%r15,%rsi), %r13
	addq	%r15, %rbx
	movq	(%rbx), %rdi
.LEHB85:
	call	_Znwy
.LEHE85:
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB86:
	call	_ZN11NeuralBrainILi83ELi100EEC1Ev
.LEHE86:
	leaq	36(%rsi), %rcx
	leaq	36(%rdi), %rdx
	leaq	48(%rsi), %rdi
	movl	$74336, %r8d
	call	memcpy
	andq	$-8, %rdi
	movl	%esi, %eax
	movq	$0, 40(%rsi)
	subl	%edi, %eax
	movq	$0, 764(%rsi)
	leal	772(%rax), %ecx
	movq	%r14, %rax
	shrl	$3, %ecx
	rep stosq
	movq	$0, 16(%rsi)
	movq	$0, 24(%rsi)
	movq	8(%rsi), %rcx
	movq	$0, 8(%rsi)
	testq	%rcx, %rcx
	je	.L1303
	call	_ZdlPv
	movq	16(%rsi), %rdx
	movq	8(%rsi), %rcx
	movl	$0x00000000, 60(%rsp)
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	cmpq	$99, %rax
	movq	%rax, %r10
	jbe	.L1336
	cmpq	$100, %rax
	je	.L1306
	addq	$400, %rcx
	movq	%rcx, 16(%rsi)
.L1306:
	movq	0(%r13), %rdi
	movq	%rsi, 0(%r13)
	testq	%rdi, %rdi
	je	.L1313
	movq	(%rdi), %rax
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rdx
	movq	8(%rax), %rax
	cmpq	%rdx, %rax
	jne	.L1310
	movq	74376(%rdi), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rdi)
	testq	%rcx, %rcx
	je	.L1311
	call	_ZdlPv
.L1311:
	movq	8(%rdi), %rcx
	testq	%rcx, %rcx
	je	.L1312
	call	_ZdlPv
.L1312:
	movq	%rdi, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
.L1313:
	movl	8(%rbx), %eax
	cmpq	%r12, 152(%rsp)
	movl	%eax, 8(%r13)
	movl	12(%rbx), %eax
	movl	%eax, 12(%r13)
	jge	.L1300
	leaq	-1(%r12), %rax
	movl	40(%rsp), %edi
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, %rdx
	salq	$4, %rdx
	cmpl	8(%r15,%rdx), %edi
	jge	.L1300
	movq	%r12, %rsi
	movq	%rax, %r12
	jmp	.L1302
	.p2align 4,,10
.L1300:
	movl	$74400, %ecx
.LEHB87:
	call	_Znwy
.LEHE87:
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB88:
	call	_ZN11NeuralBrainILi83ELi100EEC1Ev
.LEHE88:
	leaq	36(%rsi), %rcx
	leaq	36(%rbp), %rdx
	leaq	48(%rsi), %rdi
	movl	$74336, %r8d
	call	memcpy
	andq	$-8, %rdi
	movl	%esi, %eax
	movq	$0, 40(%rsi)
	subl	%edi, %eax
	movq	$0, 764(%rsi)
	leal	772(%rax), %ecx
	xorl	%eax, %eax
	shrl	$3, %ecx
	rep stosq
	movq	$0, 16(%rsi)
	movq	$0, 24(%rsi)
	movq	8(%rsi), %rcx
	movq	$0, 8(%rsi)
	testq	%rcx, %rcx
	je	.L1315
	call	_ZdlPv
	movq	16(%rsi), %rdx
	movq	8(%rsi), %rcx
	movl	$0x00000000, 60(%rsp)
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	cmpq	$99, %rax
	movq	%rax, %r10
	jbe	.L1337
	cmpq	$100, %rax
	je	.L1318
	addq	$400, %rcx
	movq	%rcx, 16(%rsi)
.L1318:
	movq	(%rbx), %r12
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rdi
	movq	%rsi, (%rbx)
	testq	%r12, %r12
	je	.L1324
	movq	(%r12), %rax
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rdi
	movq	8(%rax), %rax
	cmpq	%rdi, %rax
	jne	.L1321
	movq	74376(%r12), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%r12)
	testq	%rcx, %rcx
	je	.L1322
	call	_ZdlPv
.L1322:
	movq	8(%r12), %rcx
	testq	%rcx, %rcx
	je	.L1323
	call	_ZdlPv
.L1323:
	movq	%r12, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%r12, %rcx
	call	_ZdlPvy
.L1324:
	movl	40(%rsp), %eax
	movl	%eax, 8(%rbx)
	movl	44(%rsp), %eax
	movl	%eax, 12(%rbx)
	movq	0(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rdi, %rax
	jne	.L1325
	movq	74376(%rbp), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, 0(%rbp)
	testq	%rcx, %rcx
	je	.L1326
	call	_ZdlPv
.L1326:
	movq	8(%rbp), %rcx
	testq	%rcx, %rcx
	je	.L1327
	call	_ZdlPv
.L1327:
	movq	%rbp, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rbp, %rcx
	call	_ZdlPvy
	nop
.L1393:
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L1303:
	movl	$0x00000000, 60(%rsp)
	xorl	%edx, %edx
	xorl	%r10d, %r10d
.L1336:
	movq	32(%rsp), %r9
	movl	$100, %r8d
	leaq	8(%rsi), %rcx
	subq	%r10, %r8
.LEHB89:
	call	_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEyRKf
.LEHE89:
	jmp	.L1306
	.p2align 4,,10
.L1310:
	movq	%rdi, %rcx
	call	*%rax
	jmp	.L1313
	.p2align 4,,10
.L1315:
	movl	$0x00000000, 60(%rsp)
	xorl	%r10d, %r10d
	xorl	%edx, %edx
.L1337:
	movl	$100, %r8d
	leaq	8(%rsi), %rcx
	leaq	60(%rsp), %r9
	subq	%r10, %r8
.LEHB90:
	call	_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEyRKf
.LEHE90:
	jmp	.L1318
.L1400:
	leaq	1(%rsi,%rsi), %rsi
	movl	$74400, %ecx
	movq	%rsi, %r12
	salq	$4, %r12
	addq	%r15, %r12
	movq	(%r12), %rdi
.LEHB91:
	call	_Znwy
.LEHE91:
	movq	%rax, %rcx
	movq	%rax, %rbp
.LEHB92:
	call	_ZN11NeuralBrainILi83ELi100EEC1Ev
.LEHE92:
	leaq	36(%rbp), %rcx
	leaq	36(%rdi), %rdx
	leaq	48(%rbp), %rdi
	movl	$74336, %r8d
	call	memcpy
	andq	$-8, %rdi
	movl	%ebp, %eax
	movq	$0, 40(%rbp)
	subl	%edi, %eax
	movq	$0, 764(%rbp)
	leal	772(%rax), %ecx
	xorl	%eax, %eax
	shrl	$3, %ecx
	rep stosq
	movq	$0, 16(%rbp)
	movq	$0, 24(%rbp)
	movq	8(%rbp), %rcx
	movq	$0, 8(%rbp)
	testq	%rcx, %rcx
	je	.L1290
	call	_ZdlPv
	movq	16(%rbp), %rdx
	movq	8(%rbp), %rcx
	movl	$0x00000000, 60(%rsp)
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	cmpq	$99, %rax
	movq	%rax, %r10
	jbe	.L1335
	cmpq	$100, %rax
	je	.L1293
	addq	$400, %rcx
	movq	%rcx, 16(%rbp)
.L1293:
	movq	(%rbx), %r13
	movq	%rbp, (%rbx)
	testq	%r13, %r13
	je	.L1299
	movq	0(%r13), %rax
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rdi
	movq	8(%rax), %rax
	cmpq	%rdi, %rax
	jne	.L1296
	movq	74376(%r13), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, 0(%r13)
	testq	%rcx, %rcx
	je	.L1297
	call	_ZdlPv
.L1297:
	movq	8(%r13), %rcx
	testq	%rcx, %rcx
	je	.L1298
	call	_ZdlPv
.L1298:
	movq	%r13, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%r13, %rcx
	call	_ZdlPvy
.L1299:
	movl	8(%r12), %eax
	movl	%eax, 8(%rbx)
	movl	12(%r12), %eax
	movl	%eax, 12(%rbx)
	movq	%r12, %rbx
	jmp	.L1289
.L1321:
	movq	%r12, %rcx
	call	*%rax
	jmp	.L1324
	.p2align 4,,10
.L1325:
	movq	%rbp, %rcx
	call	*%rax
	jmp	.L1393
.L1347:
.L1395:
	movq	%rax, %rbx
	movq	%rsi, %rcx
	vzeroupper
	call	_ZN11NeuralBrainILi83ELi100EED1Ev
.L1320:
	movl	$74400, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
.L1309:
	testq	%rbp, %rbp
	je	.L1329
	movq	0(%rbp), %rax
	movq	%rbp, %rcx
	call	*8(%rax)
.L1329:
	movq	%rbx, %rcx
.LEHB93:
	call	_Unwind_Resume
.LEHE93:
.L1345:
	jmp	.L1395
.L1290:
	movl	$0x00000000, 60(%rsp)
	xorl	%r10d, %r10d
	xorl	%edx, %edx
.L1335:
	movl	$100, %r8d
	leaq	8(%rbp), %rcx
	leaq	60(%rsp), %r9
	subq	%r10, %r8
.LEHB94:
	call	_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEyRKf
.LEHE94:
	jmp	.L1293
.L1343:
	movq	%rax, %rbx
	movq	%rbp, %rcx
	vzeroupper
	call	_ZN11NeuralBrainILi83ELi100EED1Ev
.L1295:
	movq	%rbp, %rcx
	movl	$74400, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB95:
	call	_Unwind_Resume
.L1342:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L1295
.L1344:
.L1394:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L1320
.L1296:
	movq	%r13, %rcx
	call	*%rax
	jmp	.L1299
.L1341:
	movq	%rax, %rbx
	movl	$74400, %edx
	movq	%rbp, %rcx
	vzeroupper
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
.LEHE95:
.L1340:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L1309
.L1346:
	jmp	.L1394
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA10915:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10915-.LLSDACSB10915
.LLSDACSB10915:
	.uleb128 .LEHB83-.LFB10915
	.uleb128 .LEHE83-.LEHB83
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB84-.LFB10915
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L1341-.LFB10915
	.uleb128 0
	.uleb128 .LEHB85-.LFB10915
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L1340-.LFB10915
	.uleb128 0
	.uleb128 .LEHB86-.LFB10915
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L1344-.LFB10915
	.uleb128 0
	.uleb128 .LEHB87-.LFB10915
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L1340-.LFB10915
	.uleb128 0
	.uleb128 .LEHB88-.LFB10915
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L1346-.LFB10915
	.uleb128 0
	.uleb128 .LEHB89-.LFB10915
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L1345-.LFB10915
	.uleb128 0
	.uleb128 .LEHB90-.LFB10915
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L1347-.LFB10915
	.uleb128 0
	.uleb128 .LEHB91-.LFB10915
	.uleb128 .LEHE91-.LEHB91
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB92-.LFB10915
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L1342-.LFB10915
	.uleb128 0
	.uleb128 .LEHB93-.LFB10915
	.uleb128 .LEHE93-.LEHB93
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB94-.LFB10915
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L1343-.LFB10915
	.uleb128 0
	.uleb128 .LEHB95-.LFB10915
	.uleb128 .LEHE95-.LEHB95
	.uleb128 0
	.uleb128 0
.LLSDACSE10915:
	.text
	.seh_endproc
	.p2align 4,,15
	.globl	_Z16CreateGenerationSt6vectorI8PlayDataSaIS0_EE
	.def	_Z16CreateGenerationSt6vectorI8PlayDataSaIS0_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z16CreateGenerationSt6vectorI8PlayDataSaIS0_EE
_Z16CreateGenerationSt6vectorI8PlayDataSaIS0_EE:
.LFB9380:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
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
	vmovaps	%xmm6, 96(%rsp)
	.seh_savexmm	%xmm6, 96
	vmovaps	%xmm7, 112(%rsp)
	.seh_savexmm	%xmm7, 112
	.seh_endprologue
	movq	%rdx, %r13
	movq	(%rdx), %r14
	movq	8(%rdx), %rax
	movq	%rcx, 208(%rsp)
	movq	%rax, 56(%rsp)
	subq	%r14, %rax
	sarq	$4, %rax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cltq
	salq	$4, %rax
	leaq	(%r14,%rax), %rdx
	movq	%rax, 40(%rsp)
	sarq	$4, %rax
	cmpq	$1, %rax
	movq	%rax, %r12
	movq	%rdx, 48(%rsp)
	jle	.L1409
	leaq	-2(%rax), %rsi
	leaq	80(%rsp), %rbp
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rdi
	sarq	%rsi
	movq	%rsi, %rbx
	salq	$4, %rbx
	addq	%r14, %rbx
.L1410:
	movq	(%rbx), %rcx
	movl	8(%rbx), %edx
	movq	%rbp, %r9
	movl	12(%rbx), %eax
	movq	$0, (%rbx)
	movq	%r12, %r8
	movl	$0, 8(%rbx)
	movl	$0, 12(%rbx)
	movq	%rcx, 80(%rsp)
	movl	%edx, 88(%rsp)
	movq	%r14, %rcx
	movq	%rsi, %rdx
	movl	%eax, 92(%rsp)
.LEHB96:
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8PlayDataSt6vectorIS2_SaIS2_EEEExS2_NS0_5__ops15_Iter_comp_iterIZ16CreateGenerationS6_EUlRKS2_SB_E_EEEvT_T0_SF_T1_T2_.isra.197
.LEHE96:
	movq	80(%rsp), %r15
	testq	%r15, %r15
	je	.L1405
	movq	(%r15), %rax
	movq	8(%rax), %rax
	cmpq	%rdi, %rax
	jne	.L1406
	movq	74376(%r15), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%r15)
	testq	%rcx, %rcx
	je	.L1407
	call	_ZdlPv
.L1407:
	movq	8(%r15), %rcx
	testq	%rcx, %rcx
	je	.L1408
	call	_ZdlPv
.L1408:
	movq	%r15, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%r15, %rcx
	call	_ZdlPvy
.L1405:
	subq	$16, %rbx
	testq	%rsi, %rsi
	je	.L1409
.L1580:
	subq	$1, %rsi
	jmp	.L1410
.L1406:
	movq	%r15, %rcx
	subq	$16, %rbx
	call	*%rax
	testq	%rsi, %rsi
	jne	.L1580
.L1409:
	movq	48(%rsp), %rax
	movq	56(%rsp), %rdx
	cmpq	%rdx, %rax
	movq	%rax, %rsi
	movq	%rax, %rbx
	jnb	.L1404
	leaq	80(%rsp), %rax
	movq	%rax, 64(%rsp)
.L1534:
	movl	8(%rsi), %r15d
	cmpl	8(%r14), %r15d
	jg	.L1581
.L1415:
	addq	$16, %rsi
	cmpq	%rsi, 56(%rsp)
	ja	.L1534
	movq	48(%rsp), %rbx
.L1404:
	subq	$16, %rbx
	cmpq	$31, 40(%rsp)
	leaq	80(%rsp), %rax
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rbp
	movq	%rax, 56(%rsp)
	jle	.L1582
.L1533:
	movl	8(%rbx), %eax
	movq	(%rbx), %rsi
	movl	$74400, %ecx
	movq	$0, (%rbx)
	movl	12(%rbx), %r12d
	movl	$0, 8(%rbx)
	movl	$0, 12(%rbx)
	movl	%eax, 48(%rsp)
	movq	(%r14), %r15
.LEHB97:
	call	_Znwy
.LEHE97:
	movq	%r15, %rdx
	movq	%rax, %rcx
	movq	%rax, %rdi
.LEHB98:
	call	_ZN11NeuralBrainILi83ELi100EEC1ERKS0_
.LEHE98:
	movq	(%rbx), %r15
	movq	%rdi, (%rbx)
	testq	%r15, %r15
	je	.L1436
	movq	(%r15), %rax
	movq	8(%rax), %rax
	cmpq	%rbp, %rax
	jne	.L1439
	movq	74376(%r15), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%r15)
	testq	%rcx, %rcx
	je	.L1440
	call	_ZdlPv
.L1440:
	movq	8(%r15), %rcx
	testq	%rcx, %rcx
	je	.L1441
	call	_ZdlPv
.L1441:
	movq	%r15, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%r15, %rcx
	call	_ZdlPvy
.L1436:
	movl	8(%r14), %eax
	movq	56(%rsp), %r9
	xorl	%edx, %edx
	movq	%r14, %rcx
	movl	%eax, 8(%rbx)
	movl	12(%r14), %eax
	movl	%eax, 12(%rbx)
	movq	%rsi, 80(%rsp)
	movq	%rbx, %rsi
	movl	48(%rsp), %eax
	subq	%r14, %rsi
	movl	%r12d, 92(%rsp)
	movq	%rsi, %r8
	sarq	$4, %r8
	movl	%eax, 88(%rsp)
.LEHB99:
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8PlayDataSt6vectorIS2_SaIS2_EEEExS2_NS0_5__ops15_Iter_comp_iterIZ16CreateGenerationS6_EUlRKS2_SB_E_EEEvT_T0_SF_T1_T2_.isra.197
.LEHE99:
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L1442
	movq	(%rdi), %rax
	movq	8(%rax), %rax
	cmpq	%rbp, %rax
	jne	.L1443
	movq	74376(%rdi), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rdi)
	testq	%rcx, %rcx
	je	.L1444
	call	_ZdlPv
.L1444:
	movq	8(%rdi), %rcx
	testq	%rcx, %rcx
	je	.L1445
	call	_ZdlPv
.L1445:
	movq	%rdi, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
.L1442:
	subq	$16, %rbx
	cmpq	$31, %rsi
	jg	.L1533
	movq	0(%r13), %rbp
.L1451:
	movq	40(%rsp), %rax
	leaq	_ZN11NeuralBrainILi83ELi100EE9RandomiseEf(%rip), %r15
	vmovsd	.LC1(%rip), %xmm7
	vmovsd	.LC2(%rip), %xmm6
	leaq	0(%rbp,%rax), %r12
.L1468:
	movq	0(%rbp), %rbx
	movl	$74400, %ecx
.LEHB100:
	call	_Znwy
.LEHE100:
	movq	%rax, %rcx
	movq	%rax, %rsi
	movq	%rbx, %rdx
.LEHB101:
	call	_ZN11NeuralBrainILi83ELi100EEC1ERKS0_
.LEHE101:
	movq	(%rsi), %rax
	leaq	772(%rsi), %r14
	leaq	74372(%rsi), %rdi
	cmpq	%r15, 24(%rax)
	jne	.L1583
	.p2align 4,,10
.L1457:
	leaq	736(%r14), %rbx
	.p2align 4,,10
.L1455:
	call	rand
	vxorpd	%xmm1, %xmm1, %xmm1
	addq	$4, %r14
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorps	%xmm2, %xmm2, %xmm2
	vcvtss2sd	-4(%r14), %xmm1, %xmm1
	vcvtsi2sd	%eax, %xmm0, %xmm0
	vfmadd132sd	%xmm7, %xmm6, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm2, %xmm2
	vmovss	%xmm2, -4(%r14)
	cmpq	%r14, %rbx
	jne	.L1455
	cmpq	%r14, %rdi
	jne	.L1457
.L1456:
	movl	$74400, %ecx
.LEHB102:
	call	_Znwy
.LEHE102:
	movq	%rsi, %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB103:
	call	_ZN11NeuralBrainILi83ELi100EEC1ERKS0_
.LEHE103:
	movq	(%r12), %rdi
	movq	%rbx, (%r12)
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rbx
	testq	%rdi, %rdi
	je	.L1459
	movq	(%rdi), %rax
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rbx
	movq	8(%rax), %rax
	cmpq	%rbx, %rax
	jne	.L1462
	movq	74376(%rdi), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rdi)
	testq	%rcx, %rcx
	je	.L1463
	call	_ZdlPv
.L1463:
	movq	8(%rdi), %rcx
	testq	%rcx, %rcx
	je	.L1464
	call	_ZdlPv
.L1464:
	movq	%rdi, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
.L1459:
	movq	(%rsi), %rax
	movl	$0, 8(%r12)
	movl	$0, 12(%r12)
	movq	8(%rax), %rax
	cmpq	%rbx, %rax
	jne	.L1584
	movq	74376(%rsi), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rsi)
	testq	%rcx, %rcx
	je	.L1465
	call	_ZdlPv
.L1465:
	movq	8(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L1466
	call	_ZdlPv
.L1466:
	movq	%rsi, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
.L1467:
	movq	40(%rsp), %rax
	addq	0(%r13), %rax
	addq	$16, %rbp
	addq	$16, %r12
	cmpq	%rax, %rbp
	jne	.L1468
.L1469:
	movq	208(%rsp), %rax
	movq	208(%rsp), %rdx
	movq	208(%rsp), %rdi
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	0(%r13), %rax
	movq	%rax, (%rdx)
	movq	$0, 0(%r13)
	movq	8(%rdx), %rax
	movq	8(%r13), %rdx
	movq	%rdx, 8(%rdi)
	movq	16(%r13), %rdx
	movq	%rax, 8(%r13)
	movq	16(%rdi), %rax
	movq	%rdx, 16(%rdi)
	vmovaps	96(%rsp), %xmm6
	movq	%rax, 16(%r13)
	movq	%rdi, %rax
	vmovaps	112(%rsp), %xmm7
	addq	$136, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1475:
.L1574:
	movq	80(%rsp), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	je	.L1570
	movq	(%rcx), %rax
	vzeroupper
	call	*8(%rax)
.L1571:
	movq	%rbx, %rcx
.LEHB104:
	call	_Unwind_Resume
.L1570:
	vzeroupper
	jmp	.L1571
.L1443:
	movq	%rdi, %rcx
	call	*%rax
	jmp	.L1442
.L1584:
	movq	%rsi, %rcx
	call	*%rax
	jmp	.L1467
.L1484:
	movq	%rax, %rdi
	movl	$74400, %edx
	movq	%rbx, %rcx
	vzeroupper
	movq	%rdi, %rbx
	call	_ZdlPvy
.L1461:
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	call	*8(%rax)
	jmp	.L1571
.L1474:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L1461
.L1462:
	movq	%rdi, %rcx
	call	*%rax
	jmp	.L1459
.L1583:
	vmovss	.LC15(%rip), %xmm1
	movq	%rsi, %rcx
	call	_ZN11NeuralBrainILi83ELi100EE9RandomiseEf
	jmp	.L1456
.L1483:
	movq	%rax, %rbx
	movl	$74400, %edx
	movq	%rsi, %rcx
	vzeroupper
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
.LEHE104:
.L1481:
	jmp	.L1574
.L1439:
	movq	%r15, %rcx
	call	*%rax
	jmp	.L1436
.L1482:
	movq	%rax, %rbx
	movl	$74400, %edx
	movq	%rdi, %rcx
	vzeroupper
	call	_ZdlPvy
.L1438:
	testq	%rsi, %rsi
	jne	.L1461
	jmp	.L1571
.L1480:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L1438
.L1582:
	cmpq	$0, 40(%rsp)
	movq	0(%r13), %rbp
	jne	.L1451
	jmp	.L1469
.L1581:
	movl	12(%rsi), %eax
	movq	(%rsi), %rbp
	movl	$74400, %ecx
	movq	$0, (%rsi)
	movl	$0, 8(%rsi)
	movl	$0, 12(%rsi)
	movq	(%r14), %rdi
	movl	%eax, 76(%rsp)
.LEHB105:
	call	_Znwy
.LEHE105:
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB106:
	call	_ZN11NeuralBrainILi83ELi100EEC1Ev
.LEHE106:
	leaq	36(%rbx), %rcx
	leaq	36(%rdi), %rdx
	leaq	48(%rbx), %rdi
	movl	$74336, %r8d
	call	memcpy
	andq	$-8, %rdi
	movl	%ebx, %eax
	movq	$0, 40(%rbx)
	subl	%edi, %eax
	movq	$0, 764(%rbx)
	leal	772(%rax), %ecx
	xorl	%eax, %eax
	shrl	$3, %ecx
	rep stosq
	leaq	8(%rbx), %rdi
	movq	$0, 16(%rbx)
	movq	$0, 24(%rbx)
	movq	8(%rbx), %rcx
	movq	$0, 8(%rbx)
	testq	%rcx, %rcx
	je	.L1416
	call	_ZdlPv
	movq	16(%rbx), %rdx
	movq	8(%rbx), %rcx
	movl	$0x00000000, 80(%rsp)
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	cmpq	$99, %rax
	movq	%rax, %r10
	jbe	.L1473
	cmpq	$100, %rax
	je	.L1419
	addq	$400, %rcx
	movq	%rcx, 16(%rbx)
.L1419:
	movq	(%rsi), %rdi
	movq	%rbx, (%rsi)
	testq	%rdi, %rdi
	je	.L1426
	movq	(%rdi), %rax
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rdx
	movq	8(%rax), %rax
	cmpq	%rdx, %rax
	jne	.L1423
	movq	74376(%rdi), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rdi)
	testq	%rcx, %rcx
	je	.L1424
	call	_ZdlPv
.L1424:
	movq	8(%rdi), %rcx
	testq	%rcx, %rcx
	je	.L1425
	call	_ZdlPv
.L1425:
	movq	%rdi, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
.L1426:
	movl	8(%r14), %eax
	movq	64(%rsp), %r9
	movq	%r12, %r8
	xorl	%edx, %edx
	movq	%r14, %rcx
	movl	%eax, 8(%rsi)
	movl	12(%r14), %eax
	movl	%eax, 12(%rsi)
	movl	76(%rsp), %eax
	movq	%rbp, 80(%rsp)
	movl	%r15d, 88(%rsp)
	movl	%eax, 92(%rsp)
.LEHB107:
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8PlayDataSt6vectorIS2_SaIS2_EEEExS2_NS0_5__ops15_Iter_comp_iterIZ16CreateGenerationS6_EUlRKS2_SB_E_EEEvT_T0_SF_T1_T2_.isra.197
.LEHE107:
	movq	80(%rsp), %rbx
	testq	%rbx, %rbx
	je	.L1415
	movq	(%rbx), %rax
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rdx
	movq	8(%rax), %rax
	cmpq	%rdx, %rax
	jne	.L1428
	movq	74376(%rbx), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rbx)
	testq	%rcx, %rcx
	je	.L1429
	call	_ZdlPv
.L1429:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1430
	call	_ZdlPv
.L1430:
	movq	%rbx, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	jmp	.L1415
.L1428:
	movq	%rbx, %rcx
	call	*%rax
	jmp	.L1415
.L1477:
	jmp	.L1574
.L1423:
	movq	%rdi, %rcx
	call	*%rax
	jmp	.L1426
.L1416:
	movl	$0x00000000, 80(%rsp)
	xorl	%r10d, %r10d
	xorl	%edx, %edx
.L1473:
	movq	64(%rsp), %r9
	movl	$100, %r8d
	movq	%rdi, %rcx
	subq	%r10, %r8
.LEHB108:
	call	_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEyRKf
.LEHE108:
	jmp	.L1419
.L1479:
	movq	%rax, %rsi
	movq	%rbx, %rcx
	vzeroupper
	call	_ZN11NeuralBrainILi83ELi100EED1Ev
.L1421:
	movl	$74400, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L1422:
	testq	%rbp, %rbp
	je	.L1433
	movq	0(%rbp), %rax
	movq	%rbp, %rcx
	call	*8(%rax)
.L1433:
	movq	%rsi, %rcx
.LEHB109:
	call	_Unwind_Resume
.LEHE109:
.L1478:
	movq	%rax, %rsi
	vzeroupper
	jmp	.L1421
.L1476:
	movq	%rax, %rsi
	vzeroupper
	jmp	.L1422
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA9380:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9380-.LLSDACSB9380
.LLSDACSB9380:
	.uleb128 .LEHB96-.LFB9380
	.uleb128 .LEHE96-.LEHB96
	.uleb128 .L1475-.LFB9380
	.uleb128 0
	.uleb128 .LEHB97-.LFB9380
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L1480-.LFB9380
	.uleb128 0
	.uleb128 .LEHB98-.LFB9380
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L1482-.LFB9380
	.uleb128 0
	.uleb128 .LEHB99-.LFB9380
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L1481-.LFB9380
	.uleb128 0
	.uleb128 .LEHB100-.LFB9380
	.uleb128 .LEHE100-.LEHB100
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB101-.LFB9380
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L1483-.LFB9380
	.uleb128 0
	.uleb128 .LEHB102-.LFB9380
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L1474-.LFB9380
	.uleb128 0
	.uleb128 .LEHB103-.LFB9380
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L1484-.LFB9380
	.uleb128 0
	.uleb128 .LEHB104-.LFB9380
	.uleb128 .LEHE104-.LEHB104
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB105-.LFB9380
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L1476-.LFB9380
	.uleb128 0
	.uleb128 .LEHB106-.LFB9380
	.uleb128 .LEHE106-.LEHB106
	.uleb128 .L1478-.LFB9380
	.uleb128 0
	.uleb128 .LEHB107-.LFB9380
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L1477-.LFB9380
	.uleb128 0
	.uleb128 .LEHB108-.LFB9380
	.uleb128 .LEHE108-.LEHB108
	.uleb128 .L1479-.LFB9380
	.uleb128 0
	.uleb128 .LEHB109-.LFB9380
	.uleb128 .LEHE109-.LEHB109
	.uleb128 0
	.uleb128 0
.LLSDACSE9380:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC44:
	.ascii "Start training\0"
.LC47:
	.ascii "preyweights.txt\0"
.LC48:
	.ascii "predweights.txt\0"
.LC49:
	.ascii "Load prey\0"
.LC50:
	.ascii "Load pred\0"
.LC51:
	.ascii "Genned seeds\0"
.LC52:
	.ascii "Generation number:\0"
.LC53:
	.ascii "New generation\0"
.LC54:
	.ascii "Stats Prey:\0"
.LC55:
	.ascii ",\0"
.LC56:
	.ascii "Stats Pred:\0"
.LC57:
	.ascii "Saved\0"
.LC58:
	.ascii "Timing Generation:\0"
.LC59:
	.ascii "\12\0"
	.text
	.p2align 4,,15
	.globl	_Z8Trainingv
	.def	_Z8Trainingv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z8Trainingv
_Z8Trainingv:
.LFB9384:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	movl	$149208, %eax
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	call	___chkstk_ms
	subq	%rax, %rsp
	.seh_stackalloc	149208
	vmovaps	%xmm6, 149120(%rsp)
	.seh_savexmm	%xmm6, 149120
	vmovaps	%xmm7, 149136(%rsp)
	.seh_savexmm	%xmm7, 149136
	vmovaps	%xmm8, 149152(%rsp)
	.seh_savexmm	%xmm8, 149152
	vmovaps	%xmm9, 149168(%rsp)
	.seh_savexmm	%xmm9, 149168
	vmovaps	%xmm10, 149184(%rsp)
	.seh_savexmm	%xmm10, 149184
	.seh_endprologue
	vxorpd	%xmm7, %xmm7, %xmm7
	vmovss	.LC37(%rip), %xmm6
	leaq	.LC44(%rip), %rdx
	movl	$14, %r8d
	vmovss	width(%rip), %xmm0
	movq	.refptr._ZSt4cout(%rip), %rcx
	vcvtss2sd	%xmm0, %xmm7, %xmm7
	vxorps	%xmm6, %xmm0, %xmm0
	vxorpd	%xmm6, %xmm6, %xmm6
	vcvtss2sd	%xmm0, %xmm6, %xmm6
.LEHB110:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	.refptr._ZSt4cout(%rip), %rdi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rdi,%rax), %rbx
	testq	%rbx, %rbx
	je	.L2462
	cmpb	$0, 56(%rbx)
	je	.L1587
	movsbl	67(%rbx), %edx
.L1588:
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movl	$74400, %ecx
	call	_Znwy
.LEHE110:
	movq	%rax, %rcx
	movq	%rax, %rdi
	movq	%rax, 48(%rsp)
.LEHB111:
	call	_ZN11NeuralBrainILi83ELi100EEC1Ev
.LEHE111:
	movq	(%rdi), %rax
	leaq	_ZN11NeuralBrainILi83ELi100EE9RandomiseEf(%rip), %rsi
	cmpq	%rsi, 24(%rax)
	jne	.L2463
	movq	48(%rsp), %rax
	vmovsd	.LC1(%rip), %xmm10
	vmovsd	.LC2(%rip), %xmm9
	vmovsd	.LC45(%rip), %xmm8
	leaq	772(%rax), %rbx
	leaq	74372(%rax), %rdi
.L1594:
	leaq	736(%rbx), %rbp
.L1592:
	call	rand
	vxorpd	%xmm0, %xmm0, %xmm0
	addq	$4, %rbx
	vxorps	%xmm5, %xmm5, %xmm5
	vcvtsi2sd	%eax, %xmm0, %xmm0
	vmovapd	%xmm0, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	vfmadd132sd	%xmm10, %xmm9, %xmm1
	vcvtss2sd	-4(%rbx), %xmm0, %xmm0
	vfmadd231sd	%xmm8, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm5, %xmm5
	vmovss	%xmm5, -4(%rbx)
	cmpq	%rbp, %rbx
	jne	.L1592
	cmpq	%rbx, %rdi
	jne	.L1594
	jmp	.L1593
.L2462:
.LEHB112:
	call	_ZSt16__throw_bad_castv
.LEHE112:
.L2463:
	movq	48(%rsp), %rcx
	vmovss	.LC46(%rip), %xmm1
	call	_ZN11NeuralBrainILi83ELi100EE9RandomiseEf
.L1593:
	movl	$74400, %ecx
.LEHB113:
	call	_Znwy
.LEHE113:
	movq	%rax, %rcx
	movq	%rax, %rdi
	movq	%rax, 56(%rsp)
.LEHB114:
	call	_ZN11NeuralBrainILi83ELi100EEC1Ev
.LEHE114:
	movq	(%rdi), %rax
	cmpq	%rsi, 24(%rax)
	jne	.L2464
	movq	56(%rsp), %rax
	vmovsd	.LC1(%rip), %xmm10
	vmovsd	.LC2(%rip), %xmm9
	vmovsd	.LC45(%rip), %xmm8
	leaq	772(%rax), %rbx
	leaq	74372(%rax), %rsi
.L1601:
	leaq	736(%rbx), %rdi
.L1599:
	call	rand
	vxorpd	%xmm0, %xmm0, %xmm0
	addq	$4, %rbx
	vxorps	%xmm5, %xmm5, %xmm5
	vcvtsi2sd	%eax, %xmm0, %xmm0
	vmovapd	%xmm0, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	vfmadd132sd	%xmm10, %xmm9, %xmm1
	vcvtss2sd	-4(%rbx), %xmm0, %xmm0
	vfmadd231sd	%xmm8, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm5, %xmm5
	vmovss	%xmm5, -4(%rbx)
	cmpq	%rbx, %rdi
	jne	.L1599
	cmpq	%rbx, %rsi
	jne	.L1601
	jmp	.L1600
.L1997:
	movq	48(%rsp), %rcx
	movq	%rax, %rbx
	movl	$74400, %edx
	vzeroupper
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB115:
	call	_Unwind_Resume
.L1587:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L1588
	movq	%rbx, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L1588
.L1998:
	movq	56(%rsp), %rcx
	movq	%rax, %rbx
	movl	$74400, %edx
	vzeroupper
	call	_ZdlPvy
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rax
	movq	%rax, 40(%rsp)
.L1598:
	movq	48(%rsp), %rdi
	movq	(%rdi), %rax
	movq	8(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	.L1962
	movq	%rdi, %rax
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rdi
	movq	74376(%rax), %rcx
	movq	%rdi, (%rax)
	testq	%rcx, %rcx
	je	.L1963
	call	_ZdlPv
.L1963:
	movq	48(%rsp), %rax
	movq	8(%rax), %rcx
	testq	%rcx, %rcx
	je	.L1964
	call	_ZdlPv
.L1964:
	movq	48(%rsp), %rdi
	movq	%rdi, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
.L1965:
	movq	%rbx, %rcx
	call	_Unwind_Resume
.LEHE115:
.L1962:
	movq	%rdi, %rcx
	call	*%rax
	jmp	.L1965
.L2464:
	movq	56(%rsp), %rcx
	vmovss	.LC46(%rip), %xmm1
	call	_ZN11NeuralBrainILi83ELi100EE9RandomiseEf
.L1600:
	leaq	320(%rsp), %rax
	leaq	528(%rsp), %rcx
	movq	%rax, %r15
	movq	%rax, 64(%rsp)
	call	_ZNSt8ios_baseC2Ev
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movb	$0, 752(%rsp)
	movq	%r15, %rcx
	movq	$0, 744(%rsp)
	movb	$0, 753(%rsp)
	xorl	%edx, %edx
	movq	$0, 760(%rsp)
	movq	$0, 768(%rsp)
	addq	$16, %rax
	movq	$0, 776(%rsp)
	movq	$0, 784(%rsp)
	movq	%rax, 528(%rsp)
	movq	.refptr._ZTTSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	8(%rax), %rsi
	movq	16(%rax), %rdi
	movq	-24(%rsi), %rax
	movq	%rsi, 320(%rsp)
	movq	%rdi, 320(%rsp,%rax)
	movq	$0, 328(%rsp)
	addq	-24(%rsi), %rcx
.LEHB116:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE116:
	movq	.refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rbx
	leaq	16(%r15), %rcx
	leaq	24(%rbx), %rax
	movq	%rax, 320(%rsp)
	leaq	64(%rbx), %rax
	movq	%rax, 528(%rsp)
.LEHB117:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE117:
	leaq	16(%r15), %rdx
	leaq	208(%r15), %rcx
.LEHB118:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	leaq	16(%r15), %rcx
	leaq	.LC47(%rip), %rdx
	movl	$8, %r8d
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	testq	%rax, %rax
	movq	64(%rsp), %rcx
	movq	320(%rsp), %rax
	je	.L2465
	addq	-24(%rax), %rcx
	xorl	%edx, %edx
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE118:
.L1603:
	leaq	74720(%rsp), %r13
	leaq	208(%r13), %rcx
	call	_ZNSt8ios_baseC2Ev
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movb	$0, 75152(%rsp)
	movq	%r13, %rcx
	movq	$0, 75144(%rsp)
	movb	$0, 75153(%rsp)
	xorl	%edx, %edx
	movq	$0, 75160(%rsp)
	movq	$0, 75168(%rsp)
	addq	$16, %rax
	movq	$0, 75176(%rsp)
	movq	$0, 75184(%rsp)
	movq	%rax, 74928(%rsp)
	movq	-24(%rsi), %rax
	movq	%rsi, 74720(%rsp)
	movq	%rdi, 74720(%rsp,%rax)
	movq	$0, 74728(%rsp)
	addq	-24(%rsi), %rcx
.LEHB119:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE119:
	leaq	24(%rbx), %rax
	leaq	16(%r13), %rcx
	movq	%rax, 74720(%rsp)
	leaq	64(%rbx), %rax
	movq	%rax, 74928(%rsp)
.LEHB120:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE120:
	leaq	16(%r13), %rdx
	leaq	208(%r13), %rcx
.LEHB121:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	leaq	16(%r13), %rcx
	leaq	.LC48(%rip), %rdx
	movl	$8, %r8d
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	testq	%rax, %rax
	movq	%r13, %rcx
	movq	74720(%rsp), %rax
	je	.L2466
	addq	-24(%rax), %rcx
	xorl	%edx, %edx
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE121:
.L1609:
	testb	$5, 560(%rsp)
	je	.L1614
.L1627:
	testb	$5, 74960(%rsp)
	jne	.L1616
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	movl	$9, %r8d
.LEHB122:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	.refptr._ZSt4cout(%rip), %rdx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rdx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L2467
	cmpb	$0, 56(%rbp)
	je	.L1630
	movsbl	67(%rbp), %edx
.L1631:
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	56(%rsp), %rax
	leaq	36(%rax), %rbp
	leaq	74372(%rax), %r12
.L1635:
	movq	%rbp, %rdx
	movq	%r13, %rcx
	call	_ZNSi10_M_extractIfEERSiRT_
	addq	$4, %rbp
	cmpq	%r12, %rbp
	jne	.L1635
	movq	56(%rsp), %rax
	xorl	%ebp, %ebp
	movq	74376(%rax), %rdx
	movq	74384(%rax), %rax
	movq	%rax, 40(%rsp)
	subq	%rdx, %rax
	sarq	$2, %rax
	testq	%rax, %rax
	je	.L1638
.L2244:
	leaq	(%rdx,%rbp,4), %rdx
	movq	%r13, %rcx
	call	_ZNSi10_M_extractIfEERSiRT_
	movq	56(%rsp), %rax
	addq	$1, %rbp
	movq	74376(%rax), %rdx
	movq	74384(%rax), %rax
	movq	%rax, 40(%rsp)
	subq	%rdx, %rax
	sarq	$2, %rax
	cmpq	%rax, %rbp
	jb	.L2244
.L1638:
	leaq	16(%r13), %rcx
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE122:
	testq	%rax, %rax
	je	.L2468
.L1616:
	movq	.refptr._ZTVSt13basic_filebufIcSt11char_traitsIcEE(%rip), %rax
	leaq	24(%rbx), %r15
	leaq	16(%r13), %rcx
	addq	$64, %rbx
	movq	%rbx, 74928(%rsp)
	movq	%r15, 74720(%rsp)
	leaq	16(%rax), %r14
	movq	%rax, 80(%rsp)
	movq	%r14, 74736(%rsp)
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	leaq	88(%r13), %rcx
	call	_ZNSt12__basic_fileIcED1Ev
	movq	.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	72(%r13), %rcx
	leaq	16(%rax), %r12
	movq	%rax, 72(%rsp)
	movq	%r12, 74736(%rsp)
	call	_ZNSt6localeD1Ev
	movq	-24(%rsi), %rax
	leaq	208(%r13), %rcx
	movq	%rdi, 74720(%rsp,%rax)
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	leaq	16(%rax), %rbp
	movq	%rbp, 74928(%rsp)
	call	_ZNSt8ios_baseD2Ev
	movq	%rbx, 528(%rsp)
	movq	64(%rsp), %rbx
	movq	%r15, 320(%rsp)
	movq	%r14, 336(%rsp)
	leaq	16(%rbx), %rcx
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	leaq	88(%rbx), %rcx
	call	_ZNSt12__basic_fileIcED1Ev
	leaq	72(%rbx), %rcx
	movq	%r12, 336(%rsp)
	call	_ZNSt6localeD1Ev
	movq	-24(%rsi), %rax
	leaq	208(%rbx), %rcx
	movq	%rdi, 320(%rsp,%rax)
	movq	%rbp, 528(%rsp)
	call	_ZNSt8ios_baseD2Ev
	movq	48(%rsp), %rdx
	movq	%rbx, %rcx
.LEHB123:
	call	_ZN11NeuralBrainILi83ELi100EEC1ERKS0_
.LEHE123:
	movq	64(%rsp), %rdx
	leaq	128(%rsp), %rcx
.LEHB124:
	call	_Z16CreateGeneration11NeuralBrainILi83ELi100EE
.LEHE124:
	movq	74696(%rsp), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, 320(%rsp)
	testq	%rcx, %rcx
	je	.L1639
	call	_ZdlPv
.L1639:
	movq	328(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1640
	call	_ZdlPv
.L1640:
	movq	64(%rsp), %rcx
	call	_ZN9NeuralNetD2Ev
	movq	56(%rsp), %rdx
	movq	%r13, %rcx
.LEHB125:
	call	_ZN11NeuralBrainILi83ELi100EEC1ERKS0_
.LEHE125:
	leaq	160(%rsp), %rcx
	movq	%r13, %rdx
.LEHB126:
	call	_Z16CreateGeneration11NeuralBrainILi83ELi100EE
.LEHE126:
	movq	149096(%rsp), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, 74720(%rsp)
	testq	%rcx, %rcx
	je	.L1641
	call	_ZdlPv
.L1641:
	movq	74728(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1642
	call	_ZdlPv
.L1642:
	movq	%r13, %rcx
	call	_ZN9NeuralNetD2Ev
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rax
	leaq	.LC51(%rip), %rdx
	movl	$12, %r8d
	movq	%rax, 40(%rsp)
.LEHB127:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	.refptr._ZSt4cout(%rip), %rdi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rdi,%rax), %rbx
	testq	%rbx, %rbx
	je	.L2469
	cmpb	$0, 56(%rbx)
	je	.L1644
	movsbl	67(%rbx), %edx
.L1645:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rax
	movq	%rax, 40(%rsp)
	call	_ZNSo3putEc
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rdi
	movq	%rax, %rcx
	movq	%rdi, 40(%rsp)
	call	_ZNSo5flushEv
	movl	GenerationCount(%rip), %eax
	testl	%eax, %eax
	jle	.L2470
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rax
	vsubsd	%xmm6, %xmm7, %xmm7
	movl	$0, 92(%rsp)
	vmovsd	.LC41(%rip), %xmm8
	movq	%rax, 40(%rsp)
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	addq	$24, %rax
	movq	%rax, 112(%rsp)
.L1880:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	136(%rsp), %rdx
	movq	%rax, 120(%rsp)
	movq	128(%rsp), %rax
	cmpq	%rax, %rdx
	je	.L1651
.L2243:
	movl	$0, 8(%rax)
	movl	$0, 12(%rax)
	addq	$16, %rax
	cmpq	%rax, %rdx
	jne	.L2243
.L1651:
	movq	160(%rsp), %rax
	movq	168(%rsp), %rdx
	cmpq	%rdx, %rax
	je	.L1649
.L2242:
	movl	$0, 8(%rax)
	movl	$0, 12(%rax)
	addq	$16, %rax
	cmpq	%rdx, %rax
	jne	.L2242
.L1649:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC52(%rip), %rdx
	movl	$18, %r8d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	92(%rsp), %edx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEi
	movq	%rax, %rsi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rsi,%rax), %rbx
	testq	%rbx, %rbx
	je	.L2471
	cmpb	$0, 56(%rbx)
	je	.L1655
	movsbl	67(%rbx), %edx
.L1656:
	movq	%rsi, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	136(%rsp), %r8
	movq	128(%rsp), %rax
	movq	%r8, %rdx
	subq	%rax, %rdx
	sarq	$4, %rdx
	testq	%rdx, %rdx
	je	.L1689
	movq	168(%rsp), %r9
	movq	160(%rsp), %rdx
	leaq	24(%r13), %r12
	movq	$0, 96(%rsp)
.L1688:
	movq	96(%rsp), %r14
	movq	%r9, %rcx
	subq	%rdx, %rcx
	sarq	$4, %rcx
	salq	$4, %r14
	addq	%rax, %r14
	testq	%rcx, %rcx
	je	.L1659
	movl	RandomPlays(%rip), %eax
	movq	$0, 104(%rsp)
.L1687:
	movq	104(%rsp), %rbp
	salq	$4, %rbp
	addq	%rdx, %rbp
	testl	%eax, %eax
	jle	.L1660
	xorl	%r15d, %r15d
	.p2align 4,,10
.L1686:
	movq	%r13, %rcx
	call	_ZN5WorldC1Ev
.LEHE127:
	movq	74728(%rsp), %rax
	subq	74720(%rsp), %rax
	movl	$1, %ebx
	cmpq	$15, %rax
	jbe	.L1668
	.p2align 4,,10
.L2241:
	movl	$74400, %ecx
	movq	0(%rbp), %rdi
.LEHB128:
	call	_Znwy
.LEHE128:
	movq	%rdi, %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB129:
	call	_ZN11NeuralBrainILi83ELi100EEC1ERKS0_
.LEHE129:
	movq	74720(%rsp), %rax
	movq	(%rax,%rbx,8), %rdx
	movq	144(%rdx), %rcx
	movq	%rsi, 144(%rdx)
	testq	%rcx, %rcx
	je	.L1664
	movq	(%rcx), %rax
	call	*8(%rax)
	movq	74720(%rsp), %rax
.L1664:
	movq	74728(%rsp), %rdx
	addq	$1, %rbx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	cmpq	%rbx, %rax
	ja	.L2241
.L1668:
	movl	$74400, %ecx
	movq	(%r14), %rsi
.LEHB130:
	call	_Znwy
.LEHE130:
	movq	%rsi, %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB131:
	call	_ZN11NeuralBrainILi83ELi100EEC1ERKS0_
.LEHE131:
	movq	74720(%rsp), %rax
	movq	(%rax), %rdx
	movq	144(%rdx), %rcx
	movq	%rbx, 144(%rdx)
	testq	%rcx, %rcx
	je	.L1670
	movq	(%rcx), %rax
	call	*8(%rax)
	movq	74720(%rsp), %rax
.L1670:
	movq	74728(%rsp), %rsi
	movq	%rax, %rbx
	cmpq	%rax, %rsi
	je	.L1675
	.p2align 4,,10
.L1674:
	movq	(%rbx), %rdi
	addq	$8, %rbx
	call	_ZSt18generate_canonicalIdLy53ESt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EEET_RT1_.constprop.210
	vfmadd132sd	%xmm7, %xmm6, %xmm0
	vxorps	%xmm2, %xmm2, %xmm2
	vcvtsd2ss	%xmm0, %xmm2, %xmm2
	vmovss	%xmm2, 8(%rdi)
	movq	-8(%rbx), %rdi
	call	_ZSt18generate_canonicalIdLy53ESt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EEET_RT1_.constprop.210
	vfmadd132sd	%xmm7, %xmm6, %xmm0
	vxorps	%xmm3, %xmm3, %xmm3
	vcvtsd2ss	%xmm0, %xmm3, %xmm3
	vmovss	%xmm3, 12(%rdi)
	movq	-8(%rbx), %rdi
	call	_ZSt18generate_canonicalIdLy53ESt23mersenne_twister_engineIjLy32ELy624ELy397ELy31ELj2567483615ELy11ELj4294967295ELy7ELj2636928640ELy15ELj4022730752ELy18ELj1812433253EEET_RT1_.constprop.210
	vmulsd	%xmm8, %xmm0, %xmm0
	cmpq	%rbx, %rsi
	vxorps	%xmm4, %xmm4, %xmm4
	vcvtsd2ss	%xmm0, %xmm4, %xmm4
	vmovss	%xmm4, 36(%rdi)
	jne	.L1674
.L1675:
	movl	MaxPlayTime(%rip), %edx
	movq	%r13, %rcx
.LEHB132:
	call	_ZN5World8PlayGameEi
.LEHE132:
	cmpl	MaxPlayTime(%rip), %eax
	jge	.L1676
	addl	$1, 8(%rbp)
.L1677:
	movq	74800(%rsp), %rcx
	addl	$1, 12(%rbp)
	addl	$1, 12(%r14)
	testq	%rcx, %rcx
	je	.L1678
	call	_ZdlPv
.L1678:
	movq	74776(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1679
	call	_ZdlPv
.L1679:
	leaq	56(%r13), %rbx
	.p2align 4,,10
.L1681:
	subq	$8, %rbx
	movq	(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1680
	movl	$32, %edx
	call	_ZdlPvy
.L1680:
	cmpq	%r12, %rbx
	jne	.L1681
	movq	74728(%rsp), %rbx
	movq	74720(%rsp), %rsi
	cmpq	%rsi, %rbx
	je	.L1682
	.p2align 4,,10
.L1684:
	movq	(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L1683
	movq	(%rcx), %rax
	call	*8(%rax)
.L1683:
	addq	$8, %rsi
	cmpq	%rsi, %rbx
	jne	.L1684
	movq	74720(%rsp), %rbx
.L1682:
	testq	%rbx, %rbx
	je	.L1685
	movq	%rbx, %rcx
	call	_ZdlPv
.L1685:
	movl	RandomPlays(%rip), %eax
	addl	$1, %r15d
	cmpl	%r15d, %eax
	jg	.L1686
	movq	160(%rsp), %rdx
	movq	168(%rsp), %r9
.L1660:
	addq	$1, 104(%rsp)
	movq	%r9, %rcx
	movq	104(%rsp), %rdi
	subq	%rdx, %rcx
	sarq	$4, %rcx
	cmpq	%rdi, %rcx
	ja	.L1687
	movq	128(%rsp), %rax
	movq	136(%rsp), %r8
.L1659:
	addq	$1, 96(%rsp)
	movq	%r8, %rcx
	movq	96(%rsp), %rdi
	subq	%rax, %rcx
	sarq	$4, %rcx
	cmpq	%rdi, %rcx
	ja	.L1688
.L1689:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	movl	$14, %r8d
.LEHB133:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	.refptr._ZSt4cout(%rip), %rdi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rdi,%rax), %rbx
	testq	%rbx, %rbx
	je	.L2472
	cmpb	$0, 56(%rbx)
	je	.L1691
	movsbl	67(%rbx), %edx
.L1692:
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	168(%rsp), %r14
	movq	160(%rsp), %r12
	xorl	%ebp, %ebp
	movq	$0, 192(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 208(%rsp)
	movq	%r14, %rbx
	subq	%r12, %rbx
	movq	%rbx, %rax
	sarq	$4, %rax
	testq	%rax, %rax
	je	.L1694
	movabsq	$1152921504606846975, %rdx
	cmpq	%rdx, %rax
	ja	.L2473
	movq	%rbx, %rcx
	call	_Znwy
.LEHE133:
	movq	168(%rsp), %r14
	movq	160(%rsp), %r12
	movq	%rax, %rbp
.L1694:
	leaq	0(%rbp,%rbx), %rax
	cmpq	%r12, %r14
	movq	%rbp, 192(%rsp)
	movq	%rbp, 200(%rsp)
	movq	%rax, 208(%rsp)
	je	.L1696
	movq	%rbp, %rsi
	movl	$100, %r15d
.L1712:
	testq	%rsi, %rsi
	je	.L1697
	movq	$0, (%rsi)
	movl	$0, 8(%rsi)
	movl	$74400, %ecx
	movl	$0, 12(%rsi)
	movq	(%r12), %rdi
.LEHB134:
	call	_Znwy
.LEHE134:
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB135:
	call	_ZN11NeuralBrainILi83ELi100EEC1Ev
.LEHE135:
	leaq	36(%rbx), %rcx
	leaq	36(%rdi), %rdx
	leaq	48(%rbx), %rdi
	movl	$74336, %r8d
	call	memcpy
	andq	$-8, %rdi
	movl	%ebx, %eax
	movq	$0, 40(%rbx)
	subl	%edi, %eax
	movq	$0, 764(%rbx)
	leal	772(%rax), %ecx
	xorl	%eax, %eax
	shrl	$3, %ecx
	rep stosq
	leaq	8(%rbx), %rdi
	movq	$0, 16(%rbx)
	movq	$0, 24(%rbx)
	movq	8(%rbx), %rcx
	movq	$0, 8(%rbx)
	testq	%rcx, %rcx
	je	.L1698
	call	_ZdlPv
	movq	16(%rbx), %rdx
	movq	8(%rbx), %rcx
	movl	$0x00000000, 74720(%rsp)
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	cmpq	$99, %rax
	movq	%rax, %r8
	jbe	.L1970
	cmpq	$100, %rax
	je	.L1701
	addq	$400, %rcx
	movq	%rcx, 16(%rbx)
.L1701:
	movq	(%rsi), %rdi
	movq	%rbx, (%rsi)
	testq	%rdi, %rdi
	je	.L1708
	movq	(%rdi), %rax
	movq	8(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	.L1705
	movq	74376(%rdi), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rdi)
	testq	%rcx, %rcx
	je	.L1706
	call	_ZdlPv
.L1706:
	movq	8(%rdi), %rcx
	testq	%rcx, %rcx
	je	.L1707
	call	_ZdlPv
.L1707:
	movq	%rdi, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
.L1708:
	movl	8(%r12), %eax
	movl	%eax, 8(%rsi)
	movl	12(%r12), %eax
	movl	%eax, 12(%rsi)
.L1697:
	addq	$16, %r12
	addq	$16, %rsi
	cmpq	%r12, %r14
	jne	.L1712
	movq	%rsi, %rbp
.L1696:
	leaq	224(%rsp), %rcx
	leaq	192(%rsp), %rdx
	movq	%rbp, 200(%rsp)
.LEHB136:
	call	_Z16CreateGenerationSt6vectorI8PlayDataSaIS0_EE
.LEHE136:
	movq	224(%rsp), %rax
	movq	160(%rsp), %rsi
	movq	168(%rsp), %rdi
	movq	$0, 224(%rsp)
	movq	%rax, 160(%rsp)
	movq	232(%rsp), %rax
	movq	%rsi, %rbx
	cmpq	%rdi, %rsi
	movq	$0, 232(%rsp)
	movq	%rax, 168(%rsp)
	movq	240(%rsp), %rax
	movq	$0, 240(%rsp)
	movq	%rax, 176(%rsp)
	je	.L1726
.L2281:
	movq	(%rbx), %rbp
	testq	%rbp, %rbp
	je	.L1722
	movq	0(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	.L1723
	movq	74376(%rbp), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, 0(%rbp)
	testq	%rcx, %rcx
	je	.L1724
	call	_ZdlPv
.L1724:
	movq	8(%rbp), %rcx
	testq	%rcx, %rcx
	je	.L1725
	call	_ZdlPv
.L1725:
	movq	%rbp, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rbp, %rcx
	call	_ZdlPvy
.L1722:
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	jne	.L2281
.L1726:
	testq	%rsi, %rsi
	je	.L1721
	movq	%rsi, %rcx
	call	_ZdlPv
.L1721:
	movq	232(%rsp), %rbx
	movq	224(%rsp), %rsi
	cmpq	%rsi, %rbx
	je	.L1728
.L1733:
	movq	(%rsi), %rdi
	testq	%rdi, %rdi
	je	.L1729
	movq	(%rdi), %rax
	movq	8(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	.L1730
	movq	74376(%rdi), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rdi)
	testq	%rcx, %rcx
	je	.L1731
	call	_ZdlPv
.L1731:
	movq	8(%rdi), %rcx
	testq	%rcx, %rcx
	je	.L1732
	call	_ZdlPv
.L1732:
	movq	%rdi, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
.L1729:
	addq	$16, %rsi
	cmpq	%rsi, %rbx
	jne	.L1733
	movq	224(%rsp), %rbx
.L1728:
	testq	%rbx, %rbx
	je	.L1734
	movq	%rbx, %rcx
	call	_ZdlPv
.L1734:
	movq	200(%rsp), %rbx
	movq	192(%rsp), %rsi
	cmpq	%rsi, %rbx
	je	.L1735
.L1740:
	movq	(%rsi), %rdi
	testq	%rdi, %rdi
	je	.L1736
	movq	(%rdi), %rax
	movq	8(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	.L1737
	movq	74376(%rdi), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rdi)
	testq	%rcx, %rcx
	je	.L1738
	call	_ZdlPv
.L1738:
	movq	8(%rdi), %rcx
	testq	%rcx, %rcx
	je	.L1739
	call	_ZdlPv
.L1739:
	movq	%rdi, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
.L1736:
	addq	$16, %rsi
	cmpq	%rsi, %rbx
	jne	.L1740
	movq	192(%rsp), %rbx
.L1735:
	testq	%rbx, %rbx
	je	.L1741
	movq	%rbx, %rcx
	call	_ZdlPv
.L1741:
	movq	136(%rsp), %r14
	movq	128(%rsp), %r12
	xorl	%ebp, %ebp
	movq	$0, 256(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 272(%rsp)
	movq	%r14, %rbx
	subq	%r12, %rbx
	movq	%rbx, %rax
	sarq	$4, %rax
	testq	%rax, %rax
	je	.L1743
	movabsq	$1152921504606846975, %rdx
	cmpq	%rdx, %rax
	ja	.L2474
	movq	%rbx, %rcx
.LEHB137:
	call	_Znwy
.LEHE137:
	movq	136(%rsp), %r14
	movq	128(%rsp), %r12
	movq	%rax, %rbp
.L1743:
	leaq	0(%rbp,%rbx), %rax
	cmpq	%r12, %r14
	movq	%rbp, 256(%rsp)
	movq	%rbp, 264(%rsp)
	movq	%rax, 272(%rsp)
	je	.L1745
	movq	%rbp, %rsi
	movl	$100, %r15d
.L1761:
	testq	%rsi, %rsi
	je	.L1746
	movq	$0, (%rsi)
	movl	$0, 8(%rsi)
	movl	$74400, %ecx
	movl	$0, 12(%rsi)
	movq	(%r12), %rdi
.LEHB138:
	call	_Znwy
.LEHE138:
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB139:
	call	_ZN11NeuralBrainILi83ELi100EEC1Ev
.LEHE139:
	leaq	36(%rbx), %rcx
	leaq	36(%rdi), %rdx
	leaq	48(%rbx), %rdi
	movl	$74336, %r8d
	call	memcpy
	andq	$-8, %rdi
	movl	%ebx, %eax
	movq	$0, 40(%rbx)
	subl	%edi, %eax
	movq	$0, 764(%rbx)
	leal	772(%rax), %ecx
	xorl	%eax, %eax
	shrl	$3, %ecx
	rep stosq
	leaq	8(%rbx), %rdi
	movq	$0, 16(%rbx)
	movq	$0, 24(%rbx)
	movq	8(%rbx), %rcx
	movq	$0, 8(%rbx)
	testq	%rcx, %rcx
	je	.L1747
	call	_ZdlPv
	movq	16(%rbx), %rdx
	movq	8(%rbx), %rcx
	movl	$0x00000000, 74720(%rsp)
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	cmpq	$99, %rax
	movq	%rax, %r8
	jbe	.L1971
	cmpq	$100, %rax
	je	.L1750
	addq	$400, %rcx
	movq	%rcx, 16(%rbx)
.L1750:
	movq	(%rsi), %rdi
	movq	%rbx, (%rsi)
	testq	%rdi, %rdi
	je	.L1757
	movq	(%rdi), %rax
	movq	8(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	.L1754
	movq	74376(%rdi), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rdi)
	testq	%rcx, %rcx
	je	.L1755
	call	_ZdlPv
.L1755:
	movq	8(%rdi), %rcx
	testq	%rcx, %rcx
	je	.L1756
	call	_ZdlPv
.L1756:
	movq	%rdi, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
.L1757:
	movl	8(%r12), %eax
	movl	%eax, 8(%rsi)
	movl	12(%r12), %eax
	movl	%eax, 12(%rsi)
.L1746:
	addq	$16, %r12
	addq	$16, %rsi
	cmpq	%r12, %r14
	jne	.L1761
	movq	%rsi, %rbp
.L1745:
	leaq	288(%rsp), %rcx
	leaq	256(%rsp), %rdx
	movq	%rbp, 264(%rsp)
.LEHB140:
	call	_Z16CreateGenerationSt6vectorI8PlayDataSaIS0_EE
.LEHE140:
	movq	288(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	136(%rsp), %rdi
	movq	$0, 288(%rsp)
	movq	%rax, 128(%rsp)
	movq	296(%rsp), %rax
	movq	%rsi, %rbx
	cmpq	%rdi, %rsi
	movq	$0, 296(%rsp)
	movq	%rax, 136(%rsp)
	movq	304(%rsp), %rax
	movq	$0, 304(%rsp)
	movq	%rax, 144(%rsp)
	je	.L1774
.L2282:
	movq	(%rbx), %rbp
	testq	%rbp, %rbp
	je	.L1770
	movq	0(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	.L1771
	movq	74376(%rbp), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, 0(%rbp)
	testq	%rcx, %rcx
	je	.L1772
	call	_ZdlPv
.L1772:
	movq	8(%rbp), %rcx
	testq	%rcx, %rcx
	je	.L1773
	call	_ZdlPv
.L1773:
	movq	%rbp, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rbp, %rcx
	call	_ZdlPvy
.L1770:
	addq	$16, %rbx
	cmpq	%rbx, %rdi
	jne	.L2282
.L1774:
	testq	%rsi, %rsi
	je	.L1769
	movq	%rsi, %rcx
	call	_ZdlPv
.L1769:
	movq	296(%rsp), %rbx
	movq	288(%rsp), %rsi
	cmpq	%rsi, %rbx
	je	.L1776
.L1781:
	movq	(%rsi), %rdi
	testq	%rdi, %rdi
	je	.L1777
	movq	(%rdi), %rax
	movq	8(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	.L1778
	movq	74376(%rdi), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rdi)
	testq	%rcx, %rcx
	je	.L1779
	call	_ZdlPv
.L1779:
	movq	8(%rdi), %rcx
	testq	%rcx, %rcx
	je	.L1780
	call	_ZdlPv
.L1780:
	movq	%rdi, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
.L1777:
	addq	$16, %rsi
	cmpq	%rsi, %rbx
	jne	.L1781
	movq	288(%rsp), %rbx
.L1776:
	testq	%rbx, %rbx
	je	.L1782
	movq	%rbx, %rcx
	call	_ZdlPv
.L1782:
	movq	264(%rsp), %rbx
	movq	256(%rsp), %rsi
	cmpq	%rsi, %rbx
	je	.L1783
.L1788:
	movq	(%rsi), %rdi
	testq	%rdi, %rdi
	je	.L1784
	movq	(%rdi), %rax
	movq	8(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	.L1785
	movq	74376(%rdi), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rdi)
	testq	%rcx, %rcx
	je	.L1786
	call	_ZdlPv
.L1786:
	movq	8(%rdi), %rcx
	testq	%rcx, %rcx
	je	.L1787
	call	_ZdlPv
.L1787:
	movq	%rdi, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
.L1784:
	addq	$16, %rsi
	cmpq	%rsi, %rbx
	jne	.L1788
	movq	256(%rsp), %rbx
.L1783:
	testq	%rbx, %rbx
	je	.L1789
	movq	%rbx, %rcx
	call	_ZdlPv
.L1789:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC54(%rip), %rdx
	movl	$11, %r8d
.LEHB141:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	128(%rsp), %rbx
	movq	136(%rsp), %rsi
	cmpq	%rbx, %rsi
	je	.L1794
.L2240:
	movl	8(%rbx), %edx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEi
	leaq	.LC55(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	addq	$16, %rbx
	cmpq	%rbx, %rsi
	jne	.L2240
.L1794:
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	.refptr._ZSt4cout(%rip), %rdi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rdi,%rax), %rbx
	testq	%rbx, %rbx
	je	.L2475
	cmpb	$0, 56(%rbx)
	je	.L1795
	movsbl	67(%rbx), %edx
.L1796:
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	movl	$11, %r8d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	160(%rsp), %rbx
	movq	168(%rsp), %rsi
	cmpq	%rbx, %rsi
	je	.L1801
.L2239:
	movl	8(%rbx), %edx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEi
	leaq	.LC55(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	addq	$16, %rbx
	cmpq	%rbx, %rsi
	jne	.L2239
.L1801:
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	.refptr._ZSt4cout(%rip), %rdi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rdi,%rax), %rbx
	testq	%rbx, %rbx
	je	.L2476
	cmpb	$0, 56(%rbx)
	je	.L1802
	movsbl	67(%rbx), %edx
.L1803:
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	movl	$5, %r8d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	.refptr._ZSt4cout(%rip), %rdi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rdi,%rax), %rbx
	testq	%rbx, %rbx
	je	.L2477
	cmpb	$0, 56(%rbx)
	je	.L1805
	movsbl	67(%rbx), %edx
.L1806:
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	128(%rsp), %rdx
	movq	%r13, %rcx
	call	_ZN8PlayDataC1ERKS_
.LEHE141:
	movl	$74400, %ecx
	movq	74720(%rsp), %rsi
.LEHB142:
	call	_Znwy
.LEHE142:
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB143:
	call	_ZN11NeuralBrainILi83ELi100EEC1Ev
.LEHE143:
	leaq	36(%rbx), %rcx
	leaq	36(%rsi), %rdx
	leaq	48(%rbx), %rdi
	movl	$74336, %r8d
	leaq	8(%rbx), %rsi
	call	memcpy
	andq	$-8, %rdi
	movl	%ebx, %eax
	movq	$0, 40(%rbx)
	subl	%edi, %eax
	movq	$0, 764(%rbx)
	leal	772(%rax), %ecx
	xorl	%eax, %eax
	shrl	$3, %ecx
	rep stosq
	movq	$0, 16(%rbx)
	movq	$0, 24(%rbx)
	movq	8(%rbx), %rcx
	movq	$0, 8(%rbx)
	testq	%rcx, %rcx
	je	.L1807
	call	_ZdlPv
	movq	16(%rbx), %rdx
	movq	8(%rbx), %rcx
	movl	$0x00000000, 320(%rsp)
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	cmpq	$99, %rax
	movq	%rax, %r10
	jbe	.L1972
	cmpq	$100, %rax
	je	.L1809
	addq	$400, %rcx
	movq	%rcx, 16(%rbx)
.L1809:
	movq	48(%rsp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	.L2478
	movq	48(%rsp), %rax
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rdi
	movq	74376(%rax), %rcx
	movq	%rdi, (%rax)
	testq	%rcx, %rcx
	je	.L1816
	call	_ZdlPv
	movq	48(%rsp), %rax
.L1816:
	movq	8(%rax), %rcx
	testq	%rcx, %rcx
	je	.L1817
	call	_ZdlPv
.L1817:
	movq	48(%rsp), %rdi
	movq	%rdi, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
.L1818:
	movq	74720(%rsp), %rsi
	testq	%rsi, %rsi
	je	.L1822
	movq	(%rsi), %rax
	movq	8(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	.L1819
	movq	74376(%rsi), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rsi)
	testq	%rcx, %rcx
	je	.L1820
	call	_ZdlPv
.L1820:
	movq	8(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L1821
	call	_ZdlPv
.L1821:
	movq	%rsi, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
.L1822:
	movq	160(%rsp), %rdx
	movq	%r13, %rcx
.LEHB144:
	call	_ZN8PlayDataC1ERKS_
.LEHE144:
	movl	$74400, %ecx
	movq	74720(%rsp), %rdi
.LEHB145:
	call	_Znwy
.LEHE145:
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB146:
	call	_ZN11NeuralBrainILi83ELi100EEC1Ev
.LEHE146:
	leaq	36(%rsi), %rcx
	leaq	36(%rdi), %rdx
	leaq	48(%rsi), %rdi
	movl	$74336, %r8d
	call	memcpy
	andq	$-8, %rdi
	movl	%esi, %eax
	movq	$0, 40(%rsi)
	subl	%edi, %eax
	movq	$0, 764(%rsi)
	leal	772(%rax), %ecx
	xorl	%eax, %eax
	shrl	$3, %ecx
	rep stosq
	leaq	8(%rsi), %rdi
	movq	$0, 16(%rsi)
	movq	$0, 24(%rsi)
	movq	8(%rsi), %rcx
	movq	$0, 8(%rsi)
	testq	%rcx, %rcx
	je	.L1825
	call	_ZdlPv
	movq	16(%rsi), %rdx
	movq	8(%rsi), %rcx
	movl	$0x00000000, 320(%rsp)
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	cmpq	$99, %rax
	movq	%rax, %r10
	jbe	.L1973
	cmpq	$100, %rax
	je	.L1827
	addq	$400, %rcx
	movq	%rcx, 16(%rsi)
.L1827:
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	.L2479
	movq	56(%rsp), %rax
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rdi
	movq	74376(%rax), %rcx
	movq	%rdi, (%rax)
	testq	%rcx, %rcx
	je	.L1834
	call	_ZdlPv
	movq	56(%rsp), %rax
.L1834:
	movq	8(%rax), %rcx
	testq	%rcx, %rcx
	je	.L1835
	call	_ZdlPv
.L1835:
	movq	56(%rsp), %rdi
	movq	%rdi, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
.L1836:
	movq	74720(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L1840
	movq	(%rdi), %rax
	movq	8(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	.L1837
	movq	74376(%rdi), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rdi)
	testq	%rcx, %rcx
	je	.L1838
	call	_ZdlPv
.L1838:
	movq	8(%rdi), %rcx
	testq	%rcx, %rcx
	je	.L1839
	call	_ZdlPv
.L1839:
	movq	%rdi, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
.L1840:
	movq	64(%rsp), %r15
	leaq	200(%r15), %rcx
	call	_ZNSt8ios_baseC2Ev
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movb	$0, 744(%rsp)
	movq	%r15, %rcx
	movq	$0, 736(%rsp)
	movb	$0, 745(%rsp)
	xorl	%edx, %edx
	movq	$0, 752(%rsp)
	movq	$0, 760(%rsp)
	addq	$16, %rax
	movq	$0, 768(%rsp)
	movq	$0, 776(%rsp)
	movq	%rax, 520(%rsp)
	movq	.refptr._ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	8(%rax), %rdi
	movq	16(%rax), %r12
	addq	-24(%rdi), %rcx
	movq	%rdi, 320(%rsp)
	movq	%r12, (%rcx)
.LEHB147:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE147:
	movq	112(%rsp), %rax
	leaq	8(%r15), %rcx
	movq	%rax, 320(%rsp)
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	addq	$64, %rax
	movq	%rax, 520(%rsp)
.LEHB148:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE148:
	leaq	8(%r15), %rdx
	leaq	200(%r15), %rcx
.LEHB149:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	leaq	8(%r15), %rcx
	leaq	.LC47(%rip), %rdx
	movl	$48, %r8d
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	testq	%rax, %rax
	movq	64(%rsp), %rcx
	movq	320(%rsp), %rax
	je	.L2480
	addq	-24(%rax), %rcx
	xorl	%edx, %edx
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE149:
.L1842:
	leaq	200(%r13), %rcx
	call	_ZNSt8ios_baseC2Ev
	movb	$0, 75144(%rsp)
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%r13, %rcx
	addq	-24(%rdi), %rcx
	movq	$0, 75136(%rsp)
	xorl	%edx, %edx
	movb	$0, 75145(%rsp)
	movq	$0, 75152(%rsp)
	addq	$16, %rax
	movq	$0, 75160(%rsp)
	movq	$0, 75168(%rsp)
	movq	%rax, 74920(%rsp)
	movq	$0, 75176(%rsp)
	movq	%rdi, 74720(%rsp)
	movq	%r12, (%rcx)
.LEHB150:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE150:
	movq	112(%rsp), %rax
	leaq	8(%r13), %rcx
	movq	%rax, 74720(%rsp)
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	addq	$64, %rax
	movq	%rax, 74920(%rsp)
.LEHB151:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE151:
	leaq	8(%r13), %rdx
	leaq	200(%r13), %rcx
.LEHB152:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	leaq	8(%r13), %rcx
	leaq	.LC48(%rip), %rdx
	movl	$48, %r8d
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	testq	%rax, %rax
	movq	%r13, %rcx
	movq	74720(%rsp), %rax
	je	.L2481
	addq	-24(%rax), %rcx
	xorl	%edx, %edx
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE152:
.L1847:
	testb	$5, 552(%rsp)
	je	.L1852
.L1863:
	testb	$5, 74952(%rsp)
	jne	.L1854
	movl	$1, %edx
	movq	%r13, %rcx
.LEHB153:
	call	_ZNSolsEi
	leaq	.LC14(%rip), %rdx
	movl	$1, %r8d
	movq	%r13, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$183, %ebp
.L1867:
	xorl	%edx, %edx
	movq	%r13, %rcx
	call	_ZNSolsEi
	leaq	.LC14(%rip), %rdx
	movl	$1, %r8d
	movq	%r13, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	subl	$1, %ebp
	jne	.L1867
	leaq	772(%rsi), %rbp
	leaq	74372(%rsi), %r14
.L1870:
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	%r13, %rcx
	vcvtss2sd	0(%rbp), %xmm1, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC14(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	addq	$4, %rbp
	cmpq	%rbp, %r14
	jne	.L1870
	movq	74376(%rsi), %rdx
	movq	74384(%rsi), %rax
	xorl	%ebp, %ebp
	subq	%rdx, %rax
	sarq	$2, %rax
	testq	%rax, %rax
	je	.L1873
.L2237:
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	%r13, %rcx
	vcvtss2sd	(%rdx,%rbp,4), %xmm1, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC14(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	74376(%rsi), %rdx
	movq	74384(%rsi), %rax
	addq	$1, %rbp
	subq	%rdx, %rax
	sarq	$2, %rax
	cmpq	%rax, %rbp
	jb	.L2237
.L1873:
	leaq	8(%r13), %rcx
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE153:
	testq	%rax, %rax
	je	.L2482
.L1854:
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rdx
	movq	112(%rsp), %rax
	leaq	8(%r13), %rcx
	addq	$64, %rdx
	movq	%rax, 74720(%rsp)
	movq	%rdx, 74920(%rsp)
	movq	%rdx, 48(%rsp)
	movq	80(%rsp), %rdx
	leaq	16(%rdx), %r15
	movq	%r15, 74728(%rsp)
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	leaq	80(%r13), %rcx
	call	_ZNSt12__basic_fileIcED1Ev
	movq	72(%rsp), %rdx
	leaq	64(%r13), %rcx
	leaq	16(%rdx), %r14
	movq	%r14, 74728(%rsp)
	call	_ZNSt6localeD1Ev
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rdx
	movq	-24(%rdi), %rax
	leaq	200(%r13), %rcx
	leaq	16(%rdx), %rbp
	movq	%r12, 74720(%rsp,%rax)
	movq	%rbp, 74920(%rsp)
	call	_ZNSt8ios_baseD2Ev
	movq	%r15, 328(%rsp)
	movq	64(%rsp), %r15
	movq	48(%rsp), %rdx
	movq	112(%rsp), %rax
	leaq	8(%r15), %rcx
	movq	%rdx, 520(%rsp)
	movq	%rax, 320(%rsp)
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	leaq	80(%r15), %rcx
	call	_ZNSt12__basic_fileIcED1Ev
	leaq	64(%r15), %rcx
	movq	%r14, 328(%rsp)
	call	_ZNSt6localeD1Ev
	movq	-24(%rdi), %rax
	leaq	200(%r15), %rcx
	movq	%r12, 320(%rsp,%rax)
	movq	%rbp, 520(%rsp)
	call	_ZNSt8ios_baseD2Ev
	movl	92(%rsp), %ecx
	movq	%rbx, %r8
	movq	%rsi, %rdx
.LEHB154:
	call	_Z8PlayTestiP11NeuralBrainILi83ELi100EES1_
.LEHE154:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	subq	120(%rsp), %rax
	movabsq	$4835703278458516699, %rdx
	movl	$18, %r8d
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	sarq	$18, %rdx
	movq	%rdx, %rdi
	leaq	.LC58(%rip), %rdx
	subq	%rcx, %rdi
	movq	.refptr._ZSt4cout(%rip), %rcx
.LEHB155:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE155:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	%rdi, %rdx
.LEHB156:
	call	_ZNSo9_M_insertIxEERSoT_
.LEHE156:
	leaq	.LC59(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
.LEHB157:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.LEHE157:
	addl	$1, 92(%rsp)
	movq	%rbx, 48(%rsp)
	movl	92(%rsp), %eax
	cmpl	%eax, GenerationCount(%rip)
	movq	%rsi, 56(%rsp)
	jg	.L1880
	movq	%rbx, %r8
	movq	%rsi, %rdx
	jmp	.L1646
.L1984:
	movq	%rax, %rbx
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rax
	movq	%rax, 40(%rsp)
	vzeroupper
	jmp	.L1598
.L1630:
	movq	%rbp, %rcx
.LEHB158:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L1631
	movq	%rbp, %rcx
	call	*%rax
.LEHE158:
	movsbl	%al, %edx
	jmp	.L1631
.L1989:
	movq	149096(%rsp), %rcx
	movq	%rax, %rbx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, 74720(%rsp)
	testq	%rcx, %rcx
	je	.L2422
	vzeroupper
	call	_ZdlPv
.L1908:
	movq	74728(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1909
	call	_ZdlPv
.L1909:
	movq	%r13, %rcx
	call	_ZN9NeuralNetD2Ev
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rax
	movq	%rax, 40(%rsp)
.L1910:
	movq	136(%rsp), %rdi
	movq	128(%rsp), %rbp
	cmpq	%rbp, %rdi
	je	.L1951
.L1956:
	movq	0(%rbp), %rsi
	testq	%rsi, %rsi
	je	.L1952
	movq	(%rsi), %rax
	movq	8(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	.L1953
	movq	74376(%rsi), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rsi)
	testq	%rcx, %rcx
	je	.L1954
	call	_ZdlPv
.L1954:
	movq	8(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L1955
	call	_ZdlPv
.L1955:
	movq	%rsi, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
.L1952:
	addq	$16, %rbp
	cmpq	%rbp, %rdi
	jne	.L1956
	movq	128(%rsp), %rdi
.L1951:
	testq	%rdi, %rdi
	je	.L1607
	movq	%rdi, %rcx
	call	_ZdlPv
.L1607:
	movq	56(%rsp), %rdi
	movq	(%rdi), %rax
	movq	8(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	.L1958
	movq	%rdi, %rax
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rdi
	movq	74376(%rax), %rcx
	movq	%rdi, (%rax)
	testq	%rcx, %rcx
	je	.L1959
	call	_ZdlPv
.L1959:
	movq	56(%rsp), %rax
	movq	8(%rax), %rcx
	testq	%rcx, %rcx
	je	.L1960
	call	_ZdlPv
.L1960:
	movq	56(%rsp), %rdi
	movq	%rdi, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
	jmp	.L1598
.L1953:
	movq	%rsi, %rcx
	call	*%rax
	jmp	.L1952
.L2470:
	movq	48(%rsp), %r8
	movq	56(%rsp), %rdx
	movq	%rdi, 40(%rsp)
.L1646:
	movl	$-1, %ecx
.LEHB159:
	call	_Z8PlayTestiP11NeuralBrainILi83ELi100EES1_
	movq	168(%rsp), %rsi
	movq	160(%rsp), %rdi
	cmpq	%rdi, %rsi
	je	.L1881
.L1886:
	movq	(%rdi), %rbx
	testq	%rbx, %rbx
	je	.L1882
	movq	(%rbx), %rax
	movq	8(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	.L1883
	movq	74376(%rbx), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rbx)
	testq	%rcx, %rcx
	je	.L1884
	call	_ZdlPv
.L1884:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1885
	call	_ZdlPv
.L1885:
	movq	%rbx, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L1882:
	addq	$16, %rdi
	cmpq	%rdi, %rsi
	jne	.L1886
	movq	160(%rsp), %rsi
.L1881:
	testq	%rsi, %rsi
	je	.L1887
	movq	%rsi, %rcx
	call	_ZdlPv
.L1887:
	movq	136(%rsp), %rsi
	movq	128(%rsp), %rdi
	cmpq	%rdi, %rsi
	je	.L1888
.L1893:
	movq	(%rdi), %rbx
	testq	%rbx, %rbx
	je	.L1889
	movq	(%rbx), %rax
	movq	8(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	.L1890
	movq	74376(%rbx), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rbx)
	testq	%rcx, %rcx
	je	.L1891
	call	_ZdlPv
.L1891:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1892
	call	_ZdlPv
.L1892:
	movq	%rbx, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L1889:
	addq	$16, %rdi
	cmpq	%rdi, %rsi
	jne	.L1893
	movq	128(%rsp), %rsi
.L1888:
	testq	%rsi, %rsi
	je	.L1894
	movq	%rsi, %rcx
	call	_ZdlPv
.L1894:
	movq	56(%rsp), %rdi
	movq	(%rdi), %rax
	movq	8(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	.L1895
	movq	%rdi, %rax
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rdi
	movq	74376(%rax), %rcx
	movq	%rdi, (%rax)
	testq	%rcx, %rcx
	je	.L1896
	call	_ZdlPv
.L1896:
	movq	56(%rsp), %rax
	movq	8(%rax), %rcx
	testq	%rcx, %rcx
	je	.L1897
	call	_ZdlPv
.L1897:
	movq	56(%rsp), %rdi
	movq	%rdi, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
.L1898:
	movq	48(%rsp), %rdi
	movq	(%rdi), %rax
	movq	8(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	.L1899
	movq	%rdi, %rax
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rdi
	movq	74376(%rax), %rcx
	movq	%rdi, (%rax)
	testq	%rcx, %rcx
	je	.L1900
	call	_ZdlPv
.L1900:
	movq	48(%rsp), %rax
	movq	8(%rax), %rcx
	testq	%rcx, %rcx
	je	.L1901
	call	_ZdlPv
.L1901:
	movq	48(%rsp), %rdi
	movq	%rdi, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
	nop
.L2425:
	vmovaps	149120(%rsp), %xmm6
	vmovaps	149136(%rsp), %xmm7
	vmovaps	149152(%rsp), %xmm8
	vmovaps	149168(%rsp), %xmm9
	vmovaps	149184(%rsp), %xmm10
	addq	$149208, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1883:
	movq	%rbx, %rcx
	call	*%rax
	jmp	.L1882
.L1890:
	movq	%rbx, %rcx
	call	*%rax
	jmp	.L1889
.L1899:
	movq	%rdi, %rcx
	call	*%rax
	jmp	.L2425
.L1895:
	movq	%rdi, %rcx
	call	*%rax
	jmp	.L1898
.L1644:
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rax
	movq	%rbx, %rcx
	movq	%rax, 40(%rsp)
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L1645
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rdi
	movq	%rbx, %rcx
	movq	%rdi, 40(%rsp)
	call	*%rax
	movsbl	%al, %edx
	jmp	.L1645
.L2469:
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rax
	movq	%rax, 40(%rsp)
	call	_ZSt16__throw_bad_castv
.LEHE159:
.L1990:
	movq	%rax, %rdi
	vzeroupper
.L1718:
	movq	168(%rsp), %rsi
	movq	160(%rsp), %rbp
	cmpq	%rbp, %rsi
	je	.L1944
.L1949:
	movq	0(%rbp), %rbx
	testq	%rbx, %rbx
	je	.L1945
	movq	(%rbx), %rax
	movq	8(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	.L1946
	movq	74376(%rbx), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rbx)
	testq	%rcx, %rcx
	je	.L1947
	call	_ZdlPv
.L1947:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1948
	call	_ZdlPv
.L1948:
	movq	%rbx, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L1945:
	addq	$16, %rbp
	cmpq	%rbp, %rsi
	jne	.L1949
	movq	160(%rsp), %rsi
.L1944:
	testq	%rsi, %rsi
	je	.L1950
	movq	%rsi, %rcx
	call	_ZdlPv
.L1950:
	movq	%rdi, %rbx
	jmp	.L1910
.L1946:
	movq	%rbx, %rcx
	call	*%rax
	jmp	.L1945
.L2422:
	vzeroupper
	jmp	.L1908
.L1958:
	movq	%rdi, %rcx
	call	*%rax
	jmp	.L1598
	.p2align 4,,10
.L1676:
	addl	$1, 8(%r14)
	jmp	.L1677
.L1705:
	movq	%rdi, %rcx
	call	*%rax
	jmp	.L1708
.L2008:
	movq	%rax, %rdi
	vzeroupper
.L1704:
	movq	(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L1709
	movq	(%rcx), %rax
	call	*8(%rax)
.L1709:
	movq	%rdi, %rcx
	call	__cxa_begin_catch
	cmpq	%rsi, %rbp
	je	.L1710
.L1715:
	movq	0(%rbp), %rcx
	testq	%rcx, %rcx
	je	.L1714
	movq	(%rcx), %rax
	call	*8(%rax)
.L1714:
	addq	$16, %rbp
	cmpq	%rsi, %rbp
	jne	.L1715
.L1710:
.LEHB160:
	call	__cxa_rethrow
.LEHE160:
.L1723:
	movq	%rbp, %rcx
	call	*%rax
	jmp	.L1722
.L1730:
	movq	%rdi, %rcx
	call	*%rax
	jmp	.L1729
.L1737:
	movq	%rdi, %rcx
	call	*%rax
	jmp	.L1736
.L1771:
	movq	%rbp, %rcx
	call	*%rax
	jmp	.L1770
.L1778:
	movq	%rdi, %rcx
	call	*%rax
	jmp	.L1777
.L1754:
	movq	%rdi, %rcx
	call	*%rax
	jmp	.L1757
.L1993:
	movq	264(%rsp), %rsi
	movq	256(%rsp), %rbp
	movq	%rax, %rdi
	cmpq	%rbp, %rsi
	je	.L2424
	vzeroupper
.L1933:
	movq	0(%rbp), %rbx
	testq	%rbx, %rbx
	je	.L1929
	movq	(%rbx), %rax
	movq	8(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	.L1930
	movq	74376(%rbx), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rbx)
	testq	%rcx, %rcx
	je	.L1931
	call	_ZdlPv
.L1931:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1932
	call	_ZdlPv
.L1932:
	movq	%rbx, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L1929:
	addq	$16, %rbp
	cmpq	%rbp, %rsi
	jne	.L1933
	movq	256(%rsp), %rsi
.L1928:
	testq	%rsi, %rsi
	je	.L1718
	movq	%rsi, %rcx
.L2429:
	call	_ZdlPv
	jmp	.L1718
.L1930:
	movq	%rbx, %rcx
	call	*%rax
	jmp	.L1929
.L2424:
	vzeroupper
	jmp	.L1928
.L1785:
	movq	%rdi, %rcx
	call	*%rax
	jmp	.L1784
.L1747:
	movl	$0x00000000, 74720(%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
.L1971:
	movq	%r15, %rax
	movq	%r13, %r9
	movq	%rdi, %rcx
	subq	%r8, %rax
	movq	%rax, %r8
.LEHB161:
	call	_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEyRKf
.LEHE161:
	jmp	.L1750
.L2013:
	movq	%rax, %rdi
	vzeroupper
.L1752:
	movl	$74400, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L1753:
	movq	(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L1758
	movq	(%rcx), %rax
	call	*8(%rax)
.L1758:
	movq	%rdi, %rcx
	call	__cxa_begin_catch
	cmpq	%rsi, %rbp
	je	.L1759
.L1764:
	movq	0(%rbp), %rcx
	testq	%rcx, %rcx
	je	.L1763
	movq	(%rcx), %rax
	call	*8(%rax)
.L1763:
	addq	$16, %rbp
	cmpq	%rsi, %rbp
	jne	.L1764
.L1759:
.LEHB162:
	call	__cxa_rethrow
.LEHE162:
.L2012:
	movq	%rax, %rdi
	vzeroupper
	jmp	.L1753
.L2014:
	movq	%rax, %rdi
	movq	%rbx, %rcx
	vzeroupper
	call	_ZN11NeuralBrainILi83ELi100EED1Ev
	jmp	.L1752
.L2011:
	movq	%rax, %rdi
	vzeroupper
	call	__cxa_end_catch
	movq	256(%rsp), %rcx
	testq	%rcx, %rcx
	jne	.L2429
	jmp	.L1718
.L1837:
	movq	%rdi, %rcx
	call	*%rax
	jmp	.L1840
.L2479:
	movq	56(%rsp), %rcx
	call	*%rax
	jmp	.L1836
.L1825:
	movl	$0x00000000, 320(%rsp)
	xorl	%r10d, %r10d
	xorl	%edx, %edx
.L1973:
	movq	64(%rsp), %r9
	movl	$100, %r8d
	movq	%rdi, %rcx
	subq	%r10, %r8
.LEHB163:
	call	_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEyRKf
.LEHE163:
	jmp	.L1827
.L1996:
	movq	%rax, %rbp
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	leaq	8(%r13), %rcx
	addq	$24, %rax
	movq	%rax, 74720(%rsp)
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	addq	$64, %rax
	movq	%rax, 74920(%rsp)
	movq	80(%rsp), %rax
	addq	$16, %rax
	movq	%rax, 74728(%rsp)
	vzeroupper
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	leaq	80(%r13), %rcx
	call	_ZNSt12__basic_fileIcED1Ev
	movq	72(%rsp), %rax
	leaq	64(%r13), %rcx
	addq	$16, %rax
	movq	%rax, 74728(%rsp)
	call	_ZNSt6localeD1Ev
	movq	-24(%rdi), %rax
	movq	%r12, 74720(%rsp,%rax)
.L2426:
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	leaq	200(%r13), %rcx
	addq	$16, %rax
	movq	%rax, 74920(%rsp)
	call	_ZNSt8ios_baseD2Ev
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	64(%rsp), %r15
	addq	$24, %rax
	leaq	8(%r15), %rcx
	movq	%rax, 320(%rsp)
	movq	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	addq	$64, %rax
	movq	%rax, 520(%rsp)
	movq	80(%rsp), %rax
	addq	$16, %rax
	movq	%rax, 328(%rsp)
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	leaq	80(%r15), %rcx
	call	_ZNSt12__basic_fileIcED1Ev
	movq	72(%rsp), %rax
	leaq	64(%r15), %rcx
	addq	$16, %rax
	movq	%rax, 328(%rsp)
	call	_ZNSt6localeD1Ev
	movq	-24(%rdi), %rax
	leaq	200(%r15), %rcx
	movq	%rbp, %rdi
	movq	%r12, 320(%rsp,%rax)
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	addq	$16, %rax
	movq	%rax, 520(%rsp)
	call	_ZNSt8ios_baseD2Ev
	movq	%rsi, 56(%rsp)
.L2431:
	movq	%rbx, 48(%rsp)
	jmp	.L1718
.L1852:
	movq	64(%rsp), %r14
	movl	$1, %edx
	movq	%r14, %rcx
.LEHB164:
	call	_ZNSolsEi
	leaq	.LC14(%rip), %rdx
	movl	$1, %r8d
	movq	%r14, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$183, %ebp
.L1856:
	movq	64(%rsp), %r15
	xorl	%edx, %edx
	movq	%r15, %rcx
	call	_ZNSolsEi
	leaq	.LC14(%rip), %rdx
	movl	$1, %r8d
	movq	%r15, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	subl	$1, %ebp
	jne	.L1856
	leaq	772(%rbx), %rbp
	leaq	74372(%rbx), %r14
.L1859:
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	64(%rsp), %rcx
	vcvtss2sd	0(%rbp), %xmm1, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC14(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	addq	$4, %rbp
	cmpq	%rbp, %r14
	jne	.L1859
	movq	74376(%rbx), %rdx
	movq	74384(%rbx), %rax
	xorl	%ebp, %ebp
	subq	%rdx, %rax
	sarq	$2, %rax
	testq	%rax, %rax
	je	.L1862
.L2238:
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	64(%rsp), %rcx
	vcvtss2sd	(%rdx,%rbp,4), %xmm1, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	.LC14(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	74376(%rbx), %rdx
	movq	74384(%rbx), %rax
	addq	$1, %rbp
	subq	%rdx, %rax
	sarq	$2, %rax
	cmpq	%rax, %rbp
	jb	.L2238
.L1862:
	movq	64(%rsp), %rax
	leaq	8(%rax), %rcx
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	testq	%rax, %rax
	jne	.L1863
	movq	320(%rsp), %rax
	movq	64(%rsp), %rcx
	addq	-24(%rax), %rcx
	movl	32(%rcx), %edx
	orl	$4, %edx
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	jmp	.L1863
.L2482:
	movq	74720(%rsp), %rax
	movq	%r13, %rcx
	addq	-24(%rax), %rcx
	movl	32(%rcx), %edx
	orl	$4, %edx
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE164:
	jmp	.L1854
.L2018:
	movq	%rax, %rdi
	movq	%rsi, %rcx
	vzeroupper
	call	_ZN11NeuralBrainILi83ELi100EED1Ev
.L1832:
	movl	$74400, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
.L1833:
	movq	74720(%rsp), %rsi
	testq	%rsi, %rsi
	je	.L2431
	movq	(%rsi), %rax
	movq	8(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	.L1940
	movq	74376(%rsi), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rsi)
	testq	%rcx, %rcx
	je	.L1941
	call	_ZdlPv
.L1941:
	movq	8(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L1942
	call	_ZdlPv
.L1942:
	movq	%rsi, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	jmp	.L2431
.L1940:
	movq	%rsi, %rcx
	call	*%rax
	jmp	.L2431
.L2026:
.L2427:
	movq	%rax, %rdi
	movq	%rsi, 56(%rsp)
	movq	%rbx, 48(%rsp)
	vzeroupper
	jmp	.L1718
.L2027:
	jmp	.L2427
.L2028:
	jmp	.L2427
.L2029:
	jmp	.L2427
.L2481:
	addq	-24(%rax), %rcx
	movl	32(%rcx), %edx
	orl	$4, %edx
.LEHB165:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE165:
	jmp	.L1847
.L2024:
	leaq	8(%r13), %rcx
	movq	%rax, %rbp
	vzeroupper
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
	movq	%rbp, %rax
.L1849:
	movq	-24(%rdi), %rdx
	movq	%rax, %rbp
	movq	%r12, 74720(%rsp,%rdx)
	jmp	.L2426
.L2023:
	vzeroupper
	jmp	.L1849
.L2022:
	movq	%rax, %rbp
	vzeroupper
	jmp	.L2426
.L2480:
	addq	-24(%rax), %rcx
	movl	32(%rcx), %edx
	orl	$4, %edx
.LEHB166:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE166:
	jmp	.L1842
.L2021:
	movq	%rax, %rbp
	movq	64(%rsp), %rax
	leaq	8(%rax), %rcx
	vzeroupper
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
	movq	%rbp, %rax
.L1844:
	movq	-24(%rdi), %rdx
	movq	%rax, %rdi
	movq	%r12, 320(%rsp,%rdx)
.L1845:
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	64(%rsp), %rcx
	addq	$16, %rax
	addq	$200, %rcx
	movq	%rax, 520(%rsp)
	call	_ZNSt8ios_baseD2Ev
	movq	%rsi, 56(%rsp)
	movq	%rbx, 48(%rsp)
	jmp	.L1718
.L2020:
	vzeroupper
	jmp	.L1844
.L2019:
	movq	%rax, %rdi
	vzeroupper
	jmp	.L1845
.L2017:
	movq	%rax, %rdi
	vzeroupper
	jmp	.L1832
.L1995:
	movq	%rax, %rdi
	vzeroupper
	jmp	.L1833
.L2025:
	movq	%rax, %rdi
	movq	%rbx, 48(%rsp)
	vzeroupper
	jmp	.L1718
.L1819:
	movq	%rsi, %rcx
	call	*%rax
	jmp	.L1822
.L2478:
	movq	48(%rsp), %rcx
	call	*%rax
	jmp	.L1818
.L1807:
	movl	$0x00000000, 320(%rsp)
	xorl	%r10d, %r10d
	xorl	%edx, %edx
.L1972:
	movq	64(%rsp), %r9
	movl	$100, %r8d
	movq	%rsi, %rcx
	subq	%r10, %r8
.LEHB167:
	call	_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEyRKf
.LEHE167:
	jmp	.L1809
.L2016:
	movq	%rax, %rdi
	movq	%rbx, %rcx
	vzeroupper
	call	_ZN11NeuralBrainILi83ELi100EED1Ev
.L1814:
	movl	$74400, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L1815:
	movq	74720(%rsp), %rbx
	testq	%rbx, %rbx
	je	.L1718
	movq	(%rbx), %rax
	movq	8(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	.L1936
	movq	74376(%rbx), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rbx)
	testq	%rcx, %rcx
	je	.L1937
	call	_ZdlPv
.L1937:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1938
	call	_ZdlPv
.L1938:
	movq	%rbx, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	jmp	.L1718
.L1936:
	movq	%rbx, %rcx
	call	*%rax
	jmp	.L1718
.L2015:
	movq	%rax, %rdi
	vzeroupper
	jmp	.L1814
.L1994:
	movq	%rax, %rdi
	vzeroupper
	jmp	.L1815
.L1805:
	movq	%rbx, %rcx
.LEHB168:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L1806
	movq	%rbx, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L1806
.L2477:
	call	_ZSt16__throw_bad_castv
.L1802:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L1803
	movq	%rbx, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L1803
.L2476:
	call	_ZSt16__throw_bad_castv
.L1795:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L1796
	movq	%rbx, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L1796
.L2475:
	call	_ZSt16__throw_bad_castv
.LEHE168:
.L1988:
	movq	%rax, %rbx
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rax
	movq	%rax, 40(%rsp)
	vzeroupper
	jmp	.L1910
.L1987:
	movq	74696(%rsp), %rcx
	movq	%rax, %rbx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, 320(%rsp)
	testq	%rcx, %rcx
	je	.L2421
	vzeroupper
	call	_ZdlPv
.L1905:
	movq	328(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1906
	call	_ZdlPv
.L1906:
	movq	64(%rsp), %rcx
	call	_ZN9NeuralNetD2Ev
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rax
	movq	%rax, 40(%rsp)
	jmp	.L1607
.L2421:
	vzeroupper
	jmp	.L1905
.L1985:
	movq	%rax, %rbx
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rax
	movq	%rax, 40(%rsp)
	vzeroupper
	jmp	.L1607
.L2468:
	movq	74720(%rsp), %rax
	movq	%r13, %rcx
	addq	-24(%rax), %rcx
	movl	32(%rcx), %edx
	orl	$4, %edx
.LEHB169:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	jmp	.L1616
.L2467:
	call	_ZSt16__throw_bad_castv
.LEHE169:
.L1986:
	movq	%rax, %rbp
	leaq	24(%rbx), %rax
	leaq	16(%r13), %rcx
	movq	%rax, 74720(%rsp)
	leaq	64(%rbx), %rax
	movq	%rax, 74928(%rsp)
	movq	.refptr._ZTVSt13basic_filebufIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, 80(%rsp)
	addq	$16, %rax
	movq	%rax, 74736(%rsp)
	vzeroupper
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	leaq	88(%r13), %rcx
	call	_ZNSt12__basic_fileIcED1Ev
	movq	.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	72(%r13), %rcx
	movq	%rax, 72(%rsp)
	addq	$16, %rax
	movq	%rax, 74736(%rsp)
	call	_ZNSt6localeD1Ev
	movq	-24(%rsi), %rax
	leaq	208(%r13), %rcx
	movq	%rdi, 74720(%rsp,%rax)
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	addq	$16, %rax
	movq	%rax, 74928(%rsp)
	call	_ZNSt8ios_baseD2Ev
.L1613:
	leaq	24(%rbx), %rax
	addq	$64, %rbx
	movq	%rbx, 528(%rsp)
	movq	64(%rsp), %rbx
	movq	%rax, 320(%rsp)
	movq	80(%rsp), %rax
	leaq	16(%rbx), %rcx
	addq	$16, %rax
	movq	%rax, 336(%rsp)
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	leaq	88(%rbx), %rcx
	call	_ZNSt12__basic_fileIcED1Ev
	movq	72(%rsp), %rax
	leaq	72(%rbx), %rcx
	addq	$16, %rax
	movq	%rax, 336(%rsp)
	call	_ZNSt6localeD1Ev
	movq	-24(%rsi), %rax
	leaq	208(%rbx), %rcx
	movq	%rbp, %rbx
	movq	%rdi, 320(%rsp,%rax)
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	addq	$16, %rax
	movq	%rax, 528(%rsp)
	call	_ZNSt8ios_baseD2Ev
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rax
	movq	%rax, 40(%rsp)
	jmp	.L1607
.L1614:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	movl	$9, %r8d
.LEHB170:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	.refptr._ZSt4cout(%rip), %rdx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rdx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L2483
	cmpb	$0, 56(%rbp)
	je	.L1618
	movsbl	67(%rbp), %edx
.L1619:
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	48(%rsp), %rax
	leaq	36(%rax), %rbp
	leaq	74372(%rax), %r12
.L1623:
	movq	64(%rsp), %rcx
	movq	%rbp, %rdx
	call	_ZNSi10_M_extractIfEERSiRT_
	addq	$4, %rbp
	cmpq	%r12, %rbp
	jne	.L1623
	movq	48(%rsp), %rax
	xorl	%ebp, %ebp
	movq	74376(%rax), %rdx
	movq	74384(%rax), %rax
	movq	%rax, 40(%rsp)
	subq	%rdx, %rax
	sarq	$2, %rax
	testq	%rax, %rax
	je	.L1626
.L2245:
	movq	64(%rsp), %rcx
	leaq	(%rdx,%rbp,4), %rdx
	call	_ZNSi10_M_extractIfEERSiRT_
	movq	48(%rsp), %rax
	addq	$1, %rbp
	movq	74376(%rax), %rdx
	movq	74384(%rax), %rax
	movq	%rax, 40(%rsp)
	subq	%rdx, %rax
	sarq	$2, %rax
	cmpq	%rbp, %rax
	ja	.L2245
.L1626:
	movq	64(%rsp), %rax
	leaq	16(%rax), %rcx
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	testq	%rax, %rax
	jne	.L1627
	movq	320(%rsp), %rax
	movq	64(%rsp), %rcx
	addq	-24(%rax), %rcx
	movl	32(%rcx), %edx
	orl	$4, %edx
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE170:
	jmp	.L1627
.L2466:
	addq	-24(%rax), %rcx
	movl	32(%rcx), %edx
	orl	$4, %edx
.LEHB171:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE171:
	jmp	.L1609
.L2003:
	vzeroupper
.L1611:
	movq	-24(%rsi), %rdx
	movq	%rax, %rbp
	movq	%rdi, 74720(%rsp,%rdx)
.L1612:
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	leaq	208(%r13), %rcx
	addq	$16, %rax
	movq	%rax, 74928(%rsp)
	call	_ZNSt8ios_baseD2Ev
	movq	.refptr._ZTVSt13basic_filebufIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, 80(%rsp)
	movq	.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, 72(%rsp)
	jmp	.L1613
.L2002:
	movq	%rax, %rbp
	vzeroupper
	jmp	.L1612
.L2465:
	addq	-24(%rax), %rcx
	movl	32(%rcx), %edx
	orl	$4, %edx
.LEHB172:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE172:
	jmp	.L1603
.L2001:
	movq	%rax, %rbx
	movq	64(%rsp), %rax
	leaq	16(%rax), %rcx
	vzeroupper
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
.L1605:
	movq	-24(%rsi), %rax
	movq	%rdi, 320(%rsp,%rax)
.L1606:
	movq	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	64(%rsp), %rcx
	addq	$16, %rax
	addq	$208, %rcx
	movq	%rax, 528(%rsp)
	call	_ZNSt8ios_baseD2Ev
	leaq	_ZN11NeuralBrainILi83ELi100EED0Ev(%rip), %rax
	movq	%rax, 40(%rsp)
	jmp	.L1607
.L2000:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L1605
.L1999:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L1606
.L2004:
	leaq	16(%r13), %rcx
	movq	%rax, %rbp
	vzeroupper
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
	movq	%rbp, %rax
	jmp	.L1611
.L1618:
	movq	%rbp, %rcx
.LEHB173:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L1619
	movq	%rbp, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L1619
.L2483:
	call	_ZSt16__throw_bad_castv
.LEHE173:
.L2472:
.LEHB174:
	call	_ZSt16__throw_bad_castv
.L2473:
	call	_ZSt17__throw_bad_allocv
.L1655:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L1656
	movq	%rbx, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L1656
.L2471:
	call	_ZSt16__throw_bad_castv
.LEHE174:
.L2005:
	movq	%rax, %rdi
	movl	$74400, %edx
	movq	%rsi, %rcx
	vzeroupper
	call	_ZdlPvy
.L1666:
	movq	74800(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1911
	call	_ZdlPv
.L1911:
	movq	74776(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1912
	call	_ZdlPv
.L1912:
	leaq	56(%r13), %rbx
	addq	$24, %r13
.L1914:
	subq	$8, %rbx
	movq	(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1913
	movl	$32, %edx
	call	_ZdlPvy
.L1913:
	cmpq	%r13, %rbx
	jne	.L1914
	movq	74728(%rsp), %rbx
	movq	74720(%rsp), %rsi
	cmpq	%rsi, %rbx
	je	.L1915
.L1917:
	movq	(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L1916
	movq	(%rcx), %rax
	call	*8(%rax)
.L1916:
	addq	$8, %rsi
	cmpq	%rsi, %rbx
	jne	.L1917
	movq	74720(%rsp), %rbx
.L1915:
	testq	%rbx, %rbx
	je	.L1718
	movq	%rbx, %rcx
	call	_ZdlPv
	jmp	.L1718
.L1991:
	movq	%rax, %rdi
	vzeroupper
	jmp	.L1666
.L2006:
	movq	%rax, %rdi
	movl	$74400, %edx
	movq	%rbx, %rcx
	vzeroupper
	call	_ZdlPvy
	jmp	.L1666
.L1698:
	movl	$0x00000000, 74720(%rsp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
.L1970:
	movq	%r15, %rax
	movq	%r13, %r9
	movq	%rdi, %rcx
	subq	%r8, %rax
	movq	%rax, %r8
.LEHB175:
	call	_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEyRKf
.LEHE175:
	jmp	.L1701
.L2009:
	movq	%rax, %rdi
	vzeroupper
.L1703:
	movl	$74400, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	jmp	.L1704
.L2010:
	movq	%rax, %rdi
	movq	%rbx, %rcx
	vzeroupper
	call	_ZN11NeuralBrainILi83ELi100EED1Ev
	jmp	.L1703
.L1691:
	movq	%rbx, %rcx
.LEHB176:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L1692
	movq	%rbx, %rcx
	call	*%rax
.LEHE176:
	movsbl	%al, %edx
	jmp	.L1692
.L2007:
	movq	%rax, %rdi
	vzeroupper
	call	__cxa_end_catch
	movq	192(%rsp), %rcx
	testq	%rcx, %rcx
	jne	.L2429
	jmp	.L1718
.L1992:
	movq	200(%rsp), %rsi
	movq	192(%rsp), %rbp
	movq	%rax, %rdi
	cmpq	%rbp, %rsi
	je	.L2424
	vzeroupper
.L1925:
	movq	0(%rbp), %rbx
	testq	%rbx, %rbx
	je	.L1921
	movq	(%rbx), %rax
	movq	8(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	.L1922
	movq	74376(%rbx), %rcx
	leaq	16+_ZTV11NeuralBrainILi83ELi100EE(%rip), %rax
	movq	%rax, (%rbx)
	testq	%rcx, %rcx
	je	.L1923
	call	_ZdlPv
.L1923:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1924
	call	_ZdlPv
.L1924:
	movq	%rbx, %rcx
	call	_ZN9NeuralNetD2Ev
	movl	$74400, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L1921:
	addq	$16, %rbp
	cmpq	%rbp, %rsi
	jne	.L1925
	movq	192(%rsp), %rsi
	jmp	.L1928
.L1922:
	movq	%rbx, %rcx
	call	*%rax
	jmp	.L1921
.L2474:
.LEHB177:
	call	_ZSt17__throw_bad_allocv
	nop
.LEHE177:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA9384:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT9384-.LLSDATTD9384
.LLSDATTD9384:
	.byte	0x1
	.uleb128 .LLSDACSE9384-.LLSDACSB9384
.LLSDACSB9384:
	.uleb128 .LEHB110-.LFB9384
	.uleb128 .LEHE110-.LEHB110
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB111-.LFB9384
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L1997-.LFB9384
	.uleb128 0
	.uleb128 .LEHB112-.LFB9384
	.uleb128 .LEHE112-.LEHB112
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB113-.LFB9384
	.uleb128 .LEHE113-.LEHB113
	.uleb128 .L1984-.LFB9384
	.uleb128 0
	.uleb128 .LEHB114-.LFB9384
	.uleb128 .LEHE114-.LEHB114
	.uleb128 .L1998-.LFB9384
	.uleb128 0
	.uleb128 .LEHB115-.LFB9384
	.uleb128 .LEHE115-.LEHB115
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB116-.LFB9384
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L1999-.LFB9384
	.uleb128 0
	.uleb128 .LEHB117-.LFB9384
	.uleb128 .LEHE117-.LEHB117
	.uleb128 .L2000-.LFB9384
	.uleb128 0
	.uleb128 .LEHB118-.LFB9384
	.uleb128 .LEHE118-.LEHB118
	.uleb128 .L2001-.LFB9384
	.uleb128 0
	.uleb128 .LEHB119-.LFB9384
	.uleb128 .LEHE119-.LEHB119
	.uleb128 .L2002-.LFB9384
	.uleb128 0
	.uleb128 .LEHB120-.LFB9384
	.uleb128 .LEHE120-.LEHB120
	.uleb128 .L2003-.LFB9384
	.uleb128 0
	.uleb128 .LEHB121-.LFB9384
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L2004-.LFB9384
	.uleb128 0
	.uleb128 .LEHB122-.LFB9384
	.uleb128 .LEHE122-.LEHB122
	.uleb128 .L1986-.LFB9384
	.uleb128 0
	.uleb128 .LEHB123-.LFB9384
	.uleb128 .LEHE123-.LEHB123
	.uleb128 .L1985-.LFB9384
	.uleb128 0
	.uleb128 .LEHB124-.LFB9384
	.uleb128 .LEHE124-.LEHB124
	.uleb128 .L1987-.LFB9384
	.uleb128 0
	.uleb128 .LEHB125-.LFB9384
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L1988-.LFB9384
	.uleb128 0
	.uleb128 .LEHB126-.LFB9384
	.uleb128 .LEHE126-.LEHB126
	.uleb128 .L1989-.LFB9384
	.uleb128 0
	.uleb128 .LEHB127-.LFB9384
	.uleb128 .LEHE127-.LEHB127
	.uleb128 .L1990-.LFB9384
	.uleb128 0
	.uleb128 .LEHB128-.LFB9384
	.uleb128 .LEHE128-.LEHB128
	.uleb128 .L1991-.LFB9384
	.uleb128 0
	.uleb128 .LEHB129-.LFB9384
	.uleb128 .LEHE129-.LEHB129
	.uleb128 .L2005-.LFB9384
	.uleb128 0
	.uleb128 .LEHB130-.LFB9384
	.uleb128 .LEHE130-.LEHB130
	.uleb128 .L1991-.LFB9384
	.uleb128 0
	.uleb128 .LEHB131-.LFB9384
	.uleb128 .LEHE131-.LEHB131
	.uleb128 .L2006-.LFB9384
	.uleb128 0
	.uleb128 .LEHB132-.LFB9384
	.uleb128 .LEHE132-.LEHB132
	.uleb128 .L1991-.LFB9384
	.uleb128 0
	.uleb128 .LEHB133-.LFB9384
	.uleb128 .LEHE133-.LEHB133
	.uleb128 .L1990-.LFB9384
	.uleb128 0
	.uleb128 .LEHB134-.LFB9384
	.uleb128 .LEHE134-.LEHB134
	.uleb128 .L2008-.LFB9384
	.uleb128 0x1
	.uleb128 .LEHB135-.LFB9384
	.uleb128 .LEHE135-.LEHB135
	.uleb128 .L2009-.LFB9384
	.uleb128 0x1
	.uleb128 .LEHB136-.LFB9384
	.uleb128 .LEHE136-.LEHB136
	.uleb128 .L1992-.LFB9384
	.uleb128 0
	.uleb128 .LEHB137-.LFB9384
	.uleb128 .LEHE137-.LEHB137
	.uleb128 .L1990-.LFB9384
	.uleb128 0
	.uleb128 .LEHB138-.LFB9384
	.uleb128 .LEHE138-.LEHB138
	.uleb128 .L2012-.LFB9384
	.uleb128 0x1
	.uleb128 .LEHB139-.LFB9384
	.uleb128 .LEHE139-.LEHB139
	.uleb128 .L2013-.LFB9384
	.uleb128 0x1
	.uleb128 .LEHB140-.LFB9384
	.uleb128 .LEHE140-.LEHB140
	.uleb128 .L1993-.LFB9384
	.uleb128 0
	.uleb128 .LEHB141-.LFB9384
	.uleb128 .LEHE141-.LEHB141
	.uleb128 .L1990-.LFB9384
	.uleb128 0
	.uleb128 .LEHB142-.LFB9384
	.uleb128 .LEHE142-.LEHB142
	.uleb128 .L1994-.LFB9384
	.uleb128 0
	.uleb128 .LEHB143-.LFB9384
	.uleb128 .LEHE143-.LEHB143
	.uleb128 .L2015-.LFB9384
	.uleb128 0
	.uleb128 .LEHB144-.LFB9384
	.uleb128 .LEHE144-.LEHB144
	.uleb128 .L2025-.LFB9384
	.uleb128 0
	.uleb128 .LEHB145-.LFB9384
	.uleb128 .LEHE145-.LEHB145
	.uleb128 .L1995-.LFB9384
	.uleb128 0
	.uleb128 .LEHB146-.LFB9384
	.uleb128 .LEHE146-.LEHB146
	.uleb128 .L2017-.LFB9384
	.uleb128 0
	.uleb128 .LEHB147-.LFB9384
	.uleb128 .LEHE147-.LEHB147
	.uleb128 .L2019-.LFB9384
	.uleb128 0
	.uleb128 .LEHB148-.LFB9384
	.uleb128 .LEHE148-.LEHB148
	.uleb128 .L2020-.LFB9384
	.uleb128 0
	.uleb128 .LEHB149-.LFB9384
	.uleb128 .LEHE149-.LEHB149
	.uleb128 .L2021-.LFB9384
	.uleb128 0
	.uleb128 .LEHB150-.LFB9384
	.uleb128 .LEHE150-.LEHB150
	.uleb128 .L2022-.LFB9384
	.uleb128 0
	.uleb128 .LEHB151-.LFB9384
	.uleb128 .LEHE151-.LEHB151
	.uleb128 .L2023-.LFB9384
	.uleb128 0
	.uleb128 .LEHB152-.LFB9384
	.uleb128 .LEHE152-.LEHB152
	.uleb128 .L2024-.LFB9384
	.uleb128 0
	.uleb128 .LEHB153-.LFB9384
	.uleb128 .LEHE153-.LEHB153
	.uleb128 .L1996-.LFB9384
	.uleb128 0
	.uleb128 .LEHB154-.LFB9384
	.uleb128 .LEHE154-.LEHB154
	.uleb128 .L2029-.LFB9384
	.uleb128 0
	.uleb128 .LEHB155-.LFB9384
	.uleb128 .LEHE155-.LEHB155
	.uleb128 .L2028-.LFB9384
	.uleb128 0
	.uleb128 .LEHB156-.LFB9384
	.uleb128 .LEHE156-.LEHB156
	.uleb128 .L2027-.LFB9384
	.uleb128 0
	.uleb128 .LEHB157-.LFB9384
	.uleb128 .LEHE157-.LEHB157
	.uleb128 .L2026-.LFB9384
	.uleb128 0
	.uleb128 .LEHB158-.LFB9384
	.uleb128 .LEHE158-.LEHB158
	.uleb128 .L1986-.LFB9384
	.uleb128 0
	.uleb128 .LEHB159-.LFB9384
	.uleb128 .LEHE159-.LEHB159
	.uleb128 .L1990-.LFB9384
	.uleb128 0
	.uleb128 .LEHB160-.LFB9384
	.uleb128 .LEHE160-.LEHB160
	.uleb128 .L2007-.LFB9384
	.uleb128 0
	.uleb128 .LEHB161-.LFB9384
	.uleb128 .LEHE161-.LEHB161
	.uleb128 .L2014-.LFB9384
	.uleb128 0x1
	.uleb128 .LEHB162-.LFB9384
	.uleb128 .LEHE162-.LEHB162
	.uleb128 .L2011-.LFB9384
	.uleb128 0
	.uleb128 .LEHB163-.LFB9384
	.uleb128 .LEHE163-.LEHB163
	.uleb128 .L2018-.LFB9384
	.uleb128 0
	.uleb128 .LEHB164-.LFB9384
	.uleb128 .LEHE164-.LEHB164
	.uleb128 .L1996-.LFB9384
	.uleb128 0
	.uleb128 .LEHB165-.LFB9384
	.uleb128 .LEHE165-.LEHB165
	.uleb128 .L2024-.LFB9384
	.uleb128 0
	.uleb128 .LEHB166-.LFB9384
	.uleb128 .LEHE166-.LEHB166
	.uleb128 .L2021-.LFB9384
	.uleb128 0
	.uleb128 .LEHB167-.LFB9384
	.uleb128 .LEHE167-.LEHB167
	.uleb128 .L2016-.LFB9384
	.uleb128 0
	.uleb128 .LEHB168-.LFB9384
	.uleb128 .LEHE168-.LEHB168
	.uleb128 .L1990-.LFB9384
	.uleb128 0
	.uleb128 .LEHB169-.LFB9384
	.uleb128 .LEHE169-.LEHB169
	.uleb128 .L1986-.LFB9384
	.uleb128 0
	.uleb128 .LEHB170-.LFB9384
	.uleb128 .LEHE170-.LEHB170
	.uleb128 .L1986-.LFB9384
	.uleb128 0
	.uleb128 .LEHB171-.LFB9384
	.uleb128 .LEHE171-.LEHB171
	.uleb128 .L2004-.LFB9384
	.uleb128 0
	.uleb128 .LEHB172-.LFB9384
	.uleb128 .LEHE172-.LEHB172
	.uleb128 .L2001-.LFB9384
	.uleb128 0
	.uleb128 .LEHB173-.LFB9384
	.uleb128 .LEHE173-.LEHB173
	.uleb128 .L1986-.LFB9384
	.uleb128 0
	.uleb128 .LEHB174-.LFB9384
	.uleb128 .LEHE174-.LEHB174
	.uleb128 .L1990-.LFB9384
	.uleb128 0
	.uleb128 .LEHB175-.LFB9384
	.uleb128 .LEHE175-.LEHB175
	.uleb128 .L2010-.LFB9384
	.uleb128 0x1
	.uleb128 .LEHB176-.LFB9384
	.uleb128 .LEHE176-.LEHB176
	.uleb128 .L1990-.LFB9384
	.uleb128 0
	.uleb128 .LEHB177-.LFB9384
	.uleb128 .LEHE177-.LEHB177
	.uleb128 .L1990-.LFB9384
	.uleb128 0
.LLSDACSE9384:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT9384:
	.text
	.seh_endproc
	.section	.text.startup,"x"
	.p2align 4,,15
	.def	_GLOBAL__sub_I_MaxPlayTime;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_MaxPlayTime
_GLOBAL__sub_I_MaxPlayTime:
.LFB10717:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	leaq	32(%rsp), %rbx
.LEHB178:
	call	_ZNSt8ios_base4InitC1Ev
.LEHE178:
	leaq	__tcf_0(%rip), %rcx
	call	atexit
	leaq	16(%rbx), %rax
	leaq	rd(%rip), %rcx
	movl	$959542381, 48(%rsp)
	movq	%rbx, %rdx
	movb	$55, 22(%rbx)
	movq	$7, 40(%rsp)
	movq	%rax, 32(%rsp)
	movl	$13113, %eax
	movw	%ax, 20(%rbx)
	movb	$0, 55(%rsp)
.LEHB179:
	call	_ZNSt13random_device14_M_init_pretr1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE179:
	movq	32(%rsp), %rcx
	addq	$16, %rbx
	cmpq	%rbx, %rcx
	je	.L2485
	call	_ZdlPv
.L2485:
	leaq	rd(%rip), %rcx
.LEHB180:
	call	_ZNSt13random_device16_M_getval_pretr1Ev
	leaq	gen(%rip), %r8
	movl	%eax, gen(%rip)
	movl	%eax, %edx
	movl	$1, %ecx
	.p2align 4,,10
.L2486:
	movl	%edx, %eax
	shrl	$30, %eax
	xorl	%eax, %edx
	imull	$1812433253, %edx, %edx
	addl	%ecx, %edx
	movl	%edx, (%r8,%rcx,4)
	addq	$1, %rcx
	cmpq	$624, %rcx
	jne	.L2486
	movq	$624, 2496+gen(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L2489:
	movq	32(%rsp), %rcx
	addq	$16, %rbx
	movq	%rax, %rsi
	cmpq	%rbx, %rcx
	je	.L2492
	vzeroupper
	call	_ZdlPv
.L2488:
	movq	%rsi, %rcx
	call	_Unwind_Resume
.LEHE180:
.L2492:
	vzeroupper
	jmp	.L2488
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA10717:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10717-.LLSDACSB10717
.LLSDACSB10717:
	.uleb128 .LEHB178-.LFB10717
	.uleb128 .LEHE178-.LEHB178
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB179-.LFB10717
	.uleb128 .LEHE179-.LEHB179
	.uleb128 .L2489-.LFB10717
	.uleb128 0
	.uleb128 .LEHB180-.LFB10717
	.uleb128 .LEHE180-.LEHB180
	.uleb128 0
	.uleb128 0
.LLSDACSE10717:
	.section	.text.startup,"x"
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_MaxPlayTime
	.globl	_ZTS9NeuralNet
	.section	.rdata$_ZTS9NeuralNet,"dr"
	.linkonce same_size
	.align 8
_ZTS9NeuralNet:
	.ascii "9NeuralNet\0"
	.globl	_ZTI9NeuralNet
	.section	.rdata$_ZTI9NeuralNet,"dr"
	.linkonce same_size
	.align 8
_ZTI9NeuralNet:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS9NeuralNet
	.globl	_ZTS12RenderObject
	.section	.rdata$_ZTS12RenderObject,"dr"
	.linkonce same_size
	.align 8
_ZTS12RenderObject:
	.ascii "12RenderObject\0"
	.globl	_ZTI12RenderObject
	.section	.rdata$_ZTI12RenderObject,"dr"
	.linkonce same_size
	.align 8
_ZTI12RenderObject:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS12RenderObject
	.globl	_ZTS18RenderObjectCircle
	.section	.rdata$_ZTS18RenderObjectCircle,"dr"
	.linkonce same_size
	.align 16
_ZTS18RenderObjectCircle:
	.ascii "18RenderObjectCircle\0"
	.globl	_ZTI18RenderObjectCircle
	.section	.rdata$_ZTI18RenderObjectCircle,"dr"
	.linkonce same_size
	.align 8
_ZTI18RenderObjectCircle:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS18RenderObjectCircle
	.quad	_ZTI12RenderObject
	.globl	_ZTS11NeuralBrainILi83ELi100EE
	.section	.rdata$_ZTS11NeuralBrainILi83ELi100EE,"dr"
	.linkonce same_size
	.align 16
_ZTS11NeuralBrainILi83ELi100EE:
	.ascii "11NeuralBrainILi83ELi100EE\0"
	.globl	_ZTI11NeuralBrainILi83ELi100EE
	.section	.rdata$_ZTI11NeuralBrainILi83ELi100EE,"dr"
	.linkonce same_size
	.align 8
_ZTI11NeuralBrainILi83ELi100EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS11NeuralBrainILi83ELi100EE
	.quad	_ZTI9NeuralNet
	.globl	_ZTS11NeuralBrainILi40ELi40EE
	.section	.rdata$_ZTS11NeuralBrainILi40ELi40EE,"dr"
	.linkonce same_size
	.align 16
_ZTS11NeuralBrainILi40ELi40EE:
	.ascii "11NeuralBrainILi40ELi40EE\0"
	.globl	_ZTI11NeuralBrainILi40ELi40EE
	.section	.rdata$_ZTI11NeuralBrainILi40ELi40EE,"dr"
	.linkonce same_size
	.align 8
_ZTI11NeuralBrainILi40ELi40EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS11NeuralBrainILi40ELi40EE
	.quad	_ZTI9NeuralNet
	.globl	_ZTV18RenderObjectCircle
	.section	.rdata$_ZTV18RenderObjectCircle,"dr"
	.linkonce same_size
	.align 8
_ZTV18RenderObjectCircle:
	.quad	0
	.quad	_ZTI18RenderObjectCircle
	.quad	_ZN18RenderObjectCircle18GetRayIntersectionER9RenderRay
	.globl	_ZTV11NeuralBrainILi83ELi100EE
	.section	.rdata$_ZTV11NeuralBrainILi83ELi100EE,"dr"
	.linkonce same_size
	.align 8
_ZTV11NeuralBrainILi83ELi100EE:
	.quad	0
	.quad	_ZTI11NeuralBrainILi83ELi100EE
	.quad	_ZN11NeuralBrainILi83ELi100EED1Ev
	.quad	_ZN11NeuralBrainILi83ELi100EED0Ev
	.quad	_ZN11NeuralBrainILi83ELi100EE6UpdateERKSt6vectorIfSaIfEE
	.quad	_ZN11NeuralBrainILi83ELi100EE9RandomiseEf
	.globl	_ZTV11NeuralBrainILi40ELi40EE
	.section	.rdata$_ZTV11NeuralBrainILi40ELi40EE,"dr"
	.linkonce same_size
	.align 8
_ZTV11NeuralBrainILi40ELi40EE:
	.quad	0
	.quad	_ZTI11NeuralBrainILi40ELi40EE
	.quad	_ZN11NeuralBrainILi40ELi40EED1Ev
	.quad	_ZN11NeuralBrainILi40ELi40EED0Ev
	.quad	_ZN11NeuralBrainILi40ELi40EE6UpdateERKSt6vectorIfSaIfEE
	.quad	_ZN11NeuralBrainILi40ELi40EE9RandomiseEf
	.globl	gen
	.bss
	.align 32
gen:
	.space 2504
	.globl	rd
	.align 32
rd:
	.space 2504
	.globl	width
	.data
	.align 4
width:
	.long	1101004800
	.globl	GenerationSize
	.align 4
GenerationSize:
	.long	40
	.globl	GenerationCount
	.align 4
GenerationCount:
	.long	10000
	.globl	RandomPlays
	.align 4
RandomPlays:
	.long	10
	.globl	MaxPlayTime
	.align 4
MaxPlayTime:
	.long	300
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 4
.LC0:
	.long	0
	.align 8
.LC1:
	.long	4194432
	.long	1058013216
	.align 8
.LC2:
	.long	0
	.long	-1074790400
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.align 32
.LC5:
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.align 32
.LC6:
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.align 32
.LC7:
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.align 32
.LC8:
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.align 4
.LC9:
	.long	1333788672
	.align 16
.LC11:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 32
.LC12:
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	2
	.long	1
	.long	0
	.align 4
.LC15:
	.long	1065353216
	.align 8
.LC24:
	.long	267242409
	.long	1069962290
	.align 32
.LC26:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.align 4
.LC30:
	.long	1056964608
	.align 4
.LC32:
	.long	805924959
	.align 8
.LC36:
	.long	0
	.long	1071644672
	.align 16
.LC37:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 8
.LC41:
	.long	1374389535
	.long	1075388088
	.align 8
.LC45:
	.long	0
	.long	1074266112
	.align 4
.LC46:
	.long	1077936128
	.ident	"GCC: (Rev3, Built by MSYS2 project) 5.2.0"
	.def	rand;	.scl	2;	.type	32;	.endef
	.def	_ZdlPv;	.scl	2;	.type	32;	.endef
	.def	_ZN9NeuralNetD2Ev;	.scl	2;	.type	32;	.endef
	.def	__mingw_vsnprintf;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZN11RenderSceneC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN12RenderCameraC1Ei;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_baseC2Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate;	.scl	2;	.type	32;	.endef
	.def	_ZN11RenderScene6RenderEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt12__basic_fileIcED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6localeD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_baseD2Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN9NeuralNetC2Ev;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIxEERSoT_;	.scl	2;	.type	32;	.endef
	.def	__cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	__cxa_rethrow;	.scl	2;	.type	32;	.endef
	.def	__cxa_end_catch;	.scl	2;	.type	32;	.endef
	.def	_ZN5WorldC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN5World6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5World12CheckPredWinEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSi10_M_extractIfEERSiRT_;	.scl	2;	.type	32;	.endef
	.def	_ZN5World8PlayGameEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13random_device14_M_init_pretr1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE;	.scl	2;	.type	32;	.endef
	.def	_ZNSt13random_device16_M_getval_pretr1Ev;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE, "dr"
	.globl	.refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE
	.linkonce	discard
.refptr._ZTVSt14basic_ifstreamIcSt11char_traitsIcEE:
	.quad	_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE
	.section	.rdata$.refptr._ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, "dr"
	.globl	.refptr._ZTTSt14basic_ifstreamIcSt11char_traitsIcEE
	.linkonce	discard
.refptr._ZTTSt14basic_ifstreamIcSt11char_traitsIcEE:
	.quad	_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE
	.section	.rdata$.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE, "dr"
	.globl	.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE
	.linkonce	discard
.refptr._ZTVSt15basic_streambufIcSt11char_traitsIcEE:
	.quad	_ZTVSt15basic_streambufIcSt11char_traitsIcEE
	.section	.rdata$.refptr._ZTVSt13basic_filebufIcSt11char_traitsIcEE, "dr"
	.globl	.refptr._ZTVSt13basic_filebufIcSt11char_traitsIcEE
	.linkonce	discard
.refptr._ZTVSt13basic_filebufIcSt11char_traitsIcEE:
	.quad	_ZTVSt13basic_filebufIcSt11char_traitsIcEE
	.section	.rdata$.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE, "dr"
	.globl	.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE
	.linkonce	discard
.refptr._ZTVSt14basic_ofstreamIcSt11char_traitsIcEE:
	.quad	_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE
	.section	.rdata$.refptr._ZTTSt14basic_ofstreamIcSt11char_traitsIcEE, "dr"
	.globl	.refptr._ZTTSt14basic_ofstreamIcSt11char_traitsIcEE
	.linkonce	discard
.refptr._ZTTSt14basic_ofstreamIcSt11char_traitsIcEE:
	.quad	_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE
	.section	.rdata$.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE, "dr"
	.globl	.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE
	.linkonce	discard
.refptr._ZTVSt9basic_iosIcSt11char_traitsIcEE:
	.quad	_ZTVSt9basic_iosIcSt11char_traitsIcEE
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout

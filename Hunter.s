	.file	"EntityAI.cpp"
	.intel_syntax noprefix
	.section	.text$_ZN12RenderObject18GetRayIntersectionER9RenderRay,"x"
	.linkonce discard
	.align 2
	.globl	_ZN12RenderObject18GetRayIntersectionER9RenderRay
	.def	_ZN12RenderObject18GetRayIntersectionER9RenderRay;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12RenderObject18GetRayIntersectionER9RenderRay
_ZN12RenderObject18GetRayIntersectionER9RenderRay:
.LFB2335:
	.seh_endprologue
	mov	rax, rcx
	mov	BYTE PTR [rcx], 0
	mov	DWORD PTR 4[rcx], 0x00000000
	mov	DWORD PTR 8[rcx], 0
	ret
	.seh_endproc
	.section	.text$_ZN18RenderObjectCircle18GetRayIntersectionER9RenderRay,"x"
	.linkonce discard
	.align 2
	.globl	_ZN18RenderObjectCircle18GetRayIntersectionER9RenderRay
	.def	_ZN18RenderObjectCircle18GetRayIntersectionER9RenderRay;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN18RenderObjectCircle18GetRayIntersectionER9RenderRay
_ZN18RenderObjectCircle18GetRayIntersectionER9RenderRay:
.LFB2342:
	.seh_endprologue
	mov	rax, rcx
	vmovss	xmm2, DWORD PTR 12[rdx]
	vsubss	xmm2, xmm2, DWORD PTR 4[r8]
	vmovss	xmm1, DWORD PTR 8[rdx]
	vsubss	xmm1, xmm1, DWORD PTR [r8]
	vmulss	xmm0, xmm1, DWORD PTR 8[r8]
	vmulss	xmm3, xmm2, DWORD PTR 12[r8]
	vaddss	xmm0, xmm0, xmm3
	vcomiss	xmm0, DWORD PTR .LC0[rip]
	jbe	.L3
	vmulss	xmm0, xmm0, xmm0
	vmovss	xmm5, DWORD PTR 16[r8]
	vmovss	xmm4, DWORD PTR 20[rdx]
	vmulss	xmm3, xmm5, xmm5
	vaddss	xmm3, xmm3, xmm4
	vcomiss	xmm3, xmm0
	jbe	.L3
	vmulss	xmm1, xmm1, xmm1
	vmulss	xmm2, xmm2, xmm2
	vaddss	xmm1, xmm1, xmm2
	vsubss	xmm1, xmm1, xmm0
	vcomiss	xmm4, xmm1
	jb	.L3
	vsubss	xmm1, xmm4, xmm1
	vsqrtss	xmm1, xmm1, xmm1
	vsqrtss	xmm0, xmm0, xmm0
	vsubss	xmm0, xmm0, xmm1
	vcomiss	xmm5, xmm0
	jb	.L3
	mov	edx, DWORD PTR 16[rdx]
	mov	BYTE PTR [rcx], 1
	vmovss	DWORD PTR 4[rcx], xmm0
	mov	DWORD PTR 8[rcx], edx
	ret
.L3:
	mov	BYTE PTR [rax], 0
	mov	DWORD PTR 4[rax], 0x00000000
	mov	DWORD PTR 8[rax], 0
	ret
	.seh_endproc
	.section	.text$_ZN11NeuralBrainILi163ELi40EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN11NeuralBrainILi163ELi40EED1Ev
	.def	_ZN11NeuralBrainILi163ELi40EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11NeuralBrainILi163ELi40EED1Ev
_ZN11NeuralBrainILi163ELi40EED1Ev:
.LFB3579:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	lea	rax, _ZTV11NeuralBrainILi163ELi40EE[rip+16]
	mov	QWORD PTR [rcx], rax
	mov	rcx, QWORD PTR 33504[rcx]
	test	rcx, rcx
	je	.L14
	call	_ZdlPv
.L14:
	mov	rcx, QWORD PTR 8[rbx]
	test	rcx, rcx
	je	.L15
	call	_ZdlPv
.L15:
	mov	rcx, rbx
	call	_ZN9NeuralNetD2Ev
	nop
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.section	.text$_ZN11NeuralBrainILi163ELi40EED0Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN11NeuralBrainILi163ELi40EED0Ev
	.def	_ZN11NeuralBrainILi163ELi40EED0Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11NeuralBrainILi163ELi40EED0Ev
_ZN11NeuralBrainILi163ELi40EED0Ev:
.LFB3580:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	_ZN11NeuralBrainILi163ELi40EED1Ev
	mov	edx, 33528
	mov	rcx, rbx
	call	_ZdlPvy
	nop
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.section	.text$_ZN11NeuralBrainILi163ELi40EE6UpdateERKSt6vectorIfSaIfEE,"x"
	.linkonce discard
	.align 2
	.globl	_ZN11NeuralBrainILi163ELi40EE6UpdateERKSt6vectorIfSaIfEE
	.def	_ZN11NeuralBrainILi163ELi40EE6UpdateERKSt6vectorIfSaIfEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11NeuralBrainILi163ELi40EE6UpdateERKSt6vectorIfSaIfEE
_ZN11NeuralBrainILi163ELi40EE6UpdateERKSt6vectorIfSaIfEE:
.LFB3758:
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 200
	.seh_stackalloc	200
	vmovaps	XMMWORD PTR 96[rsp], xmm6
	.seh_savexmm	xmm6, 96
	vmovaps	XMMWORD PTR 112[rsp], xmm7
	.seh_savexmm	xmm7, 112
	vmovaps	XMMWORD PTR 128[rsp], xmm8
	.seh_savexmm	xmm8, 128
	vmovaps	XMMWORD PTR 144[rsp], xmm9
	.seh_savexmm	xmm9, 144
	vmovaps	XMMWORD PTR 160[rsp], xmm10
	.seh_savexmm	xmm10, 160
	vmovaps	XMMWORD PTR 176[rsp], xmm11
	.seh_savexmm	xmm11, 176
	.seh_endprologue
	mov	QWORD PTR 272[rsp], rcx
	mov	rbx, rdx
	mov	eax, 0
.L18:
	mov	rdx, QWORD PTR [r8]
	vmovss	xmm0, DWORD PTR [rdx+rax]
	vmovss	DWORD PTR 48[rbx+rax], xmm0
	add	rax, 4
	cmp	rax, 652
	jne	.L18
	lea	r12, 700[rbx]
	lea	r13, 64[rsp]
	mov	r14, r13
	and	r14d, 31
	shr	r14, 2
	neg	r14
	and	r14d, 7
	mov	ebp, r14d
	mov	eax, 204
	sub	eax, r14d
	mov	DWORD PTR 56[rsp], eax
	mov	esi, 196
	sub	esi, r14d
	shr	esi, 3
	add	esi, 1
	lea	r15d, 0[0+rsi*8]
	mov	eax, 203
	sub	eax, r14d
	mov	DWORD PTR 44[rsp], eax
	mov	eax, r14d
	lea	rax, 44[0+rax*4]
	lea	r10, -44[r13+rax]
	add	rax, rbx
	mov	QWORD PTR 48[rsp], rax
	mov	DWORD PTR 60[rsp], r15d
	mov	r9d, 204
	lea	rax, 96[rsp]
	vxorps	xmm2, xmm2, xmm2
	vmovdqa	ymm7, YMMWORD PTR .LC1[rip]
	vmovdqa	ymm4, YMMWORD PTR .LC2[rip]
	vmovaps	ymm3, YMMWORD PTR .LC3[rip]
	vmovsd	xmm6, QWORD PTR .LC4[rip]
	vmovsd	xmm5, QWORD PTR .LC5[rip]
.L29:
	mov	DWORD PTR 36[rsp], r9d
	mov	rdx, r13
.L19:
	vmovss	DWORD PTR [rdx], xmm2
	add	rdx, 4
	cmp	rdx, rax
	jne	.L19
	test	r14d, r14d
	je	.L34
	lea	rcx, 44[rbx]
	vmovss	xmm1, DWORD PTR 64[rsp]
	mov	edx, 0
	mov	r8d, 204
.L21:
	lea	r11d, [rdx+r9]
	movsx	r11, r11d
	vmovss	xmm0, DWORD PTR 44[rbx+r11*4]
	vmulss	xmm0, xmm0, DWORD PTR [rcx]
	vaddss	xmm1, xmm1, xmm0
	add	edx, 1
	mov	r11d, r8d
	sub	r11d, edx
	add	rcx, 4
	cmp	edx, ebp
	jne	.L21
	vmovss	DWORD PTR 64[rsp], xmm1
	mov	edx, ebp
	jmp	.L20
.L34:
	mov	r11d, 204
	mov	edx, 0
.L20:
	cmp	DWORD PTR 44[rsp], 6
	jbe	.L22
	mov	DWORD PTR 40[rsp], edx
	vpbroadcastd	ymm8, DWORD PTR 40[rsp]
	vpaddd	ymm8, ymm8, ymm7
	vpbroadcastd	ymm10, DWORD PTR 36[rsp]
	lea	rdi, 44[rbx]
	mov	rcx, QWORD PTR 48[rsp]
	mov	r8d, 0
.L23:
	vmovups	xmm0, XMMWORD PTR [rcx]
	vinsertf128	ymm1, ymm0, XMMWORD PTR 16[rcx], 0x1
	vpaddd	ymm9, ymm8, ymm10
	vmovaps	ymm11, ymm3
	vgatherdps	ymm0, DWORD PTR [rdi+ymm9*4], ymm11
	vmulps	ymm0, ymm1, ymm0
	vaddps	ymm0, ymm0, YMMWORD PTR [r10]
	vmovaps	YMMWORD PTR [r10], ymm0
	add	r8d, 1
	add	rcx, 32
	vpaddd	ymm8, ymm8, ymm4
	cmp	esi, r8d
	ja	.L23
	jmp	.L46
.L25:
	lea	ecx, [rdx+r9]
	movsx	rcx, ecx
	movsx	r8, edx
	vmovss	xmm0, DWORD PTR 44[rbx+rcx*4]
	vmulss	xmm0, xmm0, DWORD PTR 44[rbx+r8*4]
	vaddss	xmm1, xmm1, xmm0
	add	edx, 1
	cmp	r11d, edx
	jne	.L25
	jmp	.L47
.L46:
	add	edx, DWORD PTR 60[rsp]
	sub	r11d, r15d
	cmp	DWORD PTR 56[rsp], r15d
	je	.L27
.L22:
	add	r11d, edx
	vmovss	xmm1, DWORD PTR 64[rsp]
	jmp	.L25
.L47:
	vmovss	DWORD PTR 64[rsp], xmm1
.L27:
	mov	rdx, r13
	vxorps	xmm0, xmm0, xmm0
.L28:
	vaddss	xmm0, xmm0, DWORD PTR [rdx]
	add	rdx, 4
	cmp	rax, rdx
	jne	.L28
	vcvtss2sd	xmm0, xmm0, xmm0
	vmovapd	xmm1, xmm0
	vandpd	xmm1, xmm1, xmm6
	vaddsd	xmm1, xmm1, xmm5
	vdivsd	xmm0, xmm0, xmm1
	vcvtsd2ss	xmm1, xmm1, xmm0
	vmovss	DWORD PTR [r12], xmm1
	add	r12, 4
	add	r9d, 204
	cmp	r9d, 8364
	jne	.L29
	lea	rdx, 856[rbx]
	mov	eax, 0
.L30:
	vmovss	xmm0, DWORD PTR [rdx]
	mov	rcx, QWORD PTR 8[rbx]
	vmovss	DWORD PTR [rcx+rax], xmm0
	add	rax, 4
	sub	rdx, 4
	cmp	rax, 156
	jne	.L30
	mov	rsi, QWORD PTR 16[rbx]
	sub	rsi, QWORD PTR 8[rbx]
	mov	rax, rsi
	sar	rax, 2
	mov	rdi, QWORD PTR 272[rsp]
	mov	QWORD PTR [rdi], 0
	mov	QWORD PTR 8[rdi], 0
	mov	QWORD PTR 16[rdi], 0
	test	rax, rax
	je	.L35
	movabs	rdx, 4611686018427387903
	cmp	rax, rdx
	jbe	.L32
	call	_ZSt17__throw_bad_allocv
.L32:
	mov	rcx, rsi
	call	_Znwy
	mov	rdi, rax
	jmp	.L31
.L35:
	mov	edi, 0
.L31:
	mov	rax, QWORD PTR 272[rsp]
	mov	QWORD PTR [rax], rdi
	mov	QWORD PTR 8[rax], rdi
	add	rsi, rdi
	mov	QWORD PTR 16[rax], rsi
	mov	rdx, QWORD PTR 8[rbx]
	mov	rax, QWORD PTR 16[rbx]
	sub	rax, rdx
	mov	rbx, rax
	sar	rax, 2
	test	rax, rax
	je	.L33
	mov	r8, rbx
	mov	rcx, rdi
	call	memmove
.L33:
	add	rbx, rdi
	mov	rax, QWORD PTR 272[rsp]
	mov	QWORD PTR 8[rax], rbx
	vmovaps	xmm6, XMMWORD PTR 96[rsp]
	vmovaps	xmm7, XMMWORD PTR 112[rsp]
	vmovaps	xmm8, XMMWORD PTR 128[rsp]
	vmovaps	xmm9, XMMWORD PTR 144[rsp]
	vmovaps	xmm10, XMMWORD PTR 160[rsp]
	vmovaps	xmm11, XMMWORD PTR 176[rsp]
	add	rsp, 200
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.seh_endproc
	.text
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB3757:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	lea	rcx, _ZStL8__ioinit[rip]
	call	_ZNSt8ios_base4InitD1Ev
	nop
	add	rsp, 40
	ret
	.seh_endproc
	.align 2
	.globl	_ZN8EntityAID2Ev
	.def	_ZN8EntityAID2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8EntityAID2Ev
_ZN8EntityAID2Ev:
.LFB2969:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, rcx
	lea	rax, _ZTV8EntityAI[rip+16]
	mov	QWORD PTR [rcx], rax
	mov	rcx, QWORD PTR 160[rcx]
	test	rcx, rcx
	je	.L50
	mov	edx, 24
	call	_ZdlPvy
.L50:
	mov	rsi, QWORD PTR 152[rbx]
	test	rsi, rsi
	je	.L51
	mov	rcx, QWORD PTR 32[rsi]
	test	rcx, rcx
	je	.L52
	call	_ZdlPv
.L52:
	mov	edx, 56
	mov	rcx, rsi
	call	_ZdlPvy
.L51:
	mov	rcx, QWORD PTR 144[rbx]
	test	rcx, rcx
	je	.L53
	mov	rax, QWORD PTR [rcx]
	call	[QWORD PTR 8[rax]]
.L53:
	mov	rcx, QWORD PTR 120[rbx]
	test	rcx, rcx
	je	.L49
	call	_ZdlPv
	nop
.L49:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.globl	_ZN8EntityAID1Ev
	.def	_ZN8EntityAID1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN8EntityAID1Ev,_ZN8EntityAID2Ev
	.align 2
	.globl	_ZN8EntityAID0Ev
	.def	_ZN8EntityAID0Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8EntityAID0Ev
_ZN8EntityAID0Ev:
.LFB2971:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	call	_ZN8EntityAID1Ev
	mov	edx, 168
	mov	rcx, rbx
	call	_ZdlPvy
	nop
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.align 2
	.globl	_ZN8EntityAI8RayToRGBER9RenderRay
	.def	_ZN8EntityAI8RayToRGBER9RenderRay;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8EntityAI8RayToRGBER9RenderRay
_ZN8EntityAI8RayToRGBER9RenderRay:
.LFB2972:
	.seh_endprologue
	mov	rax, rcx
	movsx	rcx, DWORD PTR 24[r8]
	lea	rcx, [rcx+rcx*2]
	lea	rcx, 32[rdx+rcx*4]
	vmovss	xmm2, DWORD PTR 20[r8]
	vdivss	xmm2, xmm2, DWORD PTR 16[r8]
	vmovss	xmm1, DWORD PTR .LC6[rip]
	vsubss	xmm3, xmm1, xmm2
	vxorps	xmm0, xmm0, xmm0
	vcvtsi2ss	xmm0, xmm0, DWORD PTR 32[rcx]
	vmulss	xmm1, xmm0, xmm3
	vxorps	xmm0, xmm0, xmm0
	vcvtsi2ss	xmm0, xmm0, DWORD PTR 64[rdx]
	vmulss	xmm0, xmm0, xmm2
	vaddss	xmm0, xmm1, xmm0
	vcvttss2si	r8d, xmm0
	vxorps	xmm0, xmm0, xmm0
	vcvtsi2ss	xmm0, xmm0, DWORD PTR 28[rcx]
	vmulss	xmm1, xmm0, xmm3
	vxorps	xmm0, xmm0, xmm0
	vcvtsi2ss	xmm0, xmm0, DWORD PTR 60[rdx]
	vmulss	xmm0, xmm0, xmm2
	vaddss	xmm0, xmm1, xmm0
	vcvttss2si	r9d, xmm0
	vxorps	xmm1, xmm1, xmm1
	vcvtsi2ss	xmm1, xmm1, DWORD PTR 24[rcx]
	vmulss	xmm1, xmm1, xmm3
	vxorps	xmm0, xmm0, xmm0
	vcvtsi2ss	xmm0, xmm0, DWORD PTR 56[rdx]
	vmulss	xmm0, xmm0, xmm2
	vaddss	xmm0, xmm1, xmm0
	vcvttss2si	edx, xmm0
	mov	DWORD PTR [rax], edx
	mov	DWORD PTR 4[rax], r9d
	mov	DWORD PTR 8[rax], r8d
	ret
	.seh_endproc
	.align 2
	.globl	_ZN8EntityAI8UpdateAIER5World
	.def	_ZN8EntityAI8UpdateAIER5World;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8EntityAI8UpdateAIER5World
_ZN8EntityAI8UpdateAIER5World:
.LFB2973:
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	add	rsp, -128
	.seh_stackalloc	128
	vmovaps	XMMWORD PTR 80[rsp], xmm6
	.seh_savexmm	xmm6, 80
	vmovaps	XMMWORD PTR 96[rsp], xmm7
	.seh_savexmm	xmm7, 96
	vmovaps	XMMWORD PTR 112[rsp], xmm8
	.seh_savexmm	xmm8, 112
	.seh_endprologue
	mov	rbx, rcx
	mov	rax, QWORD PTR 160[rcx]
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR 8[rax], rdx
	mov	rax, QWORD PTR 152[rcx]
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR 152[rcx]
	vmovss	xmm0, DWORD PTR 36[rcx]
	vmovss	DWORD PTR 8[rax], xmm0
	mov	rax, QWORD PTR 152[rcx]
	cmp	DWORD PTR 20[rax], 0
	jle	.L61
	mov	ebp, 0
	mov	edi, 0
	lea	r12, 32[rsp]
.L59:
	movsx	rsi, ebp
	lea	rdx, 0[0+rsi*4]
	sal	rsi, 5
	sub	rsi, rdx
	mov	r8, rsi
	add	r8, QWORD PTR 32[rax]
	mov	rdx, rbx
	mov	rcx, r12
	call	_ZN8EntityAI8RayToRGBER9RenderRay
	mov	eax, edi
	movsx	rcx, edi
	mov	rdx, QWORD PTR 120[rbx]
	vxorps	xmm0, xmm0, xmm0
	vcvtsi2ss	xmm0, xmm0, DWORD PTR 32[rsp]
	vmovss	DWORD PTR [rdx+rcx*4], xmm0
	lea	edx, 1[rdi]
	movsx	rdx, edx
	mov	rcx, QWORD PTR 120[rbx]
	vxorps	xmm0, xmm0, xmm0
	vcvtsi2ss	xmm0, xmm0, DWORD PTR 36[rsp]
	vmovss	DWORD PTR [rcx+rdx*4], xmm0
	lea	edx, 2[rdi]
	movsx	rdx, edx
	mov	rcx, QWORD PTR 120[rbx]
	vxorps	xmm0, xmm0, xmm0
	vcvtsi2ss	xmm0, xmm0, DWORD PTR 40[rsp]
	vmovss	DWORD PTR [rcx+rdx*4], xmm0
	add	edi, 4
	mov	rdx, QWORD PTR 152[rbx]
	mov	rdx, QWORD PTR 32[rdx]
	vmovss	xmm0, DWORD PTR 20[rdx+rsi]
	add	eax, 3
	cdqe
	mov	rdx, QWORD PTR 120[rbx]
	vmovss	DWORD PTR [rdx+rax*4], xmm0
	add	ebp, 1
	mov	rax, QWORD PTR 152[rbx]
	cmp	DWORD PTR 20[rax], ebp
	jg	.L59
	jmp	.L58
.L61:
	mov	edi, 0
.L58:
	movsx	rdi, edi
	lea	rax, 0[0+rdi*4]
	vmovss	xmm0, DWORD PTR 16[rbx]
	mov	rdx, QWORD PTR 120[rbx]
	vmovss	DWORD PTR [rdx+rdi*4], xmm0
	vmovss	xmm0, DWORD PTR 20[rbx]
	mov	rdx, QWORD PTR 120[rbx]
	vmovss	DWORD PTR 4[rdx+rax], xmm0
	vmovss	xmm0, DWORD PTR 40[rbx]
	mov	rdx, QWORD PTR 120[rbx]
	vmovss	DWORD PTR 8[rdx+rax], xmm0
	mov	rdx, QWORD PTR 144[rbx]
	lea	rcx, 48[rsp]
	mov	rax, QWORD PTR [rdx]
	lea	r8, 120[rbx]
	call	[QWORD PTR 16[rax]]
	vmovss	xmm7, DWORD PTR 32[rbx]
	mov	rsi, QWORD PTR 48[rsp]
	vcvtss2sd	xmm8, xmm8, DWORD PTR 36[rbx]
	vmovapd	xmm0, xmm8
	call	sin
	vcvtsd2ss	xmm6, xmm6, xmm0
	vmovapd	xmm0, xmm8
	call	cos
	vcvtsd2ss	xmm0, xmm0, xmm0
	vmulss	xmm1, xmm7, DWORD PTR [rsi]
	vmulss	xmm2, xmm0, xmm1
	vaddss	xmm2, xmm2, DWORD PTR 24[rbx]
	vmovss	DWORD PTR 24[rbx], xmm2
	vmulss	xmm1, xmm6, xmm1
	vaddss	xmm1, xmm1, DWORD PTR 28[rbx]
	vmovss	DWORD PTR 28[rbx], xmm1
	vmulss	xmm7, xmm7, DWORD PTR 4[rsi]
	vmulss	xmm6, xmm6, xmm7
	vsubss	xmm2, xmm2, xmm6
	vmovss	DWORD PTR 24[rbx], xmm2
	vmulss	xmm0, xmm0, xmm7
	vaddss	xmm0, xmm0, xmm1
	vmovss	DWORD PTR 28[rbx], xmm0
	vcvtss2sd	xmm0, xmm0, DWORD PTR 8[rsi]
	vmulsd	xmm0, xmm0, QWORD PTR .LC8[rip]
	vcvtsd2ss	xmm3, xmm3, xmm0
	vmovss	DWORD PTR 44[rbx], xmm3
	test	rsi, rsi
	je	.L57
	mov	rcx, rsi
	call	_ZdlPv
	nop
.L57:
	vmovaps	xmm6, XMMWORD PTR 80[rsp]
	vmovaps	xmm7, XMMWORD PTR 96[rsp]
	vmovaps	xmm8, XMMWORD PTR 112[rsp]
	sub	rsp, -128
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.align 2
	.globl	_ZN8EntityAI9RandomiseEf
	.def	_ZN8EntityAI9RandomiseEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8EntityAI9RandomiseEf
_ZN8EntityAI9RandomiseEf:
.LFB2974:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rcx, QWORD PTR 144[rcx]
	call	_ZN9NeuralNet9RandomiseEf
	nop
	add	rsp, 40
	ret
	.seh_endproc
	.section	.text$_ZN11NeuralBrainILi163ELi40EEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN11NeuralBrainILi163ELi40EEC1Ev
	.def	_ZN11NeuralBrainILi163ELi40EEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11NeuralBrainILi163ELi40EEC1Ev
_ZN11NeuralBrainILi163ELi40EEC1Ev:
.LFB3455:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, rcx
.LEHB0:
	call	_ZN9NeuralNetC2Ev
.LEHE0:
	lea	rax, _ZTV11NeuralBrainILi163ELi40EE[rip+16]
	mov	QWORD PTR [rbx], rax
	mov	QWORD PTR 8[rbx], 0
	mov	QWORD PTR 16[rbx], 0
	mov	QWORD PTR 24[rbx], 0
	mov	DWORD PTR 32[rbx], 40
	mov	DWORD PTR 36[rbx], 163
	mov	DWORD PTR 40[rbx], 0
	lea	rcx, 44[rbx]
	mov	r8d, 33456
	mov	edx, 0
	call	memset
	mov	QWORD PTR 33504[rbx], 0
	mov	QWORD PTR 33512[rbx], 0
	mov	QWORD PTR 33520[rbx], 0
	mov	ecx, 160
.LEHB1:
	call	_Znwy
.LEHE1:
	mov	QWORD PTR 33504[rbx], rax
	lea	rcx, 160[rax]
	mov	QWORD PTR 33520[rbx], rcx
	vxorps	xmm0, xmm0, xmm0
.L65:
	vmovss	DWORD PTR [rax], xmm0
	add	rax, 4
	cmp	rcx, rax
	jne	.L65
	mov	QWORD PTR 33512[rbx], rcx
	mov	DWORD PTR 44[rbx], 0x3f800000
	mov	rdx, QWORD PTR 33504[rbx]
	sub	rcx, rdx
	sar	rcx, 2
	test	rcx, rcx
	je	.L66
	mov	r8d, 0
	mov	ecx, 0
	vmovss	xmm0, DWORD PTR .LC6[rip]
.L67:
	vmovss	DWORD PTR [rdx+r8*4], xmm0
	add	ecx, 1
	movsx	r8, ecx
	mov	rdx, QWORD PTR 33504[rbx]
	mov	rax, QWORD PTR 33512[rbx]
	sub	rax, rdx
	sar	rax, 2
	cmp	r8, rax
	jb	.L67
.L66:
	mov	ecx, 160
.LEHB2:
	call	_Znwy
.LEHE2:
	lea	r8, 160[rax]
	mov	rdx, rax
	vxorps	xmm0, xmm0, xmm0
.L68:
	vmovss	DWORD PTR [rdx], xmm0
	add	rdx, 4
	cmp	r8, rdx
	jne	.L68
	mov	rcx, QWORD PTR 8[rbx]
	mov	QWORD PTR 8[rbx], rax
	mov	QWORD PTR 16[rbx], r8
	mov	QWORD PTR 24[rbx], r8
	test	rcx, rcx
	je	.L64
	call	_ZdlPv
	jmp	.L64
.L75:
	mov	rsi, rax
	mov	rcx, QWORD PTR 33504[rbx]
	test	rcx, rcx
	je	.L72
	call	_ZdlPv
	jmp	.L72
.L74:
	mov	rsi, rax
.L72:
	mov	rcx, QWORD PTR 8[rbx]
	test	rcx, rcx
	je	.L73
	call	_ZdlPv
.L73:
	mov	rcx, rbx
	call	_ZN9NeuralNetD2Ev
	mov	rcx, rsi
.LEHB3:
	call	_Unwind_Resume
	nop
.LEHE3:
.L64:
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3455:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3455-.LLSDACSB3455
.LLSDACSB3455:
	.uleb128 .LEHB0-.LFB3455
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3455
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L74-.LFB3455
	.uleb128 0
	.uleb128 .LEHB2-.LFB3455
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L75-.LFB3455
	.uleb128 0
	.uleb128 .LEHB3-.LFB3455
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE3455:
	.section	.text$_ZN11NeuralBrainILi163ELi40EEC1Ev,"x"
	.linkonce discard
	.seh_endproc
	.text
	.align 2
	.globl	_ZN8EntityAIC2Ev
	.def	_ZN8EntityAIC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8EntityAIC2Ev
_ZN8EntityAIC2Ev:
.LFB2966:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
.LEHB4:
	call	_ZN6EntityC2Ev
.LEHE4:
	lea	rax, _ZTV8EntityAI[rip+16]
	mov	QWORD PTR [rbx], rax
	mov	DWORD PTR 56[rbx], 1
	mov	DWORD PTR 60[rbx], 1
	mov	DWORD PTR 64[rbx], 1
	mov	DWORD PTR 68[rbx], 0
	mov	DWORD PTR 72[rbx], 0
	mov	DWORD PTR 76[rbx], 0
	mov	DWORD PTR 80[rbx], 1
	mov	DWORD PTR 84[rbx], 0
	mov	DWORD PTR 88[rbx], 0
	mov	DWORD PTR 92[rbx], 0
	mov	DWORD PTR 96[rbx], 1
	mov	DWORD PTR 100[rbx], 0
	mov	DWORD PTR 104[rbx], 0
	mov	DWORD PTR 108[rbx], 0
	mov	DWORD PTR 112[rbx], 1
	mov	QWORD PTR 120[rbx], 0
	mov	QWORD PTR 128[rbx], 0
	mov	QWORD PTR 136[rbx], 0
	mov	QWORD PTR 144[rbx], 0
	mov	QWORD PTR 152[rbx], 0
	mov	QWORD PTR 160[rbx], 0
	mov	ecx, 24
.LEHB5:
	call	_Znwy
	vxorps	xmm0, xmm0, xmm0
	vmovss	DWORD PTR 8[rax], xmm0
	vmovss	DWORD PTR 12[rax], xmm0
	lea	rdi, _ZTV18RenderObjectCircle[rip+16]
	mov	QWORD PTR [rax], rdi
	mov	DWORD PTR 20[rax], 0x40100000
	mov	DWORD PTR 16[rax], 1
	mov	rcx, QWORD PTR 160[rbx]
	mov	QWORD PTR 160[rbx], rax
	test	rcx, rcx
	je	.L80
	mov	edx, 24
	call	_ZdlPvy
.L80:
	mov	rax, QWORD PTR 160[rbx]
	mov	DWORD PTR 16[rax], 1
	mov	rax, QWORD PTR 160[rbx]
	mov	rdx, QWORD PTR 8[rbx]
	mov	QWORD PTR 8[rax], rdx
	mov	ecx, 56
	call	_Znwy
.LEHE5:
	mov	rdi, rax
	mov	edx, 40
	mov	rcx, rax
.LEHB6:
	call	_ZN12RenderCameraC1Ei
.LEHE6:
	mov	rsi, QWORD PTR 152[rbx]
	mov	QWORD PTR 152[rbx], rdi
	test	rsi, rsi
	jne	.L81
	jmp	.L82
.L98:
	mov	rsi, rax
	mov	edx, 56
	mov	rcx, rdi
	call	_ZdlPvy
	jmp	.L84
.L81:
	mov	rcx, QWORD PTR 32[rsi]
	test	rcx, rcx
	je	.L85
	call	_ZdlPv
.L85:
	mov	edx, 56
	mov	rcx, rsi
	call	_ZdlPvy
.L82:
	mov	rax, QWORD PTR 152[rbx]
	mov	rdx, QWORD PTR 160[rbx]
	mov	QWORD PTR 24[rax], rdx
	mov	rax, QWORD PTR 152[rbx]
	mov	eax, DWORD PTR 20[rax]
	lea	esi, 3[0+rax*4]
	movsx	rsi, esi
	movabs	rax, 4611686018427387903
	cmp	rsi, rax
	jbe	.L86
.LEHB7:
	call	_ZSt17__throw_bad_allocv
.L86:
	lea	rdi, 0[0+rsi*4]
	mov	rcx, rdi
	call	_Znwy
	lea	r8, [rax+rdi]
	mov	edx, 0
	vxorps	xmm0, xmm0, xmm0
.L87:
	vmovss	DWORD PTR [rax+rdx*4], xmm0
	add	rdx, 1
	cmp	rsi, rdx
	jne	.L87
	mov	rcx, QWORD PTR 120[rbx]
	mov	QWORD PTR 120[rbx], rax
	mov	QWORD PTR 128[rbx], r8
	mov	QWORD PTR 136[rbx], r8
	test	rcx, rcx
	je	.L88
	call	_ZdlPv
.L88:
	mov	ecx, 33528
	call	_Znwy
.LEHE7:
	mov	rsi, rax
	mov	rcx, rax
.LEHB8:
	call	_ZN11NeuralBrainILi163ELi40EEC1Ev
.LEHE8:
	mov	rcx, QWORD PTR 144[rbx]
	mov	QWORD PTR 144[rbx], rsi
	test	rcx, rcx
	jne	.L89
	jmp	.L90
.L99:
	mov	rdi, rax
	mov	edx, 33528
	mov	rcx, rsi
	call	_ZdlPvy
	mov	rsi, rdi
	jmp	.L84
.L89:
	mov	rax, QWORD PTR [rcx]
	call	[QWORD PTR 8[rax]]
.L90:
	mov	DWORD PTR 32[rbx], 0x3dcccccd
	jmp	.L101
.L97:
	mov	rsi, rax
.L84:
	mov	rcx, QWORD PTR 160[rbx]
	test	rcx, rcx
	je	.L92
	mov	edx, 24
	call	_ZdlPvy
.L92:
	mov	rdi, QWORD PTR 152[rbx]
	test	rdi, rdi
	je	.L93
	mov	rcx, QWORD PTR 32[rdi]
	test	rcx, rcx
	je	.L94
	call	_ZdlPv
.L94:
	mov	edx, 56
	mov	rcx, rdi
	call	_ZdlPvy
.L93:
	mov	rcx, QWORD PTR 144[rbx]
	test	rcx, rcx
	je	.L95
	mov	rax, QWORD PTR [rcx]
	call	[QWORD PTR 8[rax]]
.L95:
	mov	rcx, QWORD PTR 120[rbx]
	test	rcx, rcx
	je	.L96
	call	_ZdlPv
.L96:
	mov	rcx, rsi
.LEHB9:
	call	_Unwind_Resume
	nop
.LEHE9:
.L101:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2966:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2966-.LLSDACSB2966
.LLSDACSB2966:
	.uleb128 .LEHB4-.LFB2966
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB2966
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L97-.LFB2966
	.uleb128 0
	.uleb128 .LEHB6-.LFB2966
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L98-.LFB2966
	.uleb128 0
	.uleb128 .LEHB7-.LFB2966
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L97-.LFB2966
	.uleb128 0
	.uleb128 .LEHB8-.LFB2966
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L99-.LFB2966
	.uleb128 0
	.uleb128 .LEHB9-.LFB2966
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE2966:
	.text
	.seh_endproc
	.globl	_ZN8EntityAIC1Ev
	.def	_ZN8EntityAIC1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN8EntityAIC1Ev,_ZN8EntityAIC2Ev
	.def	_GLOBAL__sub_I__ZN8EntityAIC2Ev;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__ZN8EntityAIC2Ev
_GLOBAL__sub_I__ZN8EntityAIC2Ev:
.LFB3784:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	lea	rcx, _ZStL8__ioinit[rip]
	call	_ZNSt8ios_base4InitC1Ev
	lea	rcx, __tcf_0[rip]
	call	atexit
	nop
	add	rsp, 40
	ret
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I__ZN8EntityAIC2Ev
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
	.globl	_ZTS6Entity
	.section	.rdata$_ZTS6Entity,"dr"
	.linkonce same_size
	.align 8
_ZTS6Entity:
	.ascii "6Entity\0"
	.globl	_ZTI6Entity
	.section	.rdata$_ZTI6Entity,"dr"
	.linkonce same_size
	.align 8
_ZTI6Entity:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS6Entity
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
	.globl	_ZTS8EntityAI
	.section	.rdata$_ZTS8EntityAI,"dr"
	.linkonce same_size
	.align 8
_ZTS8EntityAI:
	.ascii "8EntityAI\0"
	.globl	_ZTI8EntityAI
	.section	.rdata$_ZTI8EntityAI,"dr"
	.linkonce same_size
	.align 8
_ZTI8EntityAI:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS8EntityAI
	.quad	_ZTI6Entity
	.globl	_ZTS11NeuralBrainILi163ELi40EE
	.section	.rdata$_ZTS11NeuralBrainILi163ELi40EE,"dr"
	.linkonce same_size
	.align 16
_ZTS11NeuralBrainILi163ELi40EE:
	.ascii "11NeuralBrainILi163ELi40EE\0"
	.globl	_ZTI11NeuralBrainILi163ELi40EE
	.section	.rdata$_ZTI11NeuralBrainILi163ELi40EE,"dr"
	.linkonce same_size
	.align 8
_ZTI11NeuralBrainILi163ELi40EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS11NeuralBrainILi163ELi40EE
	.quad	_ZTI9NeuralNet
	.globl	_ZTV18RenderObjectCircle
	.section	.rdata$_ZTV18RenderObjectCircle,"dr"
	.linkonce same_size
	.align 8
_ZTV18RenderObjectCircle:
	.quad	0
	.quad	_ZTI18RenderObjectCircle
	.quad	_ZN18RenderObjectCircle18GetRayIntersectionER9RenderRay
	.globl	_ZTV11NeuralBrainILi163ELi40EE
	.section	.rdata$_ZTV11NeuralBrainILi163ELi40EE,"dr"
	.linkonce same_size
	.align 8
_ZTV11NeuralBrainILi163ELi40EE:
	.quad	0
	.quad	_ZTI11NeuralBrainILi163ELi40EE
	.quad	_ZN11NeuralBrainILi163ELi40EED1Ev
	.quad	_ZN11NeuralBrainILi163ELi40EED0Ev
	.quad	_ZN11NeuralBrainILi163ELi40EE6UpdateERKSt6vectorIfSaIfEE
	.globl	_ZTV8EntityAI
	.section	.rdata$_ZTV8EntityAI,"dr"
	.linkonce same_size
	.align 8
_ZTV8EntityAI:
	.quad	0
	.quad	_ZTI8EntityAI
	.quad	_ZN8EntityAID1Ev
	.quad	_ZN8EntityAID0Ev
	.quad	_ZN8EntityAI8UpdateAIER5World
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 4
.LC0:
	.long	0
	.align 32
.LC1:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.align 32
.LC2:
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.align 32
.LC3:
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.align 16
.LC4:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC5:
	.long	0
	.long	1072693248
	.align 4
.LC6:
	.long	1065353216
	.align 8
.LC8:
	.long	1202590843
	.long	1068792545
	.ident	"GCC: (Rev3, Built by MSYS2 project) 5.2.0"
	.def	_ZdlPv;	.scl	2;	.type	32;	.endef
	.def	_ZN9NeuralNetD2Ev;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	sin;	.scl	2;	.type	32;	.endef
	.def	cos;	.scl	2;	.type	32;	.endef
	.def	_ZN9NeuralNet9RandomiseEf;	.scl	2;	.type	32;	.endef
	.def	_ZN9NeuralNetC2Ev;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN6EntityC2Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN12RenderCameraC1Ei;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef

	.file	"NeuralTest.cpp"
	.intel_syntax noprefix
	.text
	.p2align 4,,15
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB3123:
	.seh_endprologue
	lea	rcx, _ZStL8__ioinit[rip]
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.align 2
	.p2align 4,,15
	.def	_ZNSt6vectorIfSaIfEEC1EyRKS0_.isra.34.constprop.44;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIfSaIfEEC1EyRKS0_.isra.34.constprop.44
_ZNSt6vectorIfSaIfEEC1EyRKS0_.isra.34.constprop.44:
.LFB3195:
	push	rdi
	.seh_pushreg	rdi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, rcx
	mov	QWORD PTR [rcx], 0
	mov	QWORD PTR 8[rcx], 0
	mov	QWORD PTR 16[rcx], 0
	mov	ecx, 400
	call	_Znwy
	lea	rdi, 8[rax]
	lea	rdx, 400[rax]
	mov	QWORD PTR [rbx], rax
	and	rdi, -8
	mov	QWORD PTR 16[rbx], rdx
	mov	QWORD PTR [rax], 0
	mov	QWORD PTR 392[rax], 0
	sub	rax, rdi
	lea	ecx, 400[rax]
	xor	eax, eax
	shr	ecx, 3
	rep stosq
	mov	QWORD PTR 8[rbx], rdx
	add	rsp, 40
	pop	rbx
	pop	rdi
	ret
	.seh_endproc
	.section	.text$_ZN11NeuralBrainILi100ELi100EE6UpdateERKSt6vectorIfSaIfEE,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN11NeuralBrainILi100ELi100EE6UpdateERKSt6vectorIfSaIfEE
	.def	_ZN11NeuralBrainILi100ELi100EE6UpdateERKSt6vectorIfSaIfEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11NeuralBrainILi100ELi100EE6UpdateERKSt6vectorIfSaIfEE
_ZN11NeuralBrainILi100ELi100EE6UpdateERKSt6vectorIfSaIfEE:
.LFB3124:
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
	sub	rsp, 120
	.seh_stackalloc	120
	.seh_endprologue
	mov	r8, QWORD PTR [r8]
	lea	rax, 48[rdx]
	mov	rbx, rdx
	mov	QWORD PTR 192[rsp], rcx
	lea	rdx, 32[r8]
	cmp	rax, rdx
	jnb	.L56
	lea	rdx, 80[rbx]
	cmp	r8, rdx
	jb	.L4
.L56:
	and	eax, 31
	mov	rdx, rax
	shr	rdx, 2
	neg	rdx
	and	edx, 7
	je	.L35
	vmovss	xmm0, DWORD PTR [r8]
	cmp	edx, 1
	vmovss	DWORD PTR 48[rbx], xmm0
	je	.L36
	vmovss	xmm0, DWORD PTR 4[r8]
	cmp	edx, 2
	vmovss	DWORD PTR 52[rbx], xmm0
	je	.L37
	vmovss	xmm0, DWORD PTR 8[r8]
	cmp	edx, 3
	vmovss	DWORD PTR 56[rbx], xmm0
	je	.L38
	vmovss	xmm0, DWORD PTR 12[r8]
	cmp	edx, 4
	vmovss	DWORD PTR 60[rbx], xmm0
	je	.L39
	vmovss	xmm0, DWORD PTR 16[r8]
	cmp	edx, 5
	vmovss	DWORD PTR 64[rbx], xmm0
	je	.L40
	vmovss	xmm0, DWORD PTR 20[r8]
	cmp	edx, 6
	vmovss	DWORD PTR 68[rbx], xmm0
	je	.L41
	vmovss	xmm0, DWORD PTR 24[r8]
	mov	r10d, 93
	mov	r9d, 7
	vmovss	DWORD PTR 72[rbx], xmm0
.L7:
	mov	ecx, 92
	mov	r11d, 100
	mov	eax, edx
	sub	ecx, edx
	sub	r11d, edx
	shr	ecx, 3
	add	ecx, 1
	lea	esi, 0[0+rcx*8]
.L6:
	lea	rdx, 0[0+rax*4]
	cmp	ecx, 11
	lea	rax, [r8+rdx]
	lea	rdx, 48[rbx+rdx]
	vmovups	xmm0, XMMWORD PTR [rax]
	vinsertf128	ymm0, ymm0, XMMWORD PTR 16[rax], 0x1
	vmovaps	YMMWORD PTR [rdx], ymm0
	vmovups	xmm0, XMMWORD PTR 32[rax]
	vinsertf128	ymm0, ymm0, XMMWORD PTR 48[rax], 0x1
	vmovaps	YMMWORD PTR 32[rdx], ymm0
	vmovups	xmm0, XMMWORD PTR 64[rax]
	vinsertf128	ymm0, ymm0, XMMWORD PTR 80[rax], 0x1
	vmovaps	YMMWORD PTR 64[rdx], ymm0
	vmovups	xmm0, XMMWORD PTR 96[rax]
	vinsertf128	ymm0, ymm0, XMMWORD PTR 112[rax], 0x1
	vmovaps	YMMWORD PTR 96[rdx], ymm0
	vmovups	xmm0, XMMWORD PTR 128[rax]
	vinsertf128	ymm0, ymm0, XMMWORD PTR 144[rax], 0x1
	vmovaps	YMMWORD PTR 128[rdx], ymm0
	vmovups	xmm0, XMMWORD PTR 160[rax]
	vinsertf128	ymm0, ymm0, XMMWORD PTR 176[rax], 0x1
	vmovaps	YMMWORD PTR 160[rdx], ymm0
	vmovups	xmm0, XMMWORD PTR 192[rax]
	vinsertf128	ymm0, ymm0, XMMWORD PTR 208[rax], 0x1
	vmovaps	YMMWORD PTR 192[rdx], ymm0
	vmovups	xmm0, XMMWORD PTR 224[rax]
	vinsertf128	ymm0, ymm0, XMMWORD PTR 240[rax], 0x1
	vmovaps	YMMWORD PTR 224[rdx], ymm0
	vmovups	xmm0, XMMWORD PTR 256[rax]
	vinsertf128	ymm0, ymm0, XMMWORD PTR 272[rax], 0x1
	vmovaps	YMMWORD PTR 256[rdx], ymm0
	vmovups	xmm0, XMMWORD PTR 288[rax]
	vinsertf128	ymm0, ymm0, XMMWORD PTR 304[rax], 0x1
	vmovaps	YMMWORD PTR 288[rdx], ymm0
	vmovups	xmm0, XMMWORD PTR 320[rax]
	vinsertf128	ymm0, ymm0, XMMWORD PTR 336[rax], 0x1
	vmovaps	YMMWORD PTR 320[rdx], ymm0
	je	.L8
	vmovups	xmm0, XMMWORD PTR 352[rax]
	vinsertf128	ymm0, ymm0, XMMWORD PTR 368[rax], 0x1
	vmovaps	YMMWORD PTR 352[rdx], ymm0
.L8:
	sub	r10d, esi
	cmp	r11d, esi
	lea	eax, [rsi+r9]
	je	.L11
	lea	ecx, 1[rax]
	movsx	rdx, eax
	cmp	r10d, 1
	vmovss	xmm0, DWORD PTR [r8+rdx*4]
	movsx	rcx, ecx
	vmovss	DWORD PTR 44[rbx+rcx*4], xmm0
	je	.L11
	lea	edx, 2[rax]
	vmovss	xmm0, DWORD PTR [r8+rcx*4]
	cmp	r10d, 2
	movsx	rdx, edx
	vmovss	DWORD PTR 44[rbx+rdx*4], xmm0
	je	.L11
	lea	ecx, 3[rax]
	vmovss	xmm0, DWORD PTR [r8+rdx*4]
	cmp	r10d, 3
	movsx	rcx, ecx
	vmovss	DWORD PTR 44[rbx+rcx*4], xmm0
	je	.L11
	lea	edx, 4[rax]
	vmovss	xmm0, DWORD PTR [r8+rcx*4]
	cmp	r10d, 4
	movsx	rdx, edx
	vmovss	DWORD PTR 44[rbx+rdx*4], xmm0
	je	.L11
	lea	ecx, 5[rax]
	vmovss	xmm0, DWORD PTR [r8+rdx*4]
	cmp	r10d, 5
	movsx	rcx, ecx
	vmovss	DWORD PTR 44[rbx+rcx*4], xmm0
	je	.L11
	lea	edx, 6[rax]
	vmovss	xmm0, DWORD PTR [r8+rcx*4]
	cmp	r10d, 6
	movsx	rdx, edx
	vmovss	DWORD PTR 44[rbx+rdx*4], xmm0
	je	.L11
	add	eax, 7
	vmovss	xmm0, DWORD PTR [r8+rdx*4]
	cdqe
	vmovss	DWORD PTR 44[rbx+rax*4], xmm0
.L11:
	lea	r12, 80[rsp]
	mov	esi, 193
	mov	eax, 201
	vxorps	xmm4, xmm4, xmm4
	mov	DWORD PTR 60[rsp], 2
	mov	r13, r12
	vmovsd	xmm3, QWORD PTR .LC1[rip]
	shr	r13, 2
	vmovsd	xmm2, QWORD PTR .LC2[rip]
	and	r13d, 4
	sub	esi, r13d
	sub	eax, r13d
	shr	esi, 3
	mov	DWORD PTR 52[rsp], eax
	add	esi, 1
	lea	eax, 0[0+rsi*8]
	mov	DWORD PTR 56[rsp], eax
	mov	eax, r13d
	add	rax, 11
	mov	QWORD PTR 40[rsp], rax
	sal	rax, 2
	lea	r10, [rbx+rax]
	lea	r11, -44[r12+rax]
	lea	rax, 448[rbx]
	mov	QWORD PTR 64[rsp], rax
	lea	rax, 872[rbx]
	mov	QWORD PTR 72[rsp], rax
	lea	rax, 81272[rbx]
	mov	QWORD PTR 32[rsp], rax
.L20:
	mov	r15, QWORD PTR 64[rsp]
	mov	rdi, QWORD PTR 72[rsp]
	mov	r14d, 201
	.p2align 4,,10
.L19:
	test	r13d, r13d
	mov	ebp, r14d
	mov	QWORD PTR [r12], 0
	mov	QWORD PTR 8[r12], 0
	mov	QWORD PTR 16[r12], 0
	mov	QWORD PTR 24[r12], 0
	je	.L42
	vmovss	xmm5, DWORD PTR 80[rsp]
	cmp	r13d, 1
	vmovss	xmm0, DWORD PTR 44[rbx]
	vfmadd132ss	xmm0, xmm5, DWORD PTR -24[rdi]
	vmovss	DWORD PTR 80[rsp], xmm0
	je	.L43
	vmovss	xmm5, DWORD PTR 48[rbx]
	cmp	r13d, 2
	vfmadd231ss	xmm0, xmm5, DWORD PTR -20[rdi]
	vmovss	DWORD PTR 80[rsp], xmm0
	je	.L44
	vmovss	xmm5, DWORD PTR 52[rbx]
	cmp	r13d, 3
	vfmadd231ss	xmm0, xmm5, DWORD PTR -16[rdi]
	vmovss	DWORD PTR 80[rsp], xmm0
	je	.L45
	vmovss	xmm5, DWORD PTR 56[rbx]
	cmp	r13d, 4
	vfmadd231ss	xmm0, xmm5, DWORD PTR -12[rdi]
	vmovss	DWORD PTR 80[rsp], xmm0
	je	.L46
	vmovss	xmm5, DWORD PTR 60[rbx]
	mov	r9d, 195
	mov	r8d, 6
	vfmadd231ss	xmm0, xmm5, DWORD PTR -8[rdi]
	vmovss	xmm5, DWORD PTR 64[rbx]
	vfmadd231ss	xmm0, xmm5, DWORD PTR -4[rdi]
	vmovss	DWORD PTR 80[rsp], xmm0
.L13:
	mov	rax, QWORD PTR 40[rsp]
	vmovaps	ymm5, YMMWORD PTR [r11]
	xor	edx, edx
	add	rax, r14
	lea	rcx, [rbx+rax*4]
	xor	eax, eax
	.p2align 4,,10
.L15:
	vmovups	xmm1, XMMWORD PTR [r10+rax]
	add	edx, 1
	vmovups	xmm0, XMMWORD PTR [rcx+rax]
	vinsertf128	ymm1, ymm1, XMMWORD PTR 16[r10+rax], 0x1
	vinsertf128	ymm0, ymm0, XMMWORD PTR 16[rcx+rax], 0x1
	add	rax, 32
	cmp	edx, esi
	vfmadd231ps	ymm5, ymm1, ymm0
	vmovaps	YMMWORD PTR [r11], ymm5
	jb	.L15
	mov	eax, DWORD PTR 56[rsp]
	add	r8d, eax
	sub	r9d, eax
	cmp	DWORD PTR 52[rsp], eax
	je	.L17
	lea	eax, 0[rbp+r8]
	movsx	rdx, r8d
	cmp	r9d, 1
	vmovss	xmm5, DWORD PTR 80[rsp]
	cdqe
	vmovss	xmm0, DWORD PTR 44[rbx+rdx*4]
	vfmadd132ss	xmm0, xmm5, DWORD PTR 44[rbx+rax*4]
	lea	eax, 1[r8]
	vmovss	DWORD PTR 80[rsp], xmm0
	je	.L17
	movsx	rdx, eax
	add	eax, ebp
	cmp	r9d, 2
	cdqe
	vmovss	xmm5, DWORD PTR 44[rbx+rdx*4]
	vfmadd231ss	xmm0, xmm5, DWORD PTR 44[rbx+rax*4]
	lea	eax, 2[r8]
	vmovss	DWORD PTR 80[rsp], xmm0
	je	.L17
	movsx	rdx, eax
	add	eax, ebp
	cmp	r9d, 3
	cdqe
	vmovss	xmm5, DWORD PTR 44[rbx+rdx*4]
	vfmadd231ss	xmm0, xmm5, DWORD PTR 44[rbx+rax*4]
	lea	eax, 3[r8]
	vmovss	DWORD PTR 80[rsp], xmm0
	je	.L17
	movsx	rdx, eax
	add	eax, ebp
	cmp	r9d, 4
	cdqe
	vmovss	xmm5, DWORD PTR 44[rbx+rdx*4]
	vfmadd231ss	xmm0, xmm5, DWORD PTR 44[rbx+rax*4]
	lea	eax, 4[r8]
	vmovss	DWORD PTR 80[rsp], xmm0
	je	.L17
	movsx	rdx, eax
	add	eax, ebp
	cmp	r9d, 5
	cdqe
	vmovss	xmm5, DWORD PTR 44[rbx+rdx*4]
	vfmadd231ss	xmm0, xmm5, DWORD PTR 44[rbx+rax*4]
	lea	eax, 5[r8]
	vmovss	DWORD PTR 80[rsp], xmm0
	je	.L17
	movsx	rdx, eax
	add	eax, ebp
	add	r8d, 6
	cdqe
	vmovss	xmm5, DWORD PTR 44[rbx+rdx*4]
	cmp	r9d, 6
	vfmadd231ss	xmm0, xmm5, DWORD PTR 44[rbx+rax*4]
	vmovss	DWORD PTR 80[rsp], xmm0
	je	.L17
	movsx	rax, r8d
	add	r8d, ebp
	movsx	rdx, r8d
	vmovss	xmm5, DWORD PTR 44[rbx+rax*4]
	vfmadd231ss	xmm0, xmm5, DWORD PTR 44[rbx+rdx*4]
	vmovss	DWORD PTR 80[rsp], xmm0
.L17:
	vaddss	xmm0, xmm4, DWORD PTR 80[rsp]
	vxorps	xmm5, xmm5, xmm5
	add	r15, 4
	add	rdi, 804
	add	r14, 201
	vaddss	xmm0, xmm0, DWORD PTR 84[rsp]
	vaddss	xmm0, xmm0, DWORD PTR 88[rsp]
	vaddss	xmm0, xmm0, DWORD PTR 92[rsp]
	vaddss	xmm0, xmm0, DWORD PTR 96[rsp]
	vaddss	xmm0, xmm0, DWORD PTR 100[rsp]
	vaddss	xmm0, xmm0, DWORD PTR 104[rsp]
	vaddss	xmm0, xmm0, DWORD PTR 108[rsp]
	vcvtss2sd	xmm0, xmm0, xmm0
	vmovapd	xmm1, xmm0
	vandpd	xmm1, xmm1, xmm3
	vaddsd	xmm1, xmm1, xmm2
	vdivsd	xmm0, xmm0, xmm1
	vcvtsd2ss	xmm5, xmm5, xmm0
	vmovss	DWORD PTR -4[r15], xmm5
	cmp	rdi, QWORD PTR 32[rsp]
	jne	.L19
	sub	DWORD PTR 60[rsp], 1
	jne	.L20
	mov	rcx, QWORD PTR 8[rbx]
	lea	rax, 848[rbx]
	cmp	rcx, rax
	lea	r8, 396[rcx]
	jnb	.L57
	lea	rax, 452[rbx]
	cmp	r8, rax
	ja	.L21
.L57:
	lea	rdx, 816[rbx]
	and	edx, 31
	shr	rdx, 2
	test	edx, edx
	je	.L49
	vmovss	xmm0, DWORD PTR 844[rbx]
	cmp	edx, 1
	vmovss	DWORD PTR [rcx], xmm0
	je	.L50
	vmovss	xmm0, DWORD PTR 840[rbx]
	cmp	edx, 2
	vmovss	DWORD PTR 4[rcx], xmm0
	je	.L51
	vmovss	xmm0, DWORD PTR 836[rbx]
	cmp	edx, 3
	vmovss	DWORD PTR 8[rcx], xmm0
	je	.L52
	vmovss	xmm0, DWORD PTR 832[rbx]
	cmp	edx, 4
	vmovss	DWORD PTR 12[rcx], xmm0
	je	.L53
	vmovss	xmm0, DWORD PTR 828[rbx]
	cmp	edx, 5
	vmovss	DWORD PTR 16[rcx], xmm0
	je	.L54
	vmovss	xmm0, DWORD PTR 824[rbx]
	cmp	edx, 6
	vmovss	DWORD PTR 20[rcx], xmm0
	je	.L55
	vmovss	xmm0, DWORD PTR 820[rbx]
	mov	r9d, 92
	mov	r10d, 7
	vmovss	DWORD PTR 24[rcx], xmm0
.L24:
	mov	r8d, 91
	mov	r11d, 99
	mov	eax, edx
	sub	r8d, edx
	sub	r11d, edx
	shr	r8d, 3
	add	r8d, 1
	lea	esi, 0[0+r8*8]
.L23:
	mov	rdx, rax
	vmovdqa	ymm0, YMMWORD PTR .LC3[rip]
	lea	rax, [rcx+rax*4]
	neg	rdx
	cmp	r8d, 11
	lea	rdx, 816[rbx+rdx*4]
	vpermd	ymm1, ymm0, YMMWORD PTR [rdx]
	vmovups	XMMWORD PTR [rax], xmm1
	vextractf128	XMMWORD PTR 16[rax], ymm1, 0x1
	vpermd	ymm1, ymm0, YMMWORD PTR -32[rdx]
	vmovups	XMMWORD PTR 32[rax], xmm1
	vextractf128	XMMWORD PTR 48[rax], ymm1, 0x1
	vpermd	ymm1, ymm0, YMMWORD PTR -64[rdx]
	vmovups	XMMWORD PTR 64[rax], xmm1
	vextractf128	XMMWORD PTR 80[rax], ymm1, 0x1
	vpermd	ymm1, ymm0, YMMWORD PTR -96[rdx]
	vmovups	XMMWORD PTR 96[rax], xmm1
	vextractf128	XMMWORD PTR 112[rax], ymm1, 0x1
	vpermd	ymm1, ymm0, YMMWORD PTR -128[rdx]
	vmovups	XMMWORD PTR 128[rax], xmm1
	vextractf128	XMMWORD PTR 144[rax], ymm1, 0x1
	vpermd	ymm1, ymm0, YMMWORD PTR -160[rdx]
	vmovups	XMMWORD PTR 160[rax], xmm1
	vextractf128	XMMWORD PTR 176[rax], ymm1, 0x1
	vpermd	ymm1, ymm0, YMMWORD PTR -192[rdx]
	vmovups	XMMWORD PTR 192[rax], xmm1
	vextractf128	XMMWORD PTR 208[rax], ymm1, 0x1
	vpermd	ymm1, ymm0, YMMWORD PTR -224[rdx]
	vmovups	XMMWORD PTR 224[rax], xmm1
	vextractf128	XMMWORD PTR 240[rax], ymm1, 0x1
	vpermd	ymm1, ymm0, YMMWORD PTR -256[rdx]
	vmovups	XMMWORD PTR 256[rax], xmm1
	vextractf128	XMMWORD PTR 272[rax], ymm1, 0x1
	vpermd	ymm1, ymm0, YMMWORD PTR -288[rdx]
	vmovups	XMMWORD PTR 288[rax], xmm1
	vextractf128	XMMWORD PTR 304[rax], ymm1, 0x1
	vpermd	ymm1, ymm0, YMMWORD PTR -320[rdx]
	vmovups	XMMWORD PTR 320[rax], xmm1
	vextractf128	XMMWORD PTR 336[rax], ymm1, 0x1
	je	.L25
	vpermd	ymm0, ymm0, YMMWORD PTR -352[rdx]
	vmovups	XMMWORD PTR 352[rax], xmm0
	vextractf128	XMMWORD PTR 368[rax], ymm0, 0x1
.L25:
	sub	r9d, esi
	cmp	esi, r11d
	lea	eax, [rsi+r10]
	je	.L28
	mov	edx, 200
	mov	r8d, edx
	sub	r8d, eax
	cmp	r9d, 1
	movsx	r8, r8d
	vmovss	xmm0, DWORD PTR 44[rbx+r8*4]
	movsx	r8, eax
	vmovss	DWORD PTR [rcx+r8*4], xmm0
	lea	r8d, 1[rax]
	je	.L28
	mov	r10d, edx
	sub	r10d, r8d
	movsx	r8, r8d
	cmp	r9d, 2
	movsx	r10, r10d
	vmovss	xmm0, DWORD PTR 44[rbx+r10*4]
	vmovss	DWORD PTR [rcx+r8*4], xmm0
	lea	r8d, 2[rax]
	je	.L28
	mov	r10d, edx
	sub	r10d, r8d
	movsx	r8, r8d
	cmp	r9d, 3
	movsx	r10, r10d
	vmovss	xmm0, DWORD PTR 44[rbx+r10*4]
	vmovss	DWORD PTR [rcx+r8*4], xmm0
	lea	r8d, 3[rax]
	je	.L28
	mov	r10d, edx
	sub	r10d, r8d
	movsx	r8, r8d
	cmp	r9d, 4
	movsx	r10, r10d
	vmovss	xmm0, DWORD PTR 44[rbx+r10*4]
	vmovss	DWORD PTR [rcx+r8*4], xmm0
	lea	r8d, 4[rax]
	je	.L28
	mov	r10d, edx
	sub	r10d, r8d
	movsx	r8, r8d
	cmp	r9d, 5
	movsx	r10, r10d
	vmovss	xmm0, DWORD PTR 44[rbx+r10*4]
	vmovss	DWORD PTR [rcx+r8*4], xmm0
	lea	r8d, 5[rax]
	je	.L28
	mov	r10d, edx
	add	eax, 6
	sub	r10d, r8d
	movsx	r8, r8d
	cmp	r9d, 6
	movsx	r10, r10d
	vmovss	xmm0, DWORD PTR 44[rbx+r10*4]
	vmovss	DWORD PTR [rcx+r8*4], xmm0
	je	.L28
	sub	edx, eax
	cdqe
	movsx	rdx, edx
	vmovss	xmm0, DWORD PTR 44[rbx+rdx*4]
	vmovss	DWORD PTR [rcx+rax*4], xmm0
.L28:
	mov	rsi, QWORD PTR 16[rbx]
	mov	rdi, QWORD PTR 192[rsp]
	sub	rsi, rcx
	mov	QWORD PTR [rdi], 0
	mov	QWORD PTR 8[rdi], 0
	mov	rax, rsi
	mov	QWORD PTR 16[rdi], 0
	sar	rax, 2
	test	rax, rax
	je	.L126
	movabs	rdx, 4611686018427387903
	cmp	rax, rdx
	ja	.L127
	mov	rcx, rsi
	vzeroupper
	call	_Znwy
	mov	r9, rax
	mov	rax, QWORD PTR 192[rsp]
.L31:
	add	rsi, r9
	mov	QWORD PTR [rax], r9
	mov	QWORD PTR 8[rax], r9
	mov	QWORD PTR 16[rax], rsi
	mov	rdx, QWORD PTR 8[rbx]
	mov	rax, QWORD PTR 16[rbx]
	sub	rax, rdx
	mov	rbx, rax
	sar	rax, 2
	test	rax, rax
	jne	.L128
.L34:
	mov	rax, QWORD PTR 192[rsp]
	add	rbx, r9
	mov	QWORD PTR 8[rax], rbx
	add	rsp, 120
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
.L42:
	mov	r9d, 201
	xor	r8d, r8d
	jmp	.L13
	.p2align 4,,10
.L45:
	mov	r9d, 198
	mov	r8d, 3
	jmp	.L13
	.p2align 4,,10
.L44:
	mov	r9d, 199
	mov	r8d, 2
	jmp	.L13
	.p2align 4,,10
.L46:
	mov	r9d, 197
	mov	r8d, 4
	jmp	.L13
	.p2align 4,,10
.L43:
	mov	r9d, 200
	mov	r8d, 1
	jmp	.L13
.L128:
	mov	rcx, r9
	mov	r8, rbx
	call	memmove
	mov	r9, rax
	jmp	.L34
.L127:
	vzeroupper
	call	_ZSt17__throw_bad_allocv
.L126:
	xor	r9d, r9d
	vzeroupper
	mov	rax, rdi
	jmp	.L31
.L54:
	mov	r9d, 94
	mov	r10d, 5
	jmp	.L24
.L53:
	mov	r9d, 95
	mov	r10d, 4
	jmp	.L24
.L52:
	mov	r9d, 96
	mov	r10d, 3
	jmp	.L24
.L51:
	mov	r9d, 97
	mov	r10d, 2
	jmp	.L24
.L55:
	mov	r9d, 93
	mov	r10d, 6
	jmp	.L24
.L21:
	lea	rdx, 844[rbx]
	mov	rax, rcx
	.p2align 4,,10
.L29:
	vmovss	xmm0, DWORD PTR [rdx]
	add	rax, 4
	sub	rdx, 4
	vmovss	DWORD PTR -4[rax], xmm0
	cmp	r8, rax
	jne	.L29
	jmp	.L28
.L50:
	mov	r9d, 98
	mov	r10d, 1
	jmp	.L24
.L49:
	xor	r10d, r10d
	mov	r9d, 99
	xor	eax, eax
	mov	r11d, 99
	mov	r8d, 12
	mov	esi, 96
	jmp	.L23
.L41:
	mov	r10d, 94
	mov	r9d, 6
	jmp	.L7
.L40:
	mov	r10d, 95
	mov	r9d, 5
	jmp	.L7
.L39:
	mov	r10d, 96
	mov	r9d, 4
	jmp	.L7
.L38:
	mov	r10d, 97
	mov	r9d, 3
	jmp	.L7
.L37:
	mov	r10d, 98
	mov	r9d, 2
	jmp	.L7
.L36:
	mov	r10d, 99
	mov	r9d, 1
	jmp	.L7
.L35:
	mov	esi, 96
	mov	ecx, 12
	mov	r11d, 100
	xor	eax, eax
	mov	r10d, 100
	xor	r9d, r9d
	jmp	.L6
.L4:
	xor	eax, eax
	.p2align 4,,10
.L12:
	vmovss	xmm0, DWORD PTR [r8+rax]
	vmovss	DWORD PTR 48[rbx+rax], xmm0
	add	rax, 4
	cmp	rax, 400
	jne	.L12
	jmp	.L11
	.seh_endproc
	.section	.text$_ZN11NeuralBrainILi100ELi100EEC1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN11NeuralBrainILi100ELi100EEC1Ev
	.def	_ZN11NeuralBrainILi100ELi100EEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11NeuralBrainILi100ELi100EEC1Ev
_ZN11NeuralBrainILi100ELi100EEC1Ev:
.LFB2787:
	push	rdi
	.seh_pushreg	rdi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, rcx
.LEHB0:
	call	_ZN9NeuralNetC2Ev
.LEHE0:
	lea	rax, _ZTV11NeuralBrainILi100ELi100EE[rip+16]
	lea	rcx, 44[rbx]
	mov	QWORD PTR 8[rbx], 0
	mov	QWORD PTR 16[rbx], 0
	mov	QWORD PTR 24[rbx], 0
	mov	r8d, 81204
	mov	QWORD PTR [rbx], rax
	mov	DWORD PTR 32[rbx], 100
	xor	edx, edx
	mov	DWORD PTR 36[rbx], 100
	mov	DWORD PTR 40[rbx], 0
	call	memset
	mov	QWORD PTR 81248[rbx], 0
	mov	QWORD PTR 81256[rbx], 0
	mov	ecx, 400
	mov	QWORD PTR 81264[rbx], 0
.LEHB1:
	call	_Znwy
.LEHE1:
	lea	rdi, 8[rax]
	mov	rcx, rax
	lea	r8, 400[rax]
	mov	QWORD PTR 81248[rbx], rax
	mov	rdx, rax
	and	rdi, -8
	mov	QWORD PTR 81264[rbx], r8
	mov	QWORD PTR [rax], 0
	sub	rcx, rdi
	mov	QWORD PTR 392[rax], 0
	xor	eax, eax
	add	ecx, 400
	shr	ecx, 3
	rep stosq
	mov	rax, rdx
	mov	QWORD PTR 81256[rbx], r8
	mov	DWORD PTR 44[rbx], 0x3f800000
	and	eax, 31
	shr	rax, 2
	neg	rax
	and	eax, 7
	jne	.L167
	xor	r9d, r9d
	xor	ecx, ecx
.L130:
	mov	r8d, 100
	mov	r10d, 99
	mov	r11, r8
	mov	r8d, 92
	sub	r10, r9
	sub	r8, r9
	sub	r11, r9
	shr	r8, 3
	add	r8, 1
	cmp	r10, 6
	lea	rdi, 0[0+r8*8]
	jbe	.L133
	vmovaps	ymm0, YMMWORD PTR .LC5[rip]
	lea	r10, [rdx+r9*4]
	xor	r9d, r9d
.L134:
	add	r9, 1
	vmovaps	YMMWORD PTR [r10], ymm0
	add	r10, 32
	cmp	r9, r8
	jb	.L134
	add	ecx, edi
	add	rax, rdi
	cmp	rdi, r11
	je	.L163
	vzeroupper
.L133:
	mov	DWORD PTR [rdx+rax*4], 0x3f800000
	lea	eax, 1[rcx]
	cdqe
	cmp	rax, 99
	ja	.L132
	mov	DWORD PTR [rdx+rax*4], 0x3f800000
	lea	eax, 2[rcx]
	cdqe
	cmp	rax, 99
	ja	.L132
	mov	DWORD PTR [rdx+rax*4], 0x3f800000
	lea	eax, 3[rcx]
	cdqe
	cmp	rax, 99
	ja	.L132
	mov	DWORD PTR [rdx+rax*4], 0x3f800000
	lea	eax, 4[rcx]
	cdqe
	cmp	rax, 99
	ja	.L132
	mov	DWORD PTR [rdx+rax*4], 0x3f800000
	lea	eax, 5[rcx]
	cdqe
	cmp	rax, 99
	ja	.L132
	mov	DWORD PTR [rdx+rax*4], 0x3f800000
	lea	eax, 6[rcx]
	cdqe
	cmp	rax, 99
	ja	.L132
	mov	DWORD PTR [rdx+rax*4], 0x3f800000
.L132:
	mov	ecx, 400
.LEHB2:
	call	_Znwy
.LEHE2:
	lea	rdi, 8[rax]
	mov	rcx, rax
	mov	QWORD PTR [rax], 0
	mov	QWORD PTR 392[rax], 0
	lea	r8, 400[rax]
	mov	rdx, rax
	and	rdi, -8
	xor	eax, eax
	sub	rcx, rdi
	add	ecx, 400
	shr	ecx, 3
	rep stosq
	mov	QWORD PTR 16[rbx], r8
	mov	QWORD PTR 24[rbx], r8
	mov	rcx, QWORD PTR 8[rbx]
	mov	QWORD PTR 8[rbx], rdx
	test	rcx, rcx
	je	.L165
	add	rsp, 40
	pop	rbx
	pop	rdi
	jmp	_ZdlPv
.L167:
	cmp	rax, 1
	mov	r9, rax
	mov	DWORD PTR [rdx], 0x3f800000
	je	.L144
	cmp	rax, 2
	mov	DWORD PTR 4[rdx], 0x3f800000
	je	.L145
	cmp	rax, 3
	mov	DWORD PTR 8[rdx], 0x3f800000
	je	.L146
	cmp	rax, 4
	mov	DWORD PTR 12[rdx], 0x3f800000
	je	.L147
	cmp	rax, 5
	mov	DWORD PTR 16[rdx], 0x3f800000
	je	.L148
	cmp	rax, 6
	mov	DWORD PTR 20[rdx], 0x3f800000
	je	.L149
	cmp	rax, 7
	mov	DWORD PTR 24[rdx], 0x3f800000
	je	.L150
	mov	DWORD PTR 28[rdx], 0x3f800000
	mov	DWORD PTR 32[rdx], 0x3f800000
	mov	eax, 9
	mov	ecx, 9
	jmp	.L130
	.p2align 4,,10
.L165:
	add	rsp, 40
	pop	rbx
	pop	rdi
	ret
	.p2align 4,,10
.L163:
	vzeroupper
	jmp	.L132
	.p2align 4,,10
.L146:
	mov	ecx, 3
	jmp	.L130
	.p2align 4,,10
.L147:
	mov	ecx, 4
	jmp	.L130
	.p2align 4,,10
.L148:
	mov	ecx, 5
	jmp	.L130
	.p2align 4,,10
.L149:
	mov	ecx, 6
	jmp	.L130
	.p2align 4,,10
.L144:
	mov	ecx, 1
	jmp	.L130
	.p2align 4,,10
.L145:
	mov	ecx, 2
	jmp	.L130
	.p2align 4,,10
.L150:
	mov	ecx, 7
	jmp	.L130
.L153:
	mov	rdi, rax
	vzeroupper
.L141:
	mov	rcx, QWORD PTR 8[rbx]
	test	rcx, rcx
	je	.L142
	call	_ZdlPv
.L142:
	mov	rcx, rbx
	call	_ZN9NeuralNetD2Ev
	mov	rcx, rdi
.LEHB3:
	call	_Unwind_Resume
.LEHE3:
.L154:
	mov	rcx, QWORD PTR 81248[rbx]
	mov	rdi, rax
	test	rcx, rcx
	je	.L164
	vzeroupper
	call	_ZdlPv
	jmp	.L141
.L164:
	vzeroupper
	jmp	.L141
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2787:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2787-.LLSDACSB2787
.LLSDACSB2787:
	.uleb128 .LEHB0-.LFB2787
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2787
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L153-.LFB2787
	.uleb128 0
	.uleb128 .LEHB2-.LFB2787
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L154-.LFB2787
	.uleb128 0
	.uleb128 .LEHB3-.LFB2787
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE2787:
	.section	.text$_ZN11NeuralBrainILi100ELi100EEC1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN11NeuralBrainILi100ELi100EED1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN11NeuralBrainILi100ELi100EED1Ev
	.def	_ZN11NeuralBrainILi100ELi100EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11NeuralBrainILi100ELi100EED1Ev
_ZN11NeuralBrainILi100ELi100EED1Ev:
.LFB2790:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	lea	rax, _ZTV11NeuralBrainILi100ELi100EE[rip+16]
	mov	rbx, rcx
	mov	QWORD PTR [rcx], rax
	mov	rcx, QWORD PTR 81248[rcx]
	test	rcx, rcx
	je	.L169
	call	_ZdlPv
.L169:
	mov	rcx, QWORD PTR 8[rbx]
	test	rcx, rcx
	je	.L170
	call	_ZdlPv
.L170:
	mov	rcx, rbx
	add	rsp, 32
	pop	rbx
	jmp	_ZN9NeuralNetD2Ev
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC6:
	.ascii "\12\0"
.LC7:
	.ascii "Timing full:\0"
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2625:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	mov	eax, 81384
	call	___chkstk_ms
	sub	rsp, rax
	.seh_stackalloc	81384
	.seh_endprologue
	lea	rsi, 96[rsp]
	call	__main
	mov	rcx, rsi
.LEHB4:
	call	_ZN11NeuralBrainILi100ELi100EEC1Ev
.LEHE4:
	lea	rcx, 32[rsp]
.LEHB5:
	call	_ZNSt6vectorIfSaIfEEC1EyRKS0_.isra.34.constprop.44
.LEHE5:
	lea	rcx, 64[rsp]
.LEHB6:
	call	_ZNSt6vectorIfSaIfEEC1EyRKS0_.isra.34.constprop.44
.LEHE6:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	vxorpd	xmm1, xmm1, xmm1
	mov	rbx, rax
	mov	rax, QWORD PTR 64[rsp]
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	vcvtss2sd	xmm1, xmm1, DWORD PTR [rax]
.LEHB7:
	call	_ZNSo9_M_insertIdEERSoT_
	lea	rdx, .LC6[rip]
	mov	rcx, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movabs	rdx, 4835703278458516699
	sub	rax, rbx
	mov	r8d, 12
	mov	rcx, rax
	imul	rdx
	sar	rcx, 63
	mov	rbx, rdx
	lea	rdx, .LC7[rip]
	sar	rbx, 18
	sub	rbx, rcx
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	mov	rdx, rbx
	call	_ZNSo9_M_insertIxEERSoT_
	lea	rdx, .LC6[rip]
	mov	rcx, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE7:
	mov	rcx, QWORD PTR 64[rsp]
	test	rcx, rcx
	je	.L178
	call	_ZdlPv
.L178:
	mov	rcx, QWORD PTR 32[rsp]
	test	rcx, rcx
	je	.L179
	call	_ZdlPv
.L179:
	mov	rcx, rsi
	call	_ZN11NeuralBrainILi100ELi100EED1Ev
	xor	eax, eax
	add	rsp, 81384
	pop	rbx
	pop	rsi
	ret
.L185:
	mov	rbx, rax
	vzeroupper
.L184:
	mov	rcx, rsi
	call	_ZN11NeuralBrainILi100ELi100EED1Ev
	mov	rcx, rbx
.LEHB8:
	call	_Unwind_Resume
.LEHE8:
.L187:
	mov	rcx, QWORD PTR 64[rsp]
	mov	rbx, rax
	test	rcx, rcx
	je	.L201
	vzeroupper
	call	_ZdlPv
.L182:
	mov	rcx, QWORD PTR 32[rsp]
	test	rcx, rcx
	je	.L184
	call	_ZdlPv
	jmp	.L184
.L186:
	mov	rbx, rax
	vzeroupper
	jmp	.L182
.L201:
	vzeroupper
	jmp	.L182
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2625:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2625-.LLSDACSB2625
.LLSDACSB2625:
	.uleb128 .LEHB4-.LFB2625
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB2625
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L185-.LFB2625
	.uleb128 0
	.uleb128 .LEHB6-.LFB2625
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L186-.LFB2625
	.uleb128 0
	.uleb128 .LEHB7-.LFB2625
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L187-.LFB2625
	.uleb128 0
	.uleb128 .LEHB8-.LFB2625
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE2625:
	.section	.text.startup,"x"
	.seh_endproc
	.p2align 4,,15
	.def	_GLOBAL__sub_I_main;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_main
_GLOBAL__sub_I_main:
.LFB3150:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	lea	rcx, _ZStL8__ioinit[rip]
	call	_ZNSt8ios_base4InitC1Ev
	lea	rcx, __tcf_0[rip]
	add	rsp, 40
	jmp	atexit
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_main
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
	.globl	_ZTS11NeuralBrainILi100ELi100EE
	.section	.rdata$_ZTS11NeuralBrainILi100ELi100EE,"dr"
	.linkonce same_size
	.align 16
_ZTS11NeuralBrainILi100ELi100EE:
	.ascii "11NeuralBrainILi100ELi100EE\0"
	.globl	_ZTI11NeuralBrainILi100ELi100EE
	.section	.rdata$_ZTI11NeuralBrainILi100ELi100EE,"dr"
	.linkonce same_size
	.align 8
_ZTI11NeuralBrainILi100ELi100EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS11NeuralBrainILi100ELi100EE
	.quad	_ZTI9NeuralNet
	.globl	_ZTV11NeuralBrainILi100ELi100EE
	.section	.rdata$_ZTV11NeuralBrainILi100ELi100EE,"dr"
	.linkonce same_size
	.align 8
_ZTV11NeuralBrainILi100ELi100EE:
	.quad	0
	.quad	_ZTI11NeuralBrainILi100ELi100EE
	.quad	_ZN11NeuralBrainILi100ELi100EE6UpdateERKSt6vectorIfSaIfEE
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 16
.LC1:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC2:
	.long	0
	.long	1072693248
	.align 32
.LC3:
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	2
	.long	1
	.long	0
	.align 32
.LC5:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.ident	"GCC: (Rev3, Built by MSYS2 project) 5.2.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	_ZN9NeuralNetC2Ev;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_ZdlPv;	.scl	2;	.type	32;	.endef
	.def	_ZN9NeuralNetD2Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIxEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout

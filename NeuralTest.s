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
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	r8, QWORD PTR [r8]
	lea	rax, 48[rdx]
	mov	rbx, rdx
	mov	rsi, rcx
	lea	rdx, 32[r8]
	cmp	rax, rdx
	jnb	.L44
	lea	rdx, 80[rbx]
	cmp	r8, rdx
	jb	.L4
.L44:
	and	eax, 31
	mov	rdx, rax
	shr	rdx, 2
	neg	rdx
	and	edx, 7
	je	.L30
	vmovss	xmm0, DWORD PTR [r8]
	cmp	edx, 1
	vmovss	DWORD PTR 48[rbx], xmm0
	je	.L31
	vmovss	xmm0, DWORD PTR 4[r8]
	cmp	edx, 2
	vmovss	DWORD PTR 52[rbx], xmm0
	je	.L32
	vmovss	xmm0, DWORD PTR 8[r8]
	cmp	edx, 3
	vmovss	DWORD PTR 56[rbx], xmm0
	je	.L33
	vmovss	xmm0, DWORD PTR 12[r8]
	cmp	edx, 4
	vmovss	DWORD PTR 60[rbx], xmm0
	je	.L34
	vmovss	xmm0, DWORD PTR 16[r8]
	cmp	edx, 5
	vmovss	DWORD PTR 64[rbx], xmm0
	je	.L35
	vmovss	xmm0, DWORD PTR 20[r8]
	cmp	edx, 6
	vmovss	DWORD PTR 68[rbx], xmm0
	je	.L36
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
	lea	edi, 0[0+rcx*8]
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
	sub	r10d, edi
	cmp	r11d, edi
	lea	eax, [rdi+r9]
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
	vxorps	xmm4, xmm4, xmm4
	lea	r11, 448[rbx]
	lea	r9, 44[rbx]
	lea	r8, 848[rbx]
	vmovsd	xmm3, QWORD PTR .LC1[rip]
	vmovsd	xmm2, QWORD PTR .LC2[rip]
	mov	r10d, 2
.L15:
	mov	rdx, r11
	mov	ecx, 201
	.p2align 4,,10
.L14:
	vmovaps	xmm0, xmm4
	mov	rax, r9
	.p2align 4,,10
.L13:
	vmovss	xmm5, DWORD PTR [rax]
	vfmadd231ss	xmm0, xmm5, DWORD PTR [rax+rcx*4]
	add	rax, 4
	cmp	r8, rax
	jne	.L13
	vcvtss2sd	xmm0, xmm0, xmm0
	add	rcx, 201
	add	rdx, 4
	vmovapd	xmm1, xmm0
	vandpd	xmm1, xmm1, xmm3
	vaddsd	xmm1, xmm1, xmm2
	vdivsd	xmm0, xmm0, xmm1
	vxorps	xmm1, xmm1, xmm1
	vcvtsd2ss	xmm1, xmm1, xmm0
	vmovss	DWORD PTR -4[rdx], xmm1
	cmp	rcx, 20301
	jne	.L14
	sub	r10d, 1
	jne	.L15
	mov	rcx, QWORD PTR 8[rbx]
	lea	rax, 452[rbx]
	lea	r9, 396[rcx]
	cmp	r9, rax
	jbe	.L45
	cmp	r8, rcx
	ja	.L16
.L45:
	lea	rdx, 816[rbx]
	and	edx, 31
	shr	rdx, 2
	test	edx, edx
	je	.L37
	vmovss	xmm0, DWORD PTR 844[rbx]
	cmp	edx, 1
	vmovss	DWORD PTR [rcx], xmm0
	je	.L38
	vmovss	xmm0, DWORD PTR 840[rbx]
	cmp	edx, 2
	vmovss	DWORD PTR 4[rcx], xmm0
	je	.L39
	vmovss	xmm0, DWORD PTR 836[rbx]
	cmp	edx, 3
	vmovss	DWORD PTR 8[rcx], xmm0
	je	.L40
	vmovss	xmm0, DWORD PTR 832[rbx]
	cmp	edx, 4
	vmovss	DWORD PTR 12[rcx], xmm0
	je	.L41
	vmovss	xmm0, DWORD PTR 828[rbx]
	cmp	edx, 5
	vmovss	DWORD PTR 16[rcx], xmm0
	je	.L42
	vmovss	xmm0, DWORD PTR 824[rbx]
	cmp	edx, 6
	vmovss	DWORD PTR 20[rcx], xmm0
	je	.L43
	vmovss	xmm0, DWORD PTR 820[rbx]
	mov	r9d, 92
	mov	r10d, 7
	vmovss	DWORD PTR 24[rcx], xmm0
.L19:
	mov	r8d, 91
	mov	r11d, 99
	mov	eax, edx
	sub	r8d, edx
	sub	r11d, edx
	shr	r8d, 3
	add	r8d, 1
	lea	edi, 0[0+r8*8]
.L18:
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
	je	.L20
	vpermd	ymm0, ymm0, YMMWORD PTR -352[rdx]
	vmovups	XMMWORD PTR 352[rax], xmm0
	vextractf128	XMMWORD PTR 368[rax], ymm0, 0x1
.L20:
	sub	r9d, edi
	cmp	edi, r11d
	lea	eax, [rdi+r10]
	je	.L23
	mov	edx, 200
	mov	r8d, edx
	sub	r8d, eax
	cmp	r9d, 1
	movsx	r8, r8d
	vmovss	xmm0, DWORD PTR 44[rbx+r8*4]
	movsx	r8, eax
	vmovss	DWORD PTR [rcx+r8*4], xmm0
	lea	r8d, 1[rax]
	je	.L23
	mov	r10d, edx
	sub	r10d, r8d
	movsx	r8, r8d
	cmp	r9d, 2
	movsx	r10, r10d
	vmovss	xmm0, DWORD PTR 44[rbx+r10*4]
	vmovss	DWORD PTR [rcx+r8*4], xmm0
	lea	r8d, 2[rax]
	je	.L23
	mov	r10d, edx
	sub	r10d, r8d
	movsx	r8, r8d
	cmp	r9d, 3
	movsx	r10, r10d
	vmovss	xmm0, DWORD PTR 44[rbx+r10*4]
	vmovss	DWORD PTR [rcx+r8*4], xmm0
	lea	r8d, 3[rax]
	je	.L23
	mov	r10d, edx
	sub	r10d, r8d
	movsx	r8, r8d
	cmp	r9d, 4
	movsx	r10, r10d
	vmovss	xmm0, DWORD PTR 44[rbx+r10*4]
	vmovss	DWORD PTR [rcx+r8*4], xmm0
	lea	r8d, 4[rax]
	je	.L23
	mov	r10d, edx
	sub	r10d, r8d
	movsx	r8, r8d
	cmp	r9d, 5
	movsx	r10, r10d
	vmovss	xmm0, DWORD PTR 44[rbx+r10*4]
	vmovss	DWORD PTR [rcx+r8*4], xmm0
	lea	r8d, 5[rax]
	je	.L23
	mov	r10d, edx
	add	eax, 6
	sub	r10d, r8d
	movsx	r8, r8d
	cmp	r9d, 6
	movsx	r10, r10d
	vmovss	xmm0, DWORD PTR 44[rbx+r10*4]
	vmovss	DWORD PTR [rcx+r8*4], xmm0
	je	.L23
	sub	edx, eax
	cdqe
	movsx	rdx, edx
	vmovss	xmm0, DWORD PTR 44[rbx+rdx*4]
	vmovss	DWORD PTR [rcx+rax*4], xmm0
.L23:
	mov	rdi, QWORD PTR 16[rbx]
	mov	QWORD PTR [rsi], 0
	mov	QWORD PTR 8[rsi], 0
	mov	QWORD PTR 16[rsi], 0
	sub	rdi, rcx
	mov	rax, rdi
	sar	rax, 2
	test	rax, rax
	je	.L97
	movabs	rdx, 4611686018427387903
	cmp	rax, rdx
	ja	.L98
	mov	rcx, rdi
	vzeroupper
	call	_Znwy
	mov	r9, rax
.L26:
	add	rdi, r9
	mov	QWORD PTR [rsi], r9
	mov	QWORD PTR 8[rsi], r9
	mov	QWORD PTR 16[rsi], rdi
	mov	rdx, QWORD PTR 8[rbx]
	mov	rax, QWORD PTR 16[rbx]
	sub	rax, rdx
	mov	rbx, rax
	sar	rax, 2
	test	rax, rax
	jne	.L99
.L29:
	add	rbx, r9
	mov	rax, rsi
	mov	QWORD PTR 8[rsi], rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
.L43:
	mov	r9d, 93
	mov	r10d, 6
	jmp	.L19
.L41:
	mov	r9d, 95
	mov	r10d, 4
	jmp	.L19
.L40:
	mov	r9d, 96
	mov	r10d, 3
	jmp	.L19
.L36:
	mov	r10d, 94
	mov	r9d, 6
	jmp	.L7
.L35:
	mov	r10d, 95
	mov	r9d, 5
	jmp	.L7
.L34:
	mov	r10d, 96
	mov	r9d, 4
	jmp	.L7
.L33:
	mov	r10d, 97
	mov	r9d, 3
	jmp	.L7
.L32:
	mov	r10d, 98
	mov	r9d, 2
	jmp	.L7
.L31:
	mov	r10d, 99
	mov	r9d, 1
	jmp	.L7
.L30:
	mov	edi, 96
	mov	ecx, 12
	mov	r11d, 100
	xor	eax, eax
	mov	r10d, 100
	xor	r9d, r9d
	jmp	.L6
.L4:
	xor	eax, eax
.L12:
	vmovss	xmm0, DWORD PTR [r8+rax]
	vmovss	DWORD PTR 48[rbx+rax], xmm0
	add	rax, 4
	cmp	rax, 400
	jne	.L12
	jmp	.L11
.L39:
	mov	r9d, 97
	mov	r10d, 2
	jmp	.L19
.L38:
	mov	r9d, 98
	mov	r10d, 1
	jmp	.L19
.L37:
	xor	r10d, r10d
	mov	r9d, 99
	xor	eax, eax
	mov	r11d, 99
	mov	r8d, 12
	mov	edi, 96
	jmp	.L18
.L16:
	lea	rdx, 844[rbx]
	mov	rax, rcx
.L24:
	vmovss	xmm0, DWORD PTR [rdx]
	add	rax, 4
	sub	rdx, 4
	vmovss	DWORD PTR -4[rax], xmm0
	cmp	rax, r9
	jne	.L24
	jmp	.L23
.L42:
	mov	r9d, 94
	mov	r10d, 5
	jmp	.L19
.L99:
	mov	rcx, r9
	mov	r8, rbx
	call	memmove
	mov	r9, rax
	jmp	.L29
.L98:
	vzeroupper
	call	_ZSt17__throw_bad_allocv
.L97:
	xor	r9d, r9d
	vzeroupper
	jmp	.L26
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
	jne	.L138
	xor	r9d, r9d
	xor	ecx, ecx
.L101:
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
	jbe	.L104
	vmovaps	ymm0, YMMWORD PTR .LC5[rip]
	lea	r10, [rdx+r9*4]
	xor	r9d, r9d
.L105:
	add	r9, 1
	vmovaps	YMMWORD PTR [r10], ymm0
	add	r10, 32
	cmp	r9, r8
	jb	.L105
	add	ecx, edi
	add	rax, rdi
	cmp	rdi, r11
	je	.L134
	vzeroupper
.L104:
	mov	DWORD PTR [rdx+rax*4], 0x3f800000
	lea	eax, 1[rcx]
	cdqe
	cmp	rax, 99
	ja	.L103
	mov	DWORD PTR [rdx+rax*4], 0x3f800000
	lea	eax, 2[rcx]
	cdqe
	cmp	rax, 99
	ja	.L103
	mov	DWORD PTR [rdx+rax*4], 0x3f800000
	lea	eax, 3[rcx]
	cdqe
	cmp	rax, 99
	ja	.L103
	mov	DWORD PTR [rdx+rax*4], 0x3f800000
	lea	eax, 4[rcx]
	cdqe
	cmp	rax, 99
	ja	.L103
	mov	DWORD PTR [rdx+rax*4], 0x3f800000
	lea	eax, 5[rcx]
	cdqe
	cmp	rax, 99
	ja	.L103
	mov	DWORD PTR [rdx+rax*4], 0x3f800000
	lea	eax, 6[rcx]
	cdqe
	cmp	rax, 99
	ja	.L103
	mov	DWORD PTR [rdx+rax*4], 0x3f800000
.L103:
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
	je	.L136
	add	rsp, 40
	pop	rbx
	pop	rdi
	jmp	_ZdlPv
.L138:
	cmp	rax, 1
	mov	r9, rax
	mov	DWORD PTR [rdx], 0x3f800000
	je	.L115
	cmp	rax, 2
	mov	DWORD PTR 4[rdx], 0x3f800000
	je	.L116
	cmp	rax, 3
	mov	DWORD PTR 8[rdx], 0x3f800000
	je	.L117
	cmp	rax, 4
	mov	DWORD PTR 12[rdx], 0x3f800000
	je	.L118
	cmp	rax, 5
	mov	DWORD PTR 16[rdx], 0x3f800000
	je	.L119
	cmp	rax, 6
	mov	DWORD PTR 20[rdx], 0x3f800000
	je	.L120
	cmp	rax, 7
	mov	DWORD PTR 24[rdx], 0x3f800000
	je	.L121
	mov	DWORD PTR 28[rdx], 0x3f800000
	mov	DWORD PTR 32[rdx], 0x3f800000
	mov	eax, 9
	mov	ecx, 9
	jmp	.L101
	.p2align 4,,10
.L136:
	add	rsp, 40
	pop	rbx
	pop	rdi
	ret
	.p2align 4,,10
.L134:
	vzeroupper
	jmp	.L103
	.p2align 4,,10
.L117:
	mov	ecx, 3
	jmp	.L101
	.p2align 4,,10
.L118:
	mov	ecx, 4
	jmp	.L101
	.p2align 4,,10
.L119:
	mov	ecx, 5
	jmp	.L101
	.p2align 4,,10
.L120:
	mov	ecx, 6
	jmp	.L101
	.p2align 4,,10
.L115:
	mov	ecx, 1
	jmp	.L101
	.p2align 4,,10
.L116:
	mov	ecx, 2
	jmp	.L101
	.p2align 4,,10
.L121:
	mov	ecx, 7
	jmp	.L101
.L124:
	mov	rdi, rax
	vzeroupper
.L112:
	mov	rcx, QWORD PTR 8[rbx]
	test	rcx, rcx
	je	.L113
	call	_ZdlPv
.L113:
	mov	rcx, rbx
	call	_ZN9NeuralNetD2Ev
	mov	rcx, rdi
.LEHB3:
	call	_Unwind_Resume
.LEHE3:
.L125:
	mov	rcx, QWORD PTR 81248[rbx]
	mov	rdi, rax
	test	rcx, rcx
	je	.L135
	vzeroupper
	call	_ZdlPv
	jmp	.L112
.L135:
	vzeroupper
	jmp	.L112
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
	.uleb128 .L124-.LFB2787
	.uleb128 0
	.uleb128 .LEHB2-.LFB2787
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L125-.LFB2787
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
	je	.L140
	call	_ZdlPv
.L140:
	mov	rcx, QWORD PTR 8[rbx]
	test	rcx, rcx
	je	.L141
	call	_ZdlPv
.L141:
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
	je	.L149
	call	_ZdlPv
.L149:
	mov	rcx, QWORD PTR 32[rsp]
	test	rcx, rcx
	je	.L150
	call	_ZdlPv
.L150:
	mov	rcx, rsi
	call	_ZN11NeuralBrainILi100ELi100EED1Ev
	xor	eax, eax
	add	rsp, 81384
	pop	rbx
	pop	rsi
	ret
.L156:
	mov	rbx, rax
	vzeroupper
.L155:
	mov	rcx, rsi
	call	_ZN11NeuralBrainILi100ELi100EED1Ev
	mov	rcx, rbx
.LEHB8:
	call	_Unwind_Resume
.LEHE8:
.L158:
	mov	rcx, QWORD PTR 64[rsp]
	mov	rbx, rax
	test	rcx, rcx
	je	.L172
	vzeroupper
	call	_ZdlPv
.L153:
	mov	rcx, QWORD PTR 32[rsp]
	test	rcx, rcx
	je	.L155
	call	_ZdlPv
	jmp	.L155
.L157:
	mov	rbx, rax
	vzeroupper
	jmp	.L153
.L172:
	vzeroupper
	jmp	.L153
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
	.uleb128 .L156-.LFB2625
	.uleb128 0
	.uleb128 .LEHB6-.LFB2625
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L157-.LFB2625
	.uleb128 0
	.uleb128 .LEHB7-.LFB2625
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L158-.LFB2625
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

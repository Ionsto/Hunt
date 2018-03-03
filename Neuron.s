	.file	"Neuron.cpp"
	.intel_syntax noprefix
	.section .rdata,"dr"
_ZStL19piecewise_construct:
	.space 1
.lcomm _ZStL8__ioinit,1,1
_ZStL13allocator_arg:
	.space 1
_ZStL6ignore:
	.space 1
	.section	.text$_ZN6Neuron4TanhEf,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6Neuron4TanhEf
	.def	_ZN6Neuron4TanhEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6Neuron4TanhEf
_ZN6Neuron4TanhEf:
.LFB1942:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	vmovss	DWORD PTR 24[rbp], xmm1
	vcvtss2sd	xmm0, xmm0, DWORD PTR 24[rbp]
	vmovss	xmm2, DWORD PTR 24[rbp]
	vmovss	xmm1, DWORD PTR .LC0[rip]
	vandps	xmm1, xmm1, xmm2
	vcvtss2sd	xmm1, xmm1, xmm1
	vmovsd	xmm2, QWORD PTR .LC1[rip]
	vaddsd	xmm1, xmm1, xmm2
	vdivsd	xmm0, xmm0, xmm1
	vcvtsd2ss	xmm0, xmm0, xmm0
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZN6Neuron4ReluEf,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6Neuron4ReluEf
	.def	_ZN6Neuron4ReluEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6Neuron4ReluEf
_ZN6Neuron4ReluEf:
.LFB1943:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	vmovss	DWORD PTR 24[rbp], xmm1
	vxorps	xmm0, xmm0, xmm0
	vmaxss	xmm0, xmm0, DWORD PTR 24[rbp]
	pop	rbp
	ret
	.seh_endproc
	.text
	.align 2
	.globl	_ZN6NeuronC2Ei
	.def	_ZN6NeuronC2Ei;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6NeuronC2Ei
_ZN6NeuronC2Ei:
.LFB1954:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	DWORD PTR 24[rbp], edx
	mov	rax, QWORD PTR 16[rbp]
	mov	edx, DWORD PTR 24[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR 16[rbp]
	vxorps	xmm0, xmm0, xmm0
	vmovss	DWORD PTR 4[rax], xmm0
	mov	rax, QWORD PTR 16[rbp]
	vxorps	xmm0, xmm0, xmm0
	vmovss	DWORD PTR 8[rax], xmm0
	mov	rax, QWORD PTR 16[rbp]
	vxorps	xmm0, xmm0, xmm0
	vmovss	DWORD PTR 24[rax], xmm0
	mov	rax, QWORD PTR 16[rbp]
	mov	DWORD PTR 28[rax], 0
	mov	rax, QWORD PTR 16[rbp]
	vxorps	xmm0, xmm0, xmm0
	vmovss	DWORD PTR 4[rax], xmm0
	mov	rax, QWORD PTR 16[rbp]
	mov	eax, DWORD PTR [rax]
	add	eax, 1
	cdqe
	movabs	rdx, 2287828610704211968
	cmp	rax, rdx
	ja	.L6
	sal	rax, 2
	jmp	.L8
.L6:
	call	__cxa_throw_bad_array_new_length
.L8:
	mov	rcx, rax
	call	_Znay
	mov	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	eax, DWORD PTR [rax]
	add	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	r8, rdx
	mov	edx, 0
	mov	rcx, rax
	call	memset
	mov	rax, QWORD PTR 16[rbp]
	vmovss	xmm0, DWORD PTR .LC3[rip]
	vmovss	DWORD PTR 8[rax], xmm0
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.globl	_ZN6NeuronC1Ei
	.def	_ZN6NeuronC1Ei;	.scl	2;	.type	32;	.endef
	.set	_ZN6NeuronC1Ei,_ZN6NeuronC2Ei
	.align 2
	.globl	_ZN6NeuronD2Ev
	.def	_ZN6NeuronD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6NeuronD2Ev
_ZN6NeuronD2Ev:
.LFB1957:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	edx, 4
	mov	rcx, rax
	call	_ZdlPvy
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.globl	_ZN6NeuronD1Ev
	.def	_ZN6NeuronD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN6NeuronD1Ev,_ZN6NeuronD2Ev
	.align 2
	.globl	_ZN6NeuronC2ERKS_
	.def	_ZN6NeuronC2ERKS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6NeuronC2ERKS_
_ZN6NeuronC2ERKS_:
.LFB1960:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	mov	DWORD PTR [rax], 0
	mov	rax, QWORD PTR 16[rbp]
	vxorps	xmm0, xmm0, xmm0
	vmovss	DWORD PTR 4[rax], xmm0
	mov	rax, QWORD PTR 16[rbp]
	vxorps	xmm0, xmm0, xmm0
	vmovss	DWORD PTR 8[rax], xmm0
	mov	rax, QWORD PTR 16[rbp]
	vxorps	xmm0, xmm0, xmm0
	vmovss	DWORD PTR 24[rax], xmm0
	mov	rax, QWORD PTR 16[rbp]
	mov	DWORD PTR 28[rax], 0
	mov	rax, QWORD PTR 24[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR 16[rbp]
	mov	eax, DWORD PTR [rax]
	add	eax, 1
	cdqe
	movabs	rdx, 2287828610704211968
	cmp	rax, rdx
	ja	.L11
	sal	rax, 2
	jmp	.L13
.L11:
	call	__cxa_throw_bad_array_new_length
.L13:
	mov	rcx, rax
	call	_Znay
	mov	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	QWORD PTR 16[rax], rdx
	mov	rax, QWORD PTR 24[rbp]
	vmovss	xmm0, DWORD PTR 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	vmovss	DWORD PTR 8[rax], xmm0
	mov	rax, QWORD PTR 16[rbp]
	mov	eax, DWORD PTR [rax]
	add	eax, 1
	cdqe
	lea	rcx, 0[0+rax*4]
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	r8, rcx
	mov	rcx, rax
	call	memcpy
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.globl	_ZN6NeuronC1ERKS_
	.def	_ZN6NeuronC1ERKS_;	.scl	2;	.type	32;	.endef
	.set	_ZN6NeuronC1ERKS_,_ZN6NeuronC2ERKS_
	.align 2
	.globl	_ZN6Neuron6UpdateEPKf
	.def	_ZN6Neuron6UpdateEPKf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6Neuron6UpdateEPKf
_ZN6Neuron6UpdateEPKf:
.LFB1962:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 16[rbp]
	vmovss	xmm0, DWORD PTR 8[rax]
	mov	rax, QWORD PTR 16[rbp]
	vmovss	DWORD PTR 4[rax], xmm0
	vxorps	xmm0, xmm0, xmm0
	vmovss	DWORD PTR -12[rbp], xmm0
	vxorps	xmm0, xmm0, xmm0
	vmovss	DWORD PTR -8[rbp], xmm0
	mov	rax, QWORD PTR 16[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], 0
	jmp	.L15
.L16:
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	mov	rdx, QWORD PTR 24[rbp]
	add	rdx, rcx
	vmovss	xmm1, DWORD PTR [rdx]
	mov	rdx, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 16[rdx]
	mov	ecx, DWORD PTR -4[rbp]
	movsx	rcx, ecx
	sal	rcx, 2
	add	rdx, rcx
	vmovss	xmm0, DWORD PTR [rdx]
	vmulss	xmm0, xmm1, xmm0
	vmovss	xmm1, DWORD PTR -8[rbp]
	vaddss	xmm0, xmm1, xmm0
	vmovss	DWORD PTR -8[rbp], xmm0
	add	DWORD PTR -4[rbp], 1
.L15:
	cmp	DWORD PTR -4[rbp], eax
	jl	.L16
	vmovss	xmm0, DWORD PTR -12[rbp]
	vaddss	xmm0, xmm0, DWORD PTR -8[rbp]
	vmovss	DWORD PTR -12[rbp], xmm0
	mov	rax, QWORD PTR 16[rbp]
	vmovss	xmm0, DWORD PTR 4[rax]
	vaddss	xmm0, xmm0, DWORD PTR -12[rbp]
	mov	rax, QWORD PTR 16[rbp]
	vmovss	DWORD PTR 4[rax], xmm0
	mov	rax, QWORD PTR 16[rbp]
	vmovss	xmm1, DWORD PTR 4[rax]
	mov	rax, QWORD PTR 16[rbp]
	vmovss	xmm2, DWORD PTR 24[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	rdx, QWORD PTR 16[rax]
	mov	rax, QWORD PTR 16[rbp]
	mov	eax, DWORD PTR [rax]
	cdqe
	sal	rax, 2
	add	rax, rdx
	vmovss	xmm0, DWORD PTR [rax]
	vmulss	xmm0, xmm2, xmm0
	vaddss	xmm0, xmm1, xmm0
	mov	rax, QWORD PTR 16[rbp]
	vmovss	DWORD PTR 4[rax], xmm0
	mov	rax, QWORD PTR 16[rbp]
	mov	eax, DWORD PTR 28[rax]
	test	eax, eax
	je	.L18
	cmp	eax, 1
	je	.L19
	jmp	.L17
.L18:
	mov	rax, QWORD PTR 16[rbp]
	vmovss	xmm0, DWORD PTR 4[rax]
	vmovaps	xmm1, xmm0
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN6Neuron4TanhEf
	vmovd	edx, xmm0
	mov	rax, QWORD PTR 16[rbp]
	mov	DWORD PTR 4[rax], edx
	jmp	.L17
.L19:
	mov	rax, QWORD PTR 16[rbp]
	vmovss	xmm0, DWORD PTR 4[rax]
	vmovaps	xmm1, xmm0
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZN6Neuron4ReluEf
	vmovd	edx, xmm0
	mov	rax, QWORD PTR 16[rbp]
	mov	DWORD PTR 4[rax], edx
	nop
.L17:
	mov	rax, QWORD PTR 16[rbp]
	vmovss	xmm0, DWORD PTR 4[rax]
	mov	rax, QWORD PTR 16[rbp]
	vmovss	DWORD PTR 24[rax], xmm0
	nop
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.align 2
	.globl	_ZN6Neuron9RandomiseEf
	.def	_ZN6Neuron9RandomiseEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6Neuron9RandomiseEf
_ZN6Neuron9RandomiseEf:
.LFB1963:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	vmovss	DWORD PTR 24[rbp], xmm1
	mov	DWORD PTR -4[rbp], 0
.L22:
	mov	rax, QWORD PTR 16[rbp]
	mov	eax, DWORD PTR [rax]
	add	eax, 1
	cmp	eax, DWORD PTR -4[rbp]
	jle	.L21
	call	rand
	vxorpd	xmm0, xmm0, xmm0
	vcvtsi2sd	xmm0, xmm0, eax
	vmovsd	xmm1, QWORD PTR .LC4[rip]
	vdivsd	xmm0, xmm0, xmm1
	vmovsd	xmm1, QWORD PTR .LC1[rip]
	vsubsd	xmm1, xmm0, xmm1
	vcvtss2sd	xmm0, xmm0, DWORD PTR 24[rbp]
	vmulsd	xmm0, xmm1, xmm0
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	sal	rdx, 2
	add	rdx, rax
	mov	rax, QWORD PTR 16[rbp]
	mov	rax, QWORD PTR 16[rax]
	mov	ecx, DWORD PTR -4[rbp]
	movsx	rcx, ecx
	sal	rcx, 2
	add	rax, rcx
	vmovss	xmm1, DWORD PTR [rax]
	vcvtss2sd	xmm1, xmm1, xmm1
	vaddsd	xmm0, xmm1, xmm0
	vcvtsd2ss	xmm0, xmm0, xmm0
	vmovss	DWORD PTR [rdx], xmm0
	add	DWORD PTR -4[rbp], 1
	jmp	.L22
.L21:
	call	rand
	vxorpd	xmm0, xmm0, xmm0
	vcvtsi2sd	xmm0, xmm0, eax
	vmovsd	xmm1, QWORD PTR .LC4[rip]
	vdivsd	xmm0, xmm0, xmm1
	vmovsd	xmm1, QWORD PTR .LC1[rip]
	vsubsd	xmm1, xmm0, xmm1
	vcvtss2sd	xmm0, xmm0, DWORD PTR 24[rbp]
	vmulsd	xmm0, xmm1, xmm0
	mov	rax, QWORD PTR 16[rbp]
	vmovss	xmm1, DWORD PTR 8[rax]
	vcvtss2sd	xmm1, xmm1, xmm1
	vaddsd	xmm0, xmm1, xmm0
	vcvtsd2ss	xmm0, xmm0, xmm0
	mov	rax, QWORD PTR 16[rbp]
	vmovss	DWORD PTR 8[rax], xmm0
	nop
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB2332:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	lea	rcx, _ZStL8__ioinit[rip]
	call	_ZNSt8ios_base4InitD1Ev
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.def	_Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z41__static_initialization_and_destruction_0ii
_Z41__static_initialization_and_destruction_0ii:
.LFB2331:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR 24[rbp], edx
	cmp	DWORD PTR 16[rbp], 1
	jne	.L26
	cmp	DWORD PTR 24[rbp], 65535
	jne	.L26
	lea	rcx, _ZStL8__ioinit[rip]
	call	_ZNSt8ios_base4InitC1Ev
	lea	rcx, __tcf_0[rip]
	call	atexit
.L26:
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I__ZN6NeuronC2Ei;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__ZN6NeuronC2Ei
_GLOBAL__sub_I__ZN6NeuronC2Ei:
.LFB2333:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	edx, 65535
	mov	ecx, 1
	call	_Z41__static_initialization_and_destruction_0ii
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I__ZN6NeuronC2Ei
	.section .rdata,"dr"
	.align 16
.LC0:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 4
.LC3:
	.long	1036831949
	.align 8
.LC4:
	.long	0
	.long	1087373248
	.ident	"GCC: (Rev3, Built by MSYS2 project) 5.2.0"
	.def	__cxa_throw_bad_array_new_length;	.scl	2;	.type	32;	.endef
	.def	_Znay;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	rand;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef

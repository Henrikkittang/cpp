	.file	"main.cpp"
	.text
	.section	.text$_ZnwyPv,"x"
	.linkonce discard
	.globl	_ZnwyPv
	.def	_ZnwyPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZnwyPv
_ZnwyPv:
.LFB79:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZdlPvS_,"x"
	.linkonce discard
	.globl	_ZdlPvS_
	.def	_ZdlPvS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZdlPvS_
_ZdlPvS_:
.LFB81:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
_ZStL19piecewise_construct:
	.space 1
	.section	.text$_ZSt4__lgx,"x"
	.linkonce discard
	.globl	_ZSt4__lgx
	.def	_ZSt4__lgx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4__lgx
_ZSt4__lgx:
.LFB401:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	cltq
	movl	$63, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.text
	.def	_ZL18__gthread_active_pv;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL18__gthread_active_pv
_ZL18__gthread_active_pv:
.LFB509:
	.seh_endprologue
	movl	$1, %eax
	ret
	.seh_endproc
	.def	_ZN9__gnu_cxxL18__exchange_and_addEPVii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxL18__exchange_and_addEPVii
_ZN9__gnu_cxxL18__exchange_and_addEPVii:
.LFB539:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	24(%rbp), %edx
	movq	16(%rbp), %rax
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
	popq	%rbp
	ret
	.seh_endproc
	.def	_ZN9__gnu_cxxL12__atomic_addEPVii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxL12__atomic_addEPVii
_ZN9__gnu_cxxL12__atomic_addEPVii:
.LFB540:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	24(%rbp), %edx
	movq	16(%rbp), %rax
	lock addl	%edx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.def	_ZN9__gnu_cxxL25__exchange_and_add_singleEPii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxL25__exchange_and_add_singleEPii
_ZN9__gnu_cxxL25__exchange_and_add_singleEPii:
.LFB541:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %edx
	movl	24(%rbp), %eax
	addl	%eax, %edx
	movq	16(%rbp), %rax
	movl	%edx, (%rax)
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_ZN9__gnu_cxxL19__atomic_add_singleEPii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxL19__atomic_add_singleEPii
_ZN9__gnu_cxxL19__atomic_add_singleEPii:
.LFB542:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %edx
	movl	24(%rbp), %eax
	addl	%eax, %edx
	movq	16(%rbp), %rax
	movl	%edx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.def	_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii
_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii:
.LFB543:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	call	_ZL18__gthread_active_pv
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L15
	movl	24(%rbp), %eax
	movl	%eax, %edx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxxL18__exchange_and_addEPVii
	jmp	.L16
.L15:
	movl	24(%rbp), %eax
	movl	%eax, %edx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxxL25__exchange_and_add_singleEPii
	nop
.L16:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_ZN9__gnu_cxxL21__atomic_add_dispatchEPii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxL21__atomic_add_dispatchEPii
_ZN9__gnu_cxxL21__atomic_add_dispatchEPii:
.LFB544:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	call	_ZL18__gthread_active_pv
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L18
	movl	24(%rbp), %eax
	movl	%eax, %edx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxxL12__atomic_addEPVii
	jmp	.L20
.L18:
	movl	24(%rbp), %eax
	movl	%eax, %edx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxxL19__atomic_add_singleEPii
.L20:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
_ZStL13allocator_arg:
	.space 1
_ZStL6ignore:
	.space 1
	.section	.text$_ZN2sf15ContextSettingsC1Ejjjjjjb,"x"
	.linkonce discard
	.align 2
	.globl	_ZN2sf15ContextSettingsC1Ejjjjjjb
	.def	_ZN2sf15ContextSettingsC1Ejjjjjjb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2sf15ContextSettingsC1Ejjjjjjb
_ZN2sf15ContextSettingsC1Ejjjjjjb:
.LFB2645:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movl	%r9d, 40(%rbp)
	movl	72(%rbp), %eax
	movb	%al, -4(%rbp)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movl	%edx, (%rax)
	movq	16(%rbp), %rax
	movl	32(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	16(%rbp), %rax
	movl	40(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	16(%rbp), %rax
	movl	48(%rbp), %edx
	movl	%edx, 12(%rax)
	movq	16(%rbp), %rax
	movl	56(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	16(%rbp), %rax
	movl	64(%rbp), %edx
	movl	%edx, 20(%rax)
	movq	16(%rbp), %rdx
	movzbl	-4(%rbp), %eax
	movb	%al, 24(%rdx)
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 4
_ZN9__gnu_cxxL21__default_lock_policyE:
	.long	2
	.section	.text$_ZN4math7Vector2C1Eff,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4math7Vector2C1Eff
	.def	_ZN4math7Vector2C1Eff;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4math7Vector2C1Eff
_ZN4math7Vector2C1Eff:
.LFB4042:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movss	%xmm1, 24(%rbp)
	movss	%xmm2, 32(%rbp)
	movq	16(%rbp), %rax
	movss	24(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	16(%rbp), %rax
	movss	32(%rbp), %xmm0
	movss	%xmm0, 4(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN4math7Vector2plERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4math7Vector2plERKS0_
	.def	_ZN4math7Vector2plERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4math7Vector2plERKS0_
_ZN4math7Vector2plERKS0_:
.LFB4043:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movss	4(%rax), %xmm1
	movq	24(%rbp), %rax
	movss	4(%rax), %xmm0
	movaps	%xmm1, %xmm2
	addss	%xmm0, %xmm2
	movq	16(%rbp), %rax
	movss	(%rax), %xmm1
	movq	24(%rbp), %rax
	movss	(%rax), %xmm0
	addss	%xmm1, %xmm0
	leaq	-8(%rbp), %rax
	movaps	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZN4math7Vector2C1Eff
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN4math7Vector2miERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4math7Vector2miERKS0_
	.def	_ZN4math7Vector2miERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4math7Vector2miERKS0_
_ZN4math7Vector2miERKS0_:
.LFB4044:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movss	4(%rax), %xmm0
	movq	24(%rbp), %rax
	movss	4(%rax), %xmm1
	movaps	%xmm0, %xmm2
	subss	%xmm1, %xmm2
	movq	16(%rbp), %rax
	movss	(%rax), %xmm0
	movq	24(%rbp), %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	leaq	-8(%rbp), %rax
	movaps	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZN4math7Vector2C1Eff
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN4math7Vector2mlEf,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4math7Vector2mlEf
	.def	_ZN4math7Vector2mlEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4math7Vector2mlEf
_ZN4math7Vector2mlEf:
.LFB4046:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movss	%xmm1, 24(%rbp)
	movq	16(%rbp), %rax
	movss	4(%rax), %xmm0
	movaps	%xmm0, %xmm1
	mulss	24(%rbp), %xmm1
	movq	16(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	24(%rbp), %xmm0
	leaq	-8(%rbp), %rax
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZN4math7Vector2C1Eff
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN4math7Vector26lengthEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4math7Vector26lengthEv
	.def	_ZN4math7Vector26lengthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4math7Vector26lengthEv
_ZN4math7Vector26lengthEv:
.LFB4052:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, -16(%rbp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movss	.LC0(%rip), %xmm1
	movd	%eax, %xmm0
	call	powf
	movaps	%xmm0, %xmm6
	movq	16(%rbp), %rax
	movl	4(%rax), %eax
	movss	.LC0(%rip), %xmm1
	movd	%eax, %xmm0
	call	powf
	addss	%xmm6, %xmm0
	call	sqrtf
	movaps	-16(%rbp), %xmm6
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN4math7Vector27rotateREf,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4math7Vector27rotateREf
	.def	_ZN4math7Vector27rotateREf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4math7Vector27rotateREf
_ZN4math7Vector27rotateREf:
.LFB4054:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, -32(%rbp)
	.seh_savexmm	%xmm6, 48
	movaps	%xmm7, -16(%rbp)
	.seh_savexmm	%xmm7, 64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movss	%xmm1, 24(%rbp)
	movq	16(%rbp), %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm6
	cvtss2sd	24(%rbp), %xmm0
	call	cos
	mulsd	%xmm0, %xmm6
	movq	16(%rbp), %rax
	movss	4(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm7
	cvtss2sd	24(%rbp), %xmm0
	call	sin
	mulsd	%xmm7, %xmm0
	subsd	%xmm0, %xmm6
	movapd	%xmm6, %xmm0
	cvtsd2ss	%xmm0, %xmm2
	movss	%xmm2, -36(%rbp)
	movq	16(%rbp), %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm6
	cvtss2sd	24(%rbp), %xmm0
	call	sin
	mulsd	%xmm0, %xmm6
	movq	16(%rbp), %rax
	movss	4(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm7
	cvtss2sd	24(%rbp), %xmm0
	call	cos
	mulsd	%xmm7, %xmm0
	addsd	%xmm6, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, -40(%rbp)
	movq	16(%rbp), %rax
	movss	-36(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	16(%rbp), %rax
	movss	-40(%rbp), %xmm0
	movss	%xmm0, 4(%rax)
	nop
	movaps	-32(%rbp), %xmm6
	movaps	-16(%rbp), %xmm7
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "[\0"
.LC2:
	.ascii ", \0"
.LC3:
	.ascii "]\0"
	.text
	.globl	_ZN4mathlsERSoRKNS_7Vector2E
	.def	_ZN4mathlsERSoRKNS_7Vector2E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4mathlsERSoRKNS_7Vector2E
_ZN4mathlsERSoRKNS_7Vector2E:
.LFB4057:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	16(%rbp), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	movss	(%rax), %xmm0
	movaps	%xmm0, %xmm1
	movq	%rdx, %rcx
	call	_ZNSolsEf
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	movss	4(%rax), %xmm0
	movaps	%xmm0, %xmm1
	movq	%rdx, %rcx
	call	_ZNSolsEf
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_ZN4math11make_vectorEiiii
	.def	_ZN4math11make_vectorEiiii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4math11make_vectorEiiii
_ZN4math11make_vectorEiiii:
.LFB4058:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movl	%r9d, 40(%rbp)
	movl	40(%rbp), %eax
	subl	24(%rbp), %eax
	cvtsi2ss	%eax, %xmm1
	movl	32(%rbp), %eax
	subl	16(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	leaq	-8(%rbp), %rax
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZN4math7Vector2C1Eff
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_ZN4math11make_vectorERKNS_7Vector2ES2_
	.def	_ZN4math11make_vectorERKNS_7Vector2ES2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4math11make_vectorERKNS_7Vector2ES2_
_ZN4math11make_vectorERKNS_7Vector2ES2_:
.LFB4059:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movss	4(%rax), %xmm0
	movq	16(%rbp), %rax
	movss	4(%rax), %xmm1
	movaps	%xmm0, %xmm2
	subss	%xmm1, %xmm2
	movq	24(%rbp), %rax
	movss	(%rax), %xmm0
	movq	16(%rbp), %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	leaq	-8(%rbp), %rax
	movaps	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZN4math7Vector2C1Eff
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_ZN4math11make_vectorESt5arrayIiLy2EES1_
	.def	_ZN4math11make_vectorESt5arrayIiLy2EES1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4math11make_vectorESt5arrayIiLy2EES1_
_ZN4math11make_vectorESt5arrayIiLy2EES1_:
.LFB4060:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	movaps	%xmm6, -80(%rbp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	movq	%rcx, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayIiLy2EEixEy
	movl	(%rax), %ebx
	movl	$1, %edx
	leaq	-32(%rbp), %rcx
	call	_ZNSt5arrayIiLy2EEixEy
	movl	(%rax), %eax
	subl	%eax, %ebx
	movl	%ebx, %eax
	cvtsi2ss	%eax, %xmm6
	leaq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayIiLy2EEixEy
	movl	(%rax), %ebx
	movl	$0, %edx
	leaq	-32(%rbp), %rcx
	call	_ZNSt5arrayIiLy2EEixEy
	movl	(%rax), %eax
	subl	%eax, %ebx
	movl	%ebx, %eax
	cvtsi2ss	%eax, %xmm0
	leaq	-88(%rbp), %rax
	movaps	%xmm6, %xmm2
	movaps	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZN4math7Vector2C1Eff
	movq	-88(%rbp), %rax
	movaps	-80(%rbp), %xmm6
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN4EdgeC1Eiiii,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4EdgeC1Eiiii
	.def	_ZN4EdgeC1Eiiii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4EdgeC1Eiiii
_ZN4EdgeC1Eiiii:
.LFB4063:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movl	%r9d, 40(%rbp)
	movq	16(%rbp), %rax
	cvtsi2ss	32(%rbp), %xmm1
	cvtsi2ss	24(%rbp), %xmm0
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZN4math7Vector2C1Eff
	movq	16(%rbp), %rax
	addq	$8, %rax
	cvtsi2ss	48(%rbp), %xmm1
	cvtsi2ss	40(%rbp), %xmm0
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZN4math7Vector2C1Eff
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EED2Ev
	.def	_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EED2Ev
_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EED2Ev:
.LFB4066:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10shared_ptrI4EdgeED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10shared_ptrI4EdgeED1Ev
	.def	_ZNSt10shared_ptrI4EdgeED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10shared_ptrI4EdgeED1Ev
_ZNSt10shared_ptrI4EdgeED1Ev:
.LFB4069:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1Ev
	.def	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1Ev
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1Ev:
.LFB4078:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN4DrawC1Eiii,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4DrawC1Eiii
	.def	_ZN4DrawC1Eiii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4DrawC1Eiii
_ZN4DrawC1Eiii:
.LFB4081:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movl	%r9d, 40(%rbp)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movl	%edx, (%rax)
	movq	16(%rbp), %rax
	movl	32(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	16(%rbp), %rax
	movl	40(%rbp), %edx
	movl	%edx, 8(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN4Draw14draw_trianglesERN2sf12RenderWindowERKSt6vectorISt5arrayIfLy3EESaIS5_EERKNS0_7Vector2IfEE,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4Draw14draw_trianglesERN2sf12RenderWindowERKSt6vectorISt5arrayIfLy3EESaIS5_EERKNS0_7Vector2IfEE
	.def	_ZN4Draw14draw_trianglesERN2sf12RenderWindowERKSt6vectorISt5arrayIfLy3EESaIS5_EERKNS0_7Vector2IfEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4Draw14draw_trianglesERN2sf12RenderWindowERKSt6vectorISt5arrayIfLy3EESaIS5_EERKNS0_7Vector2IfEE
_ZN4Draw14draw_trianglesERN2sf12RenderWindowERKSt6vectorISt5arrayIfLy3EESaIS5_EERKNS0_7Vector2IfEE:
.LFB4084:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$192, %rsp
	.seh_stackalloc	192
	movaps	%xmm6, -16(%rbp)
	.seh_savexmm	%xmm6, 176
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE5emptyEv
	testb	%al, %al
	jne	.L54
	movq	56(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__ZN2sf6VertexC1ERKNS_7Vector2IfEE(%rip), %rax
.LEHB0:
	call	*%rax
.LEHE0:
	leaq	-80(%rbp), %rax
	movq	%rax, %rbx
	movl	$1, %esi
	leaq	-49(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIN2sf6VertexEEC1Ev
	movq	%rbx, -144(%rbp)
	movq	%rsi, -136(%rbp)
	leaq	-49(%rbp), %rcx
	leaq	-144(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB1:
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EEC1ESt16initializer_listIS1_ERKS2_
.LEHE1:
	leaq	-49(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIN2sf6VertexEED1Ev
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE4sizeEv
	leaq	2(%rax), %rdx
	leaq	-112(%rbp), %rax
	movq	%rax, %rcx
.LEHB2:
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EE7reserveEy
	movq	48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE5beginEv
	movq	%rax, -120(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE3endEv
	movq	%rax, -128(%rbp)
.L49:
	leaq	-128(%rbp), %rdx
	leaq	-120(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxneIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_
	testb	%al, %al
	je	.L48
	leaq	-120(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNKSt5arrayIfLy3EEixEy
	movss	(%rax), %xmm6
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNKSt5arrayIfLy3EEixEy
	movss	(%rax), %xmm0
	leaq	-48(%rbp), %rax
	movaps	%xmm6, %xmm2
	movaps	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZN2sf7Vector2IfEC1Eff
	leaq	-48(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EE12emplace_backIJNS0_7Vector2IfEEEEEvDpOT_
	leaq	-120(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEppEv
	jmp	.L49
.L48:
	movq	48(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EEixEy
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNKSt5arrayIfLy3EEixEy
	movss	(%rax), %xmm6
	movq	48(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EEixEy
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNKSt5arrayIfLy3EEixEy
	movss	(%rax), %xmm0
	leaq	-40(%rbp), %rax
	movaps	%xmm6, %xmm2
	movaps	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZN2sf7Vector2IfEC1Eff
	leaq	-40(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EE12emplace_backIJNS0_7Vector2IfEEEEEvDpOT_
	movq	40(%rbp), %rax
	leaq	48(%rax), %rbx
	leaq	-112(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIN2sf6VertexESaIS1_EE4sizeEv
	movq	%rax, %rsi
	leaq	-112(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EEixEy
	movq	%rax, %rdx
	movq	__imp__ZN2sf12RenderStates7DefaultE(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$5, %r9d
	movq	%rsi, %r8
	movq	%rbx, %rcx
	movq	__imp__ZN2sf12RenderTarget4drawEPKNS_6VertexEyNS_13PrimitiveTypeERKNS_12RenderStatesE(%rip), %rax
	call	*%rax
.LEHE2:
	leaq	-112(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EED1Ev
	jmp	.L45
.L52:
	movq	%rax, %rbx
	leaq	-49(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIN2sf6VertexEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB3:
	call	_Unwind_Resume
.L53:
	movq	%rax, %rbx
	leaq	-112(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
.LEHE3:
.L54:
	nop
.L45:
	movaps	-16(%rbp), %xmm6
	addq	$192, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4084:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4084-.LLSDACSB4084
.LLSDACSB4084:
	.uleb128 .LEHB0-.LFB4084
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB4084
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L52-.LFB4084
	.uleb128 0
	.uleb128 .LEHB2-.LFB4084
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L53-.LFB4084
	.uleb128 0
	.uleb128 .LEHB3-.LFB4084
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE4084:
	.section	.text$_ZN4Draw14draw_trianglesERN2sf12RenderWindowERKSt6vectorISt5arrayIfLy3EESaIS5_EERKNS0_7Vector2IfEE,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN4Draw10draw_edgesERN2sf12RenderWindowERSt6vectorISt10shared_ptrI4EdgeESaIS6_EE,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4Draw10draw_edgesERN2sf12RenderWindowERSt6vectorISt10shared_ptrI4EdgeESaIS6_EE
	.def	_ZN4Draw10draw_edgesERN2sf12RenderWindowERSt6vectorISt10shared_ptrI4EdgeESaIS6_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4Draw10draw_edgesERN2sf12RenderWindowERSt6vectorISt10shared_ptrI4EdgeESaIS6_EE
_ZN4Draw10draw_edgesERN2sf12RenderWindowERSt6vectorISt10shared_ptrI4EdgeESaIS6_EE:
.LFB4085:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$864, %rsp
	.seh_stackalloc	864
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	movaps	%xmm6, 720(%rbp)
	.seh_savexmm	%xmm6, 848
	.seh_endprologue
	movq	%rcx, 768(%rbp)
	movq	%rdx, 776(%rbp)
	movq	%r8, 784(%rbp)
	leaq	640(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EEC1Ev
	movq	784(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE4sizeEv
	leaq	(%rax,%rax), %rdx
	leaq	640(%rbp), %rax
	movq	%rax, %rcx
.LEHB4:
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EE7reserveEy
.LEHE4:
	movq	784(%rbp), %rax
	movq	%rax, 712(%rbp)
	movq	712(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE5beginEv
	movq	%rax, 632(%rbp)
	movq	712(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE3endEv
	movq	%rax, 624(%rbp)
.L57:
	leaq	624(%rbp), %rdx
	leaq	632(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxneIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_
	testb	%al, %al
	je	.L56
	leaq	632(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEdeEv
	movq	%rax, 704(%rbp)
	movq	704(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movss	4(%rax), %xmm6
	movq	704(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movss	(%rax), %xmm0
	leaq	664(%rbp), %rax
	movaps	%xmm6, %xmm2
	movaps	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZN2sf7Vector2IfEC1Eff
	movq	__imp__ZN2sf5Color3RedE(%rip), %rcx
	leaq	664(%rbp), %rdx
	leaq	640(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB5:
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EE12emplace_backIJNS0_7Vector2IfEERKNS0_5ColorEEEEvDpOT_
	movq	704(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movss	12(%rax), %xmm6
	movq	704(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movss	8(%rax), %xmm0
	leaq	672(%rbp), %rax
	movaps	%xmm6, %xmm2
	movaps	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZN2sf7Vector2IfEC1Eff
	movq	__imp__ZN2sf5Color3RedE(%rip), %rcx
	leaq	672(%rbp), %rdx
	leaq	640(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EE12emplace_backIJNS0_7Vector2IfEERKNS0_5ColorEEEEvDpOT_
	movl	$3, 700(%rbp)
	movl	$5, 696(%rbp)
	movl	696(%rbp), %eax
	movslq	%eax, %rdx
	cvtsi2ss	700(%rbp), %xmm0
	leaq	-80(%rbp), %rax
	movq	%rdx, %r8
	movaps	%xmm0, %xmm1
	movq	%rax, %rcx
	movq	__imp__ZN2sf11CircleShapeC1Efy(%rip), %rax
	call	*%rax
.LEHE5:
	movq	__imp__ZN2sf5Color4CyanE(%rip), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__ZN2sf5Shape12setFillColorERKNS_5ColorE(%rip), %rax
.LEHB6:
	call	*%rax
	movq	704(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movss	4(%rax), %xmm6
	movq	704(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movss	(%rax), %xmm0
	leaq	680(%rbp), %rax
	movaps	%xmm6, %xmm2
	movaps	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZN2sf7Vector2IfEC1Eff
	leaq	680(%rbp), %rax
	leaq	-80(%rbp), %rdx
	leaq	8(%rdx), %rcx
	movq	%rax, %rdx
	movq	__imp__ZN2sf13Transformable11setPositionERKNS_7Vector2IfEE(%rip), %rax
	call	*%rax
	cvtsi2ss	700(%rbp), %xmm1
	cvtsi2ss	700(%rbp), %xmm0
	leaq	-80(%rbp), %rax
	addq	$8, %rax
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movq	%rax, %rcx
	movq	__imp__ZN2sf13Transformable9setOriginEff(%rip), %rax
	call	*%rax
	movl	696(%rbp), %eax
	movslq	%eax, %rdx
	cvtsi2ss	700(%rbp), %xmm0
	leaq	272(%rbp), %rax
	movq	%rdx, %r8
	movaps	%xmm0, %xmm1
	movq	%rax, %rcx
	movq	__imp__ZN2sf11CircleShapeC1Efy(%rip), %rax
	call	*%rax
.LEHE6:
	movq	__imp__ZN2sf5Color4CyanE(%rip), %rdx
	leaq	272(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__ZN2sf5Shape12setFillColorERKNS_5ColorE(%rip), %rax
.LEHB7:
	call	*%rax
	movq	704(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movss	12(%rax), %xmm6
	movq	704(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movss	8(%rax), %xmm0
	leaq	688(%rbp), %rax
	movaps	%xmm6, %xmm2
	movaps	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZN2sf7Vector2IfEC1Eff
	leaq	688(%rbp), %rax
	leaq	272(%rbp), %rdx
	leaq	8(%rdx), %rcx
	movq	%rax, %rdx
	movq	__imp__ZN2sf13Transformable11setPositionERKNS_7Vector2IfEE(%rip), %rax
	call	*%rax
	cvtsi2ss	700(%rbp), %xmm1
	cvtsi2ss	700(%rbp), %xmm0
	leaq	272(%rbp), %rax
	addq	$8, %rax
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movq	%rax, %rcx
	movq	__imp__ZN2sf13Transformable9setOriginEff(%rip), %rax
	call	*%rax
	movq	776(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	__imp__ZN2sf12RenderStates7DefaultE(%rip), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	__imp__ZN2sf12RenderTarget4drawERKNS_8DrawableERKNS_12RenderStatesE(%rip), %rax
	call	*%rax
	movq	776(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	__imp__ZN2sf12RenderStates7DefaultE(%rip), %rdx
	leaq	272(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	__imp__ZN2sf12RenderTarget4drawERKNS_8DrawableERKNS_12RenderStatesE(%rip), %rax
	call	*%rax
.LEHE7:
	leaq	272(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN2sf11CircleShapeD1Ev
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN2sf11CircleShapeD1Ev
	leaq	632(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEppEv
	jmp	.L57
.L56:
	movq	776(%rbp), %rax
	leaq	48(%rax), %rbx
	leaq	640(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIN2sf6VertexESaIS1_EE4sizeEv
	movq	%rax, %rsi
	leaq	640(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EEixEy
	movq	%rax, %rdx
	movq	__imp__ZN2sf12RenderStates7DefaultE(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	$1, %r9d
	movq	%rsi, %r8
	movq	%rbx, %rcx
	movq	__imp__ZN2sf12RenderTarget4drawEPKNS_6VertexEyNS_13PrimitiveTypeERKNS_12RenderStatesE(%rip), %rax
.LEHB8:
	call	*%rax
.LEHE8:
	leaq	640(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EED1Ev
	jmp	.L66
.L65:
	movq	%rax, %rbx
	leaq	272(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN2sf11CircleShapeD1Ev
	jmp	.L59
.L64:
	movq	%rax, %rbx
.L59:
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN2sf11CircleShapeD1Ev
	movq	%rbx, %rax
	jmp	.L60
.L63:
.L60:
	movq	%rax, %rbx
	jmp	.L61
.L62:
	movq	%rax, %rbx
.L61:
	leaq	640(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB9:
	call	_Unwind_Resume
	nop
.LEHE9:
.L66:
	movaps	720(%rbp), %xmm6
	addq	$864, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4085:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4085-.LLSDACSB4085
.LLSDACSB4085:
	.uleb128 .LEHB4-.LFB4085
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L62-.LFB4085
	.uleb128 0
	.uleb128 .LEHB5-.LFB4085
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L63-.LFB4085
	.uleb128 0
	.uleb128 .LEHB6-.LFB4085
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L64-.LFB4085
	.uleb128 0
	.uleb128 .LEHB7-.LFB4085
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L65-.LFB4085
	.uleb128 0
	.uleb128 .LEHB8-.LFB4085
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L62-.LFB4085
	.uleb128 0
	.uleb128 .LEHB9-.LFB4085
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE4085:
	.section	.text$_ZN4Draw10draw_edgesERN2sf12RenderWindowERSt6vectorISt10shared_ptrI4EdgeESaIS6_EE,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN4Draw10draw_cellsERN2sf12RenderWindowERKSt6vectorIS3_I4CellSaIS4_EESaIS6_EE,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4Draw10draw_cellsERN2sf12RenderWindowERKSt6vectorIS3_I4CellSaIS4_EESaIS6_EE
	.def	_ZN4Draw10draw_cellsERN2sf12RenderWindowERKSt6vectorIS3_I4CellSaIS4_EESaIS6_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4Draw10draw_cellsERN2sf12RenderWindowERKSt6vectorIS3_I4CellSaIS4_EESaIS6_EE
_ZN4Draw10draw_cellsERN2sf12RenderWindowERKSt6vectorIS3_I4CellSaIS4_EESaIS6_EE:
.LFB4086:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$408, %rsp
	.seh_stackalloc	408
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 304(%rbp)
	movq	%rdx, 312(%rbp)
	movq	%r8, 320(%rbp)
	movl	$0, 268(%rbp)
.L72:
	movq	304(%rbp), %rax
	movl	4(%rax), %eax
	movq	304(%rbp), %rdx
	movl	8(%rdx), %ebx
	cltd
	idivl	%ebx
	cmpl	%eax, 268(%rbp)
	jge	.L75
	movl	$0, 264(%rbp)
.L71:
	movq	304(%rbp), %rax
	movl	(%rax), %eax
	movq	304(%rbp), %rdx
	movl	8(%rdx), %ebx
	cltd
	idivl	%ebx
	cmpl	%eax, 264(%rbp)
	jge	.L69
	movl	264(%rbp), %eax
	movslq	%eax, %rbx
	movl	268(%rbp), %eax
	cltq
	movq	320(%rbp), %rcx
	movq	%rax, %rdx
	call	_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EEixEy
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4CellSaIS0_EEixEy
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L70
	leaq	248(%rbp), %rax
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	movq	%rax, %rcx
	call	_ZN2sf7Vector2IfEC1Eff
	leaq	248(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__ZN2sf14RectangleShapeC1ERKNS_7Vector2IfEE(%rip), %rax
.LEHB10:
	call	*%rax
.LEHE10:
	movq	304(%rbp), %rax
	movl	8(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	movq	304(%rbp), %rax
	movl	8(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	leaq	256(%rbp), %rax
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZN2sf7Vector2IfEC1Eff
	leaq	256(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__ZN2sf14RectangleShape7setSizeERKNS_7Vector2IfEE(%rip), %rax
.LEHB11:
	call	*%rax
	movq	__imp__ZN2sf5Color4BlueE(%rip), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__ZN2sf5Shape12setFillColorERKNS_5ColorE(%rip), %rax
	call	*%rax
	movq	304(%rbp), %rax
	movl	8(%rax), %eax
	imull	268(%rbp), %eax
	cvtsi2ss	%eax, %xmm1
	movq	304(%rbp), %rax
	movl	8(%rax), %eax
	imull	264(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	leaq	-96(%rbp), %rax
	addq	$8, %rax
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movq	%rax, %rcx
	movq	__imp__ZN2sf13Transformable11setPositionEff(%rip), %rax
	call	*%rax
	movq	312(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	__imp__ZN2sf12RenderStates7DefaultE(%rip), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	__imp__ZN2sf12RenderTarget4drawERKNS_8DrawableERKNS_12RenderStatesE(%rip), %rax
	call	*%rax
.LEHE11:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN2sf14RectangleShapeD1Ev
.L70:
	addl	$1, 264(%rbp)
	jmp	.L71
.L69:
	addl	$1, 268(%rbp)
	jmp	.L72
.L74:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN2sf14RectangleShapeD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB12:
	call	_Unwind_Resume
.LEHE12:
.L75:
	nop
	addq	$408, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4086:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4086-.LLSDACSB4086
.LLSDACSB4086:
	.uleb128 .LEHB10-.LFB4086
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB4086
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L74-.LFB4086
	.uleb128 0
	.uleb128 .LEHB12-.LFB4086
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE4086:
	.section	.text$_ZN4Draw10draw_cellsERN2sf12RenderWindowERKSt6vectorIS3_I4CellSaIS4_EESaIS6_EE,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN14EdgesGenerator14outside_boundsESt5arrayIiLy2EE,"x"
	.linkonce discard
	.align 2
	.globl	_ZN14EdgesGenerator14outside_boundsESt5arrayIiLy2EE
	.def	_ZN14EdgesGenerator14outside_boundsESt5arrayIiLy2EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN14EdgesGenerator14outside_boundsESt5arrayIiLy2EE
_ZN14EdgesGenerator14outside_boundsESt5arrayIiLy2EE:
.LFB4087:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayIiLy2EEixEy
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L77
	leaq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayIiLy2EEixEy
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	-64(%rbp), %rax
	addq	$16, %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEixEy
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4CellSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	jnb	.L77
	leaq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayIiLy2EEixEy
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L77
	leaq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayIiLy2EEixEy
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	-64(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EE4sizeEv
	cmpq	%rax, %rbx
	jb	.L78
.L77:
	movl	$1, %eax
	jmp	.L79
.L78:
	movl	$0, %eax
.L79:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN14EdgesGenerator15find_neighboursESt5arrayIiLy2EE,"x"
	.linkonce discard
	.align 2
	.globl	_ZN14EdgesGenerator15find_neighboursESt5arrayIiLy2EE
	.def	_ZN14EdgesGenerator15find_neighboursESt5arrayIiLy2EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN14EdgesGenerator15find_neighboursESt5arrayIiLy2EE
_ZN14EdgesGenerator15find_neighboursESt5arrayIiLy2EE:
.LFB4088:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$120, %rsp
	.seh_stackalloc	120
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorIP4CellSaIS1_EEC1Ev
	movl	$4, %edx
	movq	16(%rbp), %rcx
.LEHB13:
	call	_ZNSt6vectorIP4CellSaIS1_EE7reserveEy
	movl	$0, -80(%rbp)
	movl	$-1, -76(%rbp)
	movl	$-1, -72(%rbp)
	movl	$0, -68(%rbp)
	movl	$1, -64(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -56(%rbp)
	movl	$1, -52(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt5arrayIS_IiLy2EELy4EE5beginEv
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt5arrayIS_IiLy2EELy4EE3endEv
	movq	%rax, -40(%rbp)
.L84:
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.L88
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	leaq	32(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayIiLy2EEixEy
	movl	(%rax), %ebx
	leaq	-88(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayIiLy2EEixEy
	movl	(%rax), %eax
	addl	%ebx, %eax
	movl	%eax, -96(%rbp)
	leaq	32(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayIiLy2EEixEy
	movl	(%rax), %ebx
	leaq	-88(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayIiLy2EEixEy
	movl	(%rax), %eax
	addl	%ebx, %eax
	movl	%eax, -92(%rbp)
	movq	-96(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN14EdgesGenerator14outside_boundsESt5arrayIiLy2EE
	xorl	$1, %eax
	testb	%al, %al
	je	.L83
	leaq	-96(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayIiLy2EEixEy
	movl	(%rax), %eax
	movslq	%eax, %rbx
	leaq	-96(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayIiLy2EEixEy
	movl	(%rax), %eax
	cltq
	movq	24(%rbp), %rdx
	leaq	16(%rdx), %rcx
	movq	%rax, %rdx
	call	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEixEy
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4CellSaIS0_EEixEy
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorIP4CellSaIS1_EE9push_backEOS1_
.LEHE13:
.L83:
	addq	$8, -24(%rbp)
	jmp	.L84
.L87:
	movq	%rax, %rbx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorIP4CellSaIS1_EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB14:
	call	_Unwind_Resume
.LEHE14:
.L88:
	nop
	movq	16(%rbp), %rax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4088:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4088-.LLSDACSB4088
.LLSDACSB4088:
	.uleb128 .LEHB13-.LFB4088
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L87-.LFB4088
	.uleb128 0
	.uleb128 .LEHB14-.LFB4088
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE4088:
	.section	.text$_ZN14EdgesGenerator15find_neighboursESt5arrayIiLy2EE,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN14EdgesGeneratorC1ERKSt6vectorIS0_I4CellSaIS1_EESaIS3_EEiii,"x"
	.linkonce discard
	.align 2
	.globl	_ZN14EdgesGeneratorC1ERKSt6vectorIS0_I4CellSaIS1_EESaIS3_EEiii
	.def	_ZN14EdgesGeneratorC1ERKSt6vectorIS0_I4CellSaIS1_EESaIS3_EEiii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN14EdgesGeneratorC1ERKSt6vectorIS0_I4CellSaIS1_EESaIS3_EEiii
_ZN14EdgesGeneratorC1ERKSt6vectorIS0_I4CellSaIS1_EESaIS3_EEiii:
.LFB4091:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movl	%r9d, 40(%rbp)
	movq	16(%rbp), %rax
	movl	32(%rbp), %edx
	movl	%edx, (%rax)
	movq	16(%rbp), %rax
	movl	40(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	16(%rbp), %rax
	movl	48(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	16(%rbp), %rax
	addq	$16, %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEC1ERKS4_
	movq	16(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEC1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EEC2ERKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EEC2ERKS3_
	.def	_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EEC2ERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EEC2ERKS3_
_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EEC2ERKS3_:
.LFB4095:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	addq	$8, %rax
	movq	24(%rbp), %rdx
	addq	$8, %rdx
	movq	%rax, %rcx
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1ERKS2_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10shared_ptrI4EdgeEC1ERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10shared_ptrI4EdgeEC1ERKS1_
	.def	_ZNSt10shared_ptrI4EdgeEC1ERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10shared_ptrI4EdgeEC1ERKS1_
_ZNSt10shared_ptrI4EdgeEC1ERKS1_:
.LFB4098:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EEC2ERKS3_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EEaSERKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EEaSERKS3_
	.def	_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EEaSERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EEaSERKS3_
_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EEaSERKS3_:
.LFB4100:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10shared_ptrI4EdgeEaSERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10shared_ptrI4EdgeEaSERKS1_
	.def	_ZNSt10shared_ptrI4EdgeEaSERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10shared_ptrI4EdgeEaSERKS1_
_ZNSt10shared_ptrI4EdgeEaSERKS1_:
.LFB4099:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EEaSERKS3_
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN14EdgesGenerator10make_edgesEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN14EdgesGenerator10make_edgesEv
	.def	_ZN14EdgesGenerator10make_edgesEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN14EdgesGenerator10make_edgesEv
_ZN14EdgesGenerator10make_edgesEv:
.LFB4092:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$288, %rsp
	.seh_stackalloc	288
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 192(%rbp)
	movq	%rdx, 200(%rbp)
	movq	200(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE5clearEv
	movl	$0, 156(%rbp)
.L121:
	movq	200(%rbp), %rax
	movl	4(%rax), %eax
	movq	200(%rbp), %rdx
	movl	8(%rdx), %esi
	cltd
	idivl	%esi
	cmpl	%eax, 156(%rbp)
	jge	.L97
	movl	$0, 152(%rbp)
.L120:
	movq	200(%rbp), %rax
	movl	(%rax), %eax
	movq	200(%rbp), %rdx
	movl	8(%rdx), %esi
	cltd
	idivl	%esi
	cmpl	%eax, 152(%rbp)
	jge	.L98
	movl	152(%rbp), %eax
	movslq	%eax, %rsi
	movl	156(%rbp), %eax
	cltq
	movq	200(%rbp), %rdx
	leaq	16(%rdx), %rcx
	movq	%rax, %rdx
	call	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEixEy
	movq	%rsi, %rdx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4CellSaIS0_EEixEy
	movq	%rax, 144(%rbp)
	movq	144(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L99
	movl	152(%rbp), %eax
	movabsq	$-4294967296, %rdx
	andq	%rbx, %rdx
	orq	%rdx, %rax
	movq	%rax, %rbx
	movl	156(%rbp), %eax
	salq	$32, %rax
	movl	%ebx, %edx
	orq	%rdx, %rax
	movq	%rax, %rbx
	leaq	48(%rbp), %rax
	movq	200(%rbp), %rdx
	movq	%rbx, %r8
	movq	%rax, %rcx
.LEHB15:
	call	_ZN14EdgesGenerator15find_neighboursESt5arrayIiLy2EE
.LEHE15:
	leaq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIP4CellSaIS1_EE4sizeEv
	cmpq	$3, %rax
	jbe	.L100
	leaq	48(%rbp), %rax
	movl	$3, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIP4CellSaIS1_EEixEy
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L100
	movl	$1, %eax
	jmp	.L101
.L100:
	movl	$0, %eax
.L101:
	testb	%al, %al
	je	.L102
	leaq	48(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIP4CellSaIS1_EEixEy
	movq	(%rax), %rax
	addq	$1, %rax
	movl	$3, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayIbLy4EEixEy
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L103
	leaq	48(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIP4CellSaIS1_EEixEy
	movq	(%rax), %rax
	addq	$8, %rax
	movl	$3, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayISt10shared_ptrI4EdgeELy4EEixEy
	movq	%rax, %rdx
	leaq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10shared_ptrI4EdgeEC1ERKS1_
	leaq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movss	8(%rax), %xmm1
	movq	200(%rbp), %rdx
	movl	8(%rdx), %edx
	cvtsi2ss	%edx, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, 8(%rax)
	movq	144(%rbp), %rax
	addq	$8, %rax
	movl	$3, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayISt10shared_ptrI4EdgeELy4EEixEy
	movq	%rax, %rcx
	leaq	32(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSt10shared_ptrI4EdgeEaSERKS1_
	movq	144(%rbp), %rax
	addq	$1, %rax
	movl	$3, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayIbLy4EEixEy
	movb	$1, (%rax)
	leaq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10shared_ptrI4EdgeED1Ev
	jmp	.L102
.L103:
	movq	200(%rbp), %rax
	movl	8(%rax), %eax
	imull	156(%rbp), %eax
	movq	200(%rbp), %rdx
	movl	8(%rdx), %edx
	addl	%edx, %eax
	movl	%eax, 80(%rbp)
	movq	200(%rbp), %rax
	movl	8(%rax), %eax
	imull	152(%rbp), %eax
	movq	200(%rbp), %rdx
	movl	8(%rdx), %edx
	addl	%edx, %eax
	movl	%eax, 84(%rbp)
	movq	200(%rbp), %rax
	movl	8(%rax), %eax
	imull	156(%rbp), %eax
	movq	200(%rbp), %rdx
	movl	8(%rdx), %edx
	addl	%edx, %eax
	movl	%eax, 88(%rbp)
	movq	200(%rbp), %rax
	movl	8(%rax), %eax
	imull	152(%rbp), %eax
	movl	%eax, 92(%rbp)
	leaq	16(%rbp), %rax
	leaq	84(%rbp), %r9
	leaq	88(%rbp), %r8
	leaq	92(%rbp), %rdx
	leaq	80(%rbp), %rcx
	movq	%rcx, 32(%rsp)
	movq	%rax, %rcx
.LEHB16:
	call	_ZSt11make_sharedI4EdgeJiiiiEESt10shared_ptrIT_EDpOT0_
.LEHE16:
	movq	144(%rbp), %rax
	addq	$8, %rax
	movl	$3, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayISt10shared_ptrI4EdgeELy4EEixEy
	movq	%rax, %rcx
	leaq	16(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSt10shared_ptrI4EdgeEaSERKS1_
	movq	144(%rbp), %rax
	addq	$1, %rax
	movl	$3, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayIbLy4EEixEy
	movb	$1, (%rax)
	movq	200(%rbp), %rax
	leaq	40(%rax), %rsi
	leaq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRSt10shared_ptrI4EdgeEEONSt16remove_referenceIT_E4typeEOS5_
	movq	%rax, %rdx
	movq	%rsi, %rcx
.LEHB17:
	call	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE12emplace_backIJS2_EEEvDpOT_
.LEHE17:
	leaq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10shared_ptrI4EdgeED1Ev
.L102:
	leaq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIP4CellSaIS1_EE4sizeEv
	cmpq	$2, %rax
	jbe	.L105
	leaq	48(%rbp), %rax
	movl	$2, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIP4CellSaIS1_EEixEy
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L105
	movl	$1, %eax
	jmp	.L106
.L105:
	movl	$0, %eax
.L106:
	testb	%al, %al
	je	.L107
	leaq	48(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIP4CellSaIS1_EEixEy
	movq	(%rax), %rax
	addq	$1, %rax
	movl	$2, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayIbLy4EEixEy
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L108
	leaq	48(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIP4CellSaIS1_EEixEy
	movq	(%rax), %rax
	addq	$8, %rax
	movl	$2, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayISt10shared_ptrI4EdgeELy4EEixEy
	movq	%rax, %rdx
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	_ZNSt10shared_ptrI4EdgeEC1ERKS1_
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movss	12(%rax), %xmm1
	movq	200(%rbp), %rdx
	movl	8(%rdx), %edx
	cvtsi2ss	%edx, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, 12(%rax)
	movq	144(%rbp), %rax
	addq	$8, %rax
	movl	$2, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayISt10shared_ptrI4EdgeELy4EEixEy
	movq	%rax, %rcx
	movq	%rbp, %rax
	movq	%rax, %rdx
	call	_ZNSt10shared_ptrI4EdgeEaSERKS1_
	movq	144(%rbp), %rax
	addq	$1, %rax
	movl	$2, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayIbLy4EEixEy
	movb	$1, (%rax)
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	_ZNSt10shared_ptrI4EdgeED1Ev
	jmp	.L107
.L108:
	movq	200(%rbp), %rax
	movl	8(%rax), %eax
	imull	156(%rbp), %eax
	movq	200(%rbp), %rdx
	movl	8(%rdx), %edx
	addl	%edx, %eax
	movl	%eax, 96(%rbp)
	movq	200(%rbp), %rax
	movl	8(%rax), %eax
	imull	152(%rbp), %eax
	movq	200(%rbp), %rdx
	movl	8(%rdx), %edx
	addl	%edx, %eax
	movl	%eax, 100(%rbp)
	movq	200(%rbp), %rax
	movl	8(%rax), %eax
	imull	156(%rbp), %eax
	movl	%eax, 104(%rbp)
	movq	200(%rbp), %rax
	movl	8(%rax), %eax
	imull	152(%rbp), %eax
	movq	200(%rbp), %rdx
	movl	8(%rdx), %edx
	addl	%edx, %eax
	movl	%eax, 108(%rbp)
	leaq	-16(%rbp), %rax
	leaq	100(%rbp), %r9
	leaq	104(%rbp), %r8
	leaq	108(%rbp), %rdx
	leaq	96(%rbp), %rcx
	movq	%rcx, 32(%rsp)
	movq	%rax, %rcx
.LEHB18:
	call	_ZSt11make_sharedI4EdgeJiiiiEESt10shared_ptrIT_EDpOT0_
.LEHE18:
	movq	144(%rbp), %rax
	addq	$8, %rax
	movl	$2, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayISt10shared_ptrI4EdgeELy4EEixEy
	movq	%rax, %rcx
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSt10shared_ptrI4EdgeEaSERKS1_
	movq	144(%rbp), %rax
	addq	$1, %rax
	movl	$2, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayIbLy4EEixEy
	movb	$1, (%rax)
	movq	200(%rbp), %rax
	leaq	40(%rax), %rsi
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRSt10shared_ptrI4EdgeEEONSt16remove_referenceIT_E4typeEOS5_
	movq	%rax, %rdx
	movq	%rsi, %rcx
.LEHB19:
	call	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE12emplace_backIJS2_EEEvDpOT_
.LEHE19:
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10shared_ptrI4EdgeED1Ev
.L107:
	leaq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIP4CellSaIS1_EE4sizeEv
	cmpq	$1, %rax
	jbe	.L110
	leaq	48(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIP4CellSaIS1_EEixEy
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L110
	movl	$1, %eax
	jmp	.L111
.L110:
	movl	$0, %eax
.L111:
	testb	%al, %al
	je	.L112
	leaq	48(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIP4CellSaIS1_EEixEy
	movq	(%rax), %rax
	addq	$1, %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayIbLy4EEixEy
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L113
	leaq	48(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIP4CellSaIS1_EEixEy
	movq	(%rax), %rax
	addq	$8, %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayISt10shared_ptrI4EdgeELy4EEixEy
	movq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10shared_ptrI4EdgeEC1ERKS1_
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movss	12(%rax), %xmm1
	movq	200(%rbp), %rdx
	movl	8(%rdx), %edx
	cvtsi2ss	%edx, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, 12(%rax)
	movq	144(%rbp), %rax
	addq	$8, %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayISt10shared_ptrI4EdgeELy4EEixEy
	movq	%rax, %rcx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSt10shared_ptrI4EdgeEaSERKS1_
	movq	144(%rbp), %rax
	addq	$1, %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayIbLy4EEixEy
	movb	$1, (%rax)
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10shared_ptrI4EdgeED1Ev
	jmp	.L112
.L113:
	movq	200(%rbp), %rax
	movl	8(%rax), %eax
	imull	156(%rbp), %eax
	movq	200(%rbp), %rdx
	movl	8(%rdx), %edx
	addl	%edx, %eax
	movl	%eax, 112(%rbp)
	movq	200(%rbp), %rax
	movl	8(%rax), %eax
	imull	152(%rbp), %eax
	movl	%eax, 116(%rbp)
	movq	200(%rbp), %rax
	movl	8(%rax), %eax
	imull	156(%rbp), %eax
	movl	%eax, 120(%rbp)
	movq	200(%rbp), %rax
	movl	8(%rax), %eax
	imull	152(%rbp), %eax
	movl	%eax, 124(%rbp)
	leaq	-48(%rbp), %rax
	leaq	116(%rbp), %r9
	leaq	120(%rbp), %r8
	leaq	124(%rbp), %rdx
	leaq	112(%rbp), %rcx
	movq	%rcx, 32(%rsp)
	movq	%rax, %rcx
.LEHB20:
	call	_ZSt11make_sharedI4EdgeJiiiiEESt10shared_ptrIT_EDpOT0_
.LEHE20:
	movq	144(%rbp), %rax
	addq	$8, %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayISt10shared_ptrI4EdgeELy4EEixEy
	movq	%rax, %rcx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSt10shared_ptrI4EdgeEaSERKS1_
	movq	144(%rbp), %rax
	addq	$1, %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayIbLy4EEixEy
	movb	$1, (%rax)
	movq	200(%rbp), %rax
	leaq	40(%rax), %rsi
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRSt10shared_ptrI4EdgeEEONSt16remove_referenceIT_E4typeEOS5_
	movq	%rax, %rdx
	movq	%rsi, %rcx
.LEHB21:
	call	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE12emplace_backIJS2_EEEvDpOT_
.LEHE21:
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10shared_ptrI4EdgeED1Ev
.L112:
	leaq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIP4CellSaIS1_EE4sizeEv
	testq	%rax, %rax
	je	.L115
	leaq	48(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIP4CellSaIS1_EEixEy
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L115
	movl	$1, %eax
	jmp	.L116
.L115:
	movl	$0, %eax
.L116:
	testb	%al, %al
	je	.L117
	leaq	48(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIP4CellSaIS1_EEixEy
	movq	(%rax), %rax
	addq	$1, %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayIbLy4EEixEy
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L118
	leaq	48(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIP4CellSaIS1_EEixEy
	movq	(%rax), %rax
	addq	$8, %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayISt10shared_ptrI4EdgeELy4EEixEy
	movq	%rax, %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10shared_ptrI4EdgeEC1ERKS1_
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movss	8(%rax), %xmm1
	movq	200(%rbp), %rdx
	movl	8(%rdx), %edx
	cvtsi2ss	%edx, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, 8(%rax)
	movq	144(%rbp), %rax
	addq	$8, %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayISt10shared_ptrI4EdgeELy4EEixEy
	movq	%rax, %rcx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSt10shared_ptrI4EdgeEaSERKS1_
	movq	144(%rbp), %rax
	addq	$1, %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayIbLy4EEixEy
	movb	$1, (%rax)
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10shared_ptrI4EdgeED1Ev
	jmp	.L117
.L118:
	movq	200(%rbp), %rax
	movl	8(%rax), %eax
	imull	156(%rbp), %eax
	movl	%eax, 128(%rbp)
	movq	200(%rbp), %rax
	movl	8(%rax), %eax
	imull	152(%rbp), %eax
	movq	200(%rbp), %rdx
	movl	8(%rdx), %edx
	addl	%edx, %eax
	movl	%eax, 132(%rbp)
	movq	200(%rbp), %rax
	movl	8(%rax), %eax
	imull	156(%rbp), %eax
	movl	%eax, 136(%rbp)
	movq	200(%rbp), %rax
	movl	8(%rax), %eax
	imull	152(%rbp), %eax
	movl	%eax, 140(%rbp)
	leaq	-80(%rbp), %rax
	leaq	132(%rbp), %r9
	leaq	136(%rbp), %r8
	leaq	140(%rbp), %rdx
	leaq	128(%rbp), %rcx
	movq	%rcx, 32(%rsp)
	movq	%rax, %rcx
.LEHB22:
	call	_ZSt11make_sharedI4EdgeJiiiiEESt10shared_ptrIT_EDpOT0_
.LEHE22:
	movq	144(%rbp), %rax
	addq	$8, %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayISt10shared_ptrI4EdgeELy4EEixEy
	movq	%rax, %rcx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSt10shared_ptrI4EdgeEaSERKS1_
	movq	144(%rbp), %rax
	addq	$1, %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt5arrayIbLy4EEixEy
	movb	$1, (%rax)
	movq	200(%rbp), %rax
	leaq	40(%rax), %rsi
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRSt10shared_ptrI4EdgeEEONSt16remove_referenceIT_E4typeEOS5_
	movq	%rax, %rdx
	movq	%rsi, %rcx
.LEHB23:
	call	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE12emplace_backIJS2_EEEvDpOT_
.LEHE23:
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10shared_ptrI4EdgeED1Ev
.L117:
	leaq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIP4CellSaIS1_EED1Ev
.L99:
	addl	$1, 152(%rbp)
	jmp	.L120
.L98:
	addl	$1, 156(%rbp)
	jmp	.L121
.L97:
	movq	200(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdx
	movq	192(%rbp), %rcx
.LEHB24:
	call	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEC1ERKS4_
	jmp	.L133
.L128:
	movq	%rax, %rbx
	leaq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10shared_ptrI4EdgeED1Ev
	jmp	.L124
.L130:
	movq	%rax, %rbx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10shared_ptrI4EdgeED1Ev
	jmp	.L124
.L131:
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10shared_ptrI4EdgeED1Ev
	jmp	.L124
.L132:
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10shared_ptrI4EdgeED1Ev
	jmp	.L124
.L129:
	movq	%rax, %rbx
.L124:
	leaq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIP4CellSaIS1_EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
.LEHE24:
.L133:
	movq	192(%rbp), %rax
	addq	$288, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4092:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4092-.LLSDACSB4092
.LLSDACSB4092:
	.uleb128 .LEHB15-.LFB4092
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB4092
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L129-.LFB4092
	.uleb128 0
	.uleb128 .LEHB17-.LFB4092
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L128-.LFB4092
	.uleb128 0
	.uleb128 .LEHB18-.LFB4092
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L129-.LFB4092
	.uleb128 0
	.uleb128 .LEHB19-.LFB4092
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L130-.LFB4092
	.uleb128 0
	.uleb128 .LEHB20-.LFB4092
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L129-.LFB4092
	.uleb128 0
	.uleb128 .LEHB21-.LFB4092
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L131-.LFB4092
	.uleb128 0
	.uleb128 .LEHB22-.LFB4092
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L129-.LFB4092
	.uleb128 0
	.uleb128 .LEHB23-.LFB4092
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L132-.LFB4092
	.uleb128 0
	.uleb128 .LEHB24-.LFB4092
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
.LLSDACSE4092:
	.section	.text$_ZN14EdgesGenerator10make_edgesEv,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZZN19TrianglesGeneration14sort_trianglesEvENKUlRKSt5arrayIfLy3EES3_E_clES3_S3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZZN19TrianglesGeneration14sort_trianglesEvENKUlRKSt5arrayIfLy3EES3_E_clES3_S3_
	.def	_ZZN19TrianglesGeneration14sort_trianglesEvENKUlRKSt5arrayIfLy3EES3_E_clES3_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZN19TrianglesGeneration14sort_trianglesEvENKUlRKSt5arrayIfLy3EES3_E_clES3_S3_
_ZZN19TrianglesGeneration14sort_trianglesEvENKUlRKSt5arrayIfLy3EES3_E_clES3_S3_:
.LFB4102:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, -16(%rbp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movl	$2, %edx
	movq	%rax, %rcx
	call	_ZNKSt5arrayIfLy3EEixEy
	movss	(%rax), %xmm6
	movq	32(%rbp), %rax
	movl	$2, %edx
	movq	%rax, %rcx
	call	_ZNKSt5arrayIfLy3EEixEy
	movss	(%rax), %xmm0
	comiss	%xmm6, %xmm0
	seta	%al
	movaps	-16(%rbp), %xmm6
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt5arrayIfLy3EEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt5arrayIfLy3EEixEy
	.def	_ZNKSt5arrayIfLy3EEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt5arrayIfLy3EEixEy
_ZNKSt5arrayIfLy3EEixEy:
.LFB4103:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt14__array_traitsIfLy3EE6_S_refERA3_Kfy
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt14__array_traitsIfLy3EE6_S_refERA3_Kfy,"x"
	.linkonce discard
	.globl	_ZNSt14__array_traitsIfLy3EE6_S_refERA3_Kfy
	.def	_ZNSt14__array_traitsIfLy3EE6_S_refERA3_Kfy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt14__array_traitsIfLy3EE6_S_refERA3_Kfy
_ZNSt14__array_traitsIfLy3EE6_S_refERA3_Kfy:
.LFB4104:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN19TrianglesGeneration14sort_trianglesEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN19TrianglesGeneration14sort_trianglesEv
	.def	_ZN19TrianglesGeneration14sort_trianglesEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN19TrianglesGeneration14sort_trianglesEv
_ZN19TrianglesGeneration14sort_trianglesEv:
.LFB4101:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE3endEv
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE5beginEv
	movl	%esi, %r8d
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SB_E_EvT_SD_T0_
	nop
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZZN19TrianglesGeneration16filter_triangelsEvENKUlRKSt5arrayIfLy3EES3_E_clES3_S3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZZN19TrianglesGeneration16filter_triangelsEvENKUlRKSt5arrayIfLy3EES3_E_clES3_S3_
	.def	_ZZN19TrianglesGeneration16filter_triangelsEvENKUlRKSt5arrayIfLy3EES3_E_clES3_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZZN19TrianglesGeneration16filter_triangelsEvENKUlRKSt5arrayIfLy3EES3_E_clES3_S3_
_ZZN19TrianglesGeneration16filter_triangelsEvENKUlRKSt5arrayIfLy3EES3_E_clES3_S3_:
.LFB4106:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, -16(%rbp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNKSt5arrayIfLy3EEixEy
	movss	(%rax), %xmm6
	movq	32(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNKSt5arrayIfLy3EEixEy
	movss	(%rax), %xmm0
	subss	%xmm0, %xmm6
	movaps	%xmm6, %xmm0
	movss	.LC5(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	.LC6(%rip), %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L142
	movq	24(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNKSt5arrayIfLy3EEixEy
	movss	(%rax), %xmm6
	movq	32(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNKSt5arrayIfLy3EEixEy
	movss	(%rax), %xmm0
	subss	%xmm0, %xmm6
	movaps	%xmm6, %xmm0
	movss	.LC5(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	.LC6(%rip), %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L142
	movl	$1, %eax
	jmp	.L145
.L142:
	movl	$0, %eax
.L145:
	movaps	-16(%rbp), %xmm6
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN19TrianglesGeneration16filter_triangelsEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN19TrianglesGeneration16filter_triangelsEv
	.def	_ZN19TrianglesGeneration16filter_triangelsEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN19TrianglesGeneration16filter_triangelsEv
_ZN19TrianglesGeneration16filter_triangelsEv:
.LFB4105:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE3endEv
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE5beginEv
	movl	%esi, %r8d
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEZN19TrianglesGeneration16filter_triangelsEvEUlRKS3_SB_E_ET_SD_SD_T0_
	movq	%rax, -16(%rbp)
	movq	32(%rbp), %rax
	leaq	16(%rax), %rbx
	movq	32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE5beginEv
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	call	_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE6resizeEy
	nop
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN19TrianglesGenerationC1ERKSt6vectorISt10shared_ptrI4EdgeESaIS3_EERKN4math7Vector2E,"x"
	.linkonce discard
	.align 2
	.globl	_ZN19TrianglesGenerationC1ERKSt6vectorISt10shared_ptrI4EdgeESaIS3_EERKN4math7Vector2E
	.def	_ZN19TrianglesGenerationC1ERKSt6vectorISt10shared_ptrI4EdgeESaIS3_EERKN4math7Vector2E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN19TrianglesGenerationC1ERKSt6vectorISt10shared_ptrI4EdgeESaIS3_EERKN4math7Vector2E
_ZN19TrianglesGenerationC1ERKSt6vectorISt10shared_ptrI4EdgeESaIS3_EERKN4math7Vector2E:
.LFB4109:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEC1Ev
	movq	16(%rbp), %rax
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, 40(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN19TrianglesGeneration14make_trianglesEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN19TrianglesGeneration14make_trianglesEv
	.def	_ZN19TrianglesGeneration14make_trianglesEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN19TrianglesGeneration14make_trianglesEv
_ZN19TrianglesGeneration14make_trianglesEv:
.LFB4110:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$248, %rsp
	.seh_stackalloc	248
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	movaps	%xmm6, 64(%rbp)
	.seh_savexmm	%xmm6, 192
	movaps	%xmm7, 80(%rbp)
	.seh_savexmm	%xmm7, 208
	movaps	%xmm8, 96(%rbp)
	.seh_savexmm	%xmm8, 224
	.seh_endprologue
	movq	%rcx, 144(%rbp)
	movq	%rdx, 152(%rbp)
	movq	152(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE5clearEv
	movq	152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, 32(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE5beginEv
	movq	%rax, -40(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE3endEv
	movq	%rax, -48(%rbp)
.L171:
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxneIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	testb	%al, %al
	je	.L152
	leaq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEdeEv
	movq	%rax, 24(%rbp)
	movl	$0, 60(%rbp)
.L170:
	cmpl	$1, 60(%rbp)
	jg	.L153
	leaq	-56(%rbp), %rax
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	movq	%rax, %rcx
	call	_ZN4math7Vector2C1Eff
	cmpl	$0, 60(%rbp)
	jne	.L154
	movq	152(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZN4math7Vector2miERKS0_
	movq	%rax, -56(%rbp)
.L154:
	cmpl	$1, 60(%rbp)
	jne	.L155
	movq	152(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	addq	$8, %rax
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZN4math7Vector2miERKS0_
	movq	%rax, -56(%rbp)
.L155:
	movl	$0, 56(%rbp)
.L169:
	cmpl	$2, 56(%rbp)
	jg	.L156
	cmpl	$0, 56(%rbp)
	jne	.L157
	leaq	-56(%rbp), %rax
	movss	.LC8(%rip), %xmm1
	movq	%rax, %rcx
	call	_ZN4math7Vector27rotateREf
.L157:
	cmpl	$1, 56(%rbp)
	jne	.L158
	leaq	-56(%rbp), %rax
	movss	.LC9(%rip), %xmm1
	movq	%rax, %rcx
	call	_ZN4math7Vector27rotateREf
.L158:
	cmpl	$2, 56(%rbp)
	jne	.L159
	leaq	-56(%rbp), %rax
	movss	.LC9(%rip), %xmm1
	movq	%rax, %rcx
	call	_ZN4math7Vector27rotateREf
.L159:
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, 52(%rbp)
	leaq	-64(%rbp), %rax
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	movq	%rax, %rcx
	call	_ZN4math7Vector2C1Eff
	movb	$0, 47(%rbp)
	movq	152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE5beginEv
	movq	%rax, -72(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE3endEv
	movq	%rax, -80(%rbp)
.L167:
	leaq	-80(%rbp), %rdx
	leaq	-72(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxneIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	testb	%al, %al
	je	.L160
	leaq	-72(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEdeEv
	movq	%rax, 8(%rbp)
	movq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rax, %rbx
	movq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	addq	$8, %rax
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZN4math7Vector2miERKS0_
	movq	%rax, -88(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN4math7Vector2miERKS0_
	movq	%rax, -28(%rbp)
	leaq	-28(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN4math7Vector26lengthEv
	movaps	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comiss	%xmm0, %xmm1
	seta	%al
	testb	%al, %al
	je	.L161
	movss	-56(%rbp), %xmm6
	movq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movss	4(%rax), %xmm0
	movq	152(%rbp), %rax
	movss	12(%rax), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm6, %xmm7
	mulss	%xmm0, %xmm7
	movss	-52(%rbp), %xmm8
	movq	152(%rbp), %rax
	movss	8(%rax), %xmm6
	movq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movss	(%rax), %xmm0
	subss	%xmm0, %xmm6
	movaps	%xmm6, %xmm0
	mulss	%xmm8, %xmm0
	addss	%xmm7, %xmm0
	movss	-88(%rbp), %xmm2
	movss	-52(%rbp), %xmm1
	mulss	%xmm2, %xmm1
	movss	-84(%rbp), %xmm3
	movss	-56(%rbp), %xmm2
	mulss	%xmm3, %xmm2
	subss	%xmm2, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, 4(%rbp)
	movq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movss	(%rax), %xmm1
	movss	-88(%rbp), %xmm0
	mulss	4(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movq	152(%rbp), %rax
	movss	8(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	-56(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, 0(%rbp)
	movss	0(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L161
	movss	4(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jb	.L161
	movss	.LC11(%rip), %xmm0
	comiss	4(%rbp), %xmm0
	jb	.L161
	movss	52(%rbp), %xmm0
	comiss	0(%rbp), %xmm0
	jbe	.L161
	movss	0(%rbp), %xmm0
	movss	%xmm0, 52(%rbp)
	movss	0(%rbp), %xmm0
	leaq	-56(%rbp), %rax
	movaps	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZN4math7Vector2mlEf
	movq	%rax, -20(%rbp)
	movq	152(%rbp), %rax
	leaq	8(%rax), %rcx
	leaq	-20(%rbp), %rax
	movq	%rax, %rdx
	call	_ZN4math7Vector2plERKS0_
	movq	%rax, -64(%rbp)
	movss	-64(%rbp), %xmm0
	movq	152(%rbp), %rax
	movss	8(%rax), %xmm1
	movaps	%xmm0, %xmm2
	subss	%xmm1, %xmm2
	movss	-60(%rbp), %xmm0
	movq	152(%rbp), %rax
	movss	12(%rax), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	call	atan2f
	movd	%xmm0, %eax
	movl	%eax, 48(%rbp)
	movb	$1, 47(%rbp)
.L161:
	leaq	-72(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEppEv
	jmp	.L167
.L160:
	cmpb	$0, 47(%rbp)
	je	.L168
	movq	152(%rbp), %rax
	leaq	16(%rax), %rcx
	movss	-64(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-60(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	48(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
	leaq	-12(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE9push_backEOS1_
.L168:
	addl	$1, 56(%rbp)
	jmp	.L169
.L156:
	addl	$1, 60(%rbp)
	jmp	.L170
.L153:
	leaq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEppEv
	jmp	.L171
.L152:
	movq	152(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN19TrianglesGeneration14sort_trianglesEv
	movq	152(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN19TrianglesGeneration16filter_triangelsEv
	movq	152(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdx
	movq	144(%rbp), %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEC1ERKS3_
	movq	144(%rbp), %rax
	movaps	64(%rbp), %xmm6
	movaps	80(%rbp), %xmm7
	movaps	96(%rbp), %xmm8
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN14EdgesGeneratorD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN14EdgesGeneratorD1Ev
	.def	_ZN14EdgesGeneratorD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN14EdgesGeneratorD1Ev
_ZN14EdgesGeneratorD1Ev:
.LFB4114:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EED1Ev
	movq	16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN5World12update_edgesERKN2sf7Vector2IiEE,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5World12update_edgesERKN2sf7Vector2IiEE
	.def	_ZN5World12update_edgesERKN2sf7Vector2IiEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5World12update_edgesERKN2sf7Vector2IiEE
_ZN5World12update_edgesERKN2sf7Vector2IiEE:
.LFB4111:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$168, %rsp
	.seh_stackalloc	168
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 64(%rbp)
	movq	%rdx, 72(%rbp)
	movl	$0, %ecx
	movq	__imp__ZN2sf5Mouse15isButtonPressedENS0_6ButtonE(%rip), %rax
.LEHB25:
	call	*%rax
	testb	%al, %al
	je	.L183
	movq	72(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L183
	movq	72(%rbp), %rax
	movl	(%rax), %edx
	movq	64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L183
	movq	72(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	js	.L183
	movq	72(%rbp), %rax
	movl	4(%rax), %edx
	movq	64(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jge	.L183
	movq	72(%rbp), %rax
	movl	(%rax), %eax
	movq	64(%rbp), %rdx
	movl	8(%rdx), %ebx
	cltd
	idivl	%ebx
	movl	%eax, -72(%rbp)
	movq	72(%rbp), %rax
	movl	4(%rax), %eax
	movq	64(%rbp), %rdx
	movl	8(%rdx), %ebx
	cltd
	idivl	%ebx
	movl	%eax, -68(%rbp)
	movl	-72(%rbp), %eax
	movslq	%eax, %rbx
	movl	-68(%rbp), %eax
	cltq
	movq	64(%rbp), %rdx
	leaq	16(%rdx), %rcx
	movq	%rax, %rdx
	call	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEixEy
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4CellSaIS0_EEixEy
	movb	$1, (%rax)
	movq	64(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE5clearEv
	movq	64(%rbp), %rax
	movl	8(%rax), %ecx
	movq	64(%rbp), %rax
	movl	4(%rax), %r9d
	movq	64(%rbp), %rax
	movl	(%rax), %r8d
	movq	64(%rbp), %rax
	leaq	16(%rax), %rdx
	leaq	-32(%rbp), %rax
	movl	%ecx, 32(%rsp)
	movq	%rax, %rcx
	call	_ZN14EdgesGeneratorC1ERKSt6vectorIS0_I4CellSaIS1_EESaIS3_EEiii
.LEHE25:
	leaq	-64(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rax, %rcx
.LEHB26:
	call	_ZN14EdgesGenerator10make_edgesEv
.LEHE26:
	movq	64(%rbp), %rax
	leaq	40(%rax), %rcx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEaSEOS4_
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EED1Ev
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN14EdgesGeneratorD1Ev
	jmp	.L183
.L182:
	movq	%rax, %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN14EdgesGeneratorD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB27:
	call	_Unwind_Resume
.LEHE27:
.L183:
	nop
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4111:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4111-.LLSDACSB4111
.LLSDACSB4111:
	.uleb128 .LEHB25-.LFB4111
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB4111
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L182-.LFB4111
	.uleb128 0
	.uleb128 .LEHB27-.LFB4111
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
.LLSDACSE4111:
	.section	.text$_ZN5World12update_edgesERKN2sf7Vector2IiEE,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN19TrianglesGenerationD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN19TrianglesGenerationD1Ev
	.def	_ZN19TrianglesGenerationD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN19TrianglesGenerationD1Ev
_ZN19TrianglesGenerationD1Ev:
.LFB4121:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN5World16update_trianglesERKN2sf7Vector2IiEE,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5World16update_trianglesERKN2sf7Vector2IiEE
	.def	_ZN5World16update_trianglesERKN2sf7Vector2IiEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5World16update_trianglesERKN2sf7Vector2IiEE
_ZN5World16update_trianglesERKN2sf7Vector2IiEE:
.LFB4118:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$136, %rsp
	.seh_stackalloc	136
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE5clearEv
	movl	$1, %ecx
	movq	__imp__ZN2sf5Mouse15isButtonPressedENS0_6ButtonE(%rip), %rax
.LEHB28:
	call	*%rax
.LEHE28:
	testb	%al, %al
	je	.L189
	movq	40(%rbp), %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movq	40(%rbp), %rax
	movl	4(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	leaq	-8(%rbp), %rax
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZN4math7Vector2C1Eff
	movq	32(%rbp), %rax
	leaq	40(%rax), %rdx
	leaq	-8(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZN19TrianglesGenerationC1ERKSt6vectorISt10shared_ptrI4EdgeESaIS3_EERKN4math7Vector2E
	leaq	-96(%rbp), %rax
	leaq	-64(%rbp), %rdx
	movq	%rax, %rcx
.LEHB29:
	call	_ZN19TrianglesGeneration14make_trianglesEv
.LEHE29:
	movq	32(%rbp), %rax
	leaq	64(%rax), %rcx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEaSEOS3_
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EED1Ev
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN19TrianglesGenerationD1Ev
	jmp	.L189
.L188:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN19TrianglesGenerationD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB30:
	call	_Unwind_Resume
.LEHE30:
.L189:
	nop
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4118:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4118-.LLSDACSB4118
.LLSDACSB4118:
	.uleb128 .LEHB28-.LFB4118
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB29-.LFB4118
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L188-.LFB4118
	.uleb128 0
	.uleb128 .LEHB30-.LFB4118
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
.LLSDACSE4118:
	.section	.text$_ZN5World16update_trianglesERKN2sf7Vector2IiEE,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2sf6StringD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN2sf6StringD1Ev
	.def	_ZN2sf6StringD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2sf6StringD1Ev
_ZN2sf6StringD1Ev:
.LFB4128:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC12:
	.ascii "Light Casting\0"
	.section	.text$_ZN5WorldC1EiiiRKN2sf15ContextSettingsE,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5WorldC1EiiiRKN2sf15ContextSettingsE
	.def	_ZN5WorldC1EiiiRKN2sf15ContextSettingsE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5WorldC1EiiiRKN2sf15ContextSettingsE
_ZN5WorldC1EiiiRKN2sf15ContextSettingsE:
.LFB4130:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$216, %rsp
	.seh_stackalloc	216
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 112(%rbp)
	movl	%edx, 120(%rbp)
	movl	%r8d, 128(%rbp)
	movl	%r9d, 136(%rbp)
	movq	112(%rbp), %rax
	movl	120(%rbp), %edx
	movl	%edx, (%rax)
	movq	112(%rbp), %rax
	movl	128(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	112(%rbp), %rax
	movl	136(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	112(%rbp), %rax
	leaq	16(%rax), %rbx
	leaq	-49(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaISt6vectorI4CellSaIS0_EEEC1Ev
	leaq	-17(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaI4CellEC1Ev
	movl	120(%rbp), %eax
	cltd
	idivl	136(%rbp)
	movslq	%eax, %rdx
	leaq	-17(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB31:
	call	_ZNSt6vectorI4CellSaIS0_EEC1EyRKS1_
.LEHE31:
	movl	128(%rbp), %eax
	cltd
	idivl	136(%rbp)
	cltq
	leaq	-49(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
.LEHB32:
	call	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEC1EyRKS2_RKS3_
.LEHE32:
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4CellSaIS0_EED1Ev
	leaq	-17(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaI4CellED1Ev
	leaq	-49(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaISt6vectorI4CellSaIS0_EEED1Ev
	movq	112(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEC1Ev
	movq	112(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEC1Ev
	movq	112(%rbp), %rax
	leaq	88(%rax), %rbx
	leaq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6localeC1Ev
	leaq	24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	movq	__imp__ZN2sf6StringC1EPKcRKSt6locale(%rip), %rax
.LEHB33:
	call	*%rax
.LEHE33:
	movl	128(%rbp), %ecx
	movl	120(%rbp), %edx
	leaq	36(%rbp), %rax
	movl	$32, %r9d
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movq	__imp__ZN2sf9VideoModeC1Ejjj(%rip), %rax
.LEHB34:
	call	*%rax
	movq	36(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	44(%rbp), %eax
	movl	%eax, -72(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	144(%rbp), %rcx
	movq	%rcx, 32(%rsp)
	movl	$5, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
	movq	__imp__ZN2sf12RenderWindowC1ENS_9VideoModeERKNS_6StringEjRKNS_15ContextSettingsE(%rip), %rax
	call	*%rax
.LEHE34:
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN2sf6StringD1Ev
	leaq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6localeD1Ev
	movq	112(%rbp), %rax
	addq	$616, %rax
	movl	136(%rbp), %r8d
	movl	128(%rbp), %ecx
	movl	120(%rbp), %edx
	movl	%r8d, %r9d
	movl	%ecx, %r8d
	movq	%rax, %rcx
	call	_ZN4DrawC1Eiii
	movq	$1, 72(%rbp)
.L193:
	movq	112(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EE4sizeEv
	subq	$1, %rax
	cmpq	%rax, 72(%rbp)
	setb	%al
	testb	%al, %al
	je	.L192
	movq	112(%rbp), %rax
	addq	$16, %rax
	movq	72(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEixEy
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4CellSaIS0_EEixEy
	movb	$1, (%rax)
	addq	$1, 72(%rbp)
	jmp	.L193
.L192:
	movq	$1, 64(%rbp)
.L195:
	movq	112(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EE4sizeEv
	subq	$1, %rax
	cmpq	%rax, 64(%rbp)
	setb	%al
	testb	%al, %al
	je	.L194
	movq	112(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EE4sizeEv
	leaq	-2(%rax), %rbx
	movq	112(%rbp), %rax
	addq	$16, %rax
	movq	64(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEixEy
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4CellSaIS0_EEixEy
	movb	$1, (%rax)
	addq	$1, 64(%rbp)
	jmp	.L195
.L194:
	movq	$1, 56(%rbp)
.L197:
	movq	112(%rbp), %rax
	addq	$16, %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEixEy
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4CellSaIS0_EE4sizeEv
	subq	$1, %rax
	cmpq	%rax, 56(%rbp)
	setb	%al
	testb	%al, %al
	je	.L196
	movq	112(%rbp), %rax
	addq	$16, %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEixEy
	movq	%rax, %rcx
	movq	56(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSt6vectorI4CellSaIS0_EEixEy
	movb	$1, (%rax)
	addq	$1, 56(%rbp)
	jmp	.L197
.L196:
	movq	$1, 48(%rbp)
.L199:
	movq	112(%rbp), %rax
	addq	$16, %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEixEy
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4CellSaIS0_EE4sizeEv
	subq	$1, %rax
	cmpq	%rax, 48(%rbp)
	setb	%al
	testb	%al, %al
	je	.L208
	movq	112(%rbp), %rax
	addq	$16, %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEixEy
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4CellSaIS0_EE4sizeEv
	leaq	-2(%rax), %rdx
	movq	112(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEixEy
	movq	%rax, %rcx
	movq	48(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSt6vectorI4CellSaIS0_EEixEy
	movb	$1, (%rax)
	addq	$1, 48(%rbp)
	jmp	.L199
.L205:
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4CellSaIS0_EED1Ev
	jmp	.L201
.L204:
	movq	%rax, %rbx
.L201:
	leaq	-17(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaI4CellED1Ev
	leaq	-49(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaISt6vectorI4CellSaIS0_EEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB35:
	call	_Unwind_Resume
.L207:
	movq	%rax, %rbx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN2sf6StringD1Ev
	jmp	.L203
.L206:
	movq	%rax, %rbx
.L203:
	leaq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6localeD1Ev
	movq	112(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EED1Ev
	movq	112(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EED1Ev
	movq	112(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
.LEHE35:
.L208:
	nop
	addq	$216, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4130:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4130-.LLSDACSB4130
.LLSDACSB4130:
	.uleb128 .LEHB31-.LFB4130
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L204-.LFB4130
	.uleb128 0
	.uleb128 .LEHB32-.LFB4130
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L205-.LFB4130
	.uleb128 0
	.uleb128 .LEHB33-.LFB4130
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L206-.LFB4130
	.uleb128 0
	.uleb128 .LEHB34-.LFB4130
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L207-.LFB4130
	.uleb128 0
	.uleb128 .LEHB35-.LFB4130
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
.LLSDACSE4130:
	.section	.text$_ZN5WorldC1EiiiRKN2sf15ContextSettingsE,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN5World6updateEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5World6updateEv
	.def	_ZN5World6updateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5World6updateEv
_ZN5World6updateEv:
.LFB4131:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 0(%rbp)
.L214:
	movq	0(%rbp), %rax
	addq	$88, %rax
	movq	%rax, %rcx
	movq	__imp__ZNK2sf6Window6isOpenEv(%rip), %rax
	call	*%rax
	testb	%al, %al
	je	.L215
.L213:
	movq	0(%rbp), %rax
	leaq	88(%rax), %rcx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	__imp__ZN2sf6Window9pollEventERNS_5EventE(%rip), %rax
	call	*%rax
	testb	%al, %al
	je	.L211
	movl	-64(%rbp), %eax
	testl	%eax, %eax
	jne	.L213
	movq	0(%rbp), %rax
	addq	$88, %rax
	movq	%rax, %rcx
	movq	__imp__ZN2sf6Window5closeEv(%rip), %rax
	call	*%rax
	jmp	.L213
.L211:
	movq	0(%rbp), %rax
	leaq	136(%rax), %rbx
	leaq	-44(%rbp), %rax
	movl	$255, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	movq	__imp__ZN2sf5ColorC1Ehhhh(%rip), %rax
	call	*%rax
	leaq	-44(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	movq	__imp__ZN2sf12RenderTarget5clearERKNS_5ColorE(%rip), %rax
	call	*%rax
	movq	0(%rbp), %rax
	addq	$88, %rax
	movq	%rax, %rcx
	movq	__imp__ZN2sf5Mouse11getPositionERKNS_6WindowE(%rip), %rax
	call	*%rax
	movq	%rax, -72(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	0(%rbp), %rcx
	call	_ZN5World12update_edgesERKN2sf7Vector2IiEE
	leaq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	0(%rbp), %rcx
	call	_ZN5World16update_trianglesERKN2sf7Vector2IiEE
	movq	0(%rbp), %rax
	addq	$616, %rax
	movq	0(%rbp), %rdx
	leaq	16(%rdx), %rcx
	movq	0(%rbp), %rdx
	addq	$88, %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZN4Draw10draw_cellsERN2sf12RenderWindowERKSt6vectorIS3_I4CellSaIS4_EESaIS6_EE
	movq	0(%rbp), %rax
	addq	$616, %rax
	movq	0(%rbp), %rdx
	leaq	40(%rdx), %rcx
	movq	0(%rbp), %rdx
	addq	$88, %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZN4Draw10draw_edgesERN2sf12RenderWindowERSt6vectorISt10shared_ptrI4EdgeESaIS6_EE
	movq	0(%rbp), %rax
	leaq	616(%rax), %rbx
	leaq	-72(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN2sf7Vector2IfEC1IiEERKNS0_IT_EE
	movq	0(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	0(%rbp), %rax
	addq	$88, %rax
	leaq	-40(%rbp), %rdx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZN4Draw14draw_trianglesERN2sf12RenderWindowERKSt6vectorISt5arrayIfLy3EESaIS5_EERKNS0_7Vector2IfEE
	movq	0(%rbp), %rax
	addq	$88, %rax
	movq	%rax, %rcx
	movq	__imp__ZN2sf6Window7displayEv(%rip), %rax
	call	*%rax
	jmp	.L214
.L215:
	nop
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN5WorldD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN5WorldD1Ev
	.def	_ZN5WorldD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5WorldD1Ev
_ZN5WorldD1Ev:
.LFB4135:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$88, %rax
	movq	%rax, %rcx
	movq	__imp__ZN2sf12RenderWindowD1Ev(%rip), %rax
	call	*%rax
	movq	16(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EED1Ev
	movq	16(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EED1Ev
	movq	16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB4132:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$760, %rsp
	.seh_stackalloc	760
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	call	__main
	movl	$800, 620(%rbp)
	movl	$800, 616(%rbp)
	movl	$20, 612(%rbp)
	leaq	576(%rbp), %rax
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$1, 40(%rsp)
	movl	$1, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN2sf15ContextSettingsC1Ejjjjjjb
	movl	$8, 584(%rbp)
	movl	612(%rbp), %r9d
	movl	616(%rbp), %r8d
	movl	620(%rbp), %ecx
	leaq	-64(%rbp), %rax
	leaq	576(%rbp), %rdx
	movq	%rdx, 32(%rsp)
	movl	%ecx, %edx
	movq	%rax, %rcx
.LEHB36:
	call	_ZN5WorldC1EiiiRKN2sf15ContextSettingsE
.LEHE36:
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
.LEHB37:
	call	_ZN5World6updateEv
.LEHE37:
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5WorldD1Ev
	movl	$0, %eax
	jmp	.L221
.L220:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN5WorldD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB38:
	call	_Unwind_Resume
.LEHE38:
.L221:
	addq	$760, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4132:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4132-.LLSDACSB4132
.LLSDACSB4132:
	.uleb128 .LEHB36-.LFB4132
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB37-.LFB4132
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L220-.LFB4132
	.uleb128 0
	.uleb128 .LEHB38-.LFB4132
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
.LLSDACSE4132:
	.text
	.seh_endproc
	.section	.text$_ZN2sf7Vector2IfEC1Eff,"x"
	.linkonce discard
	.align 2
	.globl	_ZN2sf7Vector2IfEC1Eff
	.def	_ZN2sf7Vector2IfEC1Eff;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2sf7Vector2IfEC1Eff
_ZN2sf7Vector2IfEC1Eff:
.LFB4397:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movss	%xmm1, 24(%rbp)
	movss	%xmm2, 32(%rbp)
	movq	16(%rbp), %rax
	movss	24(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	16(%rbp), %rax
	movss	32(%rbp), %xmm0
	movss	%xmm0, 4(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt5arrayIiLy2EEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt5arrayIiLy2EEixEy
	.def	_ZNSt5arrayIiLy2EEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt5arrayIiLy2EEixEy
_ZNSt5arrayIiLy2EEixEy:
.LFB4402:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt14__array_traitsIiLy2EE6_S_refERA2_Kiy
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED1Ev
	.def	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED1Ev
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED1Ev:
.LFB4405:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L227
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
.L227:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE5emptyEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE5emptyEv
	.def	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE5emptyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE5emptyEv
_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE5emptyEv:
.LFB4406:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE3endEv
	movq	%rax, -16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE5beginEv
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxeqIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIN2sf6VertexEEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIN2sf6VertexEEC2Ev
	.def	_ZNSaIN2sf6VertexEEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIN2sf6VertexEEC2Ev
_ZNSaIN2sf6VertexEEC2Ev:
.LFB4408:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIN2sf6VertexEEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIN2sf6VertexEEC1Ev
	.def	_ZNSaIN2sf6VertexEEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIN2sf6VertexEEC1Ev
_ZNSaIN2sf6VertexEEC1Ev:
.LFB4409:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIN2sf6VertexEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIN2sf6VertexEED2Ev
	.def	_ZNSaIN2sf6VertexEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIN2sf6VertexEED2Ev
_ZNSaIN2sf6VertexEED2Ev:
.LFB4411:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIN2sf6VertexEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIN2sf6VertexEED1Ev
	.def	_ZNSaIN2sf6VertexEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIN2sf6VertexEED1Ev
_ZNSaIN2sf6VertexEED1Ev:
.LFB4412:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIN2sf6VertexESaIS1_EEC1ESt16initializer_listIS1_ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN2sf6VertexESaIS1_EEC1ESt16initializer_listIS1_ERKS2_
	.def	_ZNSt6vectorIN2sf6VertexESaIS1_EEC1ESt16initializer_listIS1_ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2sf6VertexESaIS1_EEC1ESt16initializer_listIS1_ERKS2_
_ZNSt6vectorIN2sf6VertexESaIS1_EEC1ESt16initializer_listIS1_ERKS2_:
.LFB4415:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%r8, 48(%rbp)
	movq	32(%rbp), %rax
	movq	48(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2ERKS2_
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt16initializer_listIN2sf6VertexEE3endEv
	movq	%rax, %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt16initializer_listIN2sf6VertexEE5beginEv
	movl	%esi, %r9d
	movq	%rbx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
.LEHB39:
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EE19_M_range_initializeIPKS1_EEvT_S7_St20forward_iterator_tag
.LEHE39:
	jmp	.L237
.L236:
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB40:
	call	_Unwind_Resume
	nop
.LEHE40:
.L237:
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4415:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4415-.LLSDACSB4415
.LLSDACSB4415:
	.uleb128 .LEHB39-.LFB4415
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L236-.LFB4415
	.uleb128 0
	.uleb128 .LEHB40-.LFB4415
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
.LLSDACSE4415:
	.section	.text$_ZNSt6vectorIN2sf6VertexESaIS1_EEC1ESt16initializer_listIS1_ERKS2_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIN2sf6VertexESaIS1_EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN2sf6VertexESaIS1_EED1Ev
	.def	_ZNSt6vectorIN2sf6VertexESaIS1_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2sf6VertexESaIS1_EED1Ev
_ZNSt6vectorIN2sf6VertexESaIS1_EED1Ev:
.LFB4418:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPN2sf6VertexES1_EvT_S3_RSaIT0_E
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4418:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4418-.LLSDACSB4418
.LLSDACSB4418:
.LLSDACSE4418:
	.section	.text$_ZNSt6vectorIN2sf6VertexESaIS1_EED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE4sizeEv
	.def	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE4sizeEv
_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE4sizeEv:
.LFB4419:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movabsq	$-6148914691236517205, %rax
	imulq	%rdx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC13:
	.ascii "vector::reserve\0"
	.section	.text$_ZNSt6vectorIN2sf6VertexESaIS1_EE7reserveEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN2sf6VertexESaIS1_EE7reserveEy
	.def	_ZNSt6vectorIN2sf6VertexESaIS1_EE7reserveEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2sf6VertexESaIS1_EE7reserveEy
_ZNSt6vectorIN2sf6VertexESaIS1_EE7reserveEy:
.LFB4420:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorIN2sf6VertexESaIS1_EE8max_sizeEv
	cmpq	%rax, -40(%rbp)
	seta	%al
	testb	%al, %al
	je	.L242
	leaq	.LC13(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
.L242:
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorIN2sf6VertexESaIS1_EE8capacityEv
	cmpq	%rax, -40(%rbp)
	seta	%al
	testb	%al, %al
	je	.L244
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorIN2sf6VertexESaIS1_EE4sizeEv
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	call	_ZSt32__make_move_if_noexcept_iteratorIN2sf6VertexESt13move_iteratorIPS1_EET0_PT_
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	_ZSt32__make_move_if_noexcept_iteratorIN2sf6VertexESt13move_iteratorIPS1_EET0_PT_
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rbx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EE20_M_allocate_and_copyISt13move_iteratorIPS1_EEES6_yT_S8_
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPN2sf6VertexES1_EvT_S3_RSaIT0_E
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	16(%rdx), %rcx
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rdx, %rcx
	sarq	$2, %rcx
	movabsq	$-3689348814741910323, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, %rcx
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_y
	movq	-48(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 16(%rax)
.L244:
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE5beginEv
	.def	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE5beginEv
_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE5beginEv:
.LFB4421:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEC1ERKS4_
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE3endEv
	.def	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE3endEv
_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE3endEv:
.LFB4422:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEC1ERKS4_
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxneIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxneIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_
	.def	_ZN9__gnu_cxxneIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxneIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_
_ZN9__gnu_cxxneIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_:
.LFB4423:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setne	%al
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEppEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEppEv
	.def	_ZN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEppEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEppEv
_ZN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEppEv:
.LFB4424:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	leaq	12(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
_ZNK9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv:
.LFB4425:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIN2sf6VertexESaIS1_EE12emplace_backIJNS0_7Vector2IfEEEEEvDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN2sf6VertexESaIS1_EE12emplace_backIJNS0_7Vector2IfEEEEEvDpOT_
	.def	_ZNSt6vectorIN2sf6VertexESaIS1_EE12emplace_backIJNS0_7Vector2IfEEEEEvDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2sf6VertexESaIS1_EE12emplace_backIJNS0_7Vector2IfEEEEEvDpOT_
_ZNSt6vectorIN2sf6VertexESaIS1_EE12emplace_backIJNS0_7Vector2IfEEEEEvDpOT_:
.LFB4426:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L256
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIN2sf7Vector2IfEEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaIN2sf6VertexEEE9constructIS1_JNS0_7Vector2IfEEEEEvRS2_PT_DpOT0_
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	leaq	20(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L258
.L256:
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIN2sf7Vector2IfEEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EE3endEv
	movq	%rbx, %r8
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EE17_M_realloc_insertIJNS0_7Vector2IfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.L258:
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EEixEy
	.def	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EEixEy
_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EEixEy:
.LFB4427:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIN2sf6VertexESaIS1_EEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN2sf6VertexESaIS1_EEixEy
	.def	_ZNSt6vectorIN2sf6VertexESaIS1_EEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2sf6VertexESaIS1_EEixEy
_ZNSt6vectorIN2sf6VertexESaIS1_EEixEy:
.LFB4428:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIN2sf6VertexESaIS1_EE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIN2sf6VertexESaIS1_EE4sizeEv
	.def	_ZNKSt6vectorIN2sf6VertexESaIS1_EE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIN2sf6VertexESaIS1_EE4sizeEv
_ZNKSt6vectorIN2sf6VertexESaIS1_EE4sizeEv:
.LFB4429:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIN2sf6VertexESaIS1_EEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN2sf6VertexESaIS1_EEC1Ev
	.def	_ZNSt6vectorIN2sf6VertexESaIS1_EEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2sf6VertexESaIS1_EEC1Ev
_ZNSt6vectorIN2sf6VertexESaIS1_EEC1Ev:
.LFB4432:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4432:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4432-.LLSDACSB4432
.LLSDACSB4432:
.LLSDACSE4432:
	.section	.text$_ZNSt6vectorIN2sf6VertexESaIS1_EEC1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE4sizeEv
	.def	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE4sizeEv
_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE4sizeEv:
.LFB4433:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$4, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE5beginEv
	.def	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE5beginEv
_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE5beginEv:
.LFB4434:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEC1ERKS4_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE3endEv
	.def	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE3endEv
_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE3endEv:
.LFB4435:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEC1ERKS4_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxneIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxneIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_
	.def	_ZN9__gnu_cxxneIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxneIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_
_ZN9__gnu_cxxneIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_:
.LFB4436:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEE4baseEv
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setne	%al
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEppEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEppEv
	.def	_ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEppEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEppEv
_ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEppEv:
.LFB4437:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEdeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEdeEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEdeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEdeEv
_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEdeEv:
.LFB4438:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	.def	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv:
.LFB4439:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIN2sf6VertexESaIS1_EE12emplace_backIJNS0_7Vector2IfEERKNS0_5ColorEEEEvDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN2sf6VertexESaIS1_EE12emplace_backIJNS0_7Vector2IfEERKNS0_5ColorEEEEvDpOT_
	.def	_ZNSt6vectorIN2sf6VertexESaIS1_EE12emplace_backIJNS0_7Vector2IfEERKNS0_5ColorEEEEvDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2sf6VertexESaIS1_EE12emplace_backIJNS0_7Vector2IfEERKNS0_5ColorEEEEvDpOT_
_ZNSt6vectorIN2sf6VertexESaIS1_EE12emplace_backIJNS0_7Vector2IfEERKNS0_5ColorEEEEvDpOT_:
.LFB4440:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L281
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRKN2sf5ColorEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	%rax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIN2sf7Vector2IfEEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rbx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaIN2sf6VertexEEE9constructIS1_JNS0_7Vector2IfEERKNS0_5ColorEEEEvRS2_PT_DpOT0_
	movq	32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	20(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L283
.L281:
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRKN2sf5ColorEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	%rax, %rsi
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIN2sf7Vector2IfEEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rbx
	movq	32(%rbp), %rcx
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EE3endEv
	movq	%rsi, %r9
	movq	%rbx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EE17_M_realloc_insertIJNS0_7Vector2IfEERKNS0_5ColorEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.L283:
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EEixEy
	.def	_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EEixEy
_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EEixEy:
.LFB4441:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorI4CellSaIS0_EEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorI4CellSaIS0_EEixEy
	.def	_ZNKSt6vectorI4CellSaIS0_EEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorI4CellSaIS0_EEixEy
_ZNKSt6vectorI4CellSaIS0_EEixEy:
.LFB4442:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEixEy
	.def	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEixEy
_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEixEy:
.LFB4443:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorI4CellSaIS0_EE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorI4CellSaIS0_EE4sizeEv
	.def	_ZNKSt6vectorI4CellSaIS0_EE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorI4CellSaIS0_EE4sizeEv
_ZNKSt6vectorI4CellSaIS0_EE4sizeEv:
.LFB4444:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-8198552921648689607, %rax
	imulq	%rdx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EE4sizeEv
	.def	_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EE4sizeEv
_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EE4sizeEv:
.LFB4445:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-6148914691236517205, %rax
	imulq	%rdx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIP4CellSaIS1_EEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIP4CellSaIS1_EEC1Ev
	.def	_ZNSt6vectorIP4CellSaIS1_EEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIP4CellSaIS1_EEC1Ev
_ZNSt6vectorIP4CellSaIS1_EEC1Ev:
.LFB4448:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIP4CellSaIS1_EEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4448:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4448-.LLSDACSB4448
.LLSDACSB4448:
.LLSDACSE4448:
	.section	.text$_ZNSt6vectorIP4CellSaIS1_EEC1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIP4CellSaIS1_EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIP4CellSaIS1_EED1Ev
	.def	_ZNSt6vectorIP4CellSaIS1_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIP4CellSaIS1_EED1Ev
_ZNSt6vectorIP4CellSaIS1_EED1Ev:
.LFB4451:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIP4CellSaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPP4CellS1_EvT_S3_RSaIT0_E
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIP4CellSaIS1_EED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4451:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4451-.LLSDACSB4451
.LLSDACSB4451:
.LLSDACSE4451:
	.section	.text$_ZNSt6vectorIP4CellSaIS1_EED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIP4CellSaIS1_EE7reserveEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIP4CellSaIS1_EE7reserveEy
	.def	_ZNSt6vectorIP4CellSaIS1_EE7reserveEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIP4CellSaIS1_EE7reserveEy
_ZNSt6vectorIP4CellSaIS1_EE7reserveEy:
.LFB4452:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorIP4CellSaIS1_EE8max_sizeEv
	cmpq	%rax, -40(%rbp)
	seta	%al
	testb	%al, %al
	je	.L297
	leaq	.LC13(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
.L297:
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorIP4CellSaIS1_EE8capacityEv
	cmpq	%rax, -40(%rbp)
	seta	%al
	testb	%al, %al
	je	.L299
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorIP4CellSaIS1_EE4sizeEv
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	call	_ZSt32__make_move_if_noexcept_iteratorIP4CellSt13move_iteratorIPS1_EET0_PT_
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	_ZSt32__make_move_if_noexcept_iteratorIP4CellSt13move_iteratorIPS1_EET0_PT_
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rbx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
	call	_ZNSt6vectorIP4CellSaIS1_EE20_M_allocate_and_copyISt13move_iteratorIPS1_EEES6_yT_S8_
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIP4CellSaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPP4CellS1_EvT_S3_RSaIT0_E
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	16(%rdx), %rcx
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	sarq	$3, %rdx
	movq	%rdx, %rcx
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIP4CellSaIS1_EE13_M_deallocateEPS1_y
	movq	-48(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 16(%rax)
.L299:
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt5arrayIS_IiLy2EELy4EE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt5arrayIS_IiLy2EELy4EE5beginEv
	.def	_ZNSt5arrayIS_IiLy2EELy4EE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt5arrayIS_IiLy2EELy4EE5beginEv
_ZNSt5arrayIS_IiLy2EELy4EE5beginEv:
.LFB4453:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSt5arrayIS_IiLy2EELy4EE4dataEv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt5arrayIS_IiLy2EELy4EE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt5arrayIS_IiLy2EELy4EE3endEv
	.def	_ZNSt5arrayIS_IiLy2EELy4EE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt5arrayIS_IiLy2EELy4EE3endEv
_ZNSt5arrayIS_IiLy2EELy4EE3endEv:
.LFB4454:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSt5arrayIS_IiLy2EELy4EE4dataEv
	addq	$32, %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI4CellSaIS0_EEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4CellSaIS0_EEixEy
	.def	_ZNSt6vectorI4CellSaIS0_EEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4CellSaIS0_EEixEy
_ZNSt6vectorI4CellSaIS0_EEixEy:
.LFB4455:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIP4CellSaIS1_EE9push_backEOS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIP4CellSaIS1_EE9push_backEOS1_
	.def	_ZNSt6vectorIP4CellSaIS1_EE9push_backEOS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIP4CellSaIS1_EE9push_backEOS1_
_ZNSt6vectorIP4CellSaIS1_EE9push_backEOS1_:
.LFB4456:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRP4CellEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorIP4CellSaIS1_EE12emplace_backIJS1_EEEvDpOT_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEC1ERKS4_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEC1ERKS4_
	.def	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEC1ERKS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEC1ERKS4_
_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEC1ERKS4_:
.LFB4462:
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
	movq	%rcx, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	leaq	-81(%rbp), %rax
	movq	%rax, %rcx
.LEHB41:
	call	_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorI4CellSaIS2_EEES4_E17_S_select_on_copyERKS5_
.LEHE41:
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EE4sizeEv
	movq	%rax, %rdx
	leaq	-81(%rbp), %rax
	movq	%rax, %r8
	movq	%rbx, %rcx
.LEHB42:
	call	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EEC2EyRKS4_
.LEHE42:
	leaq	-81(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaISt6vectorI4CellSaIS0_EEED1Ev
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EE3endEv
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EE5beginEv
	movq	%rdi, %r9
	movq	%rbx, %r8
	movq	%rsi, %rdx
	movq	%rax, %rcx
.LEHB43:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS3_EES2_IS5_SaIS5_EEEEPS5_S5_ET0_T_SD_SC_RSaIT1_E
.LEHE43:
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L312
.L310:
	movq	%rax, %rbx
	leaq	-81(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaISt6vectorI4CellSaIS0_EEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB44:
	call	_Unwind_Resume
.L311:
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
	nop
.LEHE44:
.L312:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4462:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4462-.LLSDACSB4462
.LLSDACSB4462:
	.uleb128 .LEHB41-.LFB4462
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB42-.LFB4462
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L310-.LFB4462
	.uleb128 0
	.uleb128 .LEHB43-.LFB4462
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L311-.LFB4462
	.uleb128 0
	.uleb128 .LEHB44-.LFB4462
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
.LLSDACSE4462:
	.section	.text$_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEC1ERKS4_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EED1Ev
	.def	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EED1Ev
_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EED1Ev:
.LFB4465:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPSt6vectorI4CellSaIS1_EES3_EvT_S5_RSaIT0_E
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4465:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4465-.LLSDACSB4465
.LLSDACSB4465:
.LLSDACSE4465:
	.section	.text$_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEC1Ev
	.def	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEC1Ev
_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEC1Ev:
.LFB4468:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4468:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4468-.LLSDACSB4468
.LLSDACSB4468:
.LLSDACSE4468:
	.section	.text$_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEC1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EED1Ev
	.def	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EED1Ev
_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EED1Ev:
.LFB4471:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPSt10shared_ptrI4EdgeES2_EvT_S4_RSaIT0_E
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4471:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4471-.LLSDACSB4471
.LLSDACSB4471:
.LLSDACSE4471:
	.section	.text$_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE5clearEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE5clearEv
	.def	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE5clearEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE5clearEv
_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE5clearEv:
.LFB4472:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE15_M_erase_at_endEPS2_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIP4CellSaIS1_EE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIP4CellSaIS1_EE4sizeEv
	.def	_ZNKSt6vectorIP4CellSaIS1_EE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIP4CellSaIS1_EE4sizeEv
_ZNKSt6vectorIP4CellSaIS1_EE4sizeEv:
.LFB4473:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIP4CellSaIS1_EEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIP4CellSaIS1_EEixEy
	.def	_ZNSt6vectorIP4CellSaIS1_EEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIP4CellSaIS1_EEixEy
_ZNSt6vectorIP4CellSaIS1_EEixEy:
.LFB4474:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt5arrayIbLy4EEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt5arrayIbLy4EEixEy
	.def	_ZNSt5arrayIbLy4EEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt5arrayIbLy4EEixEy
_ZNSt5arrayIbLy4EEixEy:
.LFB4475:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt14__array_traitsIbLy4EE6_S_refERA4_Kby
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt5arrayISt10shared_ptrI4EdgeELy4EEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt5arrayISt10shared_ptrI4EdgeELy4EEixEy
	.def	_ZNSt5arrayISt10shared_ptrI4EdgeELy4EEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt5arrayISt10shared_ptrI4EdgeELy4EEixEy
_ZNSt5arrayISt10shared_ptrI4EdgeELy4EEixEy:
.LFB4476:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt14__array_traitsISt10shared_ptrI4EdgeELy4EE6_S_refERA4_KS2_y
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1ERKS2_
	.def	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1ERKS2_
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1ERKS2_:
.LFB4479:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L327
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv
.L327:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_
	.def	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_:
.LFB4480:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	je	.L329
	cmpq	$0, -8(%rbp)
	je	.L330
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv
.L330:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L331
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
.L331:
	movq	16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L329:
	movq	16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11make_sharedI4EdgeJiiiiEESt10shared_ptrIT_EDpOT0_,"x"
	.linkonce discard
	.globl	_ZSt11make_sharedI4EdgeJiiiiEESt10shared_ptrIT_EDpOT0_
	.def	_ZSt11make_sharedI4EdgeJiiiiEESt10shared_ptrIT_EDpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11make_sharedI4EdgeJiiiiEESt10shared_ptrIT_EDpOT0_
_ZSt11make_sharedI4EdgeJiiiiEESt10shared_ptrIT_EDpOT0_:
.LFB4481:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 48(%rbp)
	movq	%rdx, 56(%rbp)
	movq	%r8, 64(%rbp)
	movq	%r9, 72(%rbp)
	movq	80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rsi
	movq	72(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rbx
	movq	64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %r12
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdi
	leaq	-1(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaI4EdgeEC1Ev
	movq	48(%rbp), %rcx
	leaq	-1(%rbp), %rax
	movq	%rsi, 40(%rsp)
	movq	%rbx, 32(%rsp)
	movq	%r12, %r9
	movq	%rdi, %r8
	movq	%rax, %rdx
.LEHB45:
	call	_ZSt15allocate_sharedI4EdgeSaIS0_EJiiiiEESt10shared_ptrIT_ERKT0_DpOT1_
.LEHE45:
	leaq	-1(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaI4EdgeED1Ev
	jmp	.L337
.L336:
	movq	%rax, %rbx
	leaq	-1(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaI4EdgeED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB46:
	call	_Unwind_Resume
.LEHE46:
.L337:
	movq	48(%rbp), %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4481:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4481-.LLSDACSB4481
.LLSDACSB4481:
	.uleb128 .LEHB45-.LFB4481
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L336-.LFB4481
	.uleb128 0
	.uleb128 .LEHB46-.LFB4481
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0
	.uleb128 0
.LLSDACSE4481:
	.section	.text$_ZSt11make_sharedI4EdgeJiiiiEESt10shared_ptrIT_EDpOT0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt10shared_ptrI4EdgeEC1EOS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10shared_ptrI4EdgeEC1EOS1_
	.def	_ZNSt10shared_ptrI4EdgeEC1EOS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10shared_ptrI4EdgeEC1EOS1_
_ZNSt10shared_ptrI4EdgeEC1EOS1_:
.LFB4484:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRSt10shared_ptrI4EdgeEEONSt16remove_referenceIT_E4typeEOS5_
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EEC2EOS3_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIRSt10shared_ptrI4EdgeEEONSt16remove_referenceIT_E4typeEOS5_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRSt10shared_ptrI4EdgeEEONSt16remove_referenceIT_E4typeEOS5_
	.def	_ZSt4moveIRSt10shared_ptrI4EdgeEEONSt16remove_referenceIT_E4typeEOS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRSt10shared_ptrI4EdgeEEONSt16remove_referenceIT_E4typeEOS5_
_ZSt4moveIRSt10shared_ptrI4EdgeEEONSt16remove_referenceIT_E4typeEOS5_:
.LFB4485:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE12emplace_backIJS2_EEEvDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE12emplace_backIJS2_EEEvDpOT_
	.def	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE12emplace_backIJS2_EEEvDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE12emplace_backIJS2_EEEvDpOT_
_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE12emplace_backIJS2_EEEvDpOT_:
.LFB4486:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L342
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardISt10shared_ptrI4EdgeEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L344
.L342:
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardISt10shared_ptrI4EdgeEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE3endEv
	movq	%rbx, %r8
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
	call	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_
.L344:
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEC1ERKS4_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEC1ERKS4_
	.def	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEC1ERKS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEC1ERKS4_
_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEC1ERKS4_:
.LFB4489:
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
	movq	%rcx, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	leaq	-81(%rbp), %rax
	movq	%rax, %rcx
.LEHB47:
	call	_ZN9__gnu_cxx14__alloc_traitsISaISt10shared_ptrI4EdgeEES3_E17_S_select_on_copyERKS4_
.LEHE47:
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE4sizeEv
	movq	%rax, %rdx
	leaq	-81(%rbp), %rax
	movq	%rax, %r8
	movq	%rbx, %rcx
.LEHB48:
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EEC2EyRKS3_
.LEHE48:
	leaq	-81(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaISt10shared_ptrI4EdgeEED1Ev
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE3endEv
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE5beginEv
	movq	%rdi, %r9
	movq	%rbx, %r8
	movq	%rsi, %rdx
	movq	%rax, %rcx
.LEHB49:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E
.LEHE49:
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L350
.L348:
	movq	%rax, %rbx
	leaq	-81(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaISt10shared_ptrI4EdgeEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB50:
	call	_Unwind_Resume
.L349:
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
	nop
.LEHE50:
.L350:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4489:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4489-.LLSDACSB4489
.LLSDACSB4489:
	.uleb128 .LEHB47-.LFB4489
	.uleb128 .LEHE47-.LEHB47
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB48-.LFB4489
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L348-.LFB4489
	.uleb128 0
	.uleb128 .LEHB49-.LFB4489
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L349-.LFB4489
	.uleb128 0
	.uleb128 .LEHB50-.LFB4489
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
.LLSDACSE4489:
	.section	.text$_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEC1ERKS4_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE5beginEv
	.def	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE5beginEv
_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE5beginEv:
.LFB4490:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEC1ERKS3_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE3endEv
	.def	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE3endEv
_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE3endEv:
.LFB4491:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEC1ERKS3_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SB_E_EvT_SD_T0_,"x"
	.linkonce discard
	.globl	_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SB_E_EvT_SD_T0_
	.def	_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SB_E_EvT_SD_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SB_E_EvT_SD_T0_
_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SB_E_EvT_SD_T0_:
.LFB4492:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movb	%r8b, -48(%rbp)
	movl	%eax, %ecx
	call	_ZN9__gnu_cxx5__ops16__iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EENS0_15_Iter_comp_iterIT_EES9_
	movq	-56(%rbp), %rax
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
	call	_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEZN19TrianglesGeneration16filter_triangelsEvEUlRKS3_SB_E_ET_SD_SD_T0_,"x"
	.linkonce discard
	.globl	_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEZN19TrianglesGeneration16filter_triangelsEvEUlRKS3_SB_E_ET_SD_SD_T0_
	.def	_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEZN19TrianglesGeneration16filter_triangelsEvEUlRKS3_SB_E_ET_SD_SD_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEZN19TrianglesGeneration16filter_triangelsEvEUlRKS3_SB_E_ET_SD_SD_T0_
_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEZN19TrianglesGeneration16filter_triangelsEvEUlRKS3_SB_E_ET_SD_SD_T0_:
.LFB4493:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movb	%r8b, -48(%rbp)
	movl	%eax, %ecx
	call	_ZN9__gnu_cxx5__ops16__iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES6_E_EENS0_15_Iter_comp_iterIT_EES9_
	movq	-56(%rbp), %rax
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
	call	_ZSt8__uniqueIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKS3_SD_E_EEET_SG_SG_T0_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_,"x"
	.linkonce discard
	.globl	_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_
	.def	_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_
_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_:
.LFB4494:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	leaq	-48(%rbp), %rcx
	call	_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSA_
	movq	-40(%rbp), %rax
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
	call	_ZSt10__distanceIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_St26random_access_iterator_tag
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE6resizeEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE6resizeEy
	.def	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE6resizeEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE6resizeEy
_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE6resizeEy:
.LFB4495:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE4sizeEv
	cmpq	%rax, 24(%rbp)
	seta	%al
	testb	%al, %al
	je	.L361
	movq	16(%rbp), %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE4sizeEv
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE17_M_default_appendEy
	jmp	.L363
.L361:
	movq	16(%rbp), %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE4sizeEv
	cmpq	%rax, 24(%rbp)
	setb	%al
	testb	%al, %al
	je	.L363
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE15_M_erase_at_endEPS1_
.L363:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEC1Ev
	.def	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEC1Ev
_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEC1Ev:
.LFB4498:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4498:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4498-.LLSDACSB4498
.LLSDACSB4498:
.LLSDACSE4498:
	.section	.text$_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEC1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorISt5arrayIfLy3EESaIS1_EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EED1Ev
	.def	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EED1Ev
_ZNSt6vectorISt5arrayIfLy3EESaIS1_EED1Ev:
.LFB4501:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPSt5arrayIfLy3EES1_EvT_S3_RSaIT0_E
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4501:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4501-.LLSDACSB4501
.LLSDACSB4501:
.LLSDACSE4501:
	.section	.text$_ZNSt6vectorISt5arrayIfLy3EESaIS1_EED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE5clearEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE5clearEv
	.def	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE5clearEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE5clearEv
_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE5clearEv:
.LFB4502:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE15_M_erase_at_endEPS1_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE5beginEv
	.def	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE5beginEv
_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE5beginEv:
.LFB4503:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEC1ERKS5_
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE3endEv
	.def	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE3endEv
_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE3endEv:
.LFB4504:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEC1ERKS5_
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxneIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxneIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	.def	_ZN9__gnu_cxxneIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxneIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_
_ZN9__gnu_cxxneIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_:
.LFB4505:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEE4baseEv
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setne	%al
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEppEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEppEv
	.def	_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEppEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEppEv
_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEppEv:
.LFB4506:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEdeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEdeEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEdeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEdeEv
_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEdeEv:
.LFB4507:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE9push_backEOS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE9push_backEOS1_
	.def	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE9push_backEOS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE9push_backEOS1_
_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE9push_backEOS1_:
.LFB4508:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE12emplace_backIJS1_EEEvDpOT_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEC1ERKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEC1ERKS3_
	.def	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEC1ERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEC1ERKS3_
_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEC1ERKS3_:
.LFB4511:
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
	movq	%rcx, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	leaq	-81(%rbp), %rax
	movq	%rax, %rcx
.LEHB51:
	call	_ZN9__gnu_cxx14__alloc_traitsISaISt5arrayIfLy3EEES2_E17_S_select_on_copyERKS3_
.LEHE51:
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE4sizeEv
	movq	%rax, %rdx
	leaq	-81(%rbp), %rax
	movq	%rax, %r8
	movq	%rbx, %rcx
.LEHB52:
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EEC2EyRKS2_
.LEHE52:
	leaq	-81(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaISt5arrayIfLy3EEED1Ev
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE3endEv
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE5beginEv
	movq	%rdi, %r9
	movq	%rbx, %r8
	movq	%rsi, %rdx
	movq	%rax, %rcx
.LEHB53:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E
.LEHE53:
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L383
.L381:
	movq	%rax, %rbx
	leaq	-81(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaISt5arrayIfLy3EEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB54:
	call	_Unwind_Resume
.L382:
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
	nop
.LEHE54:
.L383:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4511:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4511-.LLSDACSB4511
.LLSDACSB4511:
	.uleb128 .LEHB51-.LFB4511
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB52-.LFB4511
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L381-.LFB4511
	.uleb128 0
	.uleb128 .LEHB53-.LFB4511
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L382-.LFB4511
	.uleb128 0
	.uleb128 .LEHB54-.LFB4511
	.uleb128 .LEHE54-.LEHB54
	.uleb128 0
	.uleb128 0
.LLSDACSE4511:
	.section	.text$_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEC1ERKS3_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEaSEOS4_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEaSEOS4_
	.def	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEaSEOS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEaSEOS4_
_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEaSEOS4_:
.LFB4512:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -81(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRSt6vectorISt10shared_ptrI4EdgeESaIS3_EEEONSt16remove_referenceIT_E4typeEOS8_
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
	call	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE14_M_move_assignEOS4_St17integral_constantIbLb1EE
	movq	-48(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEaSEOS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEaSEOS3_
	.def	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEaSEOS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEaSEOS3_
_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEaSEOS3_:
.LFB4513:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -81(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRSt6vectorISt5arrayIfLy3EESaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_
	movl	%ebx, %r8d
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE14_M_move_assignEOS3_St17integral_constantIbLb1EE
	movq	-48(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaI4CellEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaI4CellEC1Ev
	.def	_ZNSaI4CellEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaI4CellEC1Ev
_ZNSaI4CellEC1Ev:
.LFB4516:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI4CellEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaI4CellED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaI4CellED2Ev
	.def	_ZNSaI4CellED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaI4CellED2Ev
_ZNSaI4CellED2Ev:
.LFB4518:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI4CellED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaI4CellED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaI4CellED1Ev
	.def	_ZNSaI4CellED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaI4CellED1Ev
_ZNSaI4CellED1Ev:
.LFB4519:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI4CellED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI4CellSaIS0_EEC1EyRKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4CellSaIS0_EEC1EyRKS1_
	.def	_ZNSt6vectorI4CellSaIS0_EEC1EyRKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4CellSaIS0_EEC1EyRKS1_
_ZNSt6vectorI4CellSaIS0_EEC1EyRKS1_:
.LFB4522:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB55:
	call	_ZNSt12_Vector_baseI4CellSaIS0_EEC2EyRKS1_
.LEHE55:
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
.LEHB56:
	call	_ZNSt6vectorI4CellSaIS0_EE21_M_default_initializeEy
.LEHE56:
	jmp	.L394
.L393:
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4CellSaIS0_EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB57:
	call	_Unwind_Resume
	nop
.LEHE57:
.L394:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4522:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4522-.LLSDACSB4522
.LLSDACSB4522:
	.uleb128 .LEHB55-.LFB4522
	.uleb128 .LEHE55-.LEHB55
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB56-.LFB4522
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L393-.LFB4522
	.uleb128 0
	.uleb128 .LEHB57-.LFB4522
	.uleb128 .LEHE57-.LEHB57
	.uleb128 0
	.uleb128 0
.LLSDACSE4522:
	.section	.text$_ZNSt6vectorI4CellSaIS0_EEC1EyRKS1_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorI4CellSaIS0_EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4CellSaIS0_EED1Ev
	.def	_ZNSt6vectorI4CellSaIS0_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4CellSaIS0_EED1Ev
_ZNSt6vectorI4CellSaIS0_EED1Ev:
.LFB4525:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4CellSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIP4CellS0_EvT_S2_RSaIT0_E
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4CellSaIS0_EED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4525:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4525-.LLSDACSB4525
.LLSDACSB4525:
.LLSDACSE4525:
	.section	.text$_ZNSt6vectorI4CellSaIS0_EED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSaISt6vectorI4CellSaIS0_EEEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaISt6vectorI4CellSaIS0_EEEC1Ev
	.def	_ZNSaISt6vectorI4CellSaIS0_EEEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaISt6vectorI4CellSaIS0_EEEC1Ev
_ZNSaISt6vectorI4CellSaIS0_EEEC1Ev:
.LFB4528:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaISt6vectorI4CellSaIS0_EEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaISt6vectorI4CellSaIS0_EEED2Ev
	.def	_ZNSaISt6vectorI4CellSaIS0_EEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaISt6vectorI4CellSaIS0_EEED2Ev
_ZNSaISt6vectorI4CellSaIS0_EEED2Ev:
.LFB4530:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaISt6vectorI4CellSaIS0_EEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaISt6vectorI4CellSaIS0_EEED1Ev
	.def	_ZNSaISt6vectorI4CellSaIS0_EEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaISt6vectorI4CellSaIS0_EEED1Ev
_ZNSaISt6vectorI4CellSaIS0_EEED1Ev:
.LFB4531:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEC1EyRKS2_RKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEC1EyRKS2_RKS3_
	.def	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEC1EyRKS2_RKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEC1EyRKS2_RKS3_
_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEC1EyRKS2_RKS3_:
.LFB4534:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB58:
	call	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EEC2EyRKS4_
.LEHE58:
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
.LEHB59:
	call	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EE18_M_fill_initializeEyRKS2_
.LEHE59:
	jmp	.L402
.L401:
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB60:
	call	_Unwind_Resume
	nop
.LEHE60:
.L402:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4534:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4534-.LLSDACSB4534
.LLSDACSB4534:
	.uleb128 .LEHB58-.LFB4534
	.uleb128 .LEHE58-.LEHB58
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB59-.LFB4534
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L401-.LFB4534
	.uleb128 0
	.uleb128 .LEHB60-.LFB4534
	.uleb128 .LEHE60-.LEHB60
	.uleb128 0
	.uleb128 0
.LLSDACSE4534:
	.section	.text$_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EEC1EyRKS2_RKS3_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE12_Alloc_hiderD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE12_Alloc_hiderD1Ev
	.def	_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE12_Alloc_hiderD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE12_Alloc_hiderD1Ev
_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE12_Alloc_hiderD1Ev:
.LFB4541:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaIjED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEED1Ev
	.def	_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEED1Ev
_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEED1Ev:
.LFB4543:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE10_M_disposeEv
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE12_Alloc_hiderD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4543:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4543-.LLSDACSB4543
.LLSDACSB4543:
.LLSDACSE4543:
	.section	.text$_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN2sf7Vector2IfEC1IiEERKNS0_IT_EE,"x"
	.linkonce discard
	.align 2
	.globl	_ZN2sf7Vector2IfEC1IiEERKNS0_IT_EE
	.def	_ZN2sf7Vector2IfEC1IiEERKNS0_IT_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2sf7Vector2IfEC1IiEERKNS0_IT_EE
_ZN2sf7Vector2IfEC1IiEERKNS0_IT_EE:
.LFB4546:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movq	16(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	24(%rbp), %rax
	movl	4(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movq	16(%rbp), %rax
	movss	%xmm0, 4(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt14__array_traitsIiLy2EE6_S_refERA2_Kiy,"x"
	.linkonce discard
	.globl	_ZNSt14__array_traitsIiLy2EE6_S_refERA2_Kiy
	.def	_ZNSt14__array_traitsIiLy2EE6_S_refERA2_Kiy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt14__array_traitsIiLy2EE6_S_refERA2_Kiy
_ZNSt14__array_traitsIiLy2EE6_S_refERA2_Kiy:
.LFB4660:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	.def	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv:
.LFB4661:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$8, %rax
	movl	$-1, %edx
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L410
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	16(%rbp), %rcx
	call	*%rax
	movq	16(%rbp), %rax
	addq	$12, %rax
	movl	$-1, %edx
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L410
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	16(%rbp), %rcx
	call	*%rax
.L410:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxeqIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxeqIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_
	.def	_ZN9__gnu_cxxeqIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxeqIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_
_ZN9__gnu_cxxeqIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_:
.LFB4662:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	sete	%al
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEEC2Ev
	.def	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEEC2Ev
_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEEC2Ev:
.LFB4664:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEED2Ev
	.def	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEED2Ev
_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEED2Ev:
.LFB4667:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD1Ev
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD1Ev:
.LFB4672:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaIN2sf6VertexEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2ERKS2_
	.def	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2ERKS2_
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2ERKS2_:
.LFB4673:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC1ERKS2_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev
	.def	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev:
.LFB4676:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_y
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4676:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4676-.LLSDACSB4676
.LLSDACSB4676:
.LLSDACSE4676:
	.section	.text$_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNKSt16initializer_listIN2sf6VertexEE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt16initializer_listIN2sf6VertexEE5beginEv
	.def	_ZNKSt16initializer_listIN2sf6VertexEE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt16initializer_listIN2sf6VertexEE5beginEv
_ZNKSt16initializer_listIN2sf6VertexEE5beginEv:
.LFB4678:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt16initializer_listIN2sf6VertexEE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt16initializer_listIN2sf6VertexEE3endEv
	.def	_ZNKSt16initializer_listIN2sf6VertexEE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt16initializer_listIN2sf6VertexEE3endEv
_ZNKSt16initializer_listIN2sf6VertexEE3endEv:
.LFB4679:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rcx
	call	_ZNKSt16initializer_listIN2sf6VertexEE5beginEv
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZNKSt16initializer_listIN2sf6VertexEE4sizeEv
	movq	%rax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIN2sf6VertexESaIS1_EE19_M_range_initializeIPKS1_EEvT_S7_St20forward_iterator_tag,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN2sf6VertexESaIS1_EE19_M_range_initializeIPKS1_EEvT_S7_St20forward_iterator_tag
	.def	_ZNSt6vectorIN2sf6VertexESaIS1_EE19_M_range_initializeIPKS1_EEvT_S7_St20forward_iterator_tag;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2sf6VertexESaIS1_EE19_M_range_initializeIPKS1_EEvT_S7_St20forward_iterator_tag
_ZNSt6vectorIN2sf6VertexESaIS1_EE19_M_range_initializeIPKS1_EEvT_S7_St20forward_iterator_tag:
.LFB4680:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movb	%r9b, 40(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt8distanceIPKN2sf6VertexEENSt15iterator_traitsIT_E15difference_typeES5_S5_
	movq	%rax, -8(%rbp)
	movq	16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE11_M_allocateEy
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %r8
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt22__uninitialized_copy_aIPKN2sf6VertexEPS1_S1_ET0_T_S6_S5_RSaIT1_E
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB4681:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPN2sf6VertexES1_EvT_S3_RSaIT0_E,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPN2sf6VertexES1_EvT_S3_RSaIT0_E
	.def	_ZSt8_DestroyIPN2sf6VertexES1_EvT_S3_RSaIT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPN2sf6VertexES1_EvT_S3_RSaIT0_E
_ZSt8_DestroyIPN2sf6VertexES1_EvT_S3_RSaIT0_E:
.LFB4682:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt8_DestroyIPN2sf6VertexEEvT_S3_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIN2sf6VertexESaIS1_EE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIN2sf6VertexESaIS1_EE8max_sizeEv
	.def	_ZNKSt6vectorIN2sf6VertexESaIS1_EE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIN2sf6VertexESaIS1_EE8max_sizeEv
_ZNKSt6vectorIN2sf6VertexESaIS1_EE8max_sizeEv:
.LFB4683:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaIN2sf6VertexEEE8max_sizeERKS2_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIN2sf6VertexESaIS1_EE8capacityEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIN2sf6VertexESaIS1_EE8capacityEv
	.def	_ZNKSt6vectorIN2sf6VertexESaIS1_EE8capacityEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIN2sf6VertexESaIS1_EE8capacityEv
_ZNKSt6vectorIN2sf6VertexESaIS1_EE8capacityEv:
.LFB4684:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt32__make_move_if_noexcept_iteratorIN2sf6VertexESt13move_iteratorIPS1_EET0_PT_,"x"
	.linkonce discard
	.globl	_ZSt32__make_move_if_noexcept_iteratorIN2sf6VertexESt13move_iteratorIPS1_EET0_PT_
	.def	_ZSt32__make_move_if_noexcept_iteratorIN2sf6VertexESt13move_iteratorIPS1_EET0_PT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt32__make_move_if_noexcept_iteratorIN2sf6VertexESt13move_iteratorIPS1_EET0_PT_
_ZSt32__make_move_if_noexcept_iteratorIN2sf6VertexESt13move_iteratorIPS1_EET0_PT_:
.LFB4685:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt13move_iteratorIPN2sf6VertexEEC1ES2_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIN2sf6VertexESaIS1_EE20_M_allocate_and_copyISt13move_iteratorIPS1_EEES6_yT_S8_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN2sf6VertexESaIS1_EE20_M_allocate_and_copyISt13move_iteratorIPS1_EEES6_yT_S8_
	.def	_ZNSt6vectorIN2sf6VertexESaIS1_EE20_M_allocate_and_copyISt13move_iteratorIPS1_EEES6_yT_S8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2sf6VertexESaIS1_EE20_M_allocate_and_copyISt13move_iteratorIPS1_EEES6_yT_S8_
_ZNSt6vectorIN2sf6VertexESaIS1_EE20_M_allocate_and_copyISt13move_iteratorIPS1_EEES6_yT_S8_:
.LFB4686:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
.LEHB61:
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE11_M_allocateEy
.LEHE61:
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %r8
	movq	-88(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB62:
	call	_ZSt22__uninitialized_copy_aISt13move_iteratorIPN2sf6VertexEES3_S2_ET0_T_S6_S5_RSaIT1_E
.LEHE62:
	movq	-88(%rbp), %rax
	jmp	.L438
.L436:
	movq	%rax, %rcx
	call	__cxa_begin_catch
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB63:
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_y
	call	__cxa_rethrow
.LEHE63:
.L437:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB64:
	call	_Unwind_Resume
.LEHE64:
.L438:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA4686:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT4686-.LLSDATTD4686
.LLSDATTD4686:
	.byte	0x1
	.uleb128 .LLSDACSE4686-.LLSDACSB4686
.LLSDACSB4686:
	.uleb128 .LEHB61-.LFB4686
	.uleb128 .LEHE61-.LEHB61
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB62-.LFB4686
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L436-.LFB4686
	.uleb128 0x1
	.uleb128 .LEHB63-.LFB4686
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L437-.LFB4686
	.uleb128 0
	.uleb128 .LEHB64-.LFB4686
	.uleb128 .LEHE64-.LEHB64
	.uleb128 0
	.uleb128 0
.LLSDACSE4686:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT4686:
	.section	.text$_ZNSt6vectorIN2sf6VertexESaIS1_EE20_M_allocate_and_copyISt13move_iteratorIPS1_EEES6_yT_S8_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_y
	.def	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_y
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_y:
.LFB4687:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L441
	movq	16(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaIN2sf6VertexEEE10deallocateERS2_PS1_y
.L441:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEC1ERKS4_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEC1ERKS4_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEC1ERKS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEC1ERKS4_
_ZN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEC1ERKS4_:
.LFB4690:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv:
.LFB4691:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIN2sf7Vector2IfEEEOT_RNSt16remove_referenceIS3_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIN2sf7Vector2IfEEEOT_RNSt16remove_referenceIS3_E4typeE
	.def	_ZSt7forwardIN2sf7Vector2IfEEEOT_RNSt16remove_referenceIS3_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIN2sf7Vector2IfEEEOT_RNSt16remove_referenceIS3_E4typeE
_ZSt7forwardIN2sf7Vector2IfEEEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB4692:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIN2sf6VertexEEE9constructIS1_JNS0_7Vector2IfEEEEEvRS2_PT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIN2sf6VertexEEE9constructIS1_JNS0_7Vector2IfEEEEEvRS2_PT_DpOT0_
	.def	_ZNSt16allocator_traitsISaIN2sf6VertexEEE9constructIS1_JNS0_7Vector2IfEEEEEvRS2_PT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIN2sf6VertexEEE9constructIS1_JNS0_7Vector2IfEEEEEvRS2_PT_DpOT0_
_ZNSt16allocator_traitsISaIN2sf6VertexEEE9constructIS1_JNS0_7Vector2IfEEEEEvRS2_PT_DpOT0_:
.LFB4693:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIN2sf7Vector2IfEEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE9constructIS2_JNS1_7Vector2IfEEEEEvPT_DpOT0_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIN2sf6VertexESaIS1_EE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN2sf6VertexESaIS1_EE3endEv
	.def	_ZNSt6vectorIN2sf6VertexESaIS1_EE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2sf6VertexESaIS1_EE3endEv
_ZNSt6vectorIN2sf6VertexESaIS1_EE3endEv:
.LFB4694:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPN2sf6VertexESt6vectorIS2_SaIS2_EEEC1ERKS3_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC14:
	.ascii "vector::_M_realloc_insert\0"
	.section	.text$_ZNSt6vectorIN2sf6VertexESaIS1_EE17_M_realloc_insertIJNS0_7Vector2IfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN2sf6VertexESaIS1_EE17_M_realloc_insertIJNS0_7Vector2IfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.def	_ZNSt6vectorIN2sf6VertexESaIS1_EE17_M_realloc_insertIJNS0_7Vector2IfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2sf6VertexESaIS1_EE17_M_realloc_insertIJNS0_7Vector2IfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
_ZNSt6vectorIN2sf6VertexESaIS1_EE17_M_realloc_insertIJNS0_7Vector2IfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB4695:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 0(%rbp)
	movq	%rdx, 8(%rbp)
	movq	%r8, 16(%rbp)
	leaq	.LC14(%rip), %r8
	movl	$1, %edx
	movq	0(%rbp), %rcx
.LEHB65:
	call	_ZNKSt6vectorIN2sf6VertexESaIS1_EE12_M_check_lenEyPKc
	movq	%rax, -48(%rbp)
	movq	0(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	0(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	0(%rbp), %rcx
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EE5beginEv
	movq	%rax, -88(%rbp)
	leaq	-88(%rbp), %rdx
	leaq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxmiIPN2sf6VertexESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	movq	%rax, -72(%rbp)
	movq	0(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE11_M_allocateEy
.LEHE65:
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIN2sf7Vector2IfEEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rcx
	movq	-72(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	0(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB66:
	call	_ZNSt16allocator_traitsISaIN2sf6VertexEEE9constructIS1_JNS0_7Vector2IfEEEEEvRS2_PT_DpOT0_
	movq	$0, -40(%rbp)
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPN2sf6VertexESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rdx
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rbx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt34__uninitialized_move_if_noexcept_aIPN2sf6VertexES2_SaIS1_EET0_T_S5_S4_RT1_
	movq	%rax, -40(%rbp)
	addq	$20, -40(%rbp)
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPN2sf6VertexESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	%rbx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt34__uninitialized_move_if_noexcept_aIPN2sf6VertexES2_SaIS1_EET0_T_S5_S4_RT1_
.LEHE66:
	movq	%rax, -40(%rbp)
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB67:
	call	_ZSt8_DestroyIPN2sf6VertexES1_EvT_S3_RSaIT0_E
	movq	0(%rbp), %rax
	movq	0(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	-56(%rbp), %rdx
	movq	%rdx, %rcx
	sarq	$2, %rcx
	movabsq	$-3689348814741910323, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_y
.LEHE67:
	movq	0(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	0(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	0(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L457
.L455:
	movq	%rax, %rcx
	call	__cxa_begin_catch
	cmpq	$0, -40(%rbp)
	jne	.L452
	movq	-72(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	0(%rbp), %rax
	movq	%rax, %rcx
.LEHB68:
	call	_ZNSt16allocator_traitsISaIN2sf6VertexEEE7destroyIS1_EEvRS2_PT_
	jmp	.L453
.L452:
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPN2sf6VertexES1_EvT_S3_RSaIT0_E
.L453:
	movq	0(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_y
	call	__cxa_rethrow
.LEHE68:
.L456:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB69:
	call	_Unwind_Resume
	nop
.LEHE69:
.L457:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA4695:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT4695-.LLSDATTD4695
.LLSDATTD4695:
	.byte	0x1
	.uleb128 .LLSDACSE4695-.LLSDACSB4695
.LLSDACSB4695:
	.uleb128 .LEHB65-.LFB4695
	.uleb128 .LEHE65-.LEHB65
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB66-.LFB4695
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L455-.LFB4695
	.uleb128 0x1
	.uleb128 .LEHB67-.LFB4695
	.uleb128 .LEHE67-.LEHB67
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB68-.LFB4695
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L456-.LFB4695
	.uleb128 0
	.uleb128 .LEHB69-.LFB4695
	.uleb128 .LEHE69-.LEHB69
	.uleb128 0
	.uleb128 0
.LLSDACSE4695:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT4695:
	.section	.text$_ZNSt6vectorIN2sf6VertexESaIS1_EE17_M_realloc_insertIJNS0_7Vector2IfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2Ev
	.def	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2Ev
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2Ev:
.LFB4697:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEC1ERKS4_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEC1ERKS4_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEC1ERKS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEC1ERKS4_
_ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEC1ERKS4_:
.LFB4701:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEE4baseEv:
.LFB4702:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	.def	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
_ZNKSt19__shared_ptr_accessI4EdgeLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv:
.LFB4703:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNKSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EE3getEv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIRKN2sf5ColorEEOT_RNSt16remove_referenceIS4_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIRKN2sf5ColorEEOT_RNSt16remove_referenceIS4_E4typeE
	.def	_ZSt7forwardIRKN2sf5ColorEEOT_RNSt16remove_referenceIS4_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIRKN2sf5ColorEEOT_RNSt16remove_referenceIS4_E4typeE
_ZSt7forwardIRKN2sf5ColorEEOT_RNSt16remove_referenceIS4_E4typeE:
.LFB4704:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIN2sf6VertexEEE9constructIS1_JNS0_7Vector2IfEERKNS0_5ColorEEEEvRS2_PT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIN2sf6VertexEEE9constructIS1_JNS0_7Vector2IfEERKNS0_5ColorEEEEvRS2_PT_DpOT0_
	.def	_ZNSt16allocator_traitsISaIN2sf6VertexEEE9constructIS1_JNS0_7Vector2IfEERKNS0_5ColorEEEEvRS2_PT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIN2sf6VertexEEE9constructIS1_JNS0_7Vector2IfEERKNS0_5ColorEEEEvRS2_PT_DpOT0_
_ZNSt16allocator_traitsISaIN2sf6VertexEEE9constructIS1_JNS0_7Vector2IfEERKNS0_5ColorEEEEvRS2_PT_DpOT0_:
.LFB4705:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRKN2sf5ColorEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIN2sf7Vector2IfEEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rbx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE9constructIS2_JNS1_7Vector2IfEERKNS1_5ColorEEEEvPT_DpOT0_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIN2sf6VertexESaIS1_EE17_M_realloc_insertIJNS0_7Vector2IfEERKNS0_5ColorEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN2sf6VertexESaIS1_EE17_M_realloc_insertIJNS0_7Vector2IfEERKNS0_5ColorEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.def	_ZNSt6vectorIN2sf6VertexESaIS1_EE17_M_realloc_insertIJNS0_7Vector2IfEERKNS0_5ColorEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2sf6VertexESaIS1_EE17_M_realloc_insertIJNS0_7Vector2IfEERKNS0_5ColorEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
_ZNSt6vectorIN2sf6VertexESaIS1_EE17_M_realloc_insertIJNS0_7Vector2IfEERKNS0_5ColorEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB4706:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 0(%rbp)
	movq	%rdx, 8(%rbp)
	movq	%r8, 16(%rbp)
	movq	%r9, 24(%rbp)
	leaq	.LC14(%rip), %r8
	movl	$1, %edx
	movq	0(%rbp), %rcx
.LEHB70:
	call	_ZNKSt6vectorIN2sf6VertexESaIS1_EE12_M_check_lenEyPKc
	movq	%rax, -48(%rbp)
	movq	0(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	0(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	0(%rbp), %rcx
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EE5beginEv
	movq	%rax, -88(%rbp)
	leaq	-88(%rbp), %rdx
	leaq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxmiIPN2sf6VertexESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	movq	%rax, -72(%rbp)
	movq	0(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE11_M_allocateEy
.LEHE70:
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRKN2sf5ColorEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	%rax, %rbx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIN2sf7Vector2IfEEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rcx
	movq	-72(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	0(%rbp), %rax
	movq	%rbx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB71:
	call	_ZNSt16allocator_traitsISaIN2sf6VertexEEE9constructIS1_JNS0_7Vector2IfEERKNS0_5ColorEEEEvRS2_PT_DpOT0_
	movq	$0, -40(%rbp)
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPN2sf6VertexESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rdx
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rbx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt34__uninitialized_move_if_noexcept_aIPN2sf6VertexES2_SaIS1_EET0_T_S5_S4_RT1_
	movq	%rax, -40(%rbp)
	addq	$20, -40(%rbp)
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPN2sf6VertexESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	%rbx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt34__uninitialized_move_if_noexcept_aIPN2sf6VertexES2_SaIS1_EET0_T_S5_S4_RT1_
.LEHE71:
	movq	%rax, -40(%rbp)
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB72:
	call	_ZSt8_DestroyIPN2sf6VertexES1_EvT_S3_RSaIT0_E
	movq	0(%rbp), %rax
	movq	0(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	-56(%rbp), %rdx
	movq	%rdx, %rcx
	sarq	$2, %rcx
	movabsq	$-3689348814741910323, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_y
.LEHE72:
	movq	0(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	0(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	0(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L474
.L472:
	movq	%rax, %rcx
	call	__cxa_begin_catch
	cmpq	$0, -40(%rbp)
	jne	.L469
	movq	-72(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	0(%rbp), %rax
	movq	%rax, %rcx
.LEHB73:
	call	_ZNSt16allocator_traitsISaIN2sf6VertexEEE7destroyIS1_EEvRS2_PT_
	jmp	.L470
.L469:
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPN2sf6VertexES1_EvT_S3_RSaIT0_E
.L470:
	movq	0(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_y
	call	__cxa_rethrow
.LEHE73:
.L473:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB74:
	call	_Unwind_Resume
	nop
.LEHE74:
.L474:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA4706:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT4706-.LLSDATTD4706
.LLSDATTD4706:
	.byte	0x1
	.uleb128 .LLSDACSE4706-.LLSDACSB4706
.LLSDACSB4706:
	.uleb128 .LEHB70-.LFB4706
	.uleb128 .LEHE70-.LEHB70
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB71-.LFB4706
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L472-.LFB4706
	.uleb128 0x1
	.uleb128 .LEHB72-.LFB4706
	.uleb128 .LEHE72-.LEHB72
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB73-.LFB4706
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L473-.LFB4706
	.uleb128 0
	.uleb128 .LEHB74-.LFB4706
	.uleb128 .LEHE74-.LEHB74
	.uleb128 0
	.uleb128 0
.LLSDACSE4706:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT4706:
	.section	.text$_ZNSt6vectorIN2sf6VertexESaIS1_EE17_M_realloc_insertIJNS0_7Vector2IfEERKNS0_5ColorEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIP4CellSaIS1_EE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIP4CellSaIS1_EE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseIP4CellSaIS1_EE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIP4CellSaIS1_EE12_Vector_implD1Ev
_ZNSt12_Vector_baseIP4CellSaIS1_EE12_Vector_implD1Ev:
.LFB4710:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaIP4CellED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIP4CellSaIS1_EEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIP4CellSaIS1_EEC2Ev
	.def	_ZNSt12_Vector_baseIP4CellSaIS1_EEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIP4CellSaIS1_EEC2Ev
_ZNSt12_Vector_baseIP4CellSaIS1_EEC2Ev:
.LFB4711:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIP4CellSaIS1_EE12_Vector_implC1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIP4CellSaIS1_EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIP4CellSaIS1_EED2Ev
	.def	_ZNSt12_Vector_baseIP4CellSaIS1_EED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIP4CellSaIS1_EED2Ev
_ZNSt12_Vector_baseIP4CellSaIS1_EED2Ev:
.LFB4714:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Vector_baseIP4CellSaIS1_EE13_M_deallocateEPS1_y
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIP4CellSaIS1_EE12_Vector_implD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4714:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4714-.LLSDACSB4714
.LLSDACSB4714:
.LLSDACSE4714:
	.section	.text$_ZNSt12_Vector_baseIP4CellSaIS1_EED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIP4CellSaIS1_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIP4CellSaIS1_EE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseIP4CellSaIS1_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIP4CellSaIS1_EE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseIP4CellSaIS1_EE19_M_get_Tp_allocatorEv:
.LFB4716:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPP4CellS1_EvT_S3_RSaIT0_E,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPP4CellS1_EvT_S3_RSaIT0_E
	.def	_ZSt8_DestroyIPP4CellS1_EvT_S3_RSaIT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPP4CellS1_EvT_S3_RSaIT0_E
_ZSt8_DestroyIPP4CellS1_EvT_S3_RSaIT0_E:
.LFB4717:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt8_DestroyIPP4CellEvT_S3_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIP4CellSaIS1_EE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIP4CellSaIS1_EE8max_sizeEv
	.def	_ZNKSt6vectorIP4CellSaIS1_EE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIP4CellSaIS1_EE8max_sizeEv
_ZNKSt6vectorIP4CellSaIS1_EE8max_sizeEv:
.LFB4718:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt12_Vector_baseIP4CellSaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaIP4CellEE8max_sizeERKS2_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIP4CellSaIS1_EE8capacityEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIP4CellSaIS1_EE8capacityEv
	.def	_ZNKSt6vectorIP4CellSaIS1_EE8capacityEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIP4CellSaIS1_EE8capacityEv
_ZNKSt6vectorIP4CellSaIS1_EE8capacityEv:
.LFB4719:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt32__make_move_if_noexcept_iteratorIP4CellSt13move_iteratorIPS1_EET0_PT_,"x"
	.linkonce discard
	.globl	_ZSt32__make_move_if_noexcept_iteratorIP4CellSt13move_iteratorIPS1_EET0_PT_
	.def	_ZSt32__make_move_if_noexcept_iteratorIP4CellSt13move_iteratorIPS1_EET0_PT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt32__make_move_if_noexcept_iteratorIP4CellSt13move_iteratorIPS1_EET0_PT_
_ZSt32__make_move_if_noexcept_iteratorIP4CellSt13move_iteratorIPS1_EET0_PT_:
.LFB4720:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt13move_iteratorIPP4CellEC1ES2_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIP4CellSaIS1_EE20_M_allocate_and_copyISt13move_iteratorIPS1_EEES6_yT_S8_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIP4CellSaIS1_EE20_M_allocate_and_copyISt13move_iteratorIPS1_EEES6_yT_S8_
	.def	_ZNSt6vectorIP4CellSaIS1_EE20_M_allocate_and_copyISt13move_iteratorIPS1_EEES6_yT_S8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIP4CellSaIS1_EE20_M_allocate_and_copyISt13move_iteratorIPS1_EEES6_yT_S8_
_ZNSt6vectorIP4CellSaIS1_EE20_M_allocate_and_copyISt13move_iteratorIPS1_EEES6_yT_S8_:
.LFB4721:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
.LEHB75:
	call	_ZNSt12_Vector_baseIP4CellSaIS1_EE11_M_allocateEy
.LEHE75:
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIP4CellSaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %r8
	movq	-88(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB76:
	call	_ZSt22__uninitialized_copy_aISt13move_iteratorIPP4CellES3_S2_ET0_T_S6_S5_RSaIT1_E
.LEHE76:
	movq	-88(%rbp), %rax
	jmp	.L493
.L491:
	movq	%rax, %rcx
	call	__cxa_begin_catch
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB77:
	call	_ZNSt12_Vector_baseIP4CellSaIS1_EE13_M_deallocateEPS1_y
	call	__cxa_rethrow
.LEHE77:
.L492:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB78:
	call	_Unwind_Resume
.LEHE78:
.L493:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA4721:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT4721-.LLSDATTD4721
.LLSDATTD4721:
	.byte	0x1
	.uleb128 .LLSDACSE4721-.LLSDACSB4721
.LLSDACSB4721:
	.uleb128 .LEHB75-.LFB4721
	.uleb128 .LEHE75-.LEHB75
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB76-.LFB4721
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L491-.LFB4721
	.uleb128 0x1
	.uleb128 .LEHB77-.LFB4721
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L492-.LFB4721
	.uleb128 0
	.uleb128 .LEHB78-.LFB4721
	.uleb128 .LEHE78-.LEHB78
	.uleb128 0
	.uleb128 0
.LLSDACSE4721:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT4721:
	.section	.text$_ZNSt6vectorIP4CellSaIS1_EE20_M_allocate_and_copyISt13move_iteratorIPS1_EEES6_yT_S8_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIP4CellSaIS1_EE13_M_deallocateEPS1_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIP4CellSaIS1_EE13_M_deallocateEPS1_y
	.def	_ZNSt12_Vector_baseIP4CellSaIS1_EE13_M_deallocateEPS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIP4CellSaIS1_EE13_M_deallocateEPS1_y
_ZNSt12_Vector_baseIP4CellSaIS1_EE13_M_deallocateEPS1_y:
.LFB4722:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L496
	movq	16(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaIP4CellEE10deallocateERS2_PS1_y
.L496:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt5arrayIS_IiLy2EELy4EE4dataEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt5arrayIS_IiLy2EELy4EE4dataEv
	.def	_ZNSt5arrayIS_IiLy2EELy4EE4dataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt5arrayIS_IiLy2EELy4EE4dataEv
_ZNSt5arrayIS_IiLy2EELy4EE4dataEv:
.LFB4723:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14__array_traitsISt5arrayIiLy2EELy4EE6_S_ptrERA4_KS1_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIRP4CellEONSt16remove_referenceIT_E4typeEOS4_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRP4CellEONSt16remove_referenceIT_E4typeEOS4_
	.def	_ZSt4moveIRP4CellEONSt16remove_referenceIT_E4typeEOS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRP4CellEONSt16remove_referenceIT_E4typeEOS4_
_ZSt4moveIRP4CellEONSt16remove_referenceIT_E4typeEOS4_:
.LFB4724:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIP4CellSaIS1_EE12emplace_backIJS1_EEEvDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIP4CellSaIS1_EE12emplace_backIJS1_EEEvDpOT_
	.def	_ZNSt6vectorIP4CellSaIS1_EE12emplace_backIJS1_EEEvDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIP4CellSaIS1_EE12emplace_backIJS1_EEEvDpOT_
_ZNSt6vectorIP4CellSaIS1_EE12emplace_backIJS1_EEEvDpOT_:
.LFB4725:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L502
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIP4CellEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaIP4CellEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L504
.L502:
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIP4CellEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZNSt6vectorIP4CellSaIS1_EE3endEv
	movq	%rbx, %r8
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
	call	_ZNSt6vectorIP4CellSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.L504:
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorI4CellSaIS2_EEES4_E17_S_select_on_copyERKS5_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorI4CellSaIS2_EEES4_E17_S_select_on_copyERKS5_
	.def	_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorI4CellSaIS2_EEES4_E17_S_select_on_copyERKS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorI4CellSaIS2_EEES4_E17_S_select_on_copyERKS5_
_ZN9__gnu_cxx14__alloc_traitsISaISt6vectorI4CellSaIS2_EEES4_E17_S_select_on_copyERKS5_:
.LFB4730:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaISt6vectorI4CellSaIS1_EEEE37select_on_container_copy_constructionERKS4_
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
	.def	_ZNKSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
_ZNKSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv:
.LFB4731:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE12_Vector_implD1Ev
_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE12_Vector_implD1Ev:
.LFB4735:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaISt6vectorI4CellSaIS0_EEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EEC2EyRKS4_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EEC2EyRKS4_
	.def	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EEC2EyRKS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EEC2EyRKS4_
_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EEC2EyRKS4_:
.LFB4736:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE12_Vector_implC1ERKS4_
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
.LEHB79:
	call	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE17_M_create_storageEy
.LEHE79:
	jmp	.L513
.L512:
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB80:
	call	_Unwind_Resume
	nop
.LEHE80:
.L513:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4736:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4736-.LLSDACSB4736
.LLSDACSB4736:
	.uleb128 .LEHB79-.LFB4736
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L512-.LFB4736
	.uleb128 0
	.uleb128 .LEHB80-.LFB4736
	.uleb128 .LEHE80-.LEHB80
	.uleb128 0
	.uleb128 0
.LLSDACSE4736:
	.section	.text$_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EEC2EyRKS4_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EED2Ev
	.def	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EED2Ev
_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EED2Ev:
.LFB4739:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-6148914691236517205, %rax
	imulq	%rdx, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE13_M_deallocateEPS3_y
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE12_Vector_implD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4739:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4739-.LLSDACSB4739
.LLSDACSB4739:
.LLSDACSE4739:
	.section	.text$_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EE5beginEv
	.def	_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EE5beginEv
_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EE5beginEv:
.LFB4741:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEC1ERKS6_
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EE3endEv
	.def	_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EE3endEv
_ZNKSt6vectorIS_I4CellSaIS0_EESaIS2_EE3endEv:
.LFB4742:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEC1ERKS6_
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv:
.LFB4743:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS3_EES2_IS5_SaIS5_EEEEPS5_S5_ET0_T_SD_SC_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS3_EES2_IS5_SaIS5_EEEEPS5_S5_ET0_T_SD_SC_RSaIT1_E
	.def	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS3_EES2_IS5_SaIS5_EEEEPS5_S5_ET0_T_SD_SC_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS3_EES2_IS5_SaIS5_EEEEPS5_S5_ET0_T_SD_SC_RSaIT1_E
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS3_EES2_IS5_SaIS5_EEEEPS5_S5_ET0_T_SD_SC_RSaIT1_E:
.LFB4744:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS3_EES2_IS5_SaIS5_EEEEPS5_ET0_T_SD_SC_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPSt6vectorI4CellSaIS1_EES3_EvT_S5_RSaIT0_E,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPSt6vectorI4CellSaIS1_EES3_EvT_S5_RSaIT0_E
	.def	_ZSt8_DestroyIPSt6vectorI4CellSaIS1_EES3_EvT_S5_RSaIT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPSt6vectorI4CellSaIS1_EES3_EvT_S5_RSaIT0_E
_ZSt8_DestroyIPSt6vectorI4CellSaIS1_EES3_EvT_S5_RSaIT0_E:
.LFB4745:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt8_DestroyIPSt6vectorI4CellSaIS1_EEEvT_S5_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_implD1Ev
_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_implD1Ev:
.LFB4749:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaISt10shared_ptrI4EdgeEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EEC2Ev
	.def	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EEC2Ev
_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EEC2Ev:
.LFB4750:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_implC1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EED2Ev
	.def	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EED2Ev
_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EED2Ev:
.LFB4753:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$4, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE13_M_deallocateEPS2_y
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_implD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4753:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4753-.LLSDACSB4753
.LLSDACSB4753:
.LLSDACSE4753:
	.section	.text$_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE19_M_get_Tp_allocatorEv:
.LFB4755:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPSt10shared_ptrI4EdgeES2_EvT_S4_RSaIT0_E,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPSt10shared_ptrI4EdgeES2_EvT_S4_RSaIT0_E
	.def	_ZSt8_DestroyIPSt10shared_ptrI4EdgeES2_EvT_S4_RSaIT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPSt10shared_ptrI4EdgeES2_EvT_S4_RSaIT0_E
_ZSt8_DestroyIPSt10shared_ptrI4EdgeES2_EvT_S4_RSaIT0_E:
.LFB4756:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt8_DestroyIPSt10shared_ptrI4EdgeEEvT_S4_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE15_M_erase_at_endEPS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE15_M_erase_at_endEPS2_
	.def	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE15_M_erase_at_endEPS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE15_M_erase_at_endEPS2_
_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE15_M_erase_at_endEPS2_:
.LFB4757:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	subq	24(%rbp), %rax
	sarq	$4, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L532
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPSt10shared_ptrI4EdgeES2_EvT_S4_RSaIT0_E
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L532:
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4757:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4757-.LLSDACSB4757
.LLSDACSB4757:
.LLSDACSE4757:
	.section	.text$_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE15_M_erase_at_endEPS2_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt14__array_traitsIbLy4EE6_S_refERA4_Kby,"x"
	.linkonce discard
	.globl	_ZNSt14__array_traitsIbLy4EE6_S_refERA4_Kby
	.def	_ZNSt14__array_traitsIbLy4EE6_S_refERA4_Kby;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt14__array_traitsIbLy4EE6_S_refERA4_Kby
_ZNSt14__array_traitsIbLy4EE6_S_refERA4_Kby:
.LFB4758:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt14__array_traitsISt10shared_ptrI4EdgeELy4EE6_S_refERA4_KS2_y,"x"
	.linkonce discard
	.globl	_ZNSt14__array_traitsISt10shared_ptrI4EdgeELy4EE6_S_refERA4_KS2_y
	.def	_ZNSt14__array_traitsISt10shared_ptrI4EdgeELy4EE6_S_refERA4_KS2_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt14__array_traitsISt10shared_ptrI4EdgeELy4EE6_S_refERA4_KS2_y
_ZNSt14__array_traitsISt10shared_ptrI4EdgeELy4EE6_S_refERA4_KS2_y:
.LFB4759:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv
	.def	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv:
.LFB4760:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$8, %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxL21__atomic_add_dispatchEPii
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaI4EdgeEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaI4EdgeEC1Ev
	.def	_ZNSaI4EdgeEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaI4EdgeEC1Ev
_ZNSaI4EdgeEC1Ev:
.LFB4763:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI4EdgeEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaI4EdgeED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaI4EdgeED2Ev
	.def	_ZNSaI4EdgeED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaI4EdgeED2Ev
_ZNSaI4EdgeED2Ev:
.LFB4765:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI4EdgeED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaI4EdgeED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaI4EdgeED1Ev
	.def	_ZNSaI4EdgeED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaI4EdgeED1Ev
_ZNSaI4EdgeED1Ev:
.LFB4766:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI4EdgeED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.def	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB4767:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt15allocate_sharedI4EdgeSaIS0_EJiiiiEESt10shared_ptrIT_ERKT0_DpOT1_,"x"
	.linkonce discard
	.globl	_ZSt15allocate_sharedI4EdgeSaIS0_EJiiiiEESt10shared_ptrIT_ERKT0_DpOT1_
	.def	_ZSt15allocate_sharedI4EdgeSaIS0_EJiiiiEESt10shared_ptrIT_ERKT0_DpOT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt15allocate_sharedI4EdgeSaIS0_EJiiiiEESt10shared_ptrIT_ERKT0_DpOT1_
_ZSt15allocate_sharedI4EdgeSaIS0_EJiiiiEESt10shared_ptrIT_ERKT0_DpOT1_:
.LFB4768:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 48(%rbp)
	movq	%rdx, 56(%rbp)
	movq	%r8, 64(%rbp)
	movq	%r9, 72(%rbp)
	movq	88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdi
	movq	80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rsi
	movq	72(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rbx
	movq	64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdx
	movq	56(%rbp), %rax
	movq	%rdi, 48(%rsp)
	movq	%rsi, 40(%rsp)
	movq	%rbx, 32(%rsp)
	movq	%rdx, %r9
	movq	%rax, %r8
	movl	%r12d, %edx
	movq	48(%rbp), %rcx
	call	_ZNSt10shared_ptrI4EdgeEC1ISaIS0_EJiiiiEEESt19_Sp_make_shared_tagRKT_DpOT0_
	movq	48(%rbp), %rax
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EEC2EOS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EEC2EOS3_
	.def	_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EEC2EOS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EEC2EOS3_
_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EEC2EOS3_:
.LFB4770:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1Ev
	movq	16(%rbp), %rax
	addq	$8, %rax
	movq	24(%rbp), %rdx
	addq	$8, %rdx
	movq	%rax, %rcx
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_
	movq	24(%rbp), %rax
	movq	$0, (%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardISt10shared_ptrI4EdgeEEOT_RNSt16remove_referenceIS3_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardISt10shared_ptrI4EdgeEEOT_RNSt16remove_referenceIS3_E4typeE
	.def	_ZSt7forwardISt10shared_ptrI4EdgeEEOT_RNSt16remove_referenceIS3_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardISt10shared_ptrI4EdgeEEOT_RNSt16remove_referenceIS3_E4typeE
_ZSt7forwardISt10shared_ptrI4EdgeEEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB4772:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_
	.def	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_
_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_:
.LFB4773:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardISt10shared_ptrI4EdgeEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE9constructIS3_JS3_EEEvPT_DpOT0_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_
	.def	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_
_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:
.LFB4774:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 0(%rbp)
	movq	%rdx, 8(%rbp)
	movq	%r8, 16(%rbp)
	leaq	.LC14(%rip), %r8
	movl	$1, %edx
	movq	0(%rbp), %rcx
.LEHB81:
	call	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE12_M_check_lenEyPKc
	movq	%rax, -48(%rbp)
	movq	0(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	0(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	0(%rbp), %rcx
	call	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE5beginEv
	movq	%rax, -88(%rbp)
	leaq	-88(%rbp), %rdx
	leaq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxmiIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
	movq	%rax, -72(%rbp)
	movq	0(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE11_M_allocateEy
.LEHE81:
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardISt10shared_ptrI4EdgeEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	0(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_
	movq	$0, -40(%rbp)
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEE4baseEv
	movq	(%rax), %rdx
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rbx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB82:
	call	_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrI4EdgeES3_SaIS2_EET0_T_S6_S5_RT1_
	movq	%rax, -40(%rbp)
	addq	$16, -40(%rbp)
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEE4baseEv
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	%rbx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrI4EdgeES3_SaIS2_EET0_T_S6_S5_RT1_
.LEHE82:
	movq	%rax, -40(%rbp)
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB83:
	call	_ZSt8_DestroyIPSt10shared_ptrI4EdgeES2_EvT_S4_RSaIT0_E
	movq	0(%rbp), %rax
	movq	0(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	-56(%rbp), %rdx
	sarq	$4, %rdx
	movq	%rdx, %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE13_M_deallocateEPS2_y
.LEHE83:
	movq	0(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	0(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	0(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L556
.L554:
	movq	%rax, %rcx
	call	__cxa_begin_catch
	cmpq	$0, -40(%rbp)
	jne	.L551
	movq	-72(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	0(%rbp), %rax
	movq	%rax, %rcx
.LEHB84:
	call	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE7destroyIS2_EEvRS3_PT_
	jmp	.L552
.L551:
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPSt10shared_ptrI4EdgeES2_EvT_S4_RSaIT0_E
.L552:
	movq	0(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE13_M_deallocateEPS2_y
	call	__cxa_rethrow
.LEHE84:
.L555:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB85:
	call	_Unwind_Resume
	nop
.LEHE85:
.L556:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA4774:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT4774-.LLSDATTD4774
.LLSDATTD4774:
	.byte	0x1
	.uleb128 .LLSDACSE4774-.LLSDACSB4774
.LLSDACSB4774:
	.uleb128 .LEHB81-.LFB4774
	.uleb128 .LEHE81-.LEHB81
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB82-.LFB4774
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L554-.LFB4774
	.uleb128 0x1
	.uleb128 .LEHB83-.LFB4774
	.uleb128 .LEHE83-.LEHB83
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB84-.LFB4774
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L555-.LFB4774
	.uleb128 0
	.uleb128 .LEHB85-.LFB4774
	.uleb128 .LEHE85-.LEHB85
	.uleb128 0
	.uleb128 0
.LLSDACSE4774:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT4774:
	.section	.text$_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx14__alloc_traitsISaISt10shared_ptrI4EdgeEES3_E17_S_select_on_copyERKS4_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxx14__alloc_traitsISaISt10shared_ptrI4EdgeEES3_E17_S_select_on_copyERKS4_
	.def	_ZN9__gnu_cxx14__alloc_traitsISaISt10shared_ptrI4EdgeEES3_E17_S_select_on_copyERKS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx14__alloc_traitsISaISt10shared_ptrI4EdgeEES3_E17_S_select_on_copyERKS4_
_ZN9__gnu_cxx14__alloc_traitsISaISt10shared_ptrI4EdgeEES3_E17_S_select_on_copyERKS4_:
.LFB4775:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE37select_on_container_copy_constructionERKS3_
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE19_M_get_Tp_allocatorEv
	.def	_ZNKSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE19_M_get_Tp_allocatorEv
_ZNKSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE19_M_get_Tp_allocatorEv:
.LFB4776:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaISt10shared_ptrI4EdgeEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaISt10shared_ptrI4EdgeEED2Ev
	.def	_ZNSaISt10shared_ptrI4EdgeEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaISt10shared_ptrI4EdgeEED2Ev
_ZNSaISt10shared_ptrI4EdgeEED2Ev:
.LFB4778:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaISt10shared_ptrI4EdgeEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaISt10shared_ptrI4EdgeEED1Ev
	.def	_ZNSaISt10shared_ptrI4EdgeEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaISt10shared_ptrI4EdgeEED1Ev
_ZNSaISt10shared_ptrI4EdgeEED1Ev:
.LFB4779:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EEC2EyRKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EEC2EyRKS3_
	.def	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EEC2EyRKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EEC2EyRKS3_
_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EEC2EyRKS3_:
.LFB4781:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_implC1ERKS3_
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
.LEHB86:
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE17_M_create_storageEy
.LEHE86:
	jmp	.L566
.L565:
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB87:
	call	_Unwind_Resume
	nop
.LEHE87:
.L566:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4781:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4781-.LLSDACSB4781
.LLSDACSB4781:
	.uleb128 .LEHB86-.LFB4781
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L565-.LFB4781
	.uleb128 0
	.uleb128 .LEHB87-.LFB4781
	.uleb128 .LEHE87-.LEHB87
	.uleb128 0
	.uleb128 0
.LLSDACSE4781:
	.section	.text$_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EEC2EyRKS3_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E
	.def	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E:
.LFB4783:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEC1ERKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEC1ERKS3_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEC1ERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEC1ERKS3_
_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEC1ERKS3_:
.LFB4786:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx5__ops16__iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EENS0_15_Iter_comp_iterIT_EES9_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxx5__ops16__iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EENS0_15_Iter_comp_iterIT_EES9_
	.def	_ZN9__gnu_cxx5__ops16__iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EENS0_15_Iter_comp_iterIT_EES9_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx5__ops16__iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EENS0_15_Iter_comp_iterIT_EES9_
_ZN9__gnu_cxx5__ops16__iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EENS0_15_Iter_comp_iterIT_EES9_:
.LFB4787:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movb	%cl, 32(%rbp)
	leaq	32(%rbp), %rcx
	call	_ZSt4moveIRZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES4_E_EONSt16remove_referenceIT_E4typeEOS8_
	leaq	-1(%rbp), %rax
	movl	%esi, %edx
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EC1ES7_
	movl	%ebx, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_,"x"
	.linkonce discard
	.globl	_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_
	.def	_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_
_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_:
.LFB4788:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movb	%r8b, 32(%rbp)
	leaq	24(%rbp), %rax
	movq	%rax, %rdx
	leaq	16(%rbp), %rcx
	call	_ZN9__gnu_cxxneIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	testb	%al, %al
	je	.L574
	leaq	24(%rbp), %rax
	leaq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxmiIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	movq	%rax, %rcx
	call	_ZSt4__lgx
	leaq	(%rax,%rax), %rdx
	movzbl	32(%rbp), %ecx
	movq	24(%rbp), %rax
	movl	%ecx, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEExNS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_T1_
	movzbl	32(%rbp), %edx
	movq	24(%rbp), %rax
	movl	%edx, %r8d
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_
.L574:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx5__ops16__iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES6_E_EENS0_15_Iter_comp_iterIT_EES9_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxx5__ops16__iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES6_E_EENS0_15_Iter_comp_iterIT_EES9_
	.def	_ZN9__gnu_cxx5__ops16__iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES6_E_EENS0_15_Iter_comp_iterIT_EES9_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx5__ops16__iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES6_E_EENS0_15_Iter_comp_iterIT_EES9_
_ZN9__gnu_cxx5__ops16__iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES6_E_EENS0_15_Iter_comp_iterIT_EES9_:
.LFB4789:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movb	%cl, 32(%rbp)
	leaq	32(%rbp), %rcx
	call	_ZSt4moveIRZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES4_E_EONSt16remove_referenceIT_E4typeEOS8_
	leaq	-1(%rbp), %rax
	movl	%esi, %edx
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES6_E_EC1ES7_
	movl	%ebx, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8__uniqueIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKS3_SD_E_EEET_SG_SG_T0_,"x"
	.linkonce discard
	.globl	_ZSt8__uniqueIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKS3_SD_E_EEET_SG_SG_T0_
	.def	_ZSt8__uniqueIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKS3_SD_E_EEET_SG_SG_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8__uniqueIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKS3_SD_E_EEET_SG_SG_T0_
_ZSt8__uniqueIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKS3_SD_E_EEET_SG_SG_T0_:
.LFB4790:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movb	%r8b, -32(%rbp)
	movzbl	-32(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %r8d
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
	call	_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKS3_SD_E_EEET_SG_SG_T0_
	movq	%rax, -48(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, %rdx
	leaq	-48(%rbp), %rcx
	call	_ZN9__gnu_cxxeqIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	testb	%al, %al
	je	.L578
	movq	-40(%rbp), %rax
	jmp	.L583
.L578:
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-48(%rbp), %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEppEv
.L582:
	leaq	-48(%rbp), %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEppEv
	movq	%rax, %rcx
	leaq	-40(%rbp), %rax
	movq	%rax, %rdx
	call	_ZN9__gnu_cxxneIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	testb	%al, %al
	je	.L580
	movq	-88(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	-48(%rbp), %r8
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESF_EEbT_T0_
	xorl	$1, %eax
	testb	%al, %al
	je	.L582
	leaq	-48(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rcx
	call	_ZSt4moveIRSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rbx
	leaq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEppEv
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	(%rbx), %rdx
	movq	%rdx, (%rax)
	movl	8(%rbx), %edx
	movl	%edx, 8(%rax)
	jmp	.L582
.L580:
	leaq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEppEv
	movq	(%rax), %rax
.L583:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSA_,"x"
	.linkonce discard
	.globl	_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSA_
	.def	_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSA_
_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSA_:
.LFB4791:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt10__distanceIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_St26random_access_iterator_tag,"x"
	.linkonce discard
	.globl	_ZSt10__distanceIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_St26random_access_iterator_tag
	.def	_ZSt10__distanceIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_St26random_access_iterator_tag;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10__distanceIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_St26random_access_iterator_tag
_ZSt10__distanceIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_St26random_access_iterator_tag:
.LFB4792:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movb	%r8b, 32(%rbp)
	leaq	24(%rbp), %rax
	leaq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxmiIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC15:
	.ascii "vector::_M_default_append\0"
	.section	.text$_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE17_M_default_appendEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE17_M_default_appendEy
	.def	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE17_M_default_appendEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE17_M_default_appendEy
_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE17_M_default_appendEy:
.LFB4793:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -16(%rbp)
	movq	%rdx, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L600
	movq	-16(%rbp), %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE4sizeEv
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movabsq	$-6148914691236517205, %rax
	imulq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE8max_sizeEv
	cmpq	%rax, -64(%rbp)
	ja	.L590
	movq	-16(%rbp), %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE8max_sizeEv
	subq	-64(%rbp), %rax
	cmpq	%rax, -72(%rbp)
	jbe	.L591
.L590:
	movl	$1, %eax
	jmp	.L592
.L591:
	movl	$0, %eax
.L592:
	testb	%al, %al
	movq	-72(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L594
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB88:
	call	_ZSt27__uninitialized_default_n_aIPSt5arrayIfLy3EEyS1_ET_S3_T0_RSaIT1_E
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L600
.L594:
	movq	-8(%rbp), %rax
	leaq	.LC15(%rip), %r8
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE12_M_check_lenEyPKc
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE11_M_allocateEy
.LEHE88:
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %r8
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-96(%rbp), %rcx
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB89:
	call	_ZSt34__uninitialized_move_if_noexcept_aIPSt5arrayIfLy3EES2_SaIS1_EET0_T_S5_S4_RT1_
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt27__uninitialized_default_n_aIPSt5arrayIfLy3EEyS1_ET_S3_T0_RSaIT1_E
.LEHE89:
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB90:
	call	_ZSt8_DestroyIPSt5arrayIfLy3EES1_EvT_S3_RSaIT0_E
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rdx, %rcx
	sarq	$2, %rcx
	movabsq	$-6148914691236517205, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE13_M_deallocateEPS1_y
.LEHE90:
	movq	-16(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-80(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L600
.L598:
	movq	%rax, %rcx
	call	__cxa_begin_catch
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-56(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB91:
	call	_ZSt8_DestroyIPSt5arrayIfLy3EES1_EvT_S3_RSaIT0_E
	movq	-16(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE13_M_deallocateEPS1_y
	call	__cxa_rethrow
.LEHE91:
.L599:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB92:
	call	_Unwind_Resume
.LEHE92:
.L600:
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA4793:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT4793-.LLSDATTD4793
.LLSDATTD4793:
	.byte	0x1
	.uleb128 .LLSDACSE4793-.LLSDACSB4793
.LLSDACSB4793:
	.uleb128 .LEHB88-.LFB4793
	.uleb128 .LEHE88-.LEHB88
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB89-.LFB4793
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L598-.LFB4793
	.uleb128 0x1
	.uleb128 .LEHB90-.LFB4793
	.uleb128 .LEHE90-.LEHB90
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB91-.LFB4793
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L599-.LFB4793
	.uleb128 0
	.uleb128 .LEHB92-.LFB4793
	.uleb128 .LEHE92-.LEHB92
	.uleb128 0
	.uleb128 0
.LLSDACSE4793:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT4793:
	.section	.text$_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE17_M_default_appendEy,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE15_M_erase_at_endEPS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE15_M_erase_at_endEPS1_
	.def	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE15_M_erase_at_endEPS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE15_M_erase_at_endEPS1_
_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE15_M_erase_at_endEPS1_:
.LFB4794:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	subq	24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movabsq	$-6148914691236517205, %rax
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L603
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPSt5arrayIfLy3EES1_EvT_S3_RSaIT0_E
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L603:
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4794:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4794-.LLSDACSB4794
.LLSDACSB4794:
.LLSDACSE4794:
	.section	.text$_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE15_M_erase_at_endEPS1_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_implD1Ev
_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_implD1Ev:
.LFB4798:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaISt5arrayIfLy3EEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EEC2Ev
	.def	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EEC2Ev
_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EEC2Ev:
.LFB4799:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_implC1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EED2Ev
	.def	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EED2Ev
_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EED2Ev:
.LFB4802:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movabsq	$-6148914691236517205, %rax
	imulq	%rdx, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE13_M_deallocateEPS1_y
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_implD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4802:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4802-.LLSDACSB4802
.LLSDACSB4802:
.LLSDACSE4802:
	.section	.text$_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB4804:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPSt5arrayIfLy3EES1_EvT_S3_RSaIT0_E,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPSt5arrayIfLy3EES1_EvT_S3_RSaIT0_E
	.def	_ZSt8_DestroyIPSt5arrayIfLy3EES1_EvT_S3_RSaIT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPSt5arrayIfLy3EES1_EvT_S3_RSaIT0_E
_ZSt8_DestroyIPSt5arrayIfLy3EES1_EvT_S3_RSaIT0_E:
.LFB4805:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt8_DestroyIPSt5arrayIfLy3EEEvT_S3_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEC1ERKS5_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEC1ERKS5_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEC1ERKS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEC1ERKS5_
_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEC1ERKS5_:
.LFB4808:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEE4baseEv:
.LFB4809:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIRSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS4_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS4_
	.def	_ZSt4moveIRSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS4_
_ZSt4moveIRSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS4_:
.LFB4810:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE12emplace_backIJS1_EEEvDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE12emplace_backIJS1_EEEvDpOT_
	.def	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE12emplace_backIJS1_EEEvDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE12emplace_backIJS1_EEEvDpOT_
_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE12emplace_backIJS1_EEEvDpOT_:
.LFB4811:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L616
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardISt5arrayIfLy3EEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	leaq	12(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L618
.L616:
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardISt5arrayIfLy3EEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE3endEv
	movq	%rbx, %r8
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.L618:
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx14__alloc_traitsISaISt5arrayIfLy3EEES2_E17_S_select_on_copyERKS3_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxx14__alloc_traitsISaISt5arrayIfLy3EEES2_E17_S_select_on_copyERKS3_
	.def	_ZN9__gnu_cxx14__alloc_traitsISaISt5arrayIfLy3EEES2_E17_S_select_on_copyERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx14__alloc_traitsISaISt5arrayIfLy3EEES2_E17_S_select_on_copyERKS3_
_ZN9__gnu_cxx14__alloc_traitsISaISt5arrayIfLy3EEES2_E17_S_select_on_copyERKS3_:
.LFB4812:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE37select_on_container_copy_constructionERKS2_
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv
	.def	_ZNKSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv
_ZNKSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB4813:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaISt5arrayIfLy3EEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaISt5arrayIfLy3EEED2Ev
	.def	_ZNSaISt5arrayIfLy3EEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaISt5arrayIfLy3EEED2Ev
_ZNSaISt5arrayIfLy3EEED2Ev:
.LFB4815:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaISt5arrayIfLy3EEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaISt5arrayIfLy3EEED1Ev
	.def	_ZNSaISt5arrayIfLy3EEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaISt5arrayIfLy3EEED1Ev
_ZNSaISt5arrayIfLy3EEED1Ev:
.LFB4816:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EEC2EyRKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EEC2EyRKS2_
	.def	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EEC2EyRKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EEC2EyRKS2_
_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EEC2EyRKS2_:
.LFB4818:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_implC1ERKS2_
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
.LEHB93:
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE17_M_create_storageEy
.LEHE93:
	jmp	.L628
.L627:
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB94:
	call	_Unwind_Resume
	nop
.LEHE94:
.L628:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4818:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4818-.LLSDACSB4818
.LLSDACSB4818:
	.uleb128 .LEHB93-.LFB4818
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L627-.LFB4818
	.uleb128 0
	.uleb128 .LEHB94-.LFB4818
	.uleb128 .LEHE94-.LEHB94
	.uleb128 0
	.uleb128 0
.LLSDACSE4818:
	.section	.text$_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EEC2EyRKS2_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E
	.def	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E:
.LFB4820:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIRSt6vectorISt10shared_ptrI4EdgeESaIS3_EEEONSt16remove_referenceIT_E4typeEOS8_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRSt6vectorISt10shared_ptrI4EdgeESaIS3_EEEONSt16remove_referenceIT_E4typeEOS8_
	.def	_ZSt4moveIRSt6vectorISt10shared_ptrI4EdgeESaIS3_EEEONSt16remove_referenceIT_E4typeEOS8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRSt6vectorISt10shared_ptrI4EdgeESaIS3_EEEONSt16remove_referenceIT_E4typeEOS8_
_ZSt4moveIRSt6vectorISt10shared_ptrI4EdgeESaIS3_EEEONSt16remove_referenceIT_E4typeEOS8_:
.LFB4821:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE14_M_move_assignEOS4_St17integral_constantIbLb1EE,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE14_M_move_assignEOS4_St17integral_constantIbLb1EE
	.def	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE14_M_move_assignEOS4_St17integral_constantIbLb1EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE14_M_move_assignEOS4_St17integral_constantIbLb1EE
_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE14_M_move_assignEOS4_St17integral_constantIbLb1EE:
.LFB4822:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movb	%r8b, -16(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-65(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE13get_allocatorEv
	leaq	-65(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEC1ERKS3_
	leaq	-65(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaISt10shared_ptrI4EdgeEED1Ev
	movq	-32(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_impl12_M_swap_dataERS5_
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_impl12_M_swap_dataERS5_
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt15__alloc_on_moveISaISt10shared_ptrI4EdgeEEEvRT_S5_
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EED1Ev
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4822:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4822-.LLSDACSB4822
.LLSDACSB4822:
.LLSDACSE4822:
	.section	.text$_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EE14_M_move_assignEOS4_St17integral_constantIbLb1EE,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZSt4moveIRSt6vectorISt5arrayIfLy3EESaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRSt6vectorISt5arrayIfLy3EESaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_
	.def	_ZSt4moveIRSt6vectorISt5arrayIfLy3EESaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRSt6vectorISt5arrayIfLy3EESaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_
_ZSt4moveIRSt6vectorISt5arrayIfLy3EESaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_:
.LFB4823:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE14_M_move_assignEOS3_St17integral_constantIbLb1EE,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE14_M_move_assignEOS3_St17integral_constantIbLb1EE
	.def	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE14_M_move_assignEOS3_St17integral_constantIbLb1EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE14_M_move_assignEOS3_St17integral_constantIbLb1EE
_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE14_M_move_assignEOS3_St17integral_constantIbLb1EE:
.LFB4824:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movb	%r8b, -16(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-65(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE13get_allocatorEv
	leaq	-65(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEC1ERKS2_
	leaq	-65(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaISt5arrayIfLy3EEED1Ev
	movq	-32(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_impl12_M_swap_dataERS4_
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_impl12_M_swap_dataERS4_
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt15__alloc_on_moveISaISt5arrayIfLy3EEEEvRT_S4_
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EED1Ev
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4824:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4824-.LLSDACSB4824
.LLSDACSB4824:
.LLSDACSE4824:
	.section	.text$_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE14_M_move_assignEOS3_St17integral_constantIbLb1EE,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI4CellEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI4CellEC2Ev
	.def	_ZN9__gnu_cxx13new_allocatorI4CellEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI4CellEC2Ev
_ZN9__gnu_cxx13new_allocatorI4CellEC2Ev:
.LFB4826:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI4CellED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI4CellED2Ev
	.def	_ZN9__gnu_cxx13new_allocatorI4CellED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI4CellED2Ev
_ZN9__gnu_cxx13new_allocatorI4CellED2Ev:
.LFB4829:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4CellSaIS0_EE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4CellSaIS0_EE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseI4CellSaIS0_EE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4CellSaIS0_EE12_Vector_implD1Ev
_ZNSt12_Vector_baseI4CellSaIS0_EE12_Vector_implD1Ev:
.LFB4834:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaI4CellED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4CellSaIS0_EEC2EyRKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4CellSaIS0_EEC2EyRKS1_
	.def	_ZNSt12_Vector_baseI4CellSaIS0_EEC2EyRKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4CellSaIS0_EEC2EyRKS1_
_ZNSt12_Vector_baseI4CellSaIS0_EEC2EyRKS1_:
.LFB4835:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4CellSaIS0_EE12_Vector_implC1ERKS1_
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
.LEHB95:
	call	_ZNSt12_Vector_baseI4CellSaIS0_EE17_M_create_storageEy
.LEHE95:
	jmp	.L643
.L642:
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4CellSaIS0_EE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB96:
	call	_Unwind_Resume
	nop
.LEHE96:
.L643:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4835:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4835-.LLSDACSB4835
.LLSDACSB4835:
	.uleb128 .LEHB95-.LFB4835
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L642-.LFB4835
	.uleb128 0
	.uleb128 .LEHB96-.LFB4835
	.uleb128 .LEHE96-.LEHB96
	.uleb128 0
	.uleb128 0
.LLSDACSE4835:
	.section	.text$_ZNSt12_Vector_baseI4CellSaIS0_EEC2EyRKS1_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4CellSaIS0_EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4CellSaIS0_EED2Ev
	.def	_ZNSt12_Vector_baseI4CellSaIS0_EED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4CellSaIS0_EED2Ev
_ZNSt12_Vector_baseI4CellSaIS0_EED2Ev:
.LFB4838:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-8198552921648689607, %rax
	imulq	%rdx, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Vector_baseI4CellSaIS0_EE13_M_deallocateEPS0_y
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4CellSaIS0_EE12_Vector_implD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4838:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4838-.LLSDACSB4838
.LLSDACSB4838:
.LLSDACSE4838:
	.section	.text$_ZNSt12_Vector_baseI4CellSaIS0_EED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorI4CellSaIS0_EE21_M_default_initializeEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4CellSaIS0_EE21_M_default_initializeEy
	.def	_ZNSt6vectorI4CellSaIS0_EE21_M_default_initializeEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4CellSaIS0_EE21_M_default_initializeEy
_ZNSt6vectorI4CellSaIS0_EE21_M_default_initializeEy:
.LFB4840:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4CellSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt27__uninitialized_default_n_aIP4CellyS0_ET_S2_T0_RSaIT1_E
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4CellSaIS0_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4CellSaIS0_EE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseI4CellSaIS0_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4CellSaIS0_EE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseI4CellSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB4841:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIP4CellS0_EvT_S2_RSaIT0_E,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIP4CellS0_EvT_S2_RSaIT0_E
	.def	_ZSt8_DestroyIP4CellS0_EvT_S2_RSaIT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIP4CellS0_EvT_S2_RSaIT0_E
_ZSt8_DestroyIP4CellS0_EvT_S2_RSaIT0_E:
.LFB4842:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt8_DestroyIP4CellEvT_S2_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEEC2Ev
	.def	_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEEC2Ev
_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEEC2Ev:
.LFB4844:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEED2Ev
	.def	_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEED2Ev
_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEED2Ev:
.LFB4847:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EE18_M_fill_initializeEyRKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EE18_M_fill_initializeEyRKS2_
	.def	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EE18_M_fill_initializeEyRKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EE18_M_fill_initializeEyRKS2_
_ZNSt6vectorIS_I4CellSaIS0_EESaIS2_EE18_M_fill_initializeEyRKS2_:
.LFB4849:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE19_M_get_Tp_allocatorEv
	movq	%rax, %r8
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt24__uninitialized_fill_n_aIPSt6vectorI4CellSaIS1_EEyS3_S3_ET_S5_T0_RKT1_RSaIT2_E
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIjED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIjED2Ev
	.def	_ZNSaIjED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIjED2Ev
_ZNSaIjED2Ev:
.LFB4855:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIjED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE10_M_disposeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE10_M_disposeEv
	.def	_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE10_M_disposeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE10_M_disposeEv
_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE10_M_disposeEv:
.LFB4857:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNKSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE11_M_is_localEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L655
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE10_M_destroyEy
.L655:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.def	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv:
.LFB4893:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	cmpq	$0, 16(%rbp)
	je	.L658
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	16(%rbp), %rcx
	call	*%rax
.L658:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC1ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC1ERKS2_
	.def	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC1ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC1ERKS2_
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC1ERKS2_:
.LFB4896:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSaIN2sf6VertexEEC2ERKS1_
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt16initializer_listIN2sf6VertexEE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt16initializer_listIN2sf6VertexEE4sizeEv
	.def	_ZNKSt16initializer_listIN2sf6VertexEE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt16initializer_listIN2sf6VertexEE4sizeEv
_ZNKSt16initializer_listIN2sf6VertexEE4sizeEv:
.LFB4897:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8distanceIPKN2sf6VertexEENSt15iterator_traitsIT_E15difference_typeES5_S5_,"x"
	.linkonce discard
	.globl	_ZSt8distanceIPKN2sf6VertexEENSt15iterator_traitsIT_E15difference_typeES5_S5_
	.def	_ZSt8distanceIPKN2sf6VertexEENSt15iterator_traitsIT_E15difference_typeES5_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8distanceIPKN2sf6VertexEENSt15iterator_traitsIT_E15difference_typeES5_S5_
_ZSt8distanceIPKN2sf6VertexEENSt15iterator_traitsIT_E15difference_typeES5_S5_:
.LFB4898:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	leaq	-48(%rbp), %rcx
	call	_ZSt19__iterator_categoryIPKN2sf6VertexEENSt15iterator_traitsIT_E17iterator_categoryERKS5_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movl	%ebx, %r8d
	movq	%rax, %rcx
	call	_ZSt10__distanceIPKN2sf6VertexEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE11_M_allocateEy
	.def	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE11_M_allocateEy
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE11_M_allocateEy:
.LFB4899:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L665
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaIN2sf6VertexEEE8allocateERS2_y
	jmp	.L667
.L665:
	movl	$0, %eax
.L667:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt22__uninitialized_copy_aIPKN2sf6VertexEPS1_S1_ET0_T_S6_S5_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt22__uninitialized_copy_aIPKN2sf6VertexEPS1_S1_ET0_T_S6_S5_RSaIT1_E
	.def	_ZSt22__uninitialized_copy_aIPKN2sf6VertexEPS1_S1_ET0_T_S6_S5_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__uninitialized_copy_aIPKN2sf6VertexEPS1_S1_ET0_T_S6_S5_RSaIT1_E
_ZSt22__uninitialized_copy_aIPKN2sf6VertexEPS1_S1_ET0_T_S6_S5_RSaIT1_E:
.LFB4900:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt18uninitialized_copyIPKN2sf6VertexEPS1_ET0_T_S6_S5_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPN2sf6VertexEEvT_S3_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPN2sf6VertexEEvT_S3_
	.def	_ZSt8_DestroyIPN2sf6VertexEEvT_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPN2sf6VertexEEvT_S3_
_ZSt8_DestroyIPN2sf6VertexEEvT_S3_:
.LFB4901:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPN2sf6VertexEEEvT_S5_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIN2sf6VertexEEE8max_sizeERKS2_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIN2sf6VertexEEE8max_sizeERKS2_
	.def	_ZNSt16allocator_traitsISaIN2sf6VertexEEE8max_sizeERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIN2sf6VertexEEE8max_sizeERKS2_
_ZNSt16allocator_traitsISaIN2sf6VertexEEE8max_sizeERKS2_:
.LFB4902:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx13new_allocatorIN2sf6VertexEE8max_sizeEv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	.def	_ZNKSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
_ZNKSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB4903:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt13move_iteratorIPN2sf6VertexEEC1ES2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt13move_iteratorIPN2sf6VertexEEC1ES2_
	.def	_ZNSt13move_iteratorIPN2sf6VertexEEC1ES2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt13move_iteratorIPN2sf6VertexEEC1ES2_
_ZNSt13move_iteratorIPN2sf6VertexEEC1ES2_:
.LFB4906:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt22__uninitialized_copy_aISt13move_iteratorIPN2sf6VertexEES3_S2_ET0_T_S6_S5_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt22__uninitialized_copy_aISt13move_iteratorIPN2sf6VertexEES3_S2_ET0_T_S6_S5_RSaIT1_E
	.def	_ZSt22__uninitialized_copy_aISt13move_iteratorIPN2sf6VertexEES3_S2_ET0_T_S6_S5_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__uninitialized_copy_aISt13move_iteratorIPN2sf6VertexEES3_S2_ET0_T_S6_S5_RSaIT1_E
_ZSt22__uninitialized_copy_aISt13move_iteratorIPN2sf6VertexEES3_S2_ET0_T_S6_S5_RSaIT1_E:
.LFB4907:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt18uninitialized_copyISt13move_iteratorIPN2sf6VertexEES3_ET0_T_S6_S5_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIN2sf6VertexEEE10deallocateERS2_PS1_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIN2sf6VertexEEE10deallocateERS2_PS1_y
	.def	_ZNSt16allocator_traitsISaIN2sf6VertexEEE10deallocateERS2_PS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIN2sf6VertexEEE10deallocateERS2_PS1_y
_ZNSt16allocator_traitsISaIN2sf6VertexEEE10deallocateERS2_PS1_y:
.LFB4908:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE10deallocateEPS2_y
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE9constructIS2_JNS1_7Vector2IfEEEEEvPT_DpOT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE9constructIS2_JNS1_7Vector2IfEEEEEvPT_DpOT0_
	.def	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE9constructIS2_JNS1_7Vector2IfEEEEEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE9constructIS2_JNS1_7Vector2IfEEEEEvPT_DpOT0_
_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE9constructIS2_JNS1_7Vector2IfEEEEEvPT_DpOT0_:
.LFB4909:
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
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIN2sf7Vector2IfEEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdi
	movq	-40(%rbp), %rbx
	movq	%rbx, %rdx
	movl	$20, %ecx
	call	_ZnwyPv
	movq	%rax, %rsi
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	movq	__imp__ZN2sf6VertexC1ERKNS_7Vector2IfEE(%rip), %rax
.LEHB97:
	call	*%rax
.LEHE97:
	jmp	.L682
.L681:
	movq	%rax, %rdi
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZdlPvS_
	movq	%rdi, %rax
	movq	%rax, %rcx
.LEHB98:
	call	_Unwind_Resume
	nop
.LEHE98:
.L682:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4909:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4909-.LLSDACSB4909
.LLSDACSB4909:
	.uleb128 .LEHB97-.LFB4909
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L681-.LFB4909
	.uleb128 0
	.uleb128 .LEHB98-.LFB4909
	.uleb128 .LEHE98-.LEHB98
	.uleb128 0
	.uleb128 0
.LLSDACSE4909:
	.section	.text$_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE9constructIS2_JNS1_7Vector2IfEEEEEvPT_DpOT0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPN2sf6VertexESt6vectorIS2_SaIS2_EEEC1ERKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPN2sf6VertexESt6vectorIS2_SaIS2_EEEC1ERKS3_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPN2sf6VertexESt6vectorIS2_SaIS2_EEEC1ERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPN2sf6VertexESt6vectorIS2_SaIS2_EEEC1ERKS3_
_ZN9__gnu_cxx17__normal_iteratorIPN2sf6VertexESt6vectorIS2_SaIS2_EEEC1ERKS3_:
.LFB4912:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIN2sf6VertexESaIS1_EE12_M_check_lenEyPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIN2sf6VertexESaIS1_EE12_M_check_lenEyPKc
	.def	_ZNKSt6vectorIN2sf6VertexESaIS1_EE12_M_check_lenEyPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIN2sf6VertexESaIS1_EE12_M_check_lenEyPKc
_ZNKSt6vectorIN2sf6VertexESaIS1_EE12_M_check_lenEyPKc:
.LFB4913:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%r8, -32(%rbp)
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorIN2sf6VertexESaIS1_EE8max_sizeEv
	movq	%rax, %rbx
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorIN2sf6VertexESaIS1_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-40(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L685
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt20__throw_length_errorPKc
.L685:
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorIN2sf6VertexESaIS1_EE4sizeEv
	movq	%rax, %rbx
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorIN2sf6VertexESaIS1_EE4sizeEv
	movq	%rax, -96(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3maxIyERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorIN2sf6VertexESaIS1_EE4sizeEv
	cmpq	%rax, -88(%rbp)
	jb	.L686
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorIN2sf6VertexESaIS1_EE8max_sizeEv
	cmpq	%rax, -88(%rbp)
	jbe	.L687
.L686:
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorIN2sf6VertexESaIS1_EE8max_sizeEv
	jmp	.L688
.L687:
	movq	-88(%rbp), %rax
.L688:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIN2sf6VertexESaIS1_EE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIN2sf6VertexESaIS1_EE5beginEv
	.def	_ZNSt6vectorIN2sf6VertexESaIS1_EE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIN2sf6VertexESaIS1_EE5beginEv
_ZNSt6vectorIN2sf6VertexESaIS1_EE5beginEv:
.LFB4914:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPN2sf6VertexESt6vectorIS2_SaIS2_EEEC1ERKS3_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxmiIPN2sf6VertexESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxmiIPN2sf6VertexESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.def	_ZN9__gnu_cxxmiIPN2sf6VertexESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxmiIPN2sf6VertexESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
_ZN9__gnu_cxxmiIPN2sf6VertexESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_:
.LFB4915:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPN2sf6VertexESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPN2sf6VertexESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	subq	%rax, %rbx
	movq	%rbx, %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPN2sf6VertexESt6vectorIS2_SaIS2_EEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPN2sf6VertexESt6vectorIS2_SaIS2_EEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPN2sf6VertexESt6vectorIS2_SaIS2_EEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPN2sf6VertexESt6vectorIS2_SaIS2_EEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIPN2sf6VertexESt6vectorIS2_SaIS2_EEE4baseEv:
.LFB4916:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt34__uninitialized_move_if_noexcept_aIPN2sf6VertexES2_SaIS1_EET0_T_S5_S4_RT1_,"x"
	.linkonce discard
	.globl	_ZSt34__uninitialized_move_if_noexcept_aIPN2sf6VertexES2_SaIS1_EET0_T_S5_S4_RT1_
	.def	_ZSt34__uninitialized_move_if_noexcept_aIPN2sf6VertexES2_SaIS1_EET0_T_S5_S4_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt34__uninitialized_move_if_noexcept_aIPN2sf6VertexES2_SaIS1_EET0_T_S5_S4_RT1_
_ZSt34__uninitialized_move_if_noexcept_aIPN2sf6VertexES2_SaIS1_EET0_T_S5_S4_RT1_:
.LFB4917:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt32__make_move_if_noexcept_iteratorIN2sf6VertexESt13move_iteratorIPS1_EET0_PT_
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZSt32__make_move_if_noexcept_iteratorIN2sf6VertexESt13move_iteratorIPS1_EET0_PT_
	movq	%rax, %rcx
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %r9
	movq	%rax, %r8
	movq	%rbx, %rdx
	call	_ZSt22__uninitialized_copy_aISt13move_iteratorIPN2sf6VertexEES3_S2_ET0_T_S6_S5_RSaIT1_E
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIN2sf6VertexEEE7destroyIS1_EEvRS2_PT_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIN2sf6VertexEEE7destroyIS1_EEvRS2_PT_
	.def	_ZNSt16allocator_traitsISaIN2sf6VertexEEE7destroyIS1_EEvRS2_PT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIN2sf6VertexEEE7destroyIS1_EEvRS2_PT_
_ZNSt16allocator_traitsISaIN2sf6VertexEEE7destroyIS1_EEvRS2_PT_:
.LFB4918:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE7destroyIS2_EEvPT_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC1Ev
	.def	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC1Ev
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC1Ev:
.LFB4921:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaIN2sf6VertexEEC2Ev
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EE3getEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EE3getEv
	.def	_ZNKSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EE3getEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EE3getEv
_ZNKSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EE3getEv:
.LFB4922:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE9constructIS2_JNS1_7Vector2IfEERKNS1_5ColorEEEEvPT_DpOT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE9constructIS2_JNS1_7Vector2IfEERKNS1_5ColorEEEEvPT_DpOT0_
	.def	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE9constructIS2_JNS1_7Vector2IfEERKNS1_5ColorEEEEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE9constructIS2_JNS1_7Vector2IfEERKNS1_5ColorEEEEvPT_DpOT0_
_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE9constructIS2_JNS1_7Vector2IfEERKNS1_5ColorEEEEvPT_DpOT0_:
.LFB4923:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 48(%rbp)
	movq	%rdx, 56(%rbp)
	movq	%r8, 64(%rbp)
	movq	%r9, 72(%rbp)
	movq	64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIN2sf7Vector2IfEEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdi
	movq	72(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRKN2sf5ColorEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	%rax, %r12
	movq	56(%rbp), %rbx
	movq	%rbx, %rdx
	movl	$20, %ecx
	call	_ZnwyPv
	movq	%rax, %rsi
	movq	%r12, %r8
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	movq	__imp__ZN2sf6VertexC1ERKNS_7Vector2IfEERKNS_5ColorE(%rip), %rax
.LEHB99:
	call	*%rax
.LEHE99:
	jmp	.L705
.L704:
	movq	%rax, %rdi
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZdlPvS_
	movq	%rdi, %rax
	movq	%rax, %rcx
.LEHB100:
	call	_Unwind_Resume
	nop
.LEHE100:
.L705:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4923:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4923-.LLSDACSB4923
.LLSDACSB4923:
	.uleb128 .LEHB99-.LFB4923
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L704-.LFB4923
	.uleb128 0
	.uleb128 .LEHB100-.LFB4923
	.uleb128 .LEHE100-.LEHB100
	.uleb128 0
	.uleb128 0
.LLSDACSE4923:
	.section	.text$_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE9constructIS2_JNS1_7Vector2IfEERKNS1_5ColorEEEEvPT_DpOT0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIP4CellSaIS1_EE12_Vector_implC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIP4CellSaIS1_EE12_Vector_implC1Ev
	.def	_ZNSt12_Vector_baseIP4CellSaIS1_EE12_Vector_implC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIP4CellSaIS1_EE12_Vector_implC1Ev
_ZNSt12_Vector_baseIP4CellSaIS1_EE12_Vector_implC1Ev:
.LFB4926:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaIP4CellEC2Ev
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIP4CellED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIP4CellED2Ev
	.def	_ZNSaIP4CellED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIP4CellED2Ev
_ZNSaIP4CellED2Ev:
.LFB4928:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIP4CellED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPP4CellEvT_S3_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPP4CellEvT_S3_
	.def	_ZSt8_DestroyIPP4CellEvT_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPP4CellEvT_S3_
_ZSt8_DestroyIPP4CellEvT_S3_:
.LFB4930:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPP4CellEEvT_S5_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIP4CellEE8max_sizeERKS2_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIP4CellEE8max_sizeERKS2_
	.def	_ZNSt16allocator_traitsISaIP4CellEE8max_sizeERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIP4CellEE8max_sizeERKS2_
_ZNSt16allocator_traitsISaIP4CellEE8max_sizeERKS2_:
.LFB4931:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx13new_allocatorIP4CellE8max_sizeEv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt12_Vector_baseIP4CellSaIS1_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseIP4CellSaIS1_EE19_M_get_Tp_allocatorEv
	.def	_ZNKSt12_Vector_baseIP4CellSaIS1_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseIP4CellSaIS1_EE19_M_get_Tp_allocatorEv
_ZNKSt12_Vector_baseIP4CellSaIS1_EE19_M_get_Tp_allocatorEv:
.LFB4932:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt13move_iteratorIPP4CellEC1ES2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt13move_iteratorIPP4CellEC1ES2_
	.def	_ZNSt13move_iteratorIPP4CellEC1ES2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt13move_iteratorIPP4CellEC1ES2_
_ZNSt13move_iteratorIPP4CellEC1ES2_:
.LFB4935:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIP4CellSaIS1_EE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIP4CellSaIS1_EE11_M_allocateEy
	.def	_ZNSt12_Vector_baseIP4CellSaIS1_EE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIP4CellSaIS1_EE11_M_allocateEy
_ZNSt12_Vector_baseIP4CellSaIS1_EE11_M_allocateEy:
.LFB4936:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L715
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaIP4CellEE8allocateERS2_y
	jmp	.L717
.L715:
	movl	$0, %eax
.L717:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt22__uninitialized_copy_aISt13move_iteratorIPP4CellES3_S2_ET0_T_S6_S5_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt22__uninitialized_copy_aISt13move_iteratorIPP4CellES3_S2_ET0_T_S6_S5_RSaIT1_E
	.def	_ZSt22__uninitialized_copy_aISt13move_iteratorIPP4CellES3_S2_ET0_T_S6_S5_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__uninitialized_copy_aISt13move_iteratorIPP4CellES3_S2_ET0_T_S6_S5_RSaIT1_E
_ZSt22__uninitialized_copy_aISt13move_iteratorIPP4CellES3_S2_ET0_T_S6_S5_RSaIT1_E:
.LFB4937:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt18uninitialized_copyISt13move_iteratorIPP4CellES3_ET0_T_S6_S5_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIP4CellEE10deallocateERS2_PS1_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIP4CellEE10deallocateERS2_PS1_y
	.def	_ZNSt16allocator_traitsISaIP4CellEE10deallocateERS2_PS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIP4CellEE10deallocateERS2_PS1_y
_ZNSt16allocator_traitsISaIP4CellEE10deallocateERS2_PS1_y:
.LFB4938:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIP4CellE10deallocateEPS2_y
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt14__array_traitsISt5arrayIiLy2EELy4EE6_S_ptrERA4_KS1_,"x"
	.linkonce discard
	.globl	_ZNSt14__array_traitsISt5arrayIiLy2EELy4EE6_S_ptrERA4_KS1_
	.def	_ZNSt14__array_traitsISt5arrayIiLy2EELy4EE6_S_ptrERA4_KS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt14__array_traitsISt5arrayIiLy2EELy4EE6_S_ptrERA4_KS1_
_ZNSt14__array_traitsISt5arrayIiLy2EELy4EE6_S_ptrERA4_KS1_:
.LFB4939:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIP4CellEOT_RNSt16remove_referenceIS2_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIP4CellEOT_RNSt16remove_referenceIS2_E4typeE
	.def	_ZSt7forwardIP4CellEOT_RNSt16remove_referenceIS2_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIP4CellEOT_RNSt16remove_referenceIS2_E4typeE
_ZSt7forwardIP4CellEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB4940:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIP4CellEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIP4CellEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_
	.def	_ZNSt16allocator_traitsISaIP4CellEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIP4CellEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_
_ZNSt16allocator_traitsISaIP4CellEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_:
.LFB4941:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIP4CellEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIP4CellE9constructIS2_JS2_EEEvPT_DpOT0_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIP4CellSaIS1_EE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIP4CellSaIS1_EE3endEv
	.def	_ZNSt6vectorIP4CellSaIS1_EE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIP4CellSaIS1_EE3endEv
_ZNSt6vectorIP4CellSaIS1_EE3endEv:
.LFB4942:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPP4CellSt6vectorIS2_SaIS2_EEEC1ERKS3_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIP4CellSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIP4CellSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.def	_ZNSt6vectorIP4CellSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIP4CellSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
_ZNSt6vectorIP4CellSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB4943:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 0(%rbp)
	movq	%rdx, 8(%rbp)
	movq	%r8, 16(%rbp)
	leaq	.LC14(%rip), %r8
	movl	$1, %edx
	movq	0(%rbp), %rcx
.LEHB101:
	call	_ZNKSt6vectorIP4CellSaIS1_EE12_M_check_lenEyPKc
	movq	%rax, -48(%rbp)
	movq	0(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	0(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	0(%rbp), %rcx
	call	_ZNSt6vectorIP4CellSaIS1_EE5beginEv
	movq	%rax, -88(%rbp)
	leaq	-88(%rbp), %rdx
	leaq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxmiIPP4CellSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	movq	%rax, -72(%rbp)
	movq	0(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIP4CellSaIS1_EE11_M_allocateEy
.LEHE101:
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIP4CellEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	0(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaIP4CellEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_
	movq	$0, -40(%rbp)
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIP4CellSaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPP4CellSt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rdx
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rbx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB102:
	call	_ZSt34__uninitialized_move_if_noexcept_aIPP4CellS2_SaIS1_EET0_T_S5_S4_RT1_
	movq	%rax, -40(%rbp)
	addq	$8, -40(%rbp)
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIP4CellSaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPP4CellSt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	%rbx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt34__uninitialized_move_if_noexcept_aIPP4CellS2_SaIS1_EET0_T_S5_S4_RT1_
.LEHE102:
	movq	%rax, -40(%rbp)
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIP4CellSaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB103:
	call	_ZSt8_DestroyIPP4CellS1_EvT_S3_RSaIT0_E
	movq	0(%rbp), %rax
	movq	0(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	-56(%rbp), %rdx
	sarq	$3, %rdx
	movq	%rdx, %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIP4CellSaIS1_EE13_M_deallocateEPS1_y
.LEHE103:
	movq	0(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	0(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	0(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L735
.L733:
	movq	%rax, %rcx
	call	__cxa_begin_catch
	cmpq	$0, -40(%rbp)
	jne	.L730
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	0(%rbp), %rax
	movq	%rax, %rcx
.LEHB104:
	call	_ZNSt16allocator_traitsISaIP4CellEE7destroyIS1_EEvRS2_PT_
	jmp	.L731
.L730:
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIP4CellSaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPP4CellS1_EvT_S3_RSaIT0_E
.L731:
	movq	0(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIP4CellSaIS1_EE13_M_deallocateEPS1_y
	call	__cxa_rethrow
.LEHE104:
.L734:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB105:
	call	_Unwind_Resume
	nop
.LEHE105:
.L735:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA4943:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT4943-.LLSDATTD4943
.LLSDATTD4943:
	.byte	0x1
	.uleb128 .LLSDACSE4943-.LLSDACSB4943
.LLSDACSB4943:
	.uleb128 .LEHB101-.LFB4943
	.uleb128 .LEHE101-.LEHB101
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB102-.LFB4943
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L733-.LFB4943
	.uleb128 0x1
	.uleb128 .LEHB103-.LFB4943
	.uleb128 .LEHE103-.LEHB103
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB104-.LFB4943
	.uleb128 .LEHE104-.LEHB104
	.uleb128 .L734-.LFB4943
	.uleb128 0
	.uleb128 .LEHB105-.LFB4943
	.uleb128 .LEHE105-.LEHB105
	.uleb128 0
	.uleb128 0
.LLSDACSE4943:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT4943:
	.section	.text$_ZNSt6vectorIP4CellSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaISt6vectorI4CellSaIS1_EEEE37select_on_container_copy_constructionERKS4_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaISt6vectorI4CellSaIS1_EEEE37select_on_container_copy_constructionERKS4_
	.def	_ZNSt16allocator_traitsISaISt6vectorI4CellSaIS1_EEEE37select_on_container_copy_constructionERKS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaISt6vectorI4CellSaIS1_EEEE37select_on_container_copy_constructionERKS4_
_ZNSt16allocator_traitsISaISt6vectorI4CellSaIS1_EEEE37select_on_container_copy_constructionERKS4_:
.LFB4949:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSaISt6vectorI4CellSaIS0_EEEC1ERKS3_
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaISt6vectorI4CellSaIS0_EEEC2ERKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaISt6vectorI4CellSaIS0_EEEC2ERKS3_
	.def	_ZNSaISt6vectorI4CellSaIS0_EEEC2ERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaISt6vectorI4CellSaIS0_EEEC2ERKS3_
_ZNSaISt6vectorI4CellSaIS0_EEEC2ERKS3_:
.LFB4951:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEEC2ERKS5_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaISt6vectorI4CellSaIS0_EEEC1ERKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaISt6vectorI4CellSaIS0_EEEC1ERKS3_
	.def	_ZNSaISt6vectorI4CellSaIS0_EEEC1ERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaISt6vectorI4CellSaIS0_EEEC1ERKS3_
_ZNSaISt6vectorI4CellSaIS0_EEEC1ERKS3_:
.LFB4952:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEEC2ERKS5_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE12_Vector_implC1ERKS4_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE12_Vector_implC1ERKS4_
	.def	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE12_Vector_implC1ERKS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE12_Vector_implC1ERKS4_
_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE12_Vector_implC1ERKS4_:
.LFB4955:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSaISt6vectorI4CellSaIS0_EEEC2ERKS3_
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE17_M_create_storageEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE17_M_create_storageEy
	.def	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE17_M_create_storageEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE17_M_create_storageEy
_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE17_M_create_storageEy:
.LFB4956:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE11_M_allocateEy
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE13_M_deallocateEPS3_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE13_M_deallocateEPS3_y
	.def	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE13_M_deallocateEPS3_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE13_M_deallocateEPS3_y
_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE13_M_deallocateEPS3_y:
.LFB4957:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L744
	movq	16(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaISt6vectorI4CellSaIS1_EEEE10deallocateERS4_PS3_y
.L744:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEC1ERKS6_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEC1ERKS6_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEC1ERKS6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEC1ERKS6_
_ZN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEC1ERKS6_:
.LFB4960:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS3_EES2_IS5_SaIS5_EEEEPS5_ET0_T_SD_SC_,"x"
	.linkonce discard
	.globl	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS3_EES2_IS5_SaIS5_EEEEPS5_ET0_T_SD_SC_
	.def	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS3_EES2_IS5_SaIS5_EEEEPS5_ET0_T_SD_SC_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS3_EES2_IS5_SaIS5_EEEEPS5_ET0_T_SD_SC_
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS3_EES2_IS5_SaIS5_EEEEPS5_ET0_T_SD_SC_:
.LFB4961:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS5_EES4_IS7_SaIS7_EEEEPS7_EET0_T_SF_SE_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPSt6vectorI4CellSaIS1_EEEvT_S5_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPSt6vectorI4CellSaIS1_EEEvT_S5_
	.def	_ZSt8_DestroyIPSt6vectorI4CellSaIS1_EEEvT_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPSt6vectorI4CellSaIS1_EEEvT_S5_
_ZSt8_DestroyIPSt6vectorI4CellSaIS1_EEEvT_S5_:
.LFB4962:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorI4CellSaIS3_EEEEvT_S7_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_implC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_implC1Ev
	.def	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_implC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_implC1Ev
_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_implC1Ev:
.LFB4965:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaISt10shared_ptrI4EdgeEEC2Ev
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE13_M_deallocateEPS2_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE13_M_deallocateEPS2_y
	.def	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE13_M_deallocateEPS2_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE13_M_deallocateEPS2_y
_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE13_M_deallocateEPS2_y:
.LFB4966:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L752
	movq	16(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE10deallocateERS3_PS2_y
.L752:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPSt10shared_ptrI4EdgeEEvT_S4_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPSt10shared_ptrI4EdgeEEvT_S4_
	.def	_ZSt8_DestroyIPSt10shared_ptrI4EdgeEEvT_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPSt10shared_ptrI4EdgeEEvT_S4_
_ZSt8_DestroyIPSt10shared_ptrI4EdgeEEvT_S4_:
.LFB4967:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt10shared_ptrI4EdgeEEEvT_S6_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI4EdgeEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI4EdgeEC2Ev
	.def	_ZN9__gnu_cxx13new_allocatorI4EdgeEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI4EdgeEC2Ev
_ZN9__gnu_cxx13new_allocatorI4EdgeEC2Ev:
.LFB4969:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI4EdgeED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI4EdgeED2Ev
	.def	_ZN9__gnu_cxx13new_allocatorI4EdgeED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI4EdgeED2Ev
_ZN9__gnu_cxx13new_allocatorI4EdgeED2Ev:
.LFB4972:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt10shared_ptrI4EdgeEC1ISaIS0_EJiiiiEEESt19_Sp_make_shared_tagRKT_DpOT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt10shared_ptrI4EdgeEC1ISaIS0_EJiiiiEEESt19_Sp_make_shared_tagRKT_DpOT0_
	.def	_ZNSt10shared_ptrI4EdgeEC1ISaIS0_EJiiiiEEESt19_Sp_make_shared_tagRKT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt10shared_ptrI4EdgeEC1ISaIS0_EJiiiiEEESt19_Sp_make_shared_tagRKT_DpOT0_
_ZNSt10shared_ptrI4EdgeEC1ISaIS0_EJiiiiEEESt19_Sp_make_shared_tagRKT_DpOT0_:
.LFB4976:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 0(%rbp)
	movb	%dl, 8(%rbp)
	movq	%r8, 8(%rbp)
	movq	%r9, 16(%rbp)
	movq	0(%rbp), %rbx
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %r12
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdi
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rsi
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdx
	movq	8(%rbp), %rax
	movq	%r12, 48(%rsp)
	movq	%rdi, 40(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rdx, %r9
	movq	%rax, %r8
	movl	%r13d, %edx
	movq	%rbx, %rcx
	call	_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJiiiiEEESt19_Sp_make_shared_tagRKT_DpOT0_
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_
	.def	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_:
.LFB4977:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE9constructIS3_JS3_EEEvPT_DpOT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE9constructIS3_JS3_EEEvPT_DpOT0_
	.def	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE9constructIS3_JS3_EEEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE9constructIS3_JS3_EEEvPT_DpOT0_
_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE9constructIS3_JS3_EEEvPT_DpOT0_:
.LFB4978:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardISt10shared_ptrI4EdgeEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movl	$16, %ecx
	call	_ZnwyPv
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZNSt10shared_ptrI4EdgeEC1EOS1_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE12_M_check_lenEyPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE12_M_check_lenEyPKc
	.def	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE12_M_check_lenEyPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE12_M_check_lenEyPKc
_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE12_M_check_lenEyPKc:
.LFB4979:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%r8, -32(%rbp)
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE8max_sizeEv
	movq	%rax, %rbx
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-40(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L760
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt20__throw_length_errorPKc
.L760:
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE4sizeEv
	movq	%rax, %rbx
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE4sizeEv
	movq	%rax, -96(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3maxIyERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE4sizeEv
	cmpq	%rax, -88(%rbp)
	jb	.L761
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE8max_sizeEv
	cmpq	%rax, -88(%rbp)
	jbe	.L762
.L761:
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE8max_sizeEv
	jmp	.L763
.L762:
	movq	-88(%rbp), %rax
.L763:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxmiIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxmiIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
	.def	_ZN9__gnu_cxxmiIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxmiIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
_ZN9__gnu_cxxmiIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_:
.LFB4980:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEE4baseEv
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEE4baseEv
	movq	(%rax), %rax
	subq	%rax, %rbx
	movq	%rbx, %rax
	sarq	$4, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE11_M_allocateEy
	.def	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE11_M_allocateEy
_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE11_M_allocateEy:
.LFB4981:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L768
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE8allocateERS3_y
	jmp	.L770
.L768:
	movl	$0, %eax
.L770:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrI4EdgeES3_SaIS2_EET0_T_S6_S5_RT1_,"x"
	.linkonce discard
	.globl	_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrI4EdgeES3_SaIS2_EET0_T_S6_S5_RT1_
	.def	_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrI4EdgeES3_SaIS2_EET0_T_S6_S5_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrI4EdgeES3_SaIS2_EET0_T_S6_S5_RT1_
_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrI4EdgeES3_SaIS2_EET0_T_S6_S5_RT1_:
.LFB4982:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt32__make_move_if_noexcept_iteratorISt10shared_ptrI4EdgeESt13move_iteratorIPS2_EET0_PT_
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZSt32__make_move_if_noexcept_iteratorISt10shared_ptrI4EdgeESt13move_iteratorIPS2_EET0_PT_
	movq	%rax, %rcx
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %r9
	movq	%rax, %r8
	movq	%rbx, %rdx
	call	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt10shared_ptrI4EdgeEES4_S3_ET0_T_S7_S6_RSaIT1_E
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE7destroyIS2_EEvRS3_PT_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE7destroyIS2_EEvRS3_PT_
	.def	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE7destroyIS2_EEvRS3_PT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE7destroyIS2_EEvRS3_PT_
_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE7destroyIS2_EEvRS3_PT_:
.LFB4983:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE7destroyIS3_EEvPT_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE37select_on_container_copy_constructionERKS3_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE37select_on_container_copy_constructionERKS3_
	.def	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE37select_on_container_copy_constructionERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE37select_on_container_copy_constructionERKS3_
_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE37select_on_container_copy_constructionERKS3_:
.LFB4984:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSaISt10shared_ptrI4EdgeEEC1ERKS2_
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaISt10shared_ptrI4EdgeEEC2ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaISt10shared_ptrI4EdgeEEC2ERKS2_
	.def	_ZNSaISt10shared_ptrI4EdgeEEC2ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaISt10shared_ptrI4EdgeEEC2ERKS2_
_ZNSaISt10shared_ptrI4EdgeEEC2ERKS2_:
.LFB4986:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEEC2ERKS4_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaISt10shared_ptrI4EdgeEEC1ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaISt10shared_ptrI4EdgeEEC1ERKS2_
	.def	_ZNSaISt10shared_ptrI4EdgeEEC1ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaISt10shared_ptrI4EdgeEEC1ERKS2_
_ZNSaISt10shared_ptrI4EdgeEEC1ERKS2_:
.LFB4987:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEEC2ERKS4_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEED2Ev
	.def	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEED2Ev
_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEED2Ev:
.LFB4989:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_implC1ERKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_implC1ERKS3_
	.def	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_implC1ERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_implC1ERKS3_
_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_implC1ERKS3_:
.LFB4993:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSaISt10shared_ptrI4EdgeEEC2ERKS2_
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE17_M_create_storageEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE17_M_create_storageEy
	.def	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE17_M_create_storageEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE17_M_create_storageEy
_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE17_M_create_storageEy:
.LFB4994:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE11_M_allocateEy
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	salq	$4, %rax
	addq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_,"x"
	.linkonce discard
	.globl	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_
	.def	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_:
.LFB4995:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIRZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES4_E_EONSt16remove_referenceIT_E4typeEOS8_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES4_E_EONSt16remove_referenceIT_E4typeEOS8_
	.def	_ZSt4moveIRZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES4_E_EONSt16remove_referenceIT_E4typeEOS8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES4_E_EONSt16remove_referenceIT_E4typeEOS8_
_ZSt4moveIRZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES4_E_EONSt16remove_referenceIT_E4typeEOS8_:
.LFB4996:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EC1ES7_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EC1ES7_
	.def	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EC1ES7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EC1ES7_
_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EC1ES7_:
.LFB4999:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movb	%dl, 24(%rbp)
	leaq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES4_E_EONSt16remove_referenceIT_E4typeEOS8_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxneIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxneIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.def	_ZN9__gnu_cxxneIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxneIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
_ZN9__gnu_cxxneIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_:
.LFB5000:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setne	%al
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxmiIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxmiIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.def	_ZN9__gnu_cxxmiIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxmiIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
_ZN9__gnu_cxxmiIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_:
.LFB5001:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	subq	%rax, %rbx
	movq	%rbx, %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movabsq	$-6148914691236517205, %rax
	imulq	%rdx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEExNS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_T1_,"x"
	.linkonce discard
	.globl	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEExNS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_T1_
	.def	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEExNS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_T1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEExNS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_T1_
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEExNS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_T1_:
.LFB5002:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movb	%r9b, 40(%rbp)
.L793:
	leaq	24(%rbp), %rax
	leaq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxmiIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	cmpq	$16, %rax
	setg	%al
	testb	%al, %al
	je	.L790
	cmpq	$0, 32(%rbp)
	jne	.L792
	movzbl	40(%rbp), %ecx
	movq	24(%rbp), %rdx
	movq	24(%rbp), %rax
	movl	%ecx, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_T0_
	jmp	.L790
.L792:
	subq	$1, 32(%rbp)
	movzbl	40(%rbp), %edx
	movq	24(%rbp), %rax
	movl	%edx, %r8d
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEET_SG_SG_T0_
	movq	%rax, -8(%rbp)
	movzbl	40(%rbp), %r8d
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEExNS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_T1_
	movq	-8(%rbp), %rax
	movq	%rax, 24(%rbp)
	jmp	.L793
.L790:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_,"x"
	.linkonce discard
	.globl	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_
	.def	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_
_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_:
.LFB5003:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movb	%r8b, 32(%rbp)
	leaq	24(%rbp), %rax
	leaq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxmiIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	cmpq	$16, %rax
	setg	%al
	testb	%al, %al
	je	.L795
	movl	$16, %edx
	leaq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEplEx
	movq	%rax, %rdx
	movzbl	32(%rbp), %eax
	movl	%eax, %r8d
	movq	16(%rbp), %rcx
	call	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_
	movl	$16, %edx
	leaq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEplEx
	movq	%rax, %rcx
	movzbl	32(%rbp), %edx
	movq	24(%rbp), %rax
	movl	%edx, %r8d
	movq	%rax, %rdx
	call	_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_
	jmp	.L797
.L795:
	movzbl	32(%rbp), %edx
	movq	24(%rbp), %rax
	movl	%edx, %r8d
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_
.L797:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIRZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES4_E_EONSt16remove_referenceIT_E4typeEOS8_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES4_E_EONSt16remove_referenceIT_E4typeEOS8_
	.def	_ZSt4moveIRZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES4_E_EONSt16remove_referenceIT_E4typeEOS8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES4_E_EONSt16remove_referenceIT_E4typeEOS8_
_ZSt4moveIRZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES4_E_EONSt16remove_referenceIT_E4typeEOS8_:
.LFB5004:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES6_E_EC1ES7_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES6_E_EC1ES7_
	.def	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES6_E_EC1ES7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES6_E_EC1ES7_
_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES6_E_EC1ES7_:
.LFB5007:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movb	%dl, 24(%rbp)
	leaq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES4_E_EONSt16remove_referenceIT_E4typeEOS8_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKS3_SD_E_EEET_SG_SG_T0_,"x"
	.linkonce discard
	.globl	_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKS3_SD_E_EEET_SG_SG_T0_
	.def	_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKS3_SD_E_EEET_SG_SG_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKS3_SD_E_EEET_SG_SG_T0_
_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKS3_SD_E_EEET_SG_SG_T0_:
.LFB5008:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movb	%r8b, 32(%rbp)
	leaq	24(%rbp), %rax
	movq	%rax, %rdx
	leaq	16(%rbp), %rcx
	call	_ZN9__gnu_cxxeqIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	testb	%al, %al
	je	.L802
	movq	24(%rbp), %rax
	jmp	.L807
.L802:
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L806:
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEppEv
	movq	%rax, %rcx
	leaq	24(%rbp), %rax
	movq	%rax, %rdx
	call	_ZN9__gnu_cxxneIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	testb	%al, %al
	je	.L804
	movq	-8(%rbp), %rdx
	leaq	32(%rbp), %rax
	movq	%rdx, %r8
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESF_EEbT_T0_
	testb	%al, %al
	je	.L805
	movq	16(%rbp), %rax
	jmp	.L807
.L805:
	movq	-8(%rbp), %rax
	movq	%rax, 16(%rbp)
	jmp	.L806
.L804:
	movq	24(%rbp), %rax
.L807:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxeqIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxeqIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.def	_ZN9__gnu_cxxeqIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxeqIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
_ZN9__gnu_cxxeqIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_:
.LFB5009:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	sete	%al
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEppEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEppEv
	.def	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEppEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEppEv
_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEppEv:
.LFB5010:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	leaq	12(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESF_EEbT_T0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESF_EEbT_T0_
	.def	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESF_EEbT_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESF_EEbT_T0_
_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration16filter_triangelsEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESF_EEbT_T0_:
.LFB5011:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	32(%rbp), %rbx
	leaq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rsi
	leaq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rsi, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZZN19TrianglesGeneration16filter_triangelsEvENKUlRKSt5arrayIfLy3EES3_E_clES3_S3_
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv:
.LFB5012:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE8max_sizeEv
	.def	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE8max_sizeEv
_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE8max_sizeEv:
.LFB5013:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE8max_sizeERKS2_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt27__uninitialized_default_n_aIPSt5arrayIfLy3EEyS1_ET_S3_T0_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt27__uninitialized_default_n_aIPSt5arrayIfLy3EEyS1_ET_S3_T0_RSaIT1_E
	.def	_ZSt27__uninitialized_default_n_aIPSt5arrayIfLy3EEyS1_ET_S3_T0_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt27__uninitialized_default_n_aIPSt5arrayIfLy3EEyS1_ET_S3_T0_RSaIT1_E
_ZSt27__uninitialized_default_n_aIPSt5arrayIfLy3EEyS1_ET_S3_T0_RSaIT1_E:
.LFB5014:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt25__uninitialized_default_nIPSt5arrayIfLy3EEyET_S3_T0_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE12_M_check_lenEyPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE12_M_check_lenEyPKc
	.def	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE12_M_check_lenEyPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE12_M_check_lenEyPKc
_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE12_M_check_lenEyPKc:
.LFB5015:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%r8, -32(%rbp)
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE8max_sizeEv
	movq	%rax, %rbx
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-40(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L821
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt20__throw_length_errorPKc
.L821:
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE4sizeEv
	movq	%rax, %rbx
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE4sizeEv
	movq	%rax, -96(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3maxIyERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE4sizeEv
	cmpq	%rax, -88(%rbp)
	jb	.L822
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE8max_sizeEv
	cmpq	%rax, -88(%rbp)
	jbe	.L823
.L822:
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE8max_sizeEv
	jmp	.L824
.L823:
	movq	-88(%rbp), %rax
.L824:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE11_M_allocateEy
	.def	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE11_M_allocateEy
_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE11_M_allocateEy:
.LFB5016:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L827
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE8allocateERS2_y
	jmp	.L829
.L827:
	movl	$0, %eax
.L829:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt34__uninitialized_move_if_noexcept_aIPSt5arrayIfLy3EES2_SaIS1_EET0_T_S5_S4_RT1_,"x"
	.linkonce discard
	.globl	_ZSt34__uninitialized_move_if_noexcept_aIPSt5arrayIfLy3EES2_SaIS1_EET0_T_S5_S4_RT1_
	.def	_ZSt34__uninitialized_move_if_noexcept_aIPSt5arrayIfLy3EES2_SaIS1_EET0_T_S5_S4_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt34__uninitialized_move_if_noexcept_aIPSt5arrayIfLy3EES2_SaIS1_EET0_T_S5_S4_RT1_
_ZSt34__uninitialized_move_if_noexcept_aIPSt5arrayIfLy3EES2_SaIS1_EET0_T_S5_S4_RT1_:
.LFB5017:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt32__make_move_if_noexcept_iteratorISt5arrayIfLy3EESt13move_iteratorIPS1_EET0_PT_
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZSt32__make_move_if_noexcept_iteratorISt5arrayIfLy3EESt13move_iteratorIPS1_EET0_PT_
	movq	%rax, %rcx
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %r9
	movq	%rax, %r8
	movq	%rbx, %rdx
	call	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt5arrayIfLy3EEES3_S2_ET0_T_S6_S5_RSaIT1_E
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE13_M_deallocateEPS1_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE13_M_deallocateEPS1_y
	.def	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE13_M_deallocateEPS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE13_M_deallocateEPS1_y
_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE13_M_deallocateEPS1_y:
.LFB5018:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L834
	movq	16(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE10deallocateERS2_PS1_y
.L834:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_implC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_implC1Ev
	.def	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_implC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_implC1Ev
_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_implC1Ev:
.LFB5021:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaISt5arrayIfLy3EEEC2Ev
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPSt5arrayIfLy3EEEvT_S3_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPSt5arrayIfLy3EEEvT_S3_
	.def	_ZSt8_DestroyIPSt5arrayIfLy3EEEvT_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPSt5arrayIfLy3EEEvT_S3_
_ZSt8_DestroyIPSt5arrayIfLy3EEEvT_S3_:
.LFB5022:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt5arrayIfLy3EEEEvT_S5_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardISt5arrayIfLy3EEEOT_RNSt16remove_referenceIS2_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardISt5arrayIfLy3EEEOT_RNSt16remove_referenceIS2_E4typeE
	.def	_ZSt7forwardISt5arrayIfLy3EEEOT_RNSt16remove_referenceIS2_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardISt5arrayIfLy3EEEOT_RNSt16remove_referenceIS2_E4typeE
_ZSt7forwardISt5arrayIfLy3EEEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB5023:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_
	.def	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_
_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_:
.LFB5024:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardISt5arrayIfLy3EEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE9constructIS2_JS2_EEEvPT_DpOT0_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.def	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB5025:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 0(%rbp)
	movq	%rdx, 8(%rbp)
	movq	%r8, 16(%rbp)
	leaq	.LC14(%rip), %r8
	movl	$1, %edx
	movq	0(%rbp), %rcx
.LEHB106:
	call	_ZNKSt6vectorISt5arrayIfLy3EESaIS1_EE12_M_check_lenEyPKc
	movq	%rax, -48(%rbp)
	movq	0(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	0(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	0(%rbp), %rcx
	call	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE5beginEv
	movq	%rax, -88(%rbp)
	leaq	-88(%rbp), %rdx
	leaq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxmiIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	movq	%rax, -72(%rbp)
	movq	0(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE11_M_allocateEy
.LEHE106:
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardISt5arrayIfLy3EEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rcx
	movq	-72(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	0(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_
	movq	$0, -40(%rbp)
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rdx
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rbx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB107:
	call	_ZSt34__uninitialized_move_if_noexcept_aIPSt5arrayIfLy3EES2_SaIS1_EET0_T_S5_S4_RT1_
	movq	%rax, -40(%rbp)
	addq	$12, -40(%rbp)
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	%rbx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt34__uninitialized_move_if_noexcept_aIPSt5arrayIfLy3EES2_SaIS1_EET0_T_S5_S4_RT1_
.LEHE107:
	movq	%rax, -40(%rbp)
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB108:
	call	_ZSt8_DestroyIPSt5arrayIfLy3EES1_EvT_S3_RSaIT0_E
	movq	0(%rbp), %rax
	movq	0(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	-56(%rbp), %rdx
	movq	%rdx, %rcx
	sarq	$2, %rcx
	movabsq	$-6148914691236517205, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE13_M_deallocateEPS1_y
.LEHE108:
	movq	0(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	0(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	0(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L847
.L845:
	movq	%rax, %rcx
	call	__cxa_begin_catch
	cmpq	$0, -40(%rbp)
	jne	.L842
	movq	-72(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	0(%rbp), %rax
	movq	%rax, %rcx
.LEHB109:
	call	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE7destroyIS1_EEvRS2_PT_
	jmp	.L843
.L842:
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPSt5arrayIfLy3EES1_EvT_S3_RSaIT0_E
.L843:
	movq	0(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE13_M_deallocateEPS1_y
	call	__cxa_rethrow
.LEHE109:
.L846:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB110:
	call	_Unwind_Resume
	nop
.LEHE110:
.L847:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA5025:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT5025-.LLSDATTD5025
.LLSDATTD5025:
	.byte	0x1
	.uleb128 .LLSDACSE5025-.LLSDACSB5025
.LLSDACSB5025:
	.uleb128 .LEHB106-.LFB5025
	.uleb128 .LEHE106-.LEHB106
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB107-.LFB5025
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L845-.LFB5025
	.uleb128 0x1
	.uleb128 .LEHB108-.LFB5025
	.uleb128 .LEHE108-.LEHB108
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB109-.LFB5025
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L846-.LFB5025
	.uleb128 0
	.uleb128 .LEHB110-.LFB5025
	.uleb128 .LEHE110-.LEHB110
	.uleb128 0
	.uleb128 0
.LLSDACSE5025:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT5025:
	.section	.text$_ZNSt6vectorISt5arrayIfLy3EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE37select_on_container_copy_constructionERKS2_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE37select_on_container_copy_constructionERKS2_
	.def	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE37select_on_container_copy_constructionERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE37select_on_container_copy_constructionERKS2_
_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE37select_on_container_copy_constructionERKS2_:
.LFB5026:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSaISt5arrayIfLy3EEEC1ERKS1_
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaISt5arrayIfLy3EEEC2ERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaISt5arrayIfLy3EEEC2ERKS1_
	.def	_ZNSaISt5arrayIfLy3EEEC2ERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaISt5arrayIfLy3EEEC2ERKS1_
_ZNSaISt5arrayIfLy3EEEC2ERKS1_:
.LFB5028:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEEC2ERKS3_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaISt5arrayIfLy3EEEC1ERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaISt5arrayIfLy3EEEC1ERKS1_
	.def	_ZNSaISt5arrayIfLy3EEEC1ERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaISt5arrayIfLy3EEEC1ERKS1_
_ZNSaISt5arrayIfLy3EEEC1ERKS1_:
.LFB5029:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEEC2ERKS3_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEED2Ev
	.def	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEED2Ev
_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEED2Ev:
.LFB5031:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_implC1ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_implC1ERKS2_
	.def	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_implC1ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_implC1ERKS2_
_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_implC1ERKS2_:
.LFB5035:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSaISt5arrayIfLy3EEEC2ERKS1_
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE17_M_create_storageEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE17_M_create_storageEy
	.def	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE17_M_create_storageEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE17_M_create_storageEy
_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE17_M_create_storageEy:
.LFB5036:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE11_M_allocateEy
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_,"x"
	.linkonce discard
	.globl	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_
	.def	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_:
.LFB5037:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE13get_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE13get_allocatorEv
	.def	_ZNKSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE13get_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE13get_allocatorEv
_ZNKSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE13get_allocatorEv:
.LFB5038:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSaISt10shared_ptrI4EdgeEEC1ERKS2_
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEC1ERKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEC1ERKS3_
	.def	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEC1ERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEC1ERKS3_
_ZNSt6vectorISt10shared_ptrI4EdgeESaIS2_EEC1ERKS3_:
.LFB5041:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EEC2ERKS3_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_impl12_M_swap_dataERS5_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_impl12_M_swap_dataERS5_
	.def	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_impl12_M_swap_dataERS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_impl12_M_swap_dataERS5_
_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_impl12_M_swap_dataERS5_:
.LFB5042:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4swapIPSt10shared_ptrI4EdgeEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS8_ESt18is_move_assignableIS8_EEE5valueEvE4typeERS8_SI_
	movq	24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	call	_ZSt4swapIPSt10shared_ptrI4EdgeEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS8_ESt18is_move_assignableIS8_EEE5valueEvE4typeERS8_SI_
	movq	24(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZSt4swapIPSt10shared_ptrI4EdgeEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS8_ESt18is_move_assignableIS8_EEE5valueEvE4typeERS8_SI_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt15__alloc_on_moveISaISt10shared_ptrI4EdgeEEEvRT_S5_,"x"
	.linkonce discard
	.globl	_ZSt15__alloc_on_moveISaISt10shared_ptrI4EdgeEEEvRT_S5_
	.def	_ZSt15__alloc_on_moveISaISt10shared_ptrI4EdgeEEEvRT_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt15__alloc_on_moveISaISt10shared_ptrI4EdgeEEEvRT_S5_
_ZSt15__alloc_on_moveISaISt10shared_ptrI4EdgeEEEvRT_S5_:
.LFB5043:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt18__do_alloc_on_moveISaISt10shared_ptrI4EdgeEEEvRT_S5_St17integral_constantIbLb1EE
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE13get_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE13get_allocatorEv
	.def	_ZNKSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE13get_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE13get_allocatorEv
_ZNKSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE13get_allocatorEv:
.LFB5044:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSaISt5arrayIfLy3EEEC1ERKS1_
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEC1ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEC1ERKS2_
	.def	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEC1ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEC1ERKS2_
_ZNSt6vectorISt5arrayIfLy3EESaIS1_EEC1ERKS2_:
.LFB5047:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EEC2ERKS2_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_impl12_M_swap_dataERS4_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_impl12_M_swap_dataERS4_
	.def	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_impl12_M_swap_dataERS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_impl12_M_swap_dataERS4_
_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_impl12_M_swap_dataERS4_:
.LFB5048:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4swapIPSt5arrayIfLy3EEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SH_
	movq	24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	call	_ZSt4swapIPSt5arrayIfLy3EEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SH_
	movq	24(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZSt4swapIPSt5arrayIfLy3EEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SH_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt15__alloc_on_moveISaISt5arrayIfLy3EEEEvRT_S4_,"x"
	.linkonce discard
	.globl	_ZSt15__alloc_on_moveISaISt5arrayIfLy3EEEEvRT_S4_
	.def	_ZSt15__alloc_on_moveISaISt5arrayIfLy3EEEEvRT_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt15__alloc_on_moveISaISt5arrayIfLy3EEEEvRT_S4_
_ZSt15__alloc_on_moveISaISt5arrayIfLy3EEEEvRT_S4_:
.LFB5049:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt18__do_alloc_on_moveISaISt5arrayIfLy3EEEEvRT_S4_St17integral_constantIbLb1EE
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4CellSaIS0_EE12_Vector_implC1ERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4CellSaIS0_EE12_Vector_implC1ERKS1_
	.def	_ZNSt12_Vector_baseI4CellSaIS0_EE12_Vector_implC1ERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4CellSaIS0_EE12_Vector_implC1ERKS1_
_ZNSt12_Vector_baseI4CellSaIS0_EE12_Vector_implC1ERKS1_:
.LFB5052:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSaI4CellEC2ERKS0_
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4CellSaIS0_EE17_M_create_storageEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4CellSaIS0_EE17_M_create_storageEy
	.def	_ZNSt12_Vector_baseI4CellSaIS0_EE17_M_create_storageEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4CellSaIS0_EE17_M_create_storageEy
_ZNSt12_Vector_baseI4CellSaIS0_EE17_M_create_storageEy:
.LFB5053:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Vector_baseI4CellSaIS0_EE11_M_allocateEy
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4CellSaIS0_EE13_M_deallocateEPS0_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4CellSaIS0_EE13_M_deallocateEPS0_y
	.def	_ZNSt12_Vector_baseI4CellSaIS0_EE13_M_deallocateEPS0_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4CellSaIS0_EE13_M_deallocateEPS0_y
_ZNSt12_Vector_baseI4CellSaIS0_EE13_M_deallocateEPS0_y:
.LFB5054:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L871
	movq	16(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaI4CellEE10deallocateERS1_PS0_y
.L871:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt27__uninitialized_default_n_aIP4CellyS0_ET_S2_T0_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt27__uninitialized_default_n_aIP4CellyS0_ET_S2_T0_RSaIT1_E
	.def	_ZSt27__uninitialized_default_n_aIP4CellyS0_ET_S2_T0_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt27__uninitialized_default_n_aIP4CellyS0_ET_S2_T0_RSaIT1_E
_ZSt27__uninitialized_default_n_aIP4CellyS0_ET_S2_T0_RSaIT1_E:
.LFB5055:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt25__uninitialized_default_nIP4CellyET_S2_T0_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIP4CellEvT_S2_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIP4CellEvT_S2_
	.def	_ZSt8_DestroyIP4CellEvT_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIP4CellEvT_S2_
_ZSt8_DestroyIP4CellEvT_S2_:
.LFB5056:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Destroy_auxILb0EE9__destroyIP4CellEEvT_S4_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt24__uninitialized_fill_n_aIPSt6vectorI4CellSaIS1_EEyS3_S3_ET_S5_T0_RKT1_RSaIT2_E,"x"
	.linkonce discard
	.globl	_ZSt24__uninitialized_fill_n_aIPSt6vectorI4CellSaIS1_EEyS3_S3_ET_S5_T0_RKT1_RSaIT2_E
	.def	_ZSt24__uninitialized_fill_n_aIPSt6vectorI4CellSaIS1_EEyS3_S3_ET_S5_T0_RKT1_RSaIT2_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt24__uninitialized_fill_n_aIPSt6vectorI4CellSaIS1_EEyS3_S3_ET_S5_T0_RKT1_RSaIT2_E
_ZSt24__uninitialized_fill_n_aIPSt6vectorI4CellSaIS1_EEyS3_S3_ET_S5_T0_RKT1_RSaIT2_E:
.LFB5057:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt20uninitialized_fill_nIPSt6vectorI4CellSaIS1_EEyS3_ET_S5_T0_RKT1_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIjED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIjED2Ev
	.def	_ZN9__gnu_cxx13new_allocatorIjED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIjED2Ev
_ZN9__gnu_cxx13new_allocatorIjED2Ev:
.LFB5064:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE11_M_is_localEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE11_M_is_localEv
	.def	_ZNKSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE11_M_is_localEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE11_M_is_localEv
_ZNKSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE11_M_is_localEv:
.LFB5066:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rcx
	call	_ZNKSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE7_M_dataEv
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZNKSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE13_M_local_dataEv
	cmpq	%rax, %rbx
	sete	%al
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE10_M_destroyEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE10_M_destroyEy
	.def	_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE10_M_destroyEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE10_M_destroyEy
_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE10_M_destroyEy:
.LFB5067:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	40(%rbp), %rax
	leaq	1(%rax), %rbx
	movq	32(%rbp), %rcx
	call	_ZNKSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE7_M_dataEv
	movq	%rax, %rsi
	movq	32(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE16_M_get_allocatorEv
	movq	%rbx, %r8
	movq	%rsi, %rdx
	movq	%rax, %rcx
.LEHB111:
	call	_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjy
.LEHE111:
	jmp	.L884
.L883:
	cmpq	$-1, %rdx
	je	.L882
	movq	%rax, %rcx
.LEHB112:
	call	_Unwind_Resume
.L882:
	movq	%rax, %rcx
	call	__cxa_call_unexpected
	nop
.LEHE112:
.L884:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA5067:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT5067-.LLSDATTD5067
.LLSDATTD5067:
	.byte	0x1
	.uleb128 .LLSDACSE5067-.LLSDACSB5067
.LLSDACSB5067:
	.uleb128 .LEHB111-.LFB5067
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L883-.LFB5067
	.uleb128 0x1
	.uleb128 .LEHB112-.LFB5067
	.uleb128 .LEHE112-.LEHB112
	.uleb128 0
	.uleb128 0
.LLSDACSE5067:
	.byte	0x7f
	.byte	0
	.align 4
.LLSDATT5067:
	.byte	0
	.section	.text$_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE10_M_destroyEy,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.def	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev:
.LFB5103:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	16+_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIN2sf6VertexEEC2ERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIN2sf6VertexEEC2ERKS1_
	.def	_ZNSaIN2sf6VertexEEC2ERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIN2sf6VertexEEC2ERKS1_
_ZNSaIN2sf6VertexEEC2ERKS1_:
.LFB5107:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEEC2ERKS3_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt19__iterator_categoryIPKN2sf6VertexEENSt15iterator_traitsIT_E17iterator_categoryERKS5_,"x"
	.linkonce discard
	.globl	_ZSt19__iterator_categoryIPKN2sf6VertexEENSt15iterator_traitsIT_E17iterator_categoryERKS5_
	.def	_ZSt19__iterator_categoryIPKN2sf6VertexEENSt15iterator_traitsIT_E17iterator_categoryERKS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt19__iterator_categoryIPKN2sf6VertexEENSt15iterator_traitsIT_E17iterator_categoryERKS5_
_ZSt19__iterator_categoryIPKN2sf6VertexEENSt15iterator_traitsIT_E17iterator_categoryERKS5_:
.LFB5109:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt10__distanceIPKN2sf6VertexEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag,"x"
	.linkonce discard
	.globl	_ZSt10__distanceIPKN2sf6VertexEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag
	.def	_ZSt10__distanceIPKN2sf6VertexEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10__distanceIPKN2sf6VertexEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag
_ZSt10__distanceIPKN2sf6VertexEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag:
.LFB5110:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movb	%r8b, 32(%rbp)
	movq	24(%rbp), %rax
	subq	16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIN2sf6VertexEEE8allocateERS2_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIN2sf6VertexEEE8allocateERS2_y
	.def	_ZNSt16allocator_traitsISaIN2sf6VertexEEE8allocateERS2_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIN2sf6VertexEEE8allocateERS2_y
_ZNSt16allocator_traitsISaIN2sf6VertexEEE8allocateERS2_y:
.LFB5111:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE8allocateEyPKv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18uninitialized_copyIPKN2sf6VertexEPS1_ET0_T_S6_S5_,"x"
	.linkonce discard
	.globl	_ZSt18uninitialized_copyIPKN2sf6VertexEPS1_ET0_T_S6_S5_
	.def	_ZSt18uninitialized_copyIPKN2sf6VertexEPS1_ET0_T_S6_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18uninitialized_copyIPKN2sf6VertexEPS1_ET0_T_S6_S5_
_ZSt18uninitialized_copyIPKN2sf6VertexEPS1_ET0_T_S6_S5_:
.LFB5112:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN2sf6VertexEPS3_EET0_T_S8_S7_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIPN2sf6VertexEEEvT_S5_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb1EE9__destroyIPN2sf6VertexEEEvT_S5_
	.def	_ZNSt12_Destroy_auxILb1EE9__destroyIPN2sf6VertexEEEvT_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb1EE9__destroyIPN2sf6VertexEEEvT_S5_
_ZNSt12_Destroy_auxILb1EE9__destroyIPN2sf6VertexEEEvT_S5_:
.LFB5113:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx13new_allocatorIN2sf6VertexEE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx13new_allocatorIN2sf6VertexEE8max_sizeEv
	.def	_ZNK9__gnu_cxx13new_allocatorIN2sf6VertexEE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx13new_allocatorIN2sf6VertexEE8max_sizeEv
_ZNK9__gnu_cxx13new_allocatorIN2sf6VertexEE8max_sizeEv:
.LFB5114:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movabsq	$922337203685477580, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18uninitialized_copyISt13move_iteratorIPN2sf6VertexEES3_ET0_T_S6_S5_,"x"
	.linkonce discard
	.globl	_ZSt18uninitialized_copyISt13move_iteratorIPN2sf6VertexEES3_ET0_T_S6_S5_
	.def	_ZSt18uninitialized_copyISt13move_iteratorIPN2sf6VertexEES3_ET0_T_S6_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18uninitialized_copyISt13move_iteratorIPN2sf6VertexEES3_ET0_T_S6_S5_
_ZSt18uninitialized_copyISt13move_iteratorIPN2sf6VertexEES3_ET0_T_S6_S5_:
.LFB5115:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPN2sf6VertexEES5_EET0_T_S8_S7_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE10deallocateEPS2_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE10deallocateEPS2_y
	.def	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE10deallocateEPS2_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE10deallocateEPS2_y
_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE10deallocateEPS2_y:
.LFB5116:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdlPv
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt3maxIyERKT_S2_S2_,"x"
	.linkonce discard
	.globl	_ZSt3maxIyERKT_S2_S2_
	.def	_ZSt3maxIyERKT_S2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3maxIyERKT_S2_S2_
_ZSt3maxIyERKT_S2_S2_:
.LFB5117:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L902
	movq	24(%rbp), %rax
	jmp	.L903
.L902:
	movq	16(%rbp), %rax
.L903:
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE7destroyIS2_EEvPT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE7destroyIS2_EEvPT_
	.def	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE7destroyIS2_EEvPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE7destroyIS2_EEvPT_
_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE7destroyIS2_EEvPT_:
.LFB5118:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIP4CellEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIP4CellEC2Ev
	.def	_ZNSaIP4CellEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIP4CellEC2Ev
_ZNSaIP4CellEC2Ev:
.LFB5120:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIP4CellEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIP4CellED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIP4CellED2Ev
	.def	_ZN9__gnu_cxx13new_allocatorIP4CellED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIP4CellED2Ev
_ZN9__gnu_cxx13new_allocatorIP4CellED2Ev:
.LFB5123:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIPP4CellEEvT_S5_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb1EE9__destroyIPP4CellEEvT_S5_
	.def	_ZNSt12_Destroy_auxILb1EE9__destroyIPP4CellEEvT_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb1EE9__destroyIPP4CellEEvT_S5_
_ZNSt12_Destroy_auxILb1EE9__destroyIPP4CellEEvT_S5_:
.LFB5125:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx13new_allocatorIP4CellE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx13new_allocatorIP4CellE8max_sizeEv
	.def	_ZNK9__gnu_cxx13new_allocatorIP4CellE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx13new_allocatorIP4CellE8max_sizeEv
_ZNK9__gnu_cxx13new_allocatorIP4CellE8max_sizeEv:
.LFB5126:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movabsq	$2305843009213693951, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIP4CellEE8allocateERS2_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIP4CellEE8allocateERS2_y
	.def	_ZNSt16allocator_traitsISaIP4CellEE8allocateERS2_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIP4CellEE8allocateERS2_y
_ZNSt16allocator_traitsISaIP4CellEE8allocateERS2_y:
.LFB5127:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIP4CellE8allocateEyPKv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18uninitialized_copyISt13move_iteratorIPP4CellES3_ET0_T_S6_S5_,"x"
	.linkonce discard
	.globl	_ZSt18uninitialized_copyISt13move_iteratorIPP4CellES3_ET0_T_S6_S5_
	.def	_ZSt18uninitialized_copyISt13move_iteratorIPP4CellES3_ET0_T_S6_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18uninitialized_copyISt13move_iteratorIPP4CellES3_ET0_T_S6_S5_
_ZSt18uninitialized_copyISt13move_iteratorIPP4CellES3_ET0_T_S6_S5_:
.LFB5128:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPP4CellES5_EET0_T_S8_S7_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIP4CellE10deallocateEPS2_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIP4CellE10deallocateEPS2_y
	.def	_ZN9__gnu_cxx13new_allocatorIP4CellE10deallocateEPS2_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIP4CellE10deallocateEPS2_y
_ZN9__gnu_cxx13new_allocatorIP4CellE10deallocateEPS2_y:
.LFB5129:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdlPv
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIP4CellE9constructIS2_JS2_EEEvPT_DpOT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIP4CellE9constructIS2_JS2_EEEvPT_DpOT0_
	.def	_ZN9__gnu_cxx13new_allocatorIP4CellE9constructIS2_JS2_EEEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIP4CellE9constructIS2_JS2_EEEvPT_DpOT0_
_ZN9__gnu_cxx13new_allocatorIP4CellE9constructIS2_JS2_EEEvPT_DpOT0_:
.LFB5130:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIP4CellEOT_RNSt16remove_referenceIS2_E4typeE
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movl	$8, %ecx
	call	_ZnwyPv
	movq	%rbx, (%rax)
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPP4CellSt6vectorIS2_SaIS2_EEEC1ERKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPP4CellSt6vectorIS2_SaIS2_EEEC1ERKS3_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPP4CellSt6vectorIS2_SaIS2_EEEC1ERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPP4CellSt6vectorIS2_SaIS2_EEEC1ERKS3_
_ZN9__gnu_cxx17__normal_iteratorIPP4CellSt6vectorIS2_SaIS2_EEEC1ERKS3_:
.LFB5133:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIP4CellSaIS1_EE12_M_check_lenEyPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIP4CellSaIS1_EE12_M_check_lenEyPKc
	.def	_ZNKSt6vectorIP4CellSaIS1_EE12_M_check_lenEyPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIP4CellSaIS1_EE12_M_check_lenEyPKc
_ZNKSt6vectorIP4CellSaIS1_EE12_M_check_lenEyPKc:
.LFB5134:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%r8, -32(%rbp)
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorIP4CellSaIS1_EE8max_sizeEv
	movq	%rax, %rbx
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorIP4CellSaIS1_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-40(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L918
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt20__throw_length_errorPKc
.L918:
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorIP4CellSaIS1_EE4sizeEv
	movq	%rax, %rbx
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorIP4CellSaIS1_EE4sizeEv
	movq	%rax, -96(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3maxIyERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorIP4CellSaIS1_EE4sizeEv
	cmpq	%rax, -88(%rbp)
	jb	.L919
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorIP4CellSaIS1_EE8max_sizeEv
	cmpq	%rax, -88(%rbp)
	jbe	.L920
.L919:
	movq	-48(%rbp), %rcx
	call	_ZNKSt6vectorIP4CellSaIS1_EE8max_sizeEv
	jmp	.L921
.L920:
	movq	-88(%rbp), %rax
.L921:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIP4CellSaIS1_EE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIP4CellSaIS1_EE5beginEv
	.def	_ZNSt6vectorIP4CellSaIS1_EE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIP4CellSaIS1_EE5beginEv
_ZNSt6vectorIP4CellSaIS1_EE5beginEv:
.LFB5135:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPP4CellSt6vectorIS2_SaIS2_EEEC1ERKS3_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxmiIPP4CellSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxmiIPP4CellSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.def	_ZN9__gnu_cxxmiIPP4CellSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxmiIPP4CellSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
_ZN9__gnu_cxxmiIPP4CellSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_:
.LFB5136:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPP4CellSt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPP4CellSt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	subq	%rax, %rbx
	movq	%rbx, %rax
	sarq	$3, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPP4CellSt6vectorIS2_SaIS2_EEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPP4CellSt6vectorIS2_SaIS2_EEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPP4CellSt6vectorIS2_SaIS2_EEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPP4CellSt6vectorIS2_SaIS2_EEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIPP4CellSt6vectorIS2_SaIS2_EEE4baseEv:
.LFB5137:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt34__uninitialized_move_if_noexcept_aIPP4CellS2_SaIS1_EET0_T_S5_S4_RT1_,"x"
	.linkonce discard
	.globl	_ZSt34__uninitialized_move_if_noexcept_aIPP4CellS2_SaIS1_EET0_T_S5_S4_RT1_
	.def	_ZSt34__uninitialized_move_if_noexcept_aIPP4CellS2_SaIS1_EET0_T_S5_S4_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt34__uninitialized_move_if_noexcept_aIPP4CellS2_SaIS1_EET0_T_S5_S4_RT1_
_ZSt34__uninitialized_move_if_noexcept_aIPP4CellS2_SaIS1_EET0_T_S5_S4_RT1_:
.LFB5138:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt32__make_move_if_noexcept_iteratorIP4CellSt13move_iteratorIPS1_EET0_PT_
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZSt32__make_move_if_noexcept_iteratorIP4CellSt13move_iteratorIPS1_EET0_PT_
	movq	%rax, %rcx
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %r9
	movq	%rax, %r8
	movq	%rbx, %rdx
	call	_ZSt22__uninitialized_copy_aISt13move_iteratorIPP4CellES3_S2_ET0_T_S6_S5_RSaIT1_E
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIP4CellEE7destroyIS1_EEvRS2_PT_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIP4CellEE7destroyIS1_EEvRS2_PT_
	.def	_ZNSt16allocator_traitsISaIP4CellEE7destroyIS1_EEvRS2_PT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIP4CellEE7destroyIS1_EEvRS2_PT_
_ZNSt16allocator_traitsISaIP4CellEE7destroyIS1_EEvRS2_PT_:
.LFB5139:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIP4CellE7destroyIS2_EEvPT_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEEC2ERKS5_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEEC2ERKS5_
	.def	_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEEC2ERKS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEEC2ERKS5_
_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEEC2ERKS5_:
.LFB5146:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE11_M_allocateEy
	.def	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE11_M_allocateEy
_ZNSt12_Vector_baseISt6vectorI4CellSaIS1_EESaIS3_EE11_M_allocateEy:
.LFB5148:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L934
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaISt6vectorI4CellSaIS1_EEEE8allocateERS4_y
	jmp	.L936
.L934:
	movl	$0, %eax
.L936:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaISt6vectorI4CellSaIS1_EEEE10deallocateERS4_PS3_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaISt6vectorI4CellSaIS1_EEEE10deallocateERS4_PS3_y
	.def	_ZNSt16allocator_traitsISaISt6vectorI4CellSaIS1_EEEE10deallocateERS4_PS3_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaISt6vectorI4CellSaIS1_EEEE10deallocateERS4_PS3_y
_ZNSt16allocator_traitsISaISt6vectorI4CellSaIS1_EEEE10deallocateERS4_PS3_y:
.LFB5149:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEE10deallocateEPS4_y
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS5_EES4_IS7_SaIS7_EEEEPS7_EET0_T_SF_SE_,"x"
	.linkonce discard
	.globl	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS5_EES4_IS7_SaIS7_EEEEPS7_EET0_T_SF_SE_
	.def	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS5_EES4_IS7_SaIS7_EEEEPS7_EET0_T_SF_SE_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS5_EES4_IS7_SaIS7_EEEEPS7_EET0_T_SF_SE_
_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS5_EES4_IS7_SaIS7_EEEEPS7_EET0_T_SF_SE_:
.LFB5150:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
.L940:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdx
	leaq	-48(%rbp), %rcx
	call	_ZN9__gnu_cxxneIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	testb	%al, %al
	je	.L939
	leaq	-48(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEdeEv
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt11__addressofISt6vectorI4CellSaIS1_EEEPT_RS4_
	movq	%rbx, %rdx
	movq	%rax, %rcx
.LEHB113:
	call	_ZSt10_ConstructISt6vectorI4CellSaIS1_EEJRKS3_EEvPT_DpOT0_
.LEHE113:
	leaq	-48(%rbp), %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEppEv
	addq	$24, -88(%rbp)
	jmp	.L940
.L939:
	movq	-88(%rbp), %rax
	jmp	.L946
.L944:
	movq	%rax, %rcx
	call	__cxa_begin_catch
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
.LEHB114:
	call	_ZSt8_DestroyIPSt6vectorI4CellSaIS1_EEEvT_S5_
	call	__cxa_rethrow
.LEHE114:
.L945:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB115:
	call	_Unwind_Resume
.LEHE115:
.L946:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA5150:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT5150-.LLSDATTD5150
.LLSDATTD5150:
	.byte	0x1
	.uleb128 .LLSDACSE5150-.LLSDACSB5150
.LLSDACSB5150:
	.uleb128 .LEHB113-.LFB5150
	.uleb128 .LEHE113-.LEHB113
	.uleb128 .L944-.LFB5150
	.uleb128 0x1
	.uleb128 .LEHB114-.LFB5150
	.uleb128 .LEHE114-.LEHB114
	.uleb128 .L945-.LFB5150
	.uleb128 0
	.uleb128 .LEHB115-.LFB5150
	.uleb128 .LEHE115-.LEHB115
	.uleb128 0
	.uleb128 0
.LLSDACSE5150:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT5150:
	.section	.text$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS5_EES4_IS7_SaIS7_EEEEPS7_EET0_T_SF_SE_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorI4CellSaIS3_EEEEvT_S7_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorI4CellSaIS3_EEEEvT_S7_
	.def	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorI4CellSaIS3_EEEEvT_S7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorI4CellSaIS3_EEEEvT_S7_
_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorI4CellSaIS3_EEEEvT_S7_:
.LFB5151:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
.L949:
	movq	16(%rbp), %rax
	cmpq	24(%rbp), %rax
	je	.L950
	movq	16(%rbp), %rcx
	call	_ZSt11__addressofISt6vectorI4CellSaIS1_EEEPT_RS4_
	movq	%rax, %rcx
	call	_ZSt8_DestroyISt6vectorI4CellSaIS1_EEEvPT_
	addq	$24, 16(%rbp)
	jmp	.L949
.L950:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaISt10shared_ptrI4EdgeEEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaISt10shared_ptrI4EdgeEEC2Ev
	.def	_ZNSaISt10shared_ptrI4EdgeEEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaISt10shared_ptrI4EdgeEEC2Ev
_ZNSaISt10shared_ptrI4EdgeEEC2Ev:
.LFB5153:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE10deallocateERS3_PS2_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE10deallocateERS3_PS2_y
	.def	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE10deallocateERS3_PS2_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE10deallocateERS3_PS2_y
_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE10deallocateERS3_PS2_y:
.LFB5155:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE10deallocateEPS3_y
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb0EE9__destroyIPSt10shared_ptrI4EdgeEEEvT_S6_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt10shared_ptrI4EdgeEEEvT_S6_
	.def	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt10shared_ptrI4EdgeEEEvT_S6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt10shared_ptrI4EdgeEEEvT_S6_
_ZNSt12_Destroy_auxILb0EE9__destroyIPSt10shared_ptrI4EdgeEEEvT_S6_:
.LFB5156:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
.L955:
	movq	16(%rbp), %rax
	cmpq	24(%rbp), %rax
	je	.L956
	movq	16(%rbp), %rcx
	call	_ZSt11__addressofISt10shared_ptrI4EdgeEEPT_RS3_
	movq	%rax, %rcx
	call	_ZSt8_DestroyISt10shared_ptrI4EdgeEEvPT_
	addq	$16, 16(%rbp)
	jmp	.L955
.L956:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJiiiiEEESt19_Sp_make_shared_tagRKT_DpOT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJiiiiEEESt19_Sp_make_shared_tagRKT_DpOT0_
	.def	_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJiiiiEEESt19_Sp_make_shared_tagRKT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJiiiiEEESt19_Sp_make_shared_tagRKT_DpOT0_
_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJiiiiEEESt19_Sp_make_shared_tagRKT_DpOT0_:
.LFB5158:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movb	%dl, 24(%rbp)
	movq	%r8, 24(%rbp)
	movq	%r9, 32(%rbp)
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %r12
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdi
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rsi
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	movq	%r12, 56(%rsp)
	movq	%rdi, 48(%rsp)
	movq	%rsi, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	%rax, %r9
	movl	$0, %r8d
	movl	%r13d, %edx
	movq	%rbx, %rcx
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I4EdgeSaIS4_EJiiiiEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_
	movq	16(%rbp), %rax
	addq	$8, %rax
	leaq	_ZTISt19_Sp_make_shared_tag(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	movq	%rax, -56(%rbp)
	movq	16(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE8max_sizeEv
	.def	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE8max_sizeEv
_ZNKSt6vectorISt10shared_ptrI4EdgeESaIS2_EE8max_sizeEv:
.LFB5160:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE8max_sizeERKS3_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE8allocateERS3_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE8allocateERS3_y
	.def	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE8allocateERS3_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE8allocateERS3_y
_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE8allocateERS3_y:
.LFB5161:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE8allocateEyPKv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt32__make_move_if_noexcept_iteratorISt10shared_ptrI4EdgeESt13move_iteratorIPS2_EET0_PT_,"x"
	.linkonce discard
	.globl	_ZSt32__make_move_if_noexcept_iteratorISt10shared_ptrI4EdgeESt13move_iteratorIPS2_EET0_PT_
	.def	_ZSt32__make_move_if_noexcept_iteratorISt10shared_ptrI4EdgeESt13move_iteratorIPS2_EET0_PT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt32__make_move_if_noexcept_iteratorISt10shared_ptrI4EdgeESt13move_iteratorIPS2_EET0_PT_
_ZSt32__make_move_if_noexcept_iteratorISt10shared_ptrI4EdgeESt13move_iteratorIPS2_EET0_PT_:
.LFB5162:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt13move_iteratorIPSt10shared_ptrI4EdgeEEC1ES3_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt10shared_ptrI4EdgeEES4_S3_ET0_T_S7_S6_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt10shared_ptrI4EdgeEES4_S3_ET0_T_S7_S6_RSaIT1_E
	.def	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt10shared_ptrI4EdgeEES4_S3_ET0_T_S7_S6_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt10shared_ptrI4EdgeEES4_S3_ET0_T_S7_S6_RSaIT1_E
_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt10shared_ptrI4EdgeEES4_S3_ET0_T_S7_S6_RSaIT1_E:
.LFB5163:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt18uninitialized_copyISt13move_iteratorIPSt10shared_ptrI4EdgeEES4_ET0_T_S7_S6_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE7destroyIS3_EEvPT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE7destroyIS3_EEvPT_
	.def	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE7destroyIS3_EEvPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE7destroyIS3_EEvPT_
_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE7destroyIS3_EEvPT_:
.LFB5164:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt10shared_ptrI4EdgeED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEEC2ERKS4_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEEC2ERKS4_
	.def	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEEC2ERKS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEEC2ERKS4_
_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEEC2ERKS4_:
.LFB5166:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_,"x"
	.linkonce discard
	.globl	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_
	.def	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_
_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_:
.LFB5168:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
.L970:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdx
	leaq	-48(%rbp), %rcx
	call	_ZN9__gnu_cxxneIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	testb	%al, %al
	je	.L969
	leaq	-48(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEdeEv
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt11__addressofISt10shared_ptrI4EdgeEEPT_RS3_
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt10_ConstructISt10shared_ptrI4EdgeEJRKS2_EEvPT_DpOT0_
	leaq	-48(%rbp), %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4EdgeESt6vectorIS3_SaIS3_EEEppEv
	addq	$16, -88(%rbp)
	jmp	.L970
.L969:
	movq	-88(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv:
.LFB5169:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_T0_,"x"
	.linkonce discard
	.globl	_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_T0_
	.def	_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_T0_
_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_T0_:
.LFB5170:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movb	%r9b, 40(%rbp)
	movzbl	40(%rbp), %ecx
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movl	%ecx, %r9d
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_T0_
	leaq	40(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_RT0_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEET_SG_SG_T0_,"x"
	.linkonce discard
	.globl	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEET_SG_SG_T0_
	.def	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEET_SG_SG_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEET_SG_SG_T0_
_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEET_SG_SG_T0_:
.LFB5171:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movb	%r8b, -32(%rbp)
	leaq	-40(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxmiIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, %rdx
	leaq	-48(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEplEx
	movq	%rax, -88(%rbp)
	leaq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEmiEx
	movq	%rax, %rbx
	movl	$1, %edx
	leaq	-48(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEplEx
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rbx, %r9
	movq	%rax, %r8
	movq	-48(%rbp), %rcx
	call	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_SG_T0_
	movl	$1, %edx
	leaq	-48(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEplEx
	movq	%rax, %rcx
	movzbl	-32(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %r9d
	movq	-48(%rbp), %r8
	movq	%rax, %rdx
	call	_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEET_SG_SG_SG_T0_
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEplEx,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEplEx
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEplEx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEplEx
_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEplEx:
.LFB5172:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEC1ERKS3_
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_,"x"
	.linkonce discard
	.globl	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_
	.def	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_
_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_:
.LFB5173:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movb	%r8b, 48(%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, %rdx
	leaq	32(%rbp), %rcx
	call	_ZN9__gnu_cxxeqIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	testb	%al, %al
	jne	.L986
	movl	$1, %edx
	leaq	32(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEplEx
	movq	%rax, -8(%rbp)
.L985:
	leaq	40(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxneIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	testb	%al, %al
	je	.L979
	movq	-8(%rbp), %rdx
	leaq	48(%rbp), %rax
	movq	32(%rbp), %r8
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESF_EEbT_T0_
	testb	%al, %al
	je	.L983
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rcx
	call	_ZSt4moveIRSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rdx
	movq	%rdx, -20(%rbp)
	movl	8(%rax), %eax
	movl	%eax, -12(%rbp)
	leaq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEplEx
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_
	leaq	-20(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rbx
	leaq	32(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	(%rbx), %rdx
	movq	%rdx, (%rax)
	movl	8(%rbx), %edx
	movl	%edx, 8(%rax)
	jmp	.L984
.L983:
	movzbl	48(%rbp), %eax
	movl	%eax, %ecx
	call	_ZN9__gnu_cxx5__ops15__val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS9_EE
	movq	-8(%rbp), %rax
	movl	%esi, %edx
	movq	%rax, %rcx
	call	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_T0_
.L984:
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEppEv
	jmp	.L985
.L986:
	nop
.L979:
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_,"x"
	.linkonce discard
	.globl	_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_
	.def	_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_
_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_T0_:
.LFB5174:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movb	%r8b, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)
.L989:
	leaq	-40(%rbp), %rdx
	leaq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxneIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	testb	%al, %al
	je	.L990
	movzbl	-32(%rbp), %eax
	movl	%eax, %ecx
	call	_ZN9__gnu_cxx5__ops15__val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS9_EE
	movq	-88(%rbp), %rax
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_T0_
	leaq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEppEv
	jmp	.L989
.L990:
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE8max_sizeERKS2_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE8max_sizeERKS2_
	.def	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE8max_sizeERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE8max_sizeERKS2_
_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE8max_sizeERKS2_:
.LFB5175:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE8max_sizeEv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt25__uninitialized_default_nIPSt5arrayIfLy3EEyET_S3_T0_,"x"
	.linkonce discard
	.globl	_ZSt25__uninitialized_default_nIPSt5arrayIfLy3EEyET_S3_T0_
	.def	_ZSt25__uninitialized_default_nIPSt5arrayIfLy3EEyET_S3_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt25__uninitialized_default_nIPSt5arrayIfLy3EEyET_S3_T0_
_ZSt25__uninitialized_default_nIPSt5arrayIfLy3EEyET_S3_T0_:
.LFB5176:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movb	$1, -1(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPSt5arrayIfLy3EEyEET_S5_T0_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE8allocateERS2_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE8allocateERS2_y
	.def	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE8allocateERS2_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE8allocateERS2_y
_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE8allocateERS2_y:
.LFB5177:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE8allocateEyPKv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt32__make_move_if_noexcept_iteratorISt5arrayIfLy3EESt13move_iteratorIPS1_EET0_PT_,"x"
	.linkonce discard
	.globl	_ZSt32__make_move_if_noexcept_iteratorISt5arrayIfLy3EESt13move_iteratorIPS1_EET0_PT_
	.def	_ZSt32__make_move_if_noexcept_iteratorISt5arrayIfLy3EESt13move_iteratorIPS1_EET0_PT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt32__make_move_if_noexcept_iteratorISt5arrayIfLy3EESt13move_iteratorIPS1_EET0_PT_
_ZSt32__make_move_if_noexcept_iteratorISt5arrayIfLy3EESt13move_iteratorIPS1_EET0_PT_:
.LFB5178:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt13move_iteratorIPSt5arrayIfLy3EEEC1ES2_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt5arrayIfLy3EEES3_S2_ET0_T_S6_S5_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt5arrayIfLy3EEES3_S2_ET0_T_S6_S5_RSaIT1_E
	.def	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt5arrayIfLy3EEES3_S2_ET0_T_S6_S5_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt5arrayIfLy3EEES3_S2_ET0_T_S6_S5_RSaIT1_E
_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt5arrayIfLy3EEES3_S2_ET0_T_S6_S5_RSaIT1_E:
.LFB5179:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt18uninitialized_copyISt13move_iteratorIPSt5arrayIfLy3EEES3_ET0_T_S6_S5_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE10deallocateERS2_PS1_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE10deallocateERS2_PS1_y
	.def	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE10deallocateERS2_PS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE10deallocateERS2_PS1_y
_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE10deallocateERS2_PS1_y:
.LFB5180:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE10deallocateEPS2_y
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaISt5arrayIfLy3EEEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaISt5arrayIfLy3EEEC2Ev
	.def	_ZNSaISt5arrayIfLy3EEEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaISt5arrayIfLy3EEEC2Ev
_ZNSaISt5arrayIfLy3EEEC2Ev:
.LFB5182:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIPSt5arrayIfLy3EEEEvT_S5_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt5arrayIfLy3EEEEvT_S5_
	.def	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt5arrayIfLy3EEEEvT_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt5arrayIfLy3EEEEvT_S5_
_ZNSt12_Destroy_auxILb1EE9__destroyIPSt5arrayIfLy3EEEEvT_S5_:
.LFB5184:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE9constructIS2_JS2_EEEvPT_DpOT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE9constructIS2_JS2_EEEvPT_DpOT0_
	.def	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE9constructIS2_JS2_EEEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE9constructIS2_JS2_EEEvPT_DpOT0_
_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE9constructIS2_JS2_EEEvPT_DpOT0_:
.LFB5185:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardISt5arrayIfLy3EEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movl	$12, %ecx
	call	_ZnwyPv
	movq	(%rbx), %rdx
	movq	%rdx, (%rax)
	movl	8(%rbx), %edx
	movl	%edx, 8(%rax)
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE7destroyIS1_EEvRS2_PT_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE7destroyIS1_EEvRS2_PT_
	.def	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE7destroyIS1_EEvRS2_PT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE7destroyIS1_EEvRS2_PT_
_ZNSt16allocator_traitsISaISt5arrayIfLy3EEEE7destroyIS1_EEvRS2_PT_:
.LFB5186:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE7destroyIS2_EEvPT_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEEC2ERKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEEC2ERKS3_
	.def	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEEC2ERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEEC2ERKS3_
_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEEC2ERKS3_:
.LFB5188:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_,"x"
	.linkonce discard
	.globl	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_
	.def	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_:
.LFB5190:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EEC2ERKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EEC2ERKS3_
	.def	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EEC2ERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EEC2ERKS3_
_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EEC2ERKS3_:
.LFB5192:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt10shared_ptrI4EdgeESaIS2_EE12_Vector_implC1ERKS3_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIRPSt10shared_ptrI4EdgeEEONSt16remove_referenceIT_E4typeEOS6_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRPSt10shared_ptrI4EdgeEEONSt16remove_referenceIT_E4typeEOS6_
	.def	_ZSt4moveIRPSt10shared_ptrI4EdgeEEONSt16remove_referenceIT_E4typeEOS6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRPSt10shared_ptrI4EdgeEEONSt16remove_referenceIT_E4typeEOS6_
_ZSt4moveIRPSt10shared_ptrI4EdgeEEONSt16remove_referenceIT_E4typeEOS6_:
.LFB5195:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4swapIPSt10shared_ptrI4EdgeEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS8_ESt18is_move_assignableIS8_EEE5valueEvE4typeERS8_SI_,"x"
	.linkonce discard
	.globl	_ZSt4swapIPSt10shared_ptrI4EdgeEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS8_ESt18is_move_assignableIS8_EEE5valueEvE4typeERS8_SI_
	.def	_ZSt4swapIPSt10shared_ptrI4EdgeEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS8_ESt18is_move_assignableIS8_EEE5valueEvE4typeERS8_SI_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4swapIPSt10shared_ptrI4EdgeEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS8_ESt18is_move_assignableIS8_EEE5valueEvE4typeERS8_SI_
_ZSt4swapIPSt10shared_ptrI4EdgeEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS8_ESt18is_move_assignableIS8_EEE5valueEvE4typeERS8_SI_:
.LFB5194:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rcx
	call	_ZSt4moveIRPSt10shared_ptrI4EdgeEEONSt16remove_referenceIT_E4typeEOS6_
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRPSt10shared_ptrI4EdgeEEONSt16remove_referenceIT_E4typeEOS6_
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRPSt10shared_ptrI4EdgeEEONSt16remove_referenceIT_E4typeEOS6_
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18__do_alloc_on_moveISaISt10shared_ptrI4EdgeEEEvRT_S5_St17integral_constantIbLb1EE,"x"
	.linkonce discard
	.globl	_ZSt18__do_alloc_on_moveISaISt10shared_ptrI4EdgeEEEvRT_S5_St17integral_constantIbLb1EE
	.def	_ZSt18__do_alloc_on_moveISaISt10shared_ptrI4EdgeEEEvRT_S5_St17integral_constantIbLb1EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18__do_alloc_on_moveISaISt10shared_ptrI4EdgeEEEvRT_S5_St17integral_constantIbLb1EE
_ZSt18__do_alloc_on_moveISaISt10shared_ptrI4EdgeEEEvRT_S5_St17integral_constantIbLb1EE:
.LFB5196:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movb	%r8b, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRSaISt10shared_ptrI4EdgeEEEONSt16remove_referenceIT_E4typeEOS6_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EEC2ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EEC2ERKS2_
	.def	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EEC2ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EEC2ERKS2_
_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EEC2ERKS2_:
.LFB5198:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseISt5arrayIfLy3EESaIS1_EE12_Vector_implC1ERKS2_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIRPSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS5_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRPSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS5_
	.def	_ZSt4moveIRPSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRPSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS5_
_ZSt4moveIRPSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS5_:
.LFB5201:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4swapIPSt5arrayIfLy3EEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SH_,"x"
	.linkonce discard
	.globl	_ZSt4swapIPSt5arrayIfLy3EEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SH_
	.def	_ZSt4swapIPSt5arrayIfLy3EEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SH_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4swapIPSt5arrayIfLy3EEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SH_
_ZSt4swapIPSt5arrayIfLy3EEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SH_:
.LFB5200:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rcx
	call	_ZSt4moveIRPSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS5_
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRPSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS5_
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRPSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS5_
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18__do_alloc_on_moveISaISt5arrayIfLy3EEEEvRT_S4_St17integral_constantIbLb1EE,"x"
	.linkonce discard
	.globl	_ZSt18__do_alloc_on_moveISaISt5arrayIfLy3EEEEvRT_S4_St17integral_constantIbLb1EE
	.def	_ZSt18__do_alloc_on_moveISaISt5arrayIfLy3EEEEvRT_S4_St17integral_constantIbLb1EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18__do_alloc_on_moveISaISt5arrayIfLy3EEEEvRT_S4_St17integral_constantIbLb1EE
_ZSt18__do_alloc_on_moveISaISt5arrayIfLy3EEEEvRT_S4_St17integral_constantIbLb1EE:
.LFB5202:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movb	%r8b, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRSaISt5arrayIfLy3EEEEONSt16remove_referenceIT_E4typeEOS5_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaI4CellEC2ERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaI4CellEC2ERKS0_
	.def	_ZNSaI4CellEC2ERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaI4CellEC2ERKS0_
_ZNSaI4CellEC2ERKS0_:
.LFB5204:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI4CellEC2ERKS2_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaI4CellEC1ERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaI4CellEC1ERKS0_
	.def	_ZNSaI4CellEC1ERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaI4CellEC1ERKS0_
_ZNSaI4CellEC1ERKS0_:
.LFB5205:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI4CellEC2ERKS2_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4CellSaIS0_EE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4CellSaIS0_EE11_M_allocateEy
	.def	_ZNSt12_Vector_baseI4CellSaIS0_EE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4CellSaIS0_EE11_M_allocateEy
_ZNSt12_Vector_baseI4CellSaIS0_EE11_M_allocateEy:
.LFB5206:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L1022
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaI4CellEE8allocateERS1_y
	jmp	.L1024
.L1022:
	movl	$0, %eax
.L1024:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaI4CellEE10deallocateERS1_PS0_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaI4CellEE10deallocateERS1_PS0_y
	.def	_ZNSt16allocator_traitsISaI4CellEE10deallocateERS1_PS0_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaI4CellEE10deallocateERS1_PS0_y
_ZNSt16allocator_traitsISaI4CellEE10deallocateERS1_PS0_y:
.LFB5207:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI4CellE10deallocateEPS1_y
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt25__uninitialized_default_nIP4CellyET_S2_T0_,"x"
	.linkonce discard
	.globl	_ZSt25__uninitialized_default_nIP4CellyET_S2_T0_
	.def	_ZSt25__uninitialized_default_nIP4CellyET_S2_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt25__uninitialized_default_nIP4CellyET_S2_T0_
_ZSt25__uninitialized_default_nIP4CellyET_S2_T0_:
.LFB5208:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movb	$1, -1(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP4CellyEET_S4_T0_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb0EE9__destroyIP4CellEEvT_S4_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb0EE9__destroyIP4CellEEvT_S4_
	.def	_ZNSt12_Destroy_auxILb0EE9__destroyIP4CellEEvT_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb0EE9__destroyIP4CellEEvT_S4_
_ZNSt12_Destroy_auxILb0EE9__destroyIP4CellEEvT_S4_:
.LFB5209:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
.L1030:
	movq	16(%rbp), %rax
	cmpq	24(%rbp), %rax
	je	.L1031
	movq	16(%rbp), %rcx
	call	_ZSt11__addressofI4CellEPT_RS1_
	movq	%rax, %rcx
	call	_ZSt8_DestroyI4CellEvPT_
	addq	$72, 16(%rbp)
	jmp	.L1030
.L1031:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt20uninitialized_fill_nIPSt6vectorI4CellSaIS1_EEyS3_ET_S5_T0_RKT1_,"x"
	.linkonce discard
	.globl	_ZSt20uninitialized_fill_nIPSt6vectorI4CellSaIS1_EEyS3_ET_S5_T0_RKT1_
	.def	_ZSt20uninitialized_fill_nIPSt6vectorI4CellSaIS1_EEyS3_ET_S5_T0_RKT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt20uninitialized_fill_nIPSt6vectorI4CellSaIS1_EEyS3_ET_S5_T0_RKT1_
_ZSt20uninitialized_fill_nIPSt6vectorI4CellSaIS1_EEyS3_ET_S5_T0_RKT1_:
.LFB5210:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorI4CellSaIS3_EEyS5_EET_S7_T0_RKT1_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE7_M_dataEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE7_M_dataEv
	.def	_ZNKSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE7_M_dataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE7_M_dataEv
_ZNKSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE7_M_dataEv:
.LFB5213:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE13_M_local_dataEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE13_M_local_dataEv
	.def	_ZNKSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE13_M_local_dataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE13_M_local_dataEv
_ZNKSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE13_M_local_dataEv:
.LFB5214:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt14pointer_traitsIPKjE10pointer_toERS0_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjy,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjy
	.def	_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjy
_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjy:
.LFB5215:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjy
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE16_M_get_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE16_M_get_allocatorEv
	.def	_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE16_M_get_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE16_M_get_allocatorEv
_ZNSt7__cxx1112basic_stringIjSt11char_traitsIjESaIjEE16_M_get_allocatorEv:
.LFB5216:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEEC2ERKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEEC2ERKS3_
	.def	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEEC2ERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEEC2ERKS3_
_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEEC2ERKS3_:
.LFB5247:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE8allocateEyPKv
	.def	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE8allocateEyPKv
_ZN9__gnu_cxx13new_allocatorIN2sf6VertexEE8allocateEyPKv:
.LFB5249:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx13new_allocatorIN2sf6VertexEE8max_sizeEv
	cmpq	%rax, 24(%rbp)
	seta	%al
	testb	%al, %al
	je	.L1043
	call	_ZSt17__throw_bad_allocv
.L1043:
	movq	24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rcx
	call	_Znwy
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN2sf6VertexEPS3_EET0_T_S8_S7_,"x"
	.linkonce discard
	.globl	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN2sf6VertexEPS3_EET0_T_S8_S7_
	.def	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN2sf6VertexEPS3_EET0_T_S8_S7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN2sf6VertexEPS3_EET0_T_S8_S7_
_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN2sf6VertexEPS3_EET0_T_S8_S7_:
.LFB5250:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -8(%rbp)
.L1047:
	movq	16(%rbp), %rax
	cmpq	24(%rbp), %rax
	je	.L1046
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt11__addressofIN2sf6VertexEEPT_RS2_
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZSt10_ConstructIN2sf6VertexEJRKS1_EEvPT_DpOT0_
	addq	$20, 16(%rbp)
	addq	$20, -8(%rbp)
	jmp	.L1047
.L1046:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPN2sf6VertexEES5_EET0_T_S8_S7_,"x"
	.linkonce discard
	.globl	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPN2sf6VertexEES5_EET0_T_S8_S7_
	.def	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPN2sf6VertexEES5_EET0_T_S8_S7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPN2sf6VertexEES5_EET0_T_S8_S7_
_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPN2sf6VertexEES5_EET0_T_S8_S7_:
.LFB5251:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
.L1051:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdx
	leaq	-48(%rbp), %rcx
.LEHB116:
	call	_ZStneIPN2sf6VertexEEbRKSt13move_iteratorIT_ES7_
.LEHE116:
	testb	%al, %al
	je	.L1050
	leaq	-48(%rbp), %rcx
	call	_ZNKSt13move_iteratorIPN2sf6VertexEEdeEv
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt11__addressofIN2sf6VertexEEPT_RS2_
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt10_ConstructIN2sf6VertexEJS1_EEvPT_DpOT0_
	leaq	-48(%rbp), %rcx
	call	_ZNSt13move_iteratorIPN2sf6VertexEEppEv
	addq	$20, -88(%rbp)
	jmp	.L1051
.L1050:
	movq	-88(%rbp), %rax
	jmp	.L1057
.L1055:
	movq	%rax, %rcx
	call	__cxa_begin_catch
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPN2sf6VertexEEvT_S3_
.LEHB117:
	call	__cxa_rethrow
.LEHE117:
.L1056:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB118:
	call	_Unwind_Resume
.LEHE118:
.L1057:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA5251:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT5251-.LLSDATTD5251
.LLSDATTD5251:
	.byte	0x1
	.uleb128 .LLSDACSE5251-.LLSDACSB5251
.LLSDACSB5251:
	.uleb128 .LEHB116-.LFB5251
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L1055-.LFB5251
	.uleb128 0x1
	.uleb128 .LEHB117-.LFB5251
	.uleb128 .LEHE117-.LEHB117
	.uleb128 .L1056-.LFB5251
	.uleb128 0
	.uleb128 .LEHB118-.LFB5251
	.uleb128 .LEHE118-.LEHB118
	.uleb128 0
	.uleb128 0
.LLSDACSE5251:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT5251:
	.section	.text$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPN2sf6VertexEES5_EET0_T_S8_S7_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIP4CellEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIP4CellEC2Ev
	.def	_ZN9__gnu_cxx13new_allocatorIP4CellEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIP4CellEC2Ev
_ZN9__gnu_cxx13new_allocatorIP4CellEC2Ev:
.LFB5253:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIP4CellE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIP4CellE8allocateEyPKv
	.def	_ZN9__gnu_cxx13new_allocatorIP4CellE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIP4CellE8allocateEyPKv
_ZN9__gnu_cxx13new_allocatorIP4CellE8allocateEyPKv:
.LFB5255:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx13new_allocatorIP4CellE8max_sizeEv
	cmpq	%rax, 24(%rbp)
	seta	%al
	testb	%al, %al
	je	.L1060
	call	_ZSt17__throw_bad_allocv
.L1060:
	movq	24(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rcx
	call	_Znwy
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPP4CellES5_EET0_T_S8_S7_,"x"
	.linkonce discard
	.globl	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPP4CellES5_EET0_T_S8_S7_
	.def	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPP4CellES5_EET0_T_S8_S7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPP4CellES5_EET0_T_S8_S7_
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPP4CellES5_EET0_T_S8_S7_:
.LFB5256:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt4copyISt13move_iteratorIPP4CellES3_ET0_T_S6_S5_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIP4CellE7destroyIS2_EEvPT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIP4CellE7destroyIS2_EEvPT_
	.def	_ZN9__gnu_cxx13new_allocatorIP4CellE7destroyIS2_EEvPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIP4CellE7destroyIS2_EEvPT_
_ZN9__gnu_cxx13new_allocatorIP4CellE7destroyIS2_EEvPT_:
.LFB5257:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaISt6vectorI4CellSaIS1_EEEE8allocateERS4_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaISt6vectorI4CellSaIS1_EEEE8allocateERS4_y
	.def	_ZNSt16allocator_traitsISaISt6vectorI4CellSaIS1_EEEE8allocateERS4_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaISt6vectorI4CellSaIS1_EEEE8allocateERS4_y
_ZNSt16allocator_traitsISaISt6vectorI4CellSaIS1_EEEE8allocateERS4_y:
.LFB5261:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEE8allocateEyPKv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEE10deallocateEPS4_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEE10deallocateEPS4_y
	.def	_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEE10deallocateEPS4_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEE10deallocateEPS4_y
_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEE10deallocateEPS4_y:
.LFB5262:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdlPv
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxneIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxneIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	.def	_ZN9__gnu_cxxneIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxneIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_
_ZN9__gnu_cxxneIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_:
.LFB5263:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEE4baseEv
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setne	%al
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEppEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEppEv
	.def	_ZN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEppEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEppEv
_ZN9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEppEv:
.LFB5264:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11__addressofISt6vectorI4CellSaIS1_EEEPT_RS4_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofISt6vectorI4CellSaIS1_EEEPT_RS4_
	.def	_ZSt11__addressofISt6vectorI4CellSaIS1_EEEPT_RS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofISt6vectorI4CellSaIS1_EEEPT_RS4_
_ZSt11__addressofISt6vectorI4CellSaIS1_EEEPT_RS4_:
.LFB5265:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEdeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEdeEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEdeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEdeEv
_ZNK9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEEdeEv:
.LFB5266:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt10_ConstructISt6vectorI4CellSaIS1_EEJRKS3_EEvPT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZSt10_ConstructISt6vectorI4CellSaIS1_EEJRKS3_EEvPT_DpOT0_
	.def	_ZSt10_ConstructISt6vectorI4CellSaIS1_EEJRKS3_EEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10_ConstructISt6vectorI4CellSaIS1_EEJRKS3_EEvPT_DpOT0_
_ZSt10_ConstructISt6vectorI4CellSaIS1_EEJRKS3_EEvPT_DpOT0_:
.LFB5267:
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
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRKSt6vectorI4CellSaIS1_EEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	%rax, %rdi
	movq	-48(%rbp), %rbx
	movq	%rbx, %rdx
	movl	$24, %ecx
	call	_ZnwyPv
	movq	%rax, %rsi
	movq	%rdi, %rdx
	movq	%rsi, %rcx
.LEHB119:
	call	_ZNSt6vectorI4CellSaIS0_EEC1ERKS2_
.LEHE119:
	jmp	.L1079
.L1078:
	movq	%rax, %rdi
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZdlPvS_
	movq	%rdi, %rax
	movq	%rax, %rcx
.LEHB120:
	call	_Unwind_Resume
	nop
.LEHE120:
.L1079:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5267:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5267-.LLSDACSB5267
.LLSDACSB5267:
	.uleb128 .LEHB119-.LFB5267
	.uleb128 .LEHE119-.LEHB119
	.uleb128 .L1078-.LFB5267
	.uleb128 0
	.uleb128 .LEHB120-.LFB5267
	.uleb128 .LEHE120-.LEHB120
	.uleb128 0
	.uleb128 0
.LLSDACSE5267:
	.section	.text$_ZSt10_ConstructISt6vectorI4CellSaIS1_EEJRKS3_EEvPT_DpOT0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZSt8_DestroyISt6vectorI4CellSaIS1_EEEvPT_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyISt6vectorI4CellSaIS1_EEEvPT_
	.def	_ZSt8_DestroyISt6vectorI4CellSaIS1_EEEvPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyISt6vectorI4CellSaIS1_EEEvPT_
_ZSt8_DestroyISt6vectorI4CellSaIS1_EEEvPT_:
.LFB5268:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorI4CellSaIS0_EED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEEC2Ev
	.def	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEEC2Ev
_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEEC2Ev:
.LFB5270:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE10deallocateEPS3_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE10deallocateEPS3_y
	.def	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE10deallocateEPS3_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE10deallocateEPS3_y
_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE10deallocateEPS3_y:
.LFB5272:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdlPv
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11__addressofISt10shared_ptrI4EdgeEEPT_RS3_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofISt10shared_ptrI4EdgeEEPT_RS3_
	.def	_ZSt11__addressofISt10shared_ptrI4EdgeEEPT_RS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofISt10shared_ptrI4EdgeEEPT_RS3_
_ZSt11__addressofISt10shared_ptrI4EdgeEEPT_RS3_:
.LFB5273:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyISt10shared_ptrI4EdgeEEvPT_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyISt10shared_ptrI4EdgeEEvPT_
	.def	_ZSt8_DestroyISt10shared_ptrI4EdgeEEvPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyISt10shared_ptrI4EdgeEEvPT_
_ZSt8_DestroyISt10shared_ptrI4EdgeEEvPT_:
.LFB5274:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSt10shared_ptrI4EdgeED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I4EdgeSaIS4_EJiiiiEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I4EdgeSaIS4_EJiiiiEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_
	.def	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I4EdgeSaIS4_EJiiiiEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I4EdgeSaIS4_EJiiiiEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I4EdgeSaIS4_EJiiiiEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_:
.LFB5277:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movb	%dl, 40(%rbp)
	movq	%r8, 40(%rbp)
	movq	%r9, 48(%rbp)
	movq	32(%rbp), %rax
	movq	$0, (%rax)
	movq	48(%rbp), %rdx
	leaq	-58(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC1IS0_EERKSaIT_E
	leaq	-80(%rbp), %rax
	leaq	-58(%rbp), %rdx
	movq	%rax, %rcx
.LEHB121:
	call	_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_
.LEHE121:
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv
	movq	%rax, -56(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRKSaI4EdgeEEONSt16remove_referenceIT_E4typeEOS5_
	movq	%rax, %rdx
	leaq	-57(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaI4EdgeEC1ERKS0_
	leaq	-57(%rbp), %rsi
	movq	64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %r14
	movq	72(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %r15
	movq	80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %r12
	movq	88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %r13
	movq	-56(%rbp), %rbx
	movq	%rbx, %rdx
	movl	$32, %ecx
	call	_ZnwyPv
	movq	%rax, %rdi
	movq	%r13, 40(%rsp)
	movq	%r12, 32(%rsp)
	movq	%r15, %r9
	movq	%r14, %r8
	movq	%rsi, %rdx
	movq	%rdi, %rcx
.LEHB122:
	call	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJiiiiEEES1_DpOT_
.LEHE122:
	leaq	-57(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaI4EdgeED1Ev
	movq	32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	leaq	-80(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev
	leaq	-58(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev
	jmp	.L1091
.L1090:
	movq	%rax, %rsi
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	call	_ZdlPvS_
	movq	%rsi, %rbx
	leaq	-57(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaI4EdgeED1Ev
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev
	jmp	.L1088
.L1089:
	movq	%rax, %rbx
.L1088:
	leaq	-58(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB123:
	call	_Unwind_Resume
	nop
.LEHE123:
.L1091:
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5277:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5277-.LLSDACSB5277
.LLSDACSB5277:
	.uleb128 .LEHB121-.LFB5277
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L1089-.LFB5277
	.uleb128 0
	.uleb128 .LEHB122-.LFB5277
	.uleb128 .LEHE122-.LEHB122
	.uleb128 .L1090-.LFB5277
	.uleb128 0
	.uleb128 .LEHB123-.LFB5277
	.uleb128 .LEHE123-.LEHB123
	.uleb128 0
	.uleb128 0
.LLSDACSE5277:
	.section	.text$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I4EdgeSaIS4_EJiiiiEEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.def	_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:
.LFB5278:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L1093
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	24(%rbp), %rdx
	call	*%rax
	jmp	.L1095
.L1093:
	movl	$0, %eax
.L1095:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_
	.def	_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_
_ZNSt12__shared_ptrI4EdgeLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_:
.LFB5279:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE8max_sizeERKS3_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE8max_sizeERKS3_
	.def	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE8max_sizeERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE8max_sizeERKS3_
_ZNSt16allocator_traitsISaISt10shared_ptrI4EdgeEEE8max_sizeERKS3_:
.LFB5280:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE8max_sizeEv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE8allocateEyPKv
	.def	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE8allocateEyPKv
_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE8allocateEyPKv:
.LFB5281:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE8max_sizeEv
	cmpq	%rax, 24(%rbp)
	seta	%al
	testb	%al, %al
	je	.L1100
	call	_ZSt17__throw_bad_allocv
.L1100:
	movq	24(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rcx
	call	_Znwy
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt13move_iteratorIPSt10shared_ptrI4EdgeEEC1ES3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt13move_iteratorIPSt10shared_ptrI4EdgeEEC1ES3_
	.def	_ZNSt13move_iteratorIPSt10shared_ptrI4EdgeEEC1ES3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt13move_iteratorIPSt10shared_ptrI4EdgeEEC1ES3_
_ZNSt13move_iteratorIPSt10shared_ptrI4EdgeEEC1ES3_:
.LFB5284:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18uninitialized_copyISt13move_iteratorIPSt10shared_ptrI4EdgeEES4_ET0_T_S7_S6_,"x"
	.linkonce discard
	.globl	_ZSt18uninitialized_copyISt13move_iteratorIPSt10shared_ptrI4EdgeEES4_ET0_T_S7_S6_
	.def	_ZSt18uninitialized_copyISt13move_iteratorIPSt10shared_ptrI4EdgeEES4_ET0_T_S7_S6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18uninitialized_copyISt13move_iteratorIPSt10shared_ptrI4EdgeEES4_ET0_T_S7_S6_
_ZSt18uninitialized_copyISt13move_iteratorIPSt10shared_ptrI4EdgeEES4_ET0_T_S7_S6_:
.LFB5285:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt10shared_ptrI4EdgeEES6_EET0_T_S9_S8_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt10_ConstructISt10shared_ptrI4EdgeEJRKS2_EEvPT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZSt10_ConstructISt10shared_ptrI4EdgeEJRKS2_EEvPT_DpOT0_
	.def	_ZSt10_ConstructISt10shared_ptrI4EdgeEJRKS2_EEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10_ConstructISt10shared_ptrI4EdgeEJRKS2_EEvPT_DpOT0_
_ZSt10_ConstructISt10shared_ptrI4EdgeEJRKS2_EEvPT_DpOT0_:
.LFB5286:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRKSt10shared_ptrI4EdgeEEOT_RNSt16remove_referenceIS5_E4typeE
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movl	$16, %ecx
	call	_ZnwyPv
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZNSt10shared_ptrI4EdgeEC1ERKS1_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_T0_,"x"
	.linkonce discard
	.globl	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_T0_
	.def	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_T0_
_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_T0_:
.LFB5287:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movb	%r9b, 40(%rbp)
	leaq	40(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_RT0_
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
.L1109:
	leaq	32(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxltIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	testb	%al, %al
	je	.L1110
	movq	-8(%rbp), %rdx
	leaq	40(%rbp), %rax
	movq	16(%rbp), %r8
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESF_EEbT_T0_
	testb	%al, %al
	je	.L1108
	leaq	40(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	24(%rbp), %rax
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_RT0_
.L1108:
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEppEv
	jmp	.L1109
.L1110:
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_RT0_,"x"
	.linkonce discard
	.globl	_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_RT0_
	.def	_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_RT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_RT0_
_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_RT0_:
.LFB5288:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
.L1113:
	leaq	24(%rbp), %rax
	leaq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxmiIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	cmpq	$1, %rax
	setg	%al
	testb	%al, %al
	je	.L1114
	leaq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEmmEv
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_RT0_
	jmp	.L1113
.L1114:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEmiEx,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEmiEx
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEmiEx;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEmiEx
_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEmiEx:
.LFB5289:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	negq	%rax
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEC1ERKS3_
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESF_EEbT_T0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESF_EEbT_T0_
	.def	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESF_EEbT_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESF_EEbT_T0_
_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESF_EEbT_T0_:
.LFB5291:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	32(%rbp), %rbx
	leaq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rsi
	leaq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rsi, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZZN19TrianglesGeneration14sort_trianglesEvENKUlRKSt5arrayIfLy3EES3_E_clES3_S3_
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_SG_T0_,"x"
	.linkonce discard
	.globl	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_SG_T0_
	.def	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_SG_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_SG_T0_
_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_SG_T0_:
.LFB5290:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	leaq	48(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESF_EEbT_T0_
	testb	%al, %al
	je	.L1120
	movq	40(%rbp), %rcx
	movq	32(%rbp), %rdx
	leaq	48(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESF_EEbT_T0_
	testb	%al, %al
	je	.L1121
	movq	32(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEES8_EvT_T0_
	jmp	.L1127
.L1121:
	movq	40(%rbp), %rcx
	movq	24(%rbp), %rdx
	leaq	48(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESF_EEbT_T0_
	testb	%al, %al
	je	.L1123
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEES8_EvT_T0_
	jmp	.L1127
.L1123:
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEES8_EvT_T0_
	jmp	.L1127
.L1120:
	movq	40(%rbp), %rcx
	movq	24(%rbp), %rdx
	leaq	48(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESF_EEbT_T0_
	testb	%al, %al
	je	.L1125
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEES8_EvT_T0_
	jmp	.L1127
.L1125:
	movq	40(%rbp), %rcx
	movq	32(%rbp), %rdx
	leaq	48(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESF_EEbT_T0_
	testb	%al, %al
	je	.L1126
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEES8_EvT_T0_
	jmp	.L1127
.L1126:
	movq	32(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEES8_EvT_T0_
.L1127:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEET_SG_SG_SG_T0_,"x"
	.linkonce discard
	.globl	_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEET_SG_SG_SG_T0_
	.def	_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEET_SG_SG_SG_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEET_SG_SG_SG_T0_
_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEET_SG_SG_SG_T0_:
.LFB5292:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movb	%r9b, 40(%rbp)
.L1130:
	movq	32(%rbp), %rdx
	leaq	40(%rbp), %rax
	movq	%rdx, %r8
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESF_EEbT_T0_
	testb	%al, %al
	je	.L1129
	leaq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEppEv
	jmp	.L1130
.L1129:
	leaq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEmmEv
.L1132:
	movq	24(%rbp), %rcx
	movq	32(%rbp), %rdx
	leaq	40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESF_EEbT_T0_
	testb	%al, %al
	je	.L1131
	leaq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEmmEv
	jmp	.L1132
.L1131:
	leaq	24(%rbp), %rax
	movq	%rax, %rdx
	leaq	16(%rbp), %rcx
	call	_ZN9__gnu_cxxltIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	xorl	$1, %eax
	testb	%al, %al
	je	.L1133
	movq	16(%rbp), %rax
	jmp	.L1135
.L1133:
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEES8_EvT_T0_
	leaq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEppEv
	jmp	.L1130
.L1135:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_,"x"
	.linkonce discard
	.globl	_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_
	.def	_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_
_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_:
.LFB5293:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEET_S9_
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEET_S9_
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %r8
	movq	%rbx, %rdx
	call	_ZSt23__copy_move_backward_a2ILb1EN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEES8_ET1_T0_SA_S9_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx5__ops15__val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS9_EE,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxx5__ops15__val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS9_EE
	.def	_ZN9__gnu_cxx5__ops15__val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS9_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx5__ops15__val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS9_EE
_ZN9__gnu_cxx5__ops15__val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS9_EE:
.LFB5294:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movb	%cl, -48(%rbp)
	leaq	-48(%rbp), %rcx
	call	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES7_E_EEEONSt16remove_referenceIT_E4typeEOSC_
	movq	%rax, %rdx
	leaq	-81(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EC1EONS0_15_Iter_comp_iterIS7_EE
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_T0_,"x"
	.linkonce discard
	.globl	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_T0_
	.def	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_T0_
_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_T0_:
.LFB5295:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -32(%rbp)
	movb	%dl, -24(%rbp)
	leaq	-32(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rcx
	call	_ZSt4moveIRSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rdx
	movq	%rdx, -76(%rbp)
	movl	8(%rax), %eax
	movl	%eax, -68(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEmmEv
.L1142:
	movq	-88(%rbp), %rcx
	leaq	-76(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclIS4_NS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_
	testb	%al, %al
	je	.L1141
	leaq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rcx
	call	_ZSt4moveIRSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rbx
	leaq	-32(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	(%rbx), %rdx
	movq	%rdx, (%rax)
	movl	8(%rbx), %edx
	movl	%edx, 8(%rax)
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEmmEv
	jmp	.L1142
.L1141:
	leaq	-76(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rbx
	leaq	-32(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	(%rbx), %rdx
	movq	%rdx, (%rax)
	movl	8(%rbx), %edx
	movl	%edx, 8(%rax)
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE8max_sizeEv
	.def	_ZNK9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE8max_sizeEv
_ZNK9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE8max_sizeEv:
.LFB5296:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movabsq	$1537228672809129301, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPSt5arrayIfLy3EEyEET_S5_T0_,"x"
	.linkonce discard
	.globl	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPSt5arrayIfLy3EEyEET_S5_T0_
	.def	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPSt5arrayIfLy3EEyEET_S5_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPSt5arrayIfLy3EEyEET_S5_T0_
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPSt5arrayIfLy3EEyEET_S5_T0_:
.LFB5297:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	$0, %eax
.L1147:
	pxor	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp,%rax,4)
	cmpq	$2, %rax
	je	.L1146
	addq	$1, %rax
	jmp	.L1147
.L1146:
	leaq	-12(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt6fill_nIPSt5arrayIfLy3EEyS1_ET_S3_T0_RKT1_
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE8allocateEyPKv
	.def	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE8allocateEyPKv
_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE8allocateEyPKv:
.LFB5298:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE8max_sizeEv
	cmpq	%rax, 24(%rbp)
	seta	%al
	testb	%al, %al
	je	.L1150
	call	_ZSt17__throw_bad_allocv
.L1150:
	movq	24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rcx
	call	_Znwy
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt13move_iteratorIPSt5arrayIfLy3EEEC1ES2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt13move_iteratorIPSt5arrayIfLy3EEEC1ES2_
	.def	_ZNSt13move_iteratorIPSt5arrayIfLy3EEEC1ES2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt13move_iteratorIPSt5arrayIfLy3EEEC1ES2_
_ZNSt13move_iteratorIPSt5arrayIfLy3EEEC1ES2_:
.LFB5301:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18uninitialized_copyISt13move_iteratorIPSt5arrayIfLy3EEES3_ET0_T_S6_S5_,"x"
	.linkonce discard
	.globl	_ZSt18uninitialized_copyISt13move_iteratorIPSt5arrayIfLy3EEES3_ET0_T_S6_S5_
	.def	_ZSt18uninitialized_copyISt13move_iteratorIPSt5arrayIfLy3EEES3_ET0_T_S6_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18uninitialized_copyISt13move_iteratorIPSt5arrayIfLy3EEES3_ET0_T_S6_S5_
_ZSt18uninitialized_copyISt13move_iteratorIPSt5arrayIfLy3EEES3_ET0_T_S6_S5_:
.LFB5302:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPSt5arrayIfLy3EEES5_EET0_T_S8_S7_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE10deallocateEPS2_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE10deallocateEPS2_y
	.def	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE10deallocateEPS2_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE10deallocateEPS2_y
_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE10deallocateEPS2_y:
.LFB5303:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdlPv
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEEC2Ev
	.def	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEEC2Ev
_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEEC2Ev:
.LFB5305:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE7destroyIS2_EEvPT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE7destroyIS2_EEvPT_
	.def	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE7destroyIS2_EEvPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE7destroyIS2_EEvPT_
_ZN9__gnu_cxx13new_allocatorISt5arrayIfLy3EEE7destroyIS2_EEvPT_:
.LFB5307:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_,"x"
	.linkonce discard
	.globl	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_
	.def	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_:
.LFB5308:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEET_SA_
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEET_SA_
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %r8
	movq	%rbx, %rdx
	call	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIRSaISt10shared_ptrI4EdgeEEEONSt16remove_referenceIT_E4typeEOS6_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRSaISt10shared_ptrI4EdgeEEEONSt16remove_referenceIT_E4typeEOS6_
	.def	_ZSt4moveIRSaISt10shared_ptrI4EdgeEEEONSt16remove_referenceIT_E4typeEOS6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRSaISt10shared_ptrI4EdgeEEEONSt16remove_referenceIT_E4typeEOS6_
_ZSt4moveIRSaISt10shared_ptrI4EdgeEEEONSt16remove_referenceIT_E4typeEOS6_:
.LFB5309:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIRSaISt5arrayIfLy3EEEEONSt16remove_referenceIT_E4typeEOS5_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRSaISt5arrayIfLy3EEEEONSt16remove_referenceIT_E4typeEOS5_
	.def	_ZSt4moveIRSaISt5arrayIfLy3EEEEONSt16remove_referenceIT_E4typeEOS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRSaISt5arrayIfLy3EEEEONSt16remove_referenceIT_E4typeEOS5_
_ZSt4moveIRSaISt5arrayIfLy3EEEEONSt16remove_referenceIT_E4typeEOS5_:
.LFB5310:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI4CellEC2ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI4CellEC2ERKS2_
	.def	_ZN9__gnu_cxx13new_allocatorI4CellEC2ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI4CellEC2ERKS2_
_ZN9__gnu_cxx13new_allocatorI4CellEC2ERKS2_:
.LFB5312:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaI4CellEE8allocateERS1_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaI4CellEE8allocateERS1_y
	.def	_ZNSt16allocator_traitsISaI4CellEE8allocateERS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaI4CellEE8allocateERS1_y
_ZNSt16allocator_traitsISaI4CellEE8allocateERS1_y:
.LFB5314:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI4CellE8allocateEyPKv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI4CellE10deallocateEPS1_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI4CellE10deallocateEPS1_y
	.def	_ZN9__gnu_cxx13new_allocatorI4CellE10deallocateEPS1_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI4CellE10deallocateEPS1_y
_ZN9__gnu_cxx13new_allocatorI4CellE10deallocateEPS1_y:
.LFB5315:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdlPv
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP4CellyEET_S4_T0_,"x"
	.linkonce discard
	.globl	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP4CellyEET_S4_T0_
	.def	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP4CellyEET_S4_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP4CellyEET_S4_T0_
_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP4CellyEET_S4_T0_:
.LFB5316:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L1170:
	cmpq	$0, 24(%rbp)
	je	.L1169
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt11__addressofI4CellEPT_RS1_
	movq	%rax, %rcx
	call	_ZSt10_ConstructI4CellJEEvPT_DpOT0_
	subq	$1, 24(%rbp)
	addq	$72, -8(%rbp)
	jmp	.L1170
.L1169:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11__addressofI4CellEPT_RS1_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofI4CellEPT_RS1_
	.def	_ZSt11__addressofI4CellEPT_RS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofI4CellEPT_RS1_
_ZSt11__addressofI4CellEPT_RS1_:
.LFB5317:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt5arrayISt10shared_ptrI4EdgeELy4EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt5arrayISt10shared_ptrI4EdgeELy4EED1Ev
	.def	_ZNSt5arrayISt10shared_ptrI4EdgeELy4EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt5arrayISt10shared_ptrI4EdgeELy4EED1Ev
_ZNSt5arrayISt10shared_ptrI4EdgeELy4EED1Ev:
.LFB5322:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	je	.L1175
	movq	-64(%rbp), %rax
	leaq	64(%rax), %rbx
.L1176:
	movq	-64(%rbp), %rax
	cmpq	%rax, %rbx
	je	.L1175
	subq	$16, %rbx
	movq	%rbx, %rcx
	call	_ZNSt10shared_ptrI4EdgeED1Ev
	jmp	.L1176
.L1175:
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN4CellD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4CellD1Ev
	.def	_ZN4CellD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4CellD1Ev
_ZN4CellD1Ev:
.LFB5324:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	call	_ZNSt5arrayISt10shared_ptrI4EdgeELy4EED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyI4CellEvPT_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyI4CellEvPT_
	.def	_ZSt8_DestroyI4CellEvPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyI4CellEvPT_
_ZSt8_DestroyI4CellEvPT_:
.LFB5318:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN4CellD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorI4CellSaIS3_EEyS5_EET_S7_T0_RKT1_,"x"
	.linkonce discard
	.globl	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorI4CellSaIS3_EEyS5_EET_S7_T0_RKT1_
	.def	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorI4CellSaIS3_EEyS5_EET_S7_T0_RKT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorI4CellSaIS3_EEyS5_EET_S7_T0_RKT1_
_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorI4CellSaIS3_EEyS5_EET_S7_T0_RKT1_:
.LFB5325:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%r8, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)
.L1181:
	cmpq	$0, -40(%rbp)
	je	.L1180
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt11__addressofISt6vectorI4CellSaIS1_EEEPT_RS4_
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
.LEHB124:
	call	_ZSt10_ConstructISt6vectorI4CellSaIS1_EEJRKS3_EEvPT_DpOT0_
.LEHE124:
	subq	$1, -40(%rbp)
	addq	$24, -88(%rbp)
	jmp	.L1181
.L1180:
	movq	-88(%rbp), %rax
	jmp	.L1187
.L1185:
	movq	%rax, %rcx
	call	__cxa_begin_catch
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
.LEHB125:
	call	_ZSt8_DestroyIPSt6vectorI4CellSaIS1_EEEvT_S5_
	call	__cxa_rethrow
.LEHE125:
.L1186:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB126:
	call	_Unwind_Resume
.LEHE126:
.L1187:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA5325:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT5325-.LLSDATTD5325
.LLSDATTD5325:
	.byte	0x1
	.uleb128 .LLSDACSE5325-.LLSDACSB5325
.LLSDACSB5325:
	.uleb128 .LEHB124-.LFB5325
	.uleb128 .LEHE124-.LEHB124
	.uleb128 .L1185-.LFB5325
	.uleb128 0x1
	.uleb128 .LEHB125-.LFB5325
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L1186-.LFB5325
	.uleb128 0
	.uleb128 .LEHB126-.LFB5325
	.uleb128 .LEHE126-.LEHB126
	.uleb128 0
	.uleb128 0
.LLSDACSE5325:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT5325:
	.section	.text$_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorI4CellSaIS3_EEyS5_EET_S7_T0_RKT1_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt14pointer_traitsIPKjE10pointer_toERS0_,"x"
	.linkonce discard
	.globl	_ZNSt14pointer_traitsIPKjE10pointer_toERS0_
	.def	_ZNSt14pointer_traitsIPKjE10pointer_toERS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt14pointer_traitsIPKjE10pointer_toERS0_
_ZNSt14pointer_traitsIPKjE10pointer_toERS0_:
.LFB5326:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZSt9addressofIKjEPT_RS1_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjy,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjy
	.def	_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjy
_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjy:
.LFB5327:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdlPv
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11__addressofIN2sf6VertexEEPT_RS2_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofIN2sf6VertexEEPT_RS2_
	.def	_ZSt11__addressofIN2sf6VertexEEPT_RS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofIN2sf6VertexEEPT_RS2_
_ZSt11__addressofIN2sf6VertexEEPT_RS2_:
.LFB5355:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt10_ConstructIN2sf6VertexEJRKS1_EEvPT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZSt10_ConstructIN2sf6VertexEJRKS1_EEvPT_DpOT0_
	.def	_ZSt10_ConstructIN2sf6VertexEJRKS1_EEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10_ConstructIN2sf6VertexEJRKS1_EEvPT_DpOT0_
_ZSt10_ConstructIN2sf6VertexEJRKS1_EEvPT_DpOT0_:
.LFB5356:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRKN2sf6VertexEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movl	$20, %ecx
	call	_ZnwyPv
	movq	(%rbx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rbx), %rdx
	movq	%rdx, 8(%rax)
	movl	16(%rbx), %edx
	movl	%edx, 16(%rax)
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZStneIPN2sf6VertexEEbRKSt13move_iteratorIT_ES7_,"x"
	.linkonce discard
	.globl	_ZStneIPN2sf6VertexEEbRKSt13move_iteratorIT_ES7_
	.def	_ZStneIPN2sf6VertexEEbRKSt13move_iteratorIT_ES7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStneIPN2sf6VertexEEbRKSt13move_iteratorIT_ES7_
_ZStneIPN2sf6VertexEEbRKSt13move_iteratorIT_ES7_:
.LFB5357:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSteqIPN2sf6VertexEEbRKSt13move_iteratorIT_ES7_
	xorl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt13move_iteratorIPN2sf6VertexEEppEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt13move_iteratorIPN2sf6VertexEEppEv
	.def	_ZNSt13move_iteratorIPN2sf6VertexEEppEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt13move_iteratorIPN2sf6VertexEEppEv
_ZNSt13move_iteratorIPN2sf6VertexEEppEv:
.LFB5358:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	leaq	20(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt13move_iteratorIPN2sf6VertexEEdeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt13move_iteratorIPN2sf6VertexEEdeEv
	.def	_ZNKSt13move_iteratorIPN2sf6VertexEEdeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt13move_iteratorIPN2sf6VertexEEdeEv
_ZNKSt13move_iteratorIPN2sf6VertexEEdeEv:
.LFB5359:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt10_ConstructIN2sf6VertexEJS1_EEvPT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZSt10_ConstructIN2sf6VertexEJS1_EEvPT_DpOT0_
	.def	_ZSt10_ConstructIN2sf6VertexEJS1_EEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10_ConstructIN2sf6VertexEJS1_EEvPT_DpOT0_
_ZSt10_ConstructIN2sf6VertexEJS1_EEvPT_DpOT0_:
.LFB5360:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIN2sf6VertexEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movl	$20, %ecx
	call	_ZnwyPv
	movq	(%rbx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rbx), %rdx
	movq	%rdx, 8(%rax)
	movl	16(%rbx), %edx
	movl	%edx, 16(%rax)
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4copyISt13move_iteratorIPP4CellES3_ET0_T_S6_S5_,"x"
	.linkonce discard
	.globl	_ZSt4copyISt13move_iteratorIPP4CellES3_ET0_T_S6_S5_
	.def	_ZSt4copyISt13move_iteratorIPP4CellES3_ET0_T_S6_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4copyISt13move_iteratorIPP4CellES3_ET0_T_S6_S5_
_ZSt4copyISt13move_iteratorIPP4CellES3_ET0_T_S6_S5_:
.LFB5361:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__miter_baseIPP4CellEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZSt12__miter_baseIPP4CellEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %r8
	movq	%rbx, %rdx
	call	_ZSt14__copy_move_a2ILb1EPP4CellS2_ET1_T0_S4_S3_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEE8allocateEyPKv
	.def	_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEE8allocateEyPKv
_ZN9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEE8allocateEyPKv:
.LFB5362:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEE8max_sizeEv
	cmpq	%rax, 24(%rbp)
	seta	%al
	testb	%al, %al
	je	.L1204
	call	_ZSt17__throw_bad_allocv
.L1204:
	movq	24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	call	_Znwy
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIPKSt6vectorI4CellSaIS2_EES1_IS4_SaIS4_EEE4baseEv:
.LFB5363:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIRKSt6vectorI4CellSaIS1_EEEOT_RNSt16remove_referenceIS6_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIRKSt6vectorI4CellSaIS1_EEEOT_RNSt16remove_referenceIS6_E4typeE
	.def	_ZSt7forwardIRKSt6vectorI4CellSaIS1_EEEOT_RNSt16remove_referenceIS6_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIRKSt6vectorI4CellSaIS1_EEEOT_RNSt16remove_referenceIS6_E4typeE
_ZSt7forwardIRKSt6vectorI4CellSaIS1_EEEOT_RNSt16remove_referenceIS6_E4typeE:
.LFB5364:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI4CellSaIS0_EEC1ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4CellSaIS0_EEC1ERKS2_
	.def	_ZNSt6vectorI4CellSaIS0_EEC1ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4CellSaIS0_EEC1ERKS2_
_ZNSt6vectorI4CellSaIS0_EEC1ERKS2_:
.LFB5367:
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
	movq	%rcx, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt12_Vector_baseI4CellSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	leaq	-81(%rbp), %rax
	movq	%rax, %rcx
.LEHB127:
	call	_ZN9__gnu_cxx14__alloc_traitsISaI4CellES1_E17_S_select_on_copyERKS2_
.LEHE127:
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4CellSaIS0_EE4sizeEv
	movq	%rax, %rdx
	leaq	-81(%rbp), %rax
	movq	%rax, %r8
	movq	%rbx, %rcx
.LEHB128:
	call	_ZNSt12_Vector_baseI4CellSaIS0_EEC2EyRKS1_
.LEHE128:
	leaq	-81(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaI4CellED1Ev
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4CellSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4CellSaIS0_EE3endEv
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4CellSaIS0_EE5beginEv
	movq	%rdi, %r9
	movq	%rbx, %r8
	movq	%rsi, %rdx
	movq	%rax, %rcx
.LEHB129:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E
.LEHE129:
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L1215
.L1213:
	movq	%rax, %rbx
	leaq	-81(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaI4CellED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB130:
	call	_Unwind_Resume
.L1214:
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4CellSaIS0_EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
	nop
.LEHE130:
.L1215:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5367:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5367-.LLSDACSB5367
.LLSDACSB5367:
	.uleb128 .LEHB127-.LFB5367
	.uleb128 .LEHE127-.LEHB127
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB128-.LFB5367
	.uleb128 .LEHE128-.LEHB128
	.uleb128 .L1213-.LFB5367
	.uleb128 0
	.uleb128 .LEHB129-.LFB5367
	.uleb128 .LEHE129-.LEHB129
	.uleb128 .L1214-.LFB5367
	.uleb128 0
	.uleb128 .LEHB130-.LFB5367
	.uleb128 .LEHE130-.LEHB130
	.uleb128 0
	.uleb128 0
.LLSDACSE5367:
	.section	.text$_ZNSt6vectorI4CellSaIS0_EEC1ERKS2_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC1IS0_EERKSaIT_E,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC1IS0_EERKSaIT_E
	.def	_ZNSaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC1IS0_EERKSaIT_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC1IS0_EERKSaIT_E
_ZNSaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC1IS0_EERKSaIT_E:
.LFB5370:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev
	.def	_ZNSaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev
_ZNSaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev:
.LFB5373:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_,"x"
	.linkonce discard
	.globl	_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_
	.def	_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_
_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_:
.LFB5374:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_y
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC1ERS6_PS5_
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev
	.def	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev:
.LFB5377:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L1222
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_y
.L1222:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5377:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5377-.LLSDACSB5377
.LLSDACSB5377:
.LLSDACSE5377:
	.section	.text$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv
	.def	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv:
.LFB5381:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	call	_ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIRKSaI4EdgeEEONSt16remove_referenceIT_E4typeEOS5_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRKSaI4EdgeEEONSt16remove_referenceIT_E4typeEOS5_
	.def	_ZSt4moveIRKSaI4EdgeEEONSt16remove_referenceIT_E4typeEOS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRKSaI4EdgeEEONSt16remove_referenceIT_E4typeEOS5_
_ZSt4moveIRKSaI4EdgeEEONSt16remove_referenceIT_E4typeEOS5_:
.LFB5382:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaI4EdgeEC2ERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaI4EdgeEC2ERKS0_
	.def	_ZNSaI4EdgeEC2ERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaI4EdgeEC2ERKS0_
_ZNSaI4EdgeEC2ERKS0_:
.LFB5384:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI4EdgeEC2ERKS2_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaI4EdgeEC1ERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaI4EdgeEC1ERKS0_
	.def	_ZNSaI4EdgeEC1ERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaI4EdgeEC1ERKS0_
_ZNSaI4EdgeEC1ERKS0_:
.LFB5385:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI4EdgeEC2ERKS2_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt14_Sp_ebo_helperILi0ESaI4EdgeELb1EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt14_Sp_ebo_helperILi0ESaI4EdgeELb1EED2Ev
	.def	_ZNSt14_Sp_ebo_helperILi0ESaI4EdgeELb1EED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt14_Sp_ebo_helperILi0ESaI4EdgeELb1EED2Ev
_ZNSt14_Sp_ebo_helperILi0ESaI4EdgeELb1EED2Ev:
.LFB5389:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaI4EdgeED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD1Ev
	.def	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD1Ev
_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD1Ev:
.LFB5392:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSt14_Sp_ebo_helperILi0ESaI4EdgeELb1EED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJiiiiEEES1_DpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJiiiiEEES1_DpOT_
	.def	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJiiiiEEES1_DpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJiiiiEEES1_DpOT_
_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJiiiiEEES1_DpOT_:
.LFB5394:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 48(%rbp)
	movq	%rdx, 56(%rbp)
	movq	%r8, 64(%rbp)
	movq	%r9, 72(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev
	leaq	16+_ZTVSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE(%rip), %rdx
	movq	48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	48(%rbp), %rax
	leaq	16(%rax), %rbx
	movq	56(%rbp), %rdx
	leaq	-1(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaI4EdgeEC1ERKS0_
	leaq	-1(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC1ES1_
	leaq	-1(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaI4EdgeED1Ev
	movq	88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rsi
	movq	80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rbx
	movq	72(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %r12
	movq	64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdi
	movq	48(%rbp), %rcx
	call	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv
	movq	%rax, %rdx
	movq	56(%rbp), %rax
	movq	%rsi, 40(%rsp)
	movq	%rbx, 32(%rsp)
	movq	%r12, %r9
	movq	%rdi, %r8
	movq	%rax, %rcx
.LEHB131:
	call	_ZNSt16allocator_traitsISaI4EdgeEE9constructIS0_JiiiiEEEvRS1_PT_DpOT0_
.LEHE131:
	jmp	.L1234
.L1233:
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD1Ev
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB132:
	call	_Unwind_Resume
	nop
.LEHE132:
.L1234:
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5394:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5394-.LLSDACSB5394
.LLSDACSB5394:
	.uleb128 .LEHB131-.LFB5394
	.uleb128 .LEHE131-.LEHB131
	.uleb128 .L1233-.LFB5394
	.uleb128 0
	.uleb128 .LEHB132-.LFB5394
	.uleb128 .LEHE132-.LEHB132
	.uleb128 0
	.uleb128 0
.LLSDACSE5394:
	.section	.text$_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJiiiiEEES1_DpOT_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn
	.def	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn:
.LFB5395:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE8max_sizeEv
	.def	_ZNK9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE8max_sizeEv
_ZNK9__gnu_cxx13new_allocatorISt10shared_ptrI4EdgeEE8max_sizeEv:
.LFB5396:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movabsq	$1152921504606846975, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt10shared_ptrI4EdgeEES6_EET0_T_S9_S8_,"x"
	.linkonce discard
	.globl	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt10shared_ptrI4EdgeEES6_EET0_T_S9_S8_
	.def	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt10shared_ptrI4EdgeEES6_EET0_T_S9_S8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt10shared_ptrI4EdgeEES6_EET0_T_S9_S8_
_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt10shared_ptrI4EdgeEES6_EET0_T_S9_S8_:
.LFB5397:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
.L1241:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdx
	leaq	-48(%rbp), %rcx
.LEHB133:
	call	_ZStneIPSt10shared_ptrI4EdgeEEbRKSt13move_iteratorIT_ES8_
.LEHE133:
	testb	%al, %al
	je	.L1240
	leaq	-48(%rbp), %rcx
	call	_ZNKSt13move_iteratorIPSt10shared_ptrI4EdgeEEdeEv
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt11__addressofISt10shared_ptrI4EdgeEEPT_RS3_
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt10_ConstructISt10shared_ptrI4EdgeEJS2_EEvPT_DpOT0_
	leaq	-48(%rbp), %rcx
	call	_ZNSt13move_iteratorIPSt10shared_ptrI4EdgeEEppEv
	addq	$16, -88(%rbp)
	jmp	.L1241
.L1240:
	movq	-88(%rbp), %rax
	jmp	.L1247
.L1245:
	movq	%rax, %rcx
	call	__cxa_begin_catch
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
.LEHB134:
	call	_ZSt8_DestroyIPSt10shared_ptrI4EdgeEEvT_S4_
	call	__cxa_rethrow
.LEHE134:
.L1246:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB135:
	call	_Unwind_Resume
.LEHE135:
.L1247:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA5397:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT5397-.LLSDATTD5397
.LLSDATTD5397:
	.byte	0x1
	.uleb128 .LLSDACSE5397-.LLSDACSB5397
.LLSDACSB5397:
	.uleb128 .LEHB133-.LFB5397
	.uleb128 .LEHE133-.LEHB133
	.uleb128 .L1245-.LFB5397
	.uleb128 0x1
	.uleb128 .LEHB134-.LFB5397
	.uleb128 .LEHE134-.LEHB134
	.uleb128 .L1246-.LFB5397
	.uleb128 0
	.uleb128 .LEHB135-.LFB5397
	.uleb128 .LEHE135-.LEHB135
	.uleb128 0
	.uleb128 0
.LLSDACSE5397:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT5397:
	.section	.text$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt10shared_ptrI4EdgeEES6_EET0_T_S9_S8_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZSt7forwardIRKSt10shared_ptrI4EdgeEEOT_RNSt16remove_referenceIS5_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIRKSt10shared_ptrI4EdgeEEOT_RNSt16remove_referenceIS5_E4typeE
	.def	_ZSt7forwardIRKSt10shared_ptrI4EdgeEEOT_RNSt16remove_referenceIS5_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIRKSt10shared_ptrI4EdgeEEOT_RNSt16remove_referenceIS5_E4typeE
_ZSt7forwardIRKSt10shared_ptrI4EdgeEEOT_RNSt16remove_referenceIS5_E4typeE:
.LFB5398:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_RT0_,"x"
	.linkonce discard
	.globl	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_RT0_
	.def	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_RT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_RT0_
_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_RT0_:
.LFB5399:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$96, %rsp
	.seh_stackalloc	96
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	leaq	24(%rbp), %rax
	leaq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxmiIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	cmpq	$1, %rax
	setle	%al
	testb	%al, %al
	jne	.L1255
	leaq	24(%rbp), %rax
	leaq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxmiIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	$2, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -8(%rbp)
.L1254:
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEplEx
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rcx
	call	_ZSt4moveIRSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rdx
	movq	%rdx, -36(%rbp)
	movl	8(%rax), %eax
	movl	%eax, -28(%rbp)
	leaq	-36(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	8(%rax), %eax
	movl	%eax, -56(%rbp)
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEExS3_NS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_T0_SH_T1_T2_
	cmpq	$0, -8(%rbp)
	je	.L1256
	subq	$1, -8(%rbp)
	jmp	.L1254
.L1255:
	nop
	jmp	.L1250
.L1256:
	nop
.L1250:
	addq	$96, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxltIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxltIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.def	_ZN9__gnu_cxxltIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxltIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
_ZN9__gnu_cxxltIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_:
.LFB5400:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setb	%al
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_RT0_,"x"
	.linkonce discard
	.globl	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_RT0_
	.def	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_RT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_RT0_
_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_SG_SG_RT0_:
.LFB5401:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%r8, -16(%rbp)
	movq	%r9, -8(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rcx
	call	_ZSt4moveIRSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rdx
	movq	%rdx, -76(%rbp)
	movl	8(%rax), %eax
	movl	%eax, -68(%rbp)
	leaq	-32(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rcx
	call	_ZSt4moveIRSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rbx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	(%rbx), %rdx
	movq	%rdx, (%rax)
	movl	8(%rbx), %edx
	movl	%edx, 8(%rax)
	leaq	-76(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rbx
	leaq	-24(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZN9__gnu_cxxmiIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	movq	%rax, %rdx
	movq	(%rbx), %rax
	movq	%rax, -96(%rbp)
	movl	8(%rbx), %eax
	movl	%eax, -88(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %r9
	movq	%rdx, %r8
	movl	$0, %edx
	movq	-32(%rbp), %rcx
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEExS3_NS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_T0_SH_T1_T2_
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEmmEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEmmEv
	.def	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEmmEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEmmEv
_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEmmEv:
.LFB5402:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	leaq	-12(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEES8_EvT_T0_,"x"
	.linkonce discard
	.globl	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEES8_EvT_T0_
	.def	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEES8_EvT_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEES8_EvT_T0_
_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEES8_EvT_T0_:
.LFB5403:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rbx
	leaq	-64(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt4swapIfLy3EENSt9enable_ifIXsrNSt14__array_traitsIT_XT0_EE13_Is_swappableE5valueEvE4typeERSt5arrayIS2_XT0_EES9_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEET_S9_,"x"
	.linkonce discard
	.globl	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEET_S9_
	.def	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEET_S9_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEET_S9_
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEET_S9_:
.LFB5404:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt23__copy_move_backward_a2ILb1EN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEES8_ET1_T0_SA_S9_,"x"
	.linkonce discard
	.globl	_ZSt23__copy_move_backward_a2ILb1EN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEES8_ET1_T0_SA_S9_
	.def	_ZSt23__copy_move_backward_a2ILb1EN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEES8_ET1_T0_SA_S9_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt23__copy_move_backward_a2ILb1EN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEES8_ET1_T0_SA_S9_
_ZSt23__copy_move_backward_a2ILb1EN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEES8_ET1_T0_SA_S9_:
.LFB5405:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIPSt5arrayIfLy3EESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE
	movq	%rax, %rsi
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIPSt5arrayIfLy3EESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE
	movq	%rax, %rbx
	movq	32(%rbp), %rcx
	call	_ZSt12__niter_baseIPSt5arrayIfLy3EESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt22__copy_move_backward_aILb1EPSt5arrayIfLy3EES2_ET1_T0_S4_S3_
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEC1ERKS3_
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES7_E_EEEONSt16remove_referenceIT_E4typeEOSC_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES7_E_EEEONSt16remove_referenceIT_E4typeEOSC_
	.def	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES7_E_EEEONSt16remove_referenceIT_E4typeEOSC_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES7_E_EEEONSt16remove_referenceIT_E4typeEOSC_
_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES7_E_EEEONSt16remove_referenceIT_E4typeEOSC_:
.LFB5406:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EC1EONS0_15_Iter_comp_iterIS7_EE,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EC1EONS0_15_Iter_comp_iterIS7_EE
	.def	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EC1EONS0_15_Iter_comp_iterIS7_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EC1EONS0_15_Iter_comp_iterIS7_EE
_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EC1EONS0_15_Iter_comp_iterIS7_EE:
.LFB5409:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES4_E_EONSt16remove_referenceIT_E4typeEOS8_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclIS4_NS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclIS4_NS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_
	.def	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclIS4_NS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclIS4_NS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_
_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclIS4_NS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_:
.LFB5410:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-64(%rbp), %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZZN19TrianglesGeneration14sort_trianglesEvENKUlRKSt5arrayIfLy3EES3_E_clES3_S3_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt6fill_nIPSt5arrayIfLy3EEyS1_ET_S3_T0_RKT1_,"x"
	.linkonce discard
	.globl	_ZSt6fill_nIPSt5arrayIfLy3EEyS1_ET_S3_T0_RKT1_
	.def	_ZSt6fill_nIPSt5arrayIfLy3EEyS1_ET_S3_T0_RKT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt6fill_nIPSt5arrayIfLy3EEyS1_ET_S3_T0_RKT1_
_ZSt6fill_nIPSt5arrayIfLy3EEyS1_ET_S3_T0_RKT1_:
.LFB5411:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rcx
	call	_ZSt12__niter_baseIPSt5arrayIfLy3EEET_S3_
	movq	%rax, %rcx
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	call	_ZSt10__fill_n_aIPSt5arrayIfLy3EEyS1_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT1_E7__valueET_E6__typeES8_T0_RKS6_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPSt5arrayIfLy3EEES5_EET0_T_S8_S7_,"x"
	.linkonce discard
	.globl	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPSt5arrayIfLy3EEES5_EET0_T_S8_S7_
	.def	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPSt5arrayIfLy3EEES5_EET0_T_S8_S7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPSt5arrayIfLy3EEES5_EET0_T_S8_S7_
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPSt5arrayIfLy3EEES5_EET0_T_S8_S7_:
.LFB5412:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt4copyISt13move_iteratorIPSt5arrayIfLy3EEES3_ET0_T_S6_S5_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEET_SA_,"x"
	.linkonce discard
	.globl	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEET_SA_
	.def	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEET_SA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEET_SA_
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEET_SA_:
.LFB5413:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_,"x"
	.linkonce discard
	.globl	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_
	.def	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_
_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_:
.LFB5414:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIPSt5arrayIfLy3EEET_S3_
	movq	%rax, %rsi
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIPKSt5arrayIfLy3EESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE
	movq	%rax, %rbx
	movq	32(%rbp), %rcx
	call	_ZSt12__niter_baseIPKSt5arrayIfLy3EESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt13__copy_move_aILb0EPKSt5arrayIfLy3EEPS1_ET1_T0_S6_S5_
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI4CellE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI4CellE8allocateEyPKv
	.def	_ZN9__gnu_cxx13new_allocatorI4CellE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI4CellE8allocateEyPKv
_ZN9__gnu_cxx13new_allocatorI4CellE8allocateEyPKv:
.LFB5415:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx13new_allocatorI4CellE8max_sizeEv
	cmpq	%rax, 24(%rbp)
	seta	%al
	testb	%al, %al
	je	.L1281
	call	_ZSt17__throw_bad_allocv
.L1281:
	movq	24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	call	_Znwy
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN4CellC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4CellC1Ev
	.def	_ZN4CellC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4CellC1Ev
_ZN4CellC1Ev:
.LFB5419:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 24(%rbp)
	movq	24(%rbp), %rax
	movb	$0, (%rax)
	movq	24(%rbp), %rax
	movb	$0, 1(%rax)
	movq	24(%rbp), %rax
	movb	$0, 2(%rax)
	movq	24(%rbp), %rax
	movb	$0, 3(%rax)
	movq	24(%rbp), %rax
	movb	$0, 4(%rax)
	movq	24(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	$0, %eax
	movl	$8, %ecx
	movq	%rdx, %rdi
	rep stosq
	nop
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt10_ConstructI4CellJEEvPT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZSt10_ConstructI4CellJEEvPT_DpOT0_
	.def	_ZSt10_ConstructI4CellJEEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10_ConstructI4CellJEEvPT_DpOT0_
_ZSt10_ConstructI4CellJEEvPT_DpOT0_:
.LFB5416:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movl	$72, %ecx
	call	_ZnwyPv
	movq	%rax, %r9
	movq	%r9, %r8
	movl	$0, %eax
	movl	$9, %edx
	movq	%r8, %rdi
	movq	%rdx, %rcx
	rep stosq
	movq	%r9, %rcx
	call	_ZN4CellC1Ev
	nop
	addq	$40, %rsp
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt9addressofIKjEPT_RS1_,"x"
	.linkonce discard
	.globl	_ZSt9addressofIKjEPT_RS1_
	.def	_ZSt9addressofIKjEPT_RS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt9addressofIKjEPT_RS1_
_ZSt9addressofIKjEPT_RS1_:
.LFB5420:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZSt11__addressofIKjEPT_RS1_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIRKN2sf6VertexEEOT_RNSt16remove_referenceIS4_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIRKN2sf6VertexEEOT_RNSt16remove_referenceIS4_E4typeE
	.def	_ZSt7forwardIRKN2sf6VertexEEOT_RNSt16remove_referenceIS4_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIRKN2sf6VertexEEOT_RNSt16remove_referenceIS4_E4typeE
_ZSt7forwardIRKN2sf6VertexEEOT_RNSt16remove_referenceIS4_E4typeE:
.LFB5431:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSteqIPN2sf6VertexEEbRKSt13move_iteratorIT_ES7_,"x"
	.linkonce discard
	.globl	_ZSteqIPN2sf6VertexEEbRKSt13move_iteratorIT_ES7_
	.def	_ZSteqIPN2sf6VertexEEbRKSt13move_iteratorIT_ES7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSteqIPN2sf6VertexEEbRKSt13move_iteratorIT_ES7_
_ZSteqIPN2sf6VertexEEbRKSt13move_iteratorIT_ES7_:
.LFB5432:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rcx
	call	_ZNKSt13move_iteratorIPN2sf6VertexEE4baseEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt13move_iteratorIPN2sf6VertexEE4baseEv
	cmpq	%rax, %rbx
	sete	%al
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIN2sf6VertexEEOT_RNSt16remove_referenceIS2_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIN2sf6VertexEEOT_RNSt16remove_referenceIS2_E4typeE
	.def	_ZSt7forwardIN2sf6VertexEEOT_RNSt16remove_referenceIS2_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIN2sf6VertexEEOT_RNSt16remove_referenceIS2_E4typeE
_ZSt7forwardIN2sf6VertexEEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB5433:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__miter_baseIPP4CellEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E,"x"
	.linkonce discard
	.globl	_ZSt12__miter_baseIPP4CellEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	.def	_ZSt12__miter_baseIPP4CellEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__miter_baseIPP4CellEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
_ZSt12__miter_baseIPP4CellEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E:
.LFB5434:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	16(%rbp), %rcx
	call	_ZNKSt13move_iteratorIPP4CellE4baseEv
	movq	%rax, %rcx
	call	_ZSt12__miter_baseIPP4CellET_S3_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt14__copy_move_a2ILb1EPP4CellS2_ET1_T0_S4_S3_,"x"
	.linkonce discard
	.globl	_ZSt14__copy_move_a2ILb1EPP4CellS2_ET1_T0_S4_S3_
	.def	_ZSt14__copy_move_a2ILb1EPP4CellS2_ET1_T0_S4_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__copy_move_a2ILb1EPP4CellS2_ET1_T0_S4_S3_
_ZSt14__copy_move_a2ILb1EPP4CellS2_ET1_T0_S4_S3_:
.LFB5435:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIPP4CellET_S3_
	movq	%rax, %rsi
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIPP4CellET_S3_
	movq	%rax, %rbx
	movq	32(%rbp), %rcx
	call	_ZSt12__niter_baseIPP4CellET_S3_
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt13__copy_move_aILb1EPP4CellS2_ET1_T0_S4_S3_
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEE8max_sizeEv
	.def	_ZNK9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEE8max_sizeEv
_ZNK9__gnu_cxx13new_allocatorISt6vectorI4CellSaIS2_EEE8max_sizeEv:
.LFB5436:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movabsq	$768614336404564650, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx14__alloc_traitsISaI4CellES1_E17_S_select_on_copyERKS2_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxx14__alloc_traitsISaI4CellES1_E17_S_select_on_copyERKS2_
	.def	_ZN9__gnu_cxx14__alloc_traitsISaI4CellES1_E17_S_select_on_copyERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx14__alloc_traitsISaI4CellES1_E17_S_select_on_copyERKS2_
_ZN9__gnu_cxx14__alloc_traitsISaI4CellES1_E17_S_select_on_copyERKS2_:
.LFB5437:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaI4CellEE37select_on_container_copy_constructionERKS1_
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt12_Vector_baseI4CellSaIS0_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseI4CellSaIS0_EE19_M_get_Tp_allocatorEv
	.def	_ZNKSt12_Vector_baseI4CellSaIS0_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseI4CellSaIS0_EE19_M_get_Tp_allocatorEv
_ZNKSt12_Vector_baseI4CellSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB5438:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorI4CellSaIS0_EE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorI4CellSaIS0_EE5beginEv
	.def	_ZNKSt6vectorI4CellSaIS0_EE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorI4CellSaIS0_EE5beginEv
_ZNKSt6vectorI4CellSaIS0_EE5beginEv:
.LFB5439:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEEC1ERKS3_
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorI4CellSaIS0_EE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorI4CellSaIS0_EE3endEv
	.def	_ZNKSt6vectorI4CellSaIS0_EE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorI4CellSaIS0_EE3endEv
_ZNKSt6vectorI4CellSaIS0_EE3endEv:
.LFB5440:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEEC1ERKS3_
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E
	.def	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E:
.LFB5441:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEEC2Ev
	.def	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEEC2Ev
_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEEC2Ev:
.LFB5443:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEED2Ev
	.def	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEED2Ev
_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEED2Ev:
.LFB5446:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_y
	.def	_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_y
_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_y:
.LFB5448:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEE8allocateEyPKv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC1ERS6_PS5_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC1ERS6_PS5_
	.def	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC1ERS6_PS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC1ERS6_PS5_
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC1ERS6_PS5_:
.LFB5451:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_y
	.def	_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_y
_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_y:
.LFB5452:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_y
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_,"x"
	.linkonce discard
	.globl	_ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_
	.def	_ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_
_ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_:
.LFB5453:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI4EdgeEC2ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI4EdgeEC2ERKS2_
	.def	_ZN9__gnu_cxx13new_allocatorI4EdgeEC2ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI4EdgeEC2ERKS2_
_ZN9__gnu_cxx13new_allocatorI4EdgeEC2ERKS2_:
.LFB5455:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev
	.def	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev:
.LFB5458:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	16+_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movl	$1, 8(%rax)
	movq	16(%rbp), %rax
	movl	$1, 12(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC1ES1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC1ES1_
	.def	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC1ES1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC1ES1_
_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC1ES1_:
.LFB5462:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt14_Sp_ebo_helperILi0ESaI4EdgeELb1EEC2ERKS1_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv
	.def	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv
_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv:
.LFB5463:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx16__aligned_bufferI4EdgeE6_M_ptrEv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaI4EdgeEE9constructIS0_JiiiiEEEvRS1_PT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaI4EdgeEE9constructIS0_JiiiiEEEvRS1_PT_DpOT0_
	.def	_ZNSt16allocator_traitsISaI4EdgeEE9constructIS0_JiiiiEEEvRS1_PT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaI4EdgeEE9constructIS0_JiiiiEEEvRS1_PT_DpOT0_
_ZNSt16allocator_traitsISaI4EdgeEE9constructIS0_JiiiiEEEvRS1_PT_DpOT0_:
.LFB5464:
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
	movq	%rcx, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%r8, -16(%rbp)
	movq	%r9, -8(%rbp)
	movq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rsi
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rbx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rsi, 40(%rsp)
	movq	%rbx, 32(%rsp)
	movq	%rdi, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI4EdgeE9constructIS1_JiiiiEEEvPT_DpOT0_
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZStneIPSt10shared_ptrI4EdgeEEbRKSt13move_iteratorIT_ES8_,"x"
	.linkonce discard
	.globl	_ZStneIPSt10shared_ptrI4EdgeEEbRKSt13move_iteratorIT_ES8_
	.def	_ZStneIPSt10shared_ptrI4EdgeEEbRKSt13move_iteratorIT_ES8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStneIPSt10shared_ptrI4EdgeEEbRKSt13move_iteratorIT_ES8_
_ZStneIPSt10shared_ptrI4EdgeEEbRKSt13move_iteratorIT_ES8_:
.LFB5465:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSteqIPSt10shared_ptrI4EdgeEEbRKSt13move_iteratorIT_ES8_
	xorl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt13move_iteratorIPSt10shared_ptrI4EdgeEEppEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt13move_iteratorIPSt10shared_ptrI4EdgeEEppEv
	.def	_ZNSt13move_iteratorIPSt10shared_ptrI4EdgeEEppEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt13move_iteratorIPSt10shared_ptrI4EdgeEEppEv
_ZNSt13move_iteratorIPSt10shared_ptrI4EdgeEEppEv:
.LFB5466:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt13move_iteratorIPSt10shared_ptrI4EdgeEEdeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt13move_iteratorIPSt10shared_ptrI4EdgeEEdeEv
	.def	_ZNKSt13move_iteratorIPSt10shared_ptrI4EdgeEEdeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt13move_iteratorIPSt10shared_ptrI4EdgeEEdeEv
_ZNKSt13move_iteratorIPSt10shared_ptrI4EdgeEEdeEv:
.LFB5467:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt10_ConstructISt10shared_ptrI4EdgeEJS2_EEvPT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZSt10_ConstructISt10shared_ptrI4EdgeEJS2_EEvPT_DpOT0_
	.def	_ZSt10_ConstructISt10shared_ptrI4EdgeEJS2_EEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10_ConstructISt10shared_ptrI4EdgeEJS2_EEvPT_DpOT0_
_ZSt10_ConstructISt10shared_ptrI4EdgeEJS2_EEvPT_DpOT0_:
.LFB5468:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardISt10shared_ptrI4EdgeEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movl	$16, %ecx
	call	_ZnwyPv
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZNSt10shared_ptrI4EdgeEC1EOS1_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEExS3_NS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_T0_SH_T1_T2_,"x"
	.linkonce discard
	.globl	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEExS3_NS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_T0_SH_T1_T2_
	.def	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEExS3_NS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_T0_SH_T1_T2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEExS3_NS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_T0_SH_T1_T2_
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEExS3_NS0_5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_T0_SH_T1_T2_:
.LFB5469:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	addq	$-128, %rsp
	.seh_stackalloc	128
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, %rsi
	movq	40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -8(%rbp)
.L1333:
	movq	48(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	cmpq	%rax, -8(%rbp)
	jge	.L1331
	movq	-8(%rbp), %rax
	addq	$1, %rax
	addq	%rax, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdx
	leaq	32(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEplEx
	movq	%rax, %rbx
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	32(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEplEx
	movq	%rax, %rdx
	leaq	64(%rbp), %rax
	movq	%rbx, %r8
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESF_EEbT_T0_
	testb	%al, %al
	je	.L1332
	subq	$1, -8(%rbp)
.L1332:
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	32(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEplEx
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rcx
	call	_ZSt4moveIRSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	leaq	32(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEplEx
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	(%rbx), %rdx
	movq	%rdx, (%rax)
	movl	8(%rbx), %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, 40(%rbp)
	jmp	.L1333
.L1331:
	movq	48(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L1334
	movq	48(%rbp), %rax
	subq	$2, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	cmpq	%rax, -8(%rbp)
	jne	.L1334
	movq	-8(%rbp), %rax
	addq	$1, %rax
	addq	%rax, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdx
	leaq	32(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEplEx
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rcx
	call	_ZSt4moveIRSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	leaq	32(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEplEx
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	(%rbx), %rdx
	movq	%rdx, (%rax)
	movl	8(%rbx), %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movq	%rax, 40(%rbp)
.L1334:
	leaq	64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES7_E_EEEONSt16remove_referenceIT_E4typeEOSC_
	movq	%rax, %rdx
	leaq	-49(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EC1EONS0_15_Iter_comp_iterIS7_EE
	movq	%rsi, %rcx
	call	_ZSt4moveIRSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movl	8(%rax), %eax
	movl	%eax, -72(%rbp)
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	40(%rbp), %rdx
	leaq	-49(%rbp), %rax
	movq	%rax, 32(%rsp)
	movq	%rcx, %r9
	movq	32(%rbp), %rcx
	call	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEExS3_NS0_5__ops14_Iter_comp_valIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_T0_SH_T1_RT2_
	nop
	subq	$-128, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4swapIfLy3EENSt9enable_ifIXsrNSt14__array_traitsIT_XT0_EE13_Is_swappableE5valueEvE4typeERSt5arrayIS2_XT0_EES9_,"x"
	.linkonce discard
	.globl	_ZSt4swapIfLy3EENSt9enable_ifIXsrNSt14__array_traitsIT_XT0_EE13_Is_swappableE5valueEvE4typeERSt5arrayIS2_XT0_EES9_
	.def	_ZSt4swapIfLy3EENSt9enable_ifIXsrNSt14__array_traitsIT_XT0_EE13_Is_swappableE5valueEvE4typeERSt5arrayIS2_XT0_EES9_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4swapIfLy3EENSt9enable_ifIXsrNSt14__array_traitsIT_XT0_EE13_Is_swappableE5valueEvE4typeERSt5arrayIS2_XT0_EES9_
_ZSt4swapIfLy3EENSt9enable_ifIXsrNSt14__array_traitsIT_XT0_EE13_Is_swappableE5valueEvE4typeERSt5arrayIS2_XT0_EES9_:
.LFB5470:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt5arrayIfLy3EE4swapERS0_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__niter_baseIPSt5arrayIfLy3EESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE,"x"
	.linkonce discard
	.globl	_ZSt12__niter_baseIPSt5arrayIfLy3EESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE
	.def	_ZSt12__niter_baseIPSt5arrayIfLy3EESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__niter_baseIPSt5arrayIfLy3EESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE
_ZSt12__niter_baseIPSt5arrayIfLy3EESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE:
.LFB5471:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt22__copy_move_backward_aILb1EPSt5arrayIfLy3EES2_ET1_T0_S4_S3_,"x"
	.linkonce discard
	.globl	_ZSt22__copy_move_backward_aILb1EPSt5arrayIfLy3EES2_ET1_T0_S4_S3_
	.def	_ZSt22__copy_move_backward_aILb1EPSt5arrayIfLy3EES2_ET1_T0_S4_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__copy_move_backward_aILb1EPSt5arrayIfLy3EES2_ET1_T0_S4_S3_
_ZSt22__copy_move_backward_aILb1EPSt5arrayIfLy3EES2_ET1_T0_S4_S3_:
.LFB5472:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bISt5arrayIfLy3EEEEPT_PKS5_S8_S6_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__niter_baseIPSt5arrayIfLy3EEET_S3_,"x"
	.linkonce discard
	.globl	_ZSt12__niter_baseIPSt5arrayIfLy3EEET_S3_
	.def	_ZSt12__niter_baseIPSt5arrayIfLy3EEET_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__niter_baseIPSt5arrayIfLy3EEET_S3_
_ZSt12__niter_baseIPSt5arrayIfLy3EEET_S3_:
.LFB5473:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt10__fill_n_aIPSt5arrayIfLy3EEyS1_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT1_E7__valueET_E6__typeES8_T0_RKS6_,"x"
	.linkonce discard
	.globl	_ZSt10__fill_n_aIPSt5arrayIfLy3EEyS1_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT1_E7__valueET_E6__typeES8_T0_RKS6_
	.def	_ZSt10__fill_n_aIPSt5arrayIfLy3EEyS1_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT1_E7__valueET_E6__typeES8_T0_RKS6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10__fill_n_aIPSt5arrayIfLy3EEyS1_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT1_E7__valueET_E6__typeES8_T0_RKS6_
_ZSt10__fill_n_aIPSt5arrayIfLy3EEyS1_EN9__gnu_cxx11__enable_ifIXntsrSt11__is_scalarIT1_E7__valueET_E6__typeES8_T0_RKS6_:
.LFB5474:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
.L1344:
	cmpq	$0, -8(%rbp)
	je	.L1343
	movq	16(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	%rcx, (%rax)
	movl	8(%rdx), %edx
	movl	%edx, 8(%rax)
	subq	$1, -8(%rbp)
	addq	$12, 16(%rbp)
	jmp	.L1344
.L1343:
	movq	16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4copyISt13move_iteratorIPSt5arrayIfLy3EEES3_ET0_T_S6_S5_,"x"
	.linkonce discard
	.globl	_ZSt4copyISt13move_iteratorIPSt5arrayIfLy3EEES3_ET0_T_S6_S5_
	.def	_ZSt4copyISt13move_iteratorIPSt5arrayIfLy3EEES3_ET0_T_S6_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4copyISt13move_iteratorIPSt5arrayIfLy3EEES3_ET0_T_S6_S5_
_ZSt4copyISt13move_iteratorIPSt5arrayIfLy3EEES3_ET0_T_S6_S5_:
.LFB5475:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__miter_baseIPSt5arrayIfLy3EEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZSt12__miter_baseIPSt5arrayIfLy3EEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %r8
	movq	%rbx, %rdx
	call	_ZSt14__copy_move_a2ILb1EPSt5arrayIfLy3EES2_ET1_T0_S4_S3_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__niter_baseIPKSt5arrayIfLy3EESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE,"x"
	.linkonce discard
	.globl	_ZSt12__niter_baseIPKSt5arrayIfLy3EESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE
	.def	_ZSt12__niter_baseIPKSt5arrayIfLy3EESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__niter_baseIPKSt5arrayIfLy3EESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE
_ZSt12__niter_baseIPKSt5arrayIfLy3EESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE:
.LFB5476:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt13__copy_move_aILb0EPKSt5arrayIfLy3EEPS1_ET1_T0_S6_S5_,"x"
	.linkonce discard
	.globl	_ZSt13__copy_move_aILb0EPKSt5arrayIfLy3EEPS1_ET1_T0_S6_S5_
	.def	_ZSt13__copy_move_aILb0EPKSt5arrayIfLy3EEPS1_ET1_T0_S6_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt13__copy_move_aILb0EPKSt5arrayIfLy3EEPS1_ET1_T0_S6_S5_
_ZSt13__copy_move_aILb0EPKSt5arrayIfLy3EEPS1_ET1_T0_S6_S5_:
.LFB5477:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mISt5arrayIfLy3EEEEPT_PKS5_S8_S6_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx13new_allocatorI4CellE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx13new_allocatorI4CellE8max_sizeEv
	.def	_ZNK9__gnu_cxx13new_allocatorI4CellE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx13new_allocatorI4CellE8max_sizeEv
_ZNK9__gnu_cxx13new_allocatorI4CellE8max_sizeEv:
.LFB5478:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movabsq	$256204778801521550, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11__addressofIKjEPT_RS1_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofIKjEPT_RS1_
	.def	_ZSt11__addressofIKjEPT_RS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofIKjEPT_RS1_
_ZSt11__addressofIKjEPT_RS1_:
.LFB5479:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt13move_iteratorIPN2sf6VertexEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt13move_iteratorIPN2sf6VertexEE4baseEv
	.def	_ZNKSt13move_iteratorIPN2sf6VertexEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt13move_iteratorIPN2sf6VertexEE4baseEv
_ZNKSt13move_iteratorIPN2sf6VertexEE4baseEv:
.LFB5482:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt13move_iteratorIPP4CellE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt13move_iteratorIPP4CellE4baseEv
	.def	_ZNKSt13move_iteratorIPP4CellE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt13move_iteratorIPP4CellE4baseEv
_ZNKSt13move_iteratorIPP4CellE4baseEv:
.LFB5483:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__miter_baseIPP4CellET_S3_,"x"
	.linkonce discard
	.globl	_ZSt12__miter_baseIPP4CellET_S3_
	.def	_ZSt12__miter_baseIPP4CellET_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__miter_baseIPP4CellET_S3_
_ZSt12__miter_baseIPP4CellET_S3_:
.LFB5484:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__niter_baseIPP4CellET_S3_,"x"
	.linkonce discard
	.globl	_ZSt12__niter_baseIPP4CellET_S3_
	.def	_ZSt12__niter_baseIPP4CellET_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__niter_baseIPP4CellET_S3_
_ZSt12__niter_baseIPP4CellET_S3_:
.LFB5485:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt13__copy_move_aILb1EPP4CellS2_ET1_T0_S4_S3_,"x"
	.linkonce discard
	.globl	_ZSt13__copy_move_aILb1EPP4CellS2_ET1_T0_S4_S3_
	.def	_ZSt13__copy_move_aILb1EPP4CellS2_ET1_T0_S4_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt13__copy_move_aILb1EPP4CellS2_ET1_T0_S4_S3_
_ZSt13__copy_move_aILb1EPP4CellS2_ET1_T0_S4_S3_:
.LFB5486:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP4CellEEPT_PKS5_S8_S6_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaI4CellEE37select_on_container_copy_constructionERKS1_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaI4CellEE37select_on_container_copy_constructionERKS1_
	.def	_ZNSt16allocator_traitsISaI4CellEE37select_on_container_copy_constructionERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaI4CellEE37select_on_container_copy_constructionERKS1_
_ZNSt16allocator_traitsISaI4CellEE37select_on_container_copy_constructionERKS1_:
.LFB5487:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSaI4CellEC1ERKS0_
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEEC1ERKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEEC1ERKS3_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEEC1ERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEEC1ERKS3_
_ZN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEEC1ERKS3_:
.LFB5490:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_,"x"
	.linkonce discard
	.globl	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	.def	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_:
.LFB5491:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEE8allocateEyPKv
	.def	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEE8allocateEyPKv
_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEE8allocateEyPKv:
.LFB5492:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEE8max_sizeEv
	cmpq	%rax, 24(%rbp)
	seta	%al
	testb	%al, %al
	je	.L1372
	call	_ZSt17__throw_bad_allocv
.L1372:
	movq	24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	call	_Znwy
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_,"x"
	.linkonce discard
	.globl	_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_
	.def	_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_
_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_:
.LFB5493:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_y
	.def	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_y
_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_y:
.LFB5494:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdlPv
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt14_Sp_ebo_helperILi0ESaI4EdgeELb1EEC2ERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt14_Sp_ebo_helperILi0ESaI4EdgeELb1EEC2ERKS1_
	.def	_ZNSt14_Sp_ebo_helperILi0ESaI4EdgeELb1EEC2ERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt14_Sp_ebo_helperILi0ESaI4EdgeELb1EEC2ERKS1_
_ZNSt14_Sp_ebo_helperILi0ESaI4EdgeELb1EEC2ERKS1_:
.LFB5496:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSaI4EdgeEC2ERKS0_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx16__aligned_bufferI4EdgeE6_M_ptrEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx16__aligned_bufferI4EdgeE6_M_ptrEv
	.def	_ZN9__gnu_cxx16__aligned_bufferI4EdgeE6_M_ptrEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx16__aligned_bufferI4EdgeE6_M_ptrEv
_ZN9__gnu_cxx16__aligned_bufferI4EdgeE6_M_ptrEv:
.LFB5498:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx16__aligned_bufferI4EdgeE7_M_addrEv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI4EdgeE9constructIS1_JiiiiEEEvPT_DpOT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI4EdgeE9constructIS1_JiiiiEEEvPT_DpOT0_
	.def	_ZN9__gnu_cxx13new_allocatorI4EdgeE9constructIS1_JiiiiEEEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI4EdgeE9constructIS1_JiiiiEEEvPT_DpOT0_
_ZN9__gnu_cxx13new_allocatorI4EdgeE9constructIS1_JiiiiEEEvPT_DpOT0_:
.LFB5499:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 48(%rbp)
	movq	%rdx, 56(%rbp)
	movq	%r8, 64(%rbp)
	movq	%r9, 72(%rbp)
	movq	64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movl	(%rax), %ebx
	movq	72(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movl	(%rax), %edi
	movq	80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movl	(%rax), %r12d
	movq	88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movl	(%rax), %esi
	movq	56(%rbp), %rax
	movq	%rax, %rdx
	movl	$16, %ecx
	call	_ZnwyPv
	movl	%esi, 32(%rsp)
	movl	%r12d, %r9d
	movl	%edi, %r8d
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZN4EdgeC1Eiiii
	nop
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSteqIPSt10shared_ptrI4EdgeEEbRKSt13move_iteratorIT_ES8_,"x"
	.linkonce discard
	.globl	_ZSteqIPSt10shared_ptrI4EdgeEEbRKSt13move_iteratorIT_ES8_
	.def	_ZSteqIPSt10shared_ptrI4EdgeEEbRKSt13move_iteratorIT_ES8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSteqIPSt10shared_ptrI4EdgeEEbRKSt13move_iteratorIT_ES8_
_ZSteqIPSt10shared_ptrI4EdgeEEbRKSt13move_iteratorIT_ES8_:
.LFB5500:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rcx
	call	_ZNKSt13move_iteratorIPSt10shared_ptrI4EdgeEE4baseEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt13move_iteratorIPSt10shared_ptrI4EdgeEE4baseEv
	cmpq	%rax, %rbx
	sete	%al
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EC1EONS0_15_Iter_comp_iterIS7_EE,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EC1EONS0_15_Iter_comp_iterIS7_EE
	.def	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EC1EONS0_15_Iter_comp_iterIS7_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EC1EONS0_15_Iter_comp_iterIS7_EE
_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EC1EONS0_15_Iter_comp_iterIS7_EE:
.LFB5503:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES4_E_EONSt16remove_referenceIT_E4typeEOS8_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEExS3_NS0_5__ops14_Iter_comp_valIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_T0_SH_T1_RT2_,"x"
	.linkonce discard
	.globl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEExS3_NS0_5__ops14_Iter_comp_valIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_T0_SH_T1_RT2_
	.def	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEExS3_NS0_5__ops14_Iter_comp_valIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_T0_SH_T1_RT2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEExS3_NS0_5__ops14_Iter_comp_valIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_T0_SH_T1_RT2_
_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS3_SaIS3_EEEExS3_NS0_5__ops14_Iter_comp_valIZN19TrianglesGeneration14sort_trianglesEvEUlRKS3_SD_E_EEEvT_T0_SH_T1_RT2_:
.LFB5504:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, %rsi
	movq	40(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -8(%rbp)
.L1388:
	movq	40(%rbp), %rax
	cmpq	48(%rbp), %rax
	jle	.L1385
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	32(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEplEx
	movq	%rax, %rdx
	movq	64(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEES4_EEbT_RT0_
	testb	%al, %al
	je	.L1385
	movl	$1, %eax
	jmp	.L1386
.L1385:
	movl	$0, %eax
.L1386:
	testb	%al, %al
	je	.L1387
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	32(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEplEx
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rcx
	call	_ZSt4moveIRSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	leaq	32(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEplEx
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	(%rbx), %rdx
	movq	%rdx, (%rax)
	movl	8(%rbx), %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, 40(%rbp)
	movq	40(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -8(%rbp)
	jmp	.L1388
.L1387:
	movq	%rsi, %rcx
	call	_ZSt4moveIRSt5arrayIfLy3EEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rbx
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	leaq	32(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEplEx
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	(%rbx), %rdx
	movq	%rdx, (%rax)
	movl	8(%rbx), %edx
	movl	%edx, 8(%rax)
	nop
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt5arrayIfLy3EE4swapERS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt5arrayIfLy3EE4swapERS0_
	.def	_ZNSt5arrayIfLy3EE4swapERS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt5arrayIfLy3EE4swapERS0_
_ZNSt5arrayIfLy3EE4swapERS0_:
.LFB5505:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt5arrayIfLy3EE5beginEv
	movq	%rax, %rsi
	movq	32(%rbp), %rcx
	call	_ZNSt5arrayIfLy3EE3endEv
	movq	%rax, %rbx
	movq	32(%rbp), %rcx
	call	_ZNSt5arrayIfLy3EE5beginEv
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt11swap_rangesIPfS0_ET0_T_S2_S1_
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5505:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5505-.LLSDACSB5505
.LLSDACSB5505:
.LLSDACSE5505:
	.section	.text$_ZNSt5arrayIfLy3EE4swapERS0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bISt5arrayIfLy3EEEEPT_PKS5_S8_S6_,"x"
	.linkonce discard
	.globl	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bISt5arrayIfLy3EEEEPT_PKS5_S8_S6_
	.def	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bISt5arrayIfLy3EEEEPT_PKS5_S8_S6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bISt5arrayIfLy3EEEEPT_PKS5_S8_S6_
_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bISt5arrayIfLy3EEEEPT_PKS5_S8_S6_:
.LFB5506:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	subq	16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movabsq	$-6148914691236517205, %rax
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1391
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	negq	%rax
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rcx, %r8
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	memmove
.L1391:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	negq	%rax
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__miter_baseIPSt5arrayIfLy3EEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E,"x"
	.linkonce discard
	.globl	_ZSt12__miter_baseIPSt5arrayIfLy3EEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	.def	_ZSt12__miter_baseIPSt5arrayIfLy3EEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__miter_baseIPSt5arrayIfLy3EEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
_ZSt12__miter_baseIPSt5arrayIfLy3EEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E:
.LFB5507:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	16(%rbp), %rcx
	call	_ZNKSt13move_iteratorIPSt5arrayIfLy3EEE4baseEv
	movq	%rax, %rcx
	call	_ZSt12__miter_baseIPSt5arrayIfLy3EEET_S3_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt14__copy_move_a2ILb1EPSt5arrayIfLy3EES2_ET1_T0_S4_S3_,"x"
	.linkonce discard
	.globl	_ZSt14__copy_move_a2ILb1EPSt5arrayIfLy3EES2_ET1_T0_S4_S3_
	.def	_ZSt14__copy_move_a2ILb1EPSt5arrayIfLy3EES2_ET1_T0_S4_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__copy_move_a2ILb1EPSt5arrayIfLy3EES2_ET1_T0_S4_S3_
_ZSt14__copy_move_a2ILb1EPSt5arrayIfLy3EES2_ET1_T0_S4_S3_:
.LFB5508:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIPSt5arrayIfLy3EEET_S3_
	movq	%rax, %rsi
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIPSt5arrayIfLy3EEET_S3_
	movq	%rax, %rbx
	movq	32(%rbp), %rcx
	call	_ZSt12__niter_baseIPSt5arrayIfLy3EEET_S3_
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt13__copy_move_aILb1EPSt5arrayIfLy3EES2_ET1_T0_S4_S3_
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mISt5arrayIfLy3EEEEPT_PKS5_S8_S6_,"x"
	.linkonce discard
	.globl	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mISt5arrayIfLy3EEEEPT_PKS5_S8_S6_
	.def	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mISt5arrayIfLy3EEEEPT_PKS5_S8_S6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mISt5arrayIfLy3EEEEPT_PKS5_S8_S6_
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mISt5arrayIfLy3EEEEPT_PKS5_S8_S6_:
.LFB5509:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	subq	16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movabsq	$-6148914691236517205, %rax
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1398
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rdx, %r8
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	memmove
.L1398:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP4CellEEPT_PKS5_S8_S6_,"x"
	.linkonce discard
	.globl	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP4CellEEPT_PKS5_S8_S6_
	.def	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP4CellEEPT_PKS5_S8_S6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP4CellEEPT_PKS5_S8_S6_
_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP4CellEEPT_PKS5_S8_S6_:
.LFB5510:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	subq	16(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1401
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, %r8
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	memmove
.L1401:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_,"x"
	.linkonce discard
	.globl	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_
	.def	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_
_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_:
.LFB5511:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
.L1405:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdx
	leaq	-48(%rbp), %rcx
	call	_ZN9__gnu_cxxneIPK4CellSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	testb	%al, %al
	je	.L1404
	leaq	-48(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt11__addressofI4CellEPT_RS1_
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt10_ConstructI4CellJRKS0_EEvPT_DpOT0_
	leaq	-48(%rbp), %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEEppEv
	addq	$72, -88(%rbp)
	jmp	.L1405
.L1404:
	movq	-88(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEE8max_sizeEv
	.def	_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEE8max_sizeEv
_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4EdgeSaIS2_ELNS_12_Lock_policyE2EEE8max_sizeEv:
.LFB5512:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movabsq	$576460752303423487, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx16__aligned_bufferI4EdgeE7_M_addrEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx16__aligned_bufferI4EdgeE7_M_addrEv
	.def	_ZN9__gnu_cxx16__aligned_bufferI4EdgeE7_M_addrEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx16__aligned_bufferI4EdgeE7_M_addrEv
_ZN9__gnu_cxx16__aligned_bufferI4EdgeE7_M_addrEv:
.LFB5513:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt13move_iteratorIPSt10shared_ptrI4EdgeEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt13move_iteratorIPSt10shared_ptrI4EdgeEE4baseEv
	.def	_ZNKSt13move_iteratorIPSt10shared_ptrI4EdgeEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt13move_iteratorIPSt10shared_ptrI4EdgeEE4baseEv
_ZNKSt13move_iteratorIPSt10shared_ptrI4EdgeEE4baseEv:
.LFB5514:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEES4_EEbT_RT0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEES4_EEbT_RT0_
	.def	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEES4_EEbT_RT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEES4_EEbT_RT0_
_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN19TrianglesGeneration14sort_trianglesEvEUlRKSt5arrayIfLy3EES6_E_EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEES4_EEbT_RT0_:
.LFB5515:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-64(%rbp), %rbx
	leaq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt5arrayIfLy3EESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %r8
	movq	%rbx, %rcx
	call	_ZZN19TrianglesGeneration14sort_trianglesEvENKUlRKSt5arrayIfLy3EES3_E_clES3_S3_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt5arrayIfLy3EE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt5arrayIfLy3EE5beginEv
	.def	_ZNSt5arrayIfLy3EE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt5arrayIfLy3EE5beginEv
_ZNSt5arrayIfLy3EE5beginEv:
.LFB5516:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSt5arrayIfLy3EE4dataEv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt5arrayIfLy3EE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt5arrayIfLy3EE3endEv
	.def	_ZNSt5arrayIfLy3EE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt5arrayIfLy3EE3endEv
_ZNSt5arrayIfLy3EE3endEv:
.LFB5517:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSt5arrayIfLy3EE4dataEv
	addq	$12, %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt11swap_rangesIPfS0_ET0_T_S2_S1_,"x"
	.linkonce discard
	.globl	_ZSt11swap_rangesIPfS0_ET0_T_S2_S1_
	.def	_ZSt11swap_rangesIPfS0_ET0_T_S2_S1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt11swap_rangesIPfS0_ET0_T_S2_S1_
_ZSt11swap_rangesIPfS0_ET0_T_S2_S1_:
.LFB5518:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
.L1421:
	movq	16(%rbp), %rax
	cmpq	24(%rbp), %rax
	je	.L1420
	movq	32(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt9iter_swapIPfS0_EvT_T0_
	addq	$4, 16(%rbp)
	addq	$4, 32(%rbp)
	jmp	.L1421
.L1420:
	movq	32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt13move_iteratorIPSt5arrayIfLy3EEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt13move_iteratorIPSt5arrayIfLy3EEE4baseEv
	.def	_ZNKSt13move_iteratorIPSt5arrayIfLy3EEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt13move_iteratorIPSt5arrayIfLy3EEE4baseEv
_ZNKSt13move_iteratorIPSt5arrayIfLy3EEE4baseEv:
.LFB5519:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__miter_baseIPSt5arrayIfLy3EEET_S3_,"x"
	.linkonce discard
	.globl	_ZSt12__miter_baseIPSt5arrayIfLy3EEET_S3_
	.def	_ZSt12__miter_baseIPSt5arrayIfLy3EEET_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__miter_baseIPSt5arrayIfLy3EEET_S3_
_ZSt12__miter_baseIPSt5arrayIfLy3EEET_S3_:
.LFB5520:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt13__copy_move_aILb1EPSt5arrayIfLy3EES2_ET1_T0_S4_S3_,"x"
	.linkonce discard
	.globl	_ZSt13__copy_move_aILb1EPSt5arrayIfLy3EES2_ET1_T0_S4_S3_
	.def	_ZSt13__copy_move_aILb1EPSt5arrayIfLy3EES2_ET1_T0_S4_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt13__copy_move_aILb1EPSt5arrayIfLy3EES2_ET1_T0_S4_S3_
_ZSt13__copy_move_aILb1EPSt5arrayIfLy3EES2_ET1_T0_S4_S3_:
.LFB5521:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mISt5arrayIfLy3EEEEPT_PKS5_S8_S6_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxxneIPK4CellSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxxneIPK4CellSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.def	_ZN9__gnu_cxxneIPK4CellSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxxneIPK4CellSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
_ZN9__gnu_cxxneIPK4CellSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_:
.LFB5522:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setne	%al
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEEppEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEEppEv
	.def	_ZN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEEppEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEEppEv
_ZN9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEEppEv:
.LFB5523:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	leaq	72(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEEdeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEEdeEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEEdeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEEdeEv
_ZNK9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEEdeEv:
.LFB5524:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt5arrayISt10shared_ptrI4EdgeELy4EEC1ERKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt5arrayISt10shared_ptrI4EdgeELy4EEC1ERKS3_
	.def	_ZNSt5arrayISt10shared_ptrI4EdgeELy4EEC1ERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt5arrayISt10shared_ptrI4EdgeELy4EEC1ERKS3_
_ZNSt5arrayISt10shared_ptrI4EdgeELy4EEC1ERKS3_:
.LFB5529:
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
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rax
	movl	$3, %esi
	movq	-40(%rbp), %rbx
	movq	%rax, %rdi
.L1437:
	testq	%rsi, %rsi
	js	.L1438
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	call	_ZNSt10shared_ptrI4EdgeEC1ERKS1_
	addq	$16, %rdi
	addq	$16, %rbx
	subq	$1, %rsi
	jmp	.L1437
.L1438:
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN4CellC1ERKS_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4CellC1ERKS_
	.def	_ZN4CellC1ERKS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4CellC1ERKS_
_ZN4CellC1ERKS_:
.LFB5531:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movzbl	(%rax), %eax
	movq	16(%rbp), %rdx
	movb	%al, (%rdx)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movl	1(%rdx), %edx
	movl	%edx, 1(%rax)
	movq	16(%rbp), %rax
	addq	$8, %rax
	movq	24(%rbp), %rdx
	addq	$8, %rdx
	movq	%rax, %rcx
	call	_ZNSt5arrayISt10shared_ptrI4EdgeELy4EEC1ERKS3_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt10_ConstructI4CellJRKS0_EEvPT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZSt10_ConstructI4CellJRKS0_EEvPT_DpOT0_
	.def	_ZSt10_ConstructI4CellJRKS0_EEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10_ConstructI4CellJRKS0_EEvPT_DpOT0_
_ZSt10_ConstructI4CellJRKS0_EEvPT_DpOT0_:
.LFB5525:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7forwardIRK4CellEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movl	$72, %ecx
	call	_ZnwyPv
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZN4CellC1ERKS_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt5arrayIfLy3EE4dataEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt5arrayIfLy3EE4dataEv
	.def	_ZNSt5arrayIfLy3EE4dataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt5arrayIfLy3EE4dataEv
_ZNSt5arrayIfLy3EE4dataEv:
.LFB5532:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14__array_traitsIfLy3EE6_S_ptrERA3_Kf
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt9iter_swapIPfS0_EvT_T0_,"x"
	.linkonce discard
	.globl	_ZSt9iter_swapIPfS0_EvT_T0_
	.def	_ZSt9iter_swapIPfS0_EvT_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt9iter_swapIPfS0_EvT_T0_
_ZSt9iter_swapIPfS0_EvT_T0_:
.LFB5533:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt4swapIfENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mISt5arrayIfLy3EEEEPT_PKS5_S8_S6_,"x"
	.linkonce discard
	.globl	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mISt5arrayIfLy3EEEEPT_PKS5_S8_S6_
	.def	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mISt5arrayIfLy3EEEEPT_PKS5_S8_S6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mISt5arrayIfLy3EEEEPT_PKS5_S8_S6_
_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mISt5arrayIfLy3EEEEPT_PKS5_S8_S6_:
.LFB5534:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	subq	16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movabsq	$-6148914691236517205, %rax
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1445
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	%rdx, %r8
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	memmove
.L1445:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIPK4CellSt6vectorIS1_SaIS1_EEE4baseEv:
.LFB5535:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt7forwardIRK4CellEOT_RNSt16remove_referenceIS3_E4typeE,"x"
	.linkonce discard
	.globl	_ZSt7forwardIRK4CellEOT_RNSt16remove_referenceIS3_E4typeE
	.def	_ZSt7forwardIRK4CellEOT_RNSt16remove_referenceIS3_E4typeE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt7forwardIRK4CellEOT_RNSt16remove_referenceIS3_E4typeE
_ZSt7forwardIRK4CellEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB5536:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt14__array_traitsIfLy3EE6_S_ptrERA3_Kf,"x"
	.linkonce discard
	.globl	_ZNSt14__array_traitsIfLy3EE6_S_ptrERA3_Kf
	.def	_ZNSt14__array_traitsIfLy3EE6_S_ptrERA3_Kf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt14__array_traitsIfLy3EE6_S_ptrERA3_Kf
_ZNSt14__array_traitsIfLy3EE6_S_ptrERA3_Kf:
.LFB5537:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIRfEONSt16remove_referenceIT_E4typeEOS2_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRfEONSt16remove_referenceIT_E4typeEOS2_
	.def	_ZSt4moveIRfEONSt16remove_referenceIT_E4typeEOS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRfEONSt16remove_referenceIT_E4typeEOS2_
_ZSt4moveIRfEONSt16remove_referenceIT_E4typeEOS2_:
.LFB5539:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4swapIfENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"x"
	.linkonce discard
	.globl	_ZSt4swapIfENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.def	_ZSt4swapIfENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4swapIfENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
_ZSt4swapIfENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB5538:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rcx
	call	_ZSt4moveIRfEONSt16remove_referenceIT_E4typeEOS2_
	movss	(%rax), %xmm0
	movss	%xmm0, -4(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRfEONSt16remove_referenceIT_E4typeEOS2_
	movss	(%rax), %xmm0
	movq	16(%rbp), %rax
	movss	%xmm0, (%rax)
	leaq	-4(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRfEONSt16remove_referenceIT_E4typeEOS2_
	movss	(%rax), %xmm0
	movq	24(%rbp), %rax
	movss	%xmm0, (%rax)
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_ZTVSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE
	.section	.rdata$_ZTVSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE,"dr"
	.linkonce same_size
	.align 8
_ZTVSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE:
	.quad	0
	.quad	_ZTISt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED1Ev
	.quad	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.quad	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.quad	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.quad	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.globl	_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rdata$_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,"dr"
	.linkonce same_size
	.align 8
_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.quad	0
	.quad	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.quad	0
	.quad	0
	.quad	__cxa_pure_virtual
	.quad	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.quad	__cxa_pure_virtual
	.globl	_ZTISt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE
	.section	.rdata$_ZTISt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE,"dr"
	.linkonce same_size
	.align 8
_ZTISt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.globl	_ZTSSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE
	.section	.rdata$_ZTSSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE,"dr"
	.linkonce same_size
	.align 32
_ZTSSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE:
	.ascii "St23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE\0"
	.globl	_ZTISt19_Sp_make_shared_tag
	.section	.rdata$_ZTISt19_Sp_make_shared_tag,"dr"
	.linkonce same_size
	.align 8
_ZTISt19_Sp_make_shared_tag:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSSt19_Sp_make_shared_tag
	.globl	_ZTSSt19_Sp_make_shared_tag
	.section	.rdata$_ZTSSt19_Sp_make_shared_tag,"dr"
	.linkonce same_size
	.align 16
_ZTSSt19_Sp_make_shared_tag:
	.ascii "St19_Sp_make_shared_tag\0"
	.globl	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rdata$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,"dr"
	.linkonce same_size
	.align 8
_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.globl	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rdata$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,"dr"
	.linkonce same_size
	.align 32
_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.ascii "St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\0"
	.section	.text$_ZN2sf11CircleShapeD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN2sf11CircleShapeD1Ev
	.def	_ZN2sf11CircleShapeD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2sf11CircleShapeD1Ev
_ZN2sf11CircleShapeD1Ev:
.LFB5558:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	__imp__ZTVN2sf11CircleShapeE(%rip), %rax
	leaq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	__imp__ZTVN2sf11CircleShapeE(%rip), %rax
	leaq	72(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__ZN2sf5ShapeD2Ev(%rip), %rax
	call	*%rax
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZThn8_N2sf11CircleShapeD1Ev,"x"
	.linkonce discard
	.globl	_ZThn8_N2sf11CircleShapeD1Ev
	.def	_ZThn8_N2sf11CircleShapeD1Ev;	.scl	2;	.type	32;	.endef
_ZThn8_N2sf11CircleShapeD1Ev:
.LFB5575:
	subq	$8, %rcx
	jmp	_ZN2sf11CircleShapeD1Ev
	.section	.text$_ZN2sf14RectangleShapeD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN2sf14RectangleShapeD1Ev
	.def	_ZN2sf14RectangleShapeD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN2sf14RectangleShapeD1Ev
_ZN2sf14RectangleShapeD1Ev:
.LFB5562:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	__imp__ZTVN2sf14RectangleShapeE(%rip), %rax
	leaq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	__imp__ZTVN2sf14RectangleShapeE(%rip), %rax
	leaq	72(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__ZN2sf5ShapeD2Ev(%rip), %rax
	call	*%rax
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZThn8_N2sf14RectangleShapeD1Ev,"x"
	.linkonce discard
	.globl	_ZThn8_N2sf14RectangleShapeD1Ev
	.def	_ZThn8_N2sf14RectangleShapeD1Ev;	.scl	2;	.type	32;	.endef
_ZThn8_N2sf14RectangleShapeD1Ev:
.LFB5576:
	subq	$8, %rcx
	jmp	_ZN2sf14RectangleShapeD1Ev
	.section	.text$_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED1Ev
	.def	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED1Ev
_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED1Ev:
.LFB5566:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	16+_ZTVSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD1Ev
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED0Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.def	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED0Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED0Ev
_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED0Ev:
.LFB5567:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED1Ev
	movl	$32, %edx
	movq	16(%rbp), %rcx
	call	_ZdlPvy
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.def	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:
.LFB5568:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rcx
	call	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaI4EdgeEE7destroyIS0_EEvRS1_PT_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5568:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5568-.LLSDACSB5568
.LLSDACSB5568:
.LLSDACSE5568:
	.section	.text$_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.def	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv:
.LFB5569:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv
	movq	%rax, %rdx
	leaq	-1(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC1IS0_EERKSaIT_E
	leaq	-1(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	16(%rbp), %r8
	movq	%rax, %rcx
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC1ERS6_PS5_
	movq	16(%rbp), %rcx
	call	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED1Ev
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev
	leaq	-1(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaISt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.def	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:
.LFB5570:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	leaq	_ZTISt19_Sp_make_shared_tag(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNKSt9type_infoeqERKS_
	testb	%al, %al
	je	.L1463
	movq	16(%rbp), %rcx
	call	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv
	jmp	.L1464
.L1463:
	movl	$0, %eax
.L1464:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv
	.def	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv
_ZNSt23_Sp_counted_ptr_inplaceI4EdgeSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv:
.LFB5571:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSt14_Sp_ebo_helperILi0ESaI4EdgeELb1EE6_S_getERS2_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaI4EdgeEE7destroyIS0_EEvRS1_PT_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaI4EdgeEE7destroyIS0_EEvRS1_PT_
	.def	_ZNSt16allocator_traitsISaI4EdgeEE7destroyIS0_EEvRS1_PT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaI4EdgeEE7destroyIS0_EEvRS1_PT_
_ZNSt16allocator_traitsISaI4EdgeEE7destroyIS0_EEvRS1_PT_:
.LFB5572:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorI4EdgeE7destroyIS1_EEvPT_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt14_Sp_ebo_helperILi0ESaI4EdgeELb1EE6_S_getERS2_,"x"
	.linkonce discard
	.globl	_ZNSt14_Sp_ebo_helperILi0ESaI4EdgeELb1EE6_S_getERS2_
	.def	_ZNSt14_Sp_ebo_helperILi0ESaI4EdgeELb1EE6_S_getERS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt14_Sp_ebo_helperILi0ESaI4EdgeELb1EE6_S_getERS2_
_ZNSt14_Sp_ebo_helperILi0ESaI4EdgeELb1EE6_S_getERS2_:
.LFB5573:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorI4EdgeE7destroyIS1_EEvPT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorI4EdgeE7destroyIS1_EEvPT_
	.def	_ZN9__gnu_cxx13new_allocatorI4EdgeE7destroyIS1_EEvPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorI4EdgeE7destroyIS1_EEvPT_
_ZN9__gnu_cxx13new_allocatorI4EdgeE7destroyIS1_EEvPT_:
.LFB5574:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.globl	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rdata$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,"dr"
	.linkonce same_size
	.align 8
_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.globl	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rdata$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,"dr"
	.linkonce same_size
	.align 32
_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.ascii "St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\0"
	.section .rdata,"dr"
	.align 4
.LC0:
	.long	1073741824
	.align 16
.LC5:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
.LC6:
	.long	1036831949
	.align 4
.LC7:
	.long	1148846080
	.align 4
.LC8:
	.long	-1194215657
	.align 4
.LC9:
	.long	953267991
	.align 4
.LC10:
	.long	2139095040
	.align 4
.LC11:
	.long	1065353216
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	powf;	.scl	2;	.type	32;	.endef
	.def	sqrtf;	.scl	2;	.type	32;	.endef
	.def	cos;	.scl	2;	.type	32;	.endef
	.def	sin;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEf;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	atan2f;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6localeC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6localeD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	__cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	__cxa_rethrow;	.scl	2;	.type	32;	.endef
	.def	__cxa_end_catch;	.scl	2;	.type	32;	.endef
	.def	__cxa_call_unexpected;	.scl	2;	.type	32;	.endef
	.def	_ZdlPv;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	__cxa_pure_virtual;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt9type_infoeqERKS_;	.scl	2;	.type	32;	.endef

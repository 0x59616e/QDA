	.text
	.file	"LLVMDialectModule"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function test
.LCPI0_0:
	.quad	0x3fe6a09e667f3bcc              # double 0.70710678118654746
	.quad	0x3fe6a09e667f3bcc              # double 0.70710678118654746
	.text
	.globl	test
	.p2align	4, 0x90
	.type	test,@function
test:                                   # @test
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movq	%rdi, %rbx
	movl	$4160, %edi                     # imm = 0x1040
	callq	malloc@PLT
	movq	%rax, %r14
	movq	%rax, %r12
	addq	$63, %r12
	andq	$-64, %r12
	movl	$4160, %edi                     # imm = 0x1040
	callq	malloc@PLT
	addq	$63, %rax
	andq	$-64, %rax
	movq	$-32, %rcx
	movapd	.LCPI0_0(%rip), %xmm0           # xmm0 = [7.0710678118654746E-1,7.0710678118654746E-1]
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movupd	256(%r15,%rcx,8), %xmm1
	movupd	272(%r15,%rcx,8), %xmm2
	movupd	288(%r15,%rcx,8), %xmm3
	movupd	304(%r15,%rcx,8), %xmm4
	movupd	416(%r15,%rcx,8), %xmm5
	subpd	%xmm5, %xmm3
	movupd	400(%r15,%rcx,8), %xmm5
	subpd	%xmm5, %xmm2
	movupd	384(%r15,%rcx,8), %xmm5
	subpd	%xmm5, %xmm1
	movupd	432(%r15,%rcx,8), %xmm5
	subpd	%xmm5, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm4
	movapd	%xmm4, 432(%rax,%rcx,8)
	movapd	%xmm1, 384(%rax,%rcx,8)
	movapd	%xmm2, 400(%rax,%rcx,8)
	movapd	%xmm3, 416(%rax,%rcx,8)
	movupd	256(%r15,%rcx,8), %xmm1
	movupd	272(%r15,%rcx,8), %xmm2
	movupd	288(%r15,%rcx,8), %xmm3
	movupd	304(%r15,%rcx,8), %xmm4
	movupd	416(%r15,%rcx,8), %xmm5
	addpd	%xmm3, %xmm5
	movupd	400(%r15,%rcx,8), %xmm3
	addpd	%xmm2, %xmm3
	movupd	384(%r15,%rcx,8), %xmm2
	addpd	%xmm1, %xmm2
	movupd	432(%r15,%rcx,8), %xmm1
	addpd	%xmm4, %xmm1
	mulpd	%xmm0, %xmm5
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm2
	mulpd	%xmm0, %xmm1
	movapd	%xmm1, 304(%rax,%rcx,8)
	movapd	%xmm2, 256(%rax,%rcx,8)
	movapd	%xmm3, 272(%rax,%rcx,8)
	movapd	%xmm5, 288(%rax,%rcx,8)
	movupd	320(%r15,%rcx,8), %xmm1
	movupd	336(%r15,%rcx,8), %xmm2
	movupd	352(%r15,%rcx,8), %xmm3
	movupd	368(%r15,%rcx,8), %xmm4
	movupd	480(%r15,%rcx,8), %xmm5
	subpd	%xmm5, %xmm3
	movupd	464(%r15,%rcx,8), %xmm5
	subpd	%xmm5, %xmm2
	movupd	448(%r15,%rcx,8), %xmm5
	subpd	%xmm5, %xmm1
	movupd	496(%r15,%rcx,8), %xmm5
	subpd	%xmm5, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm4
	movapd	%xmm4, 496(%rax,%rcx,8)
	movapd	%xmm1, 448(%rax,%rcx,8)
	movapd	%xmm2, 464(%rax,%rcx,8)
	movapd	%xmm3, 480(%rax,%rcx,8)
	movupd	320(%r15,%rcx,8), %xmm1
	movupd	336(%r15,%rcx,8), %xmm2
	movupd	352(%r15,%rcx,8), %xmm3
	movupd	368(%r15,%rcx,8), %xmm4
	movupd	464(%r15,%rcx,8), %xmm5
	addpd	%xmm2, %xmm5
	movupd	448(%r15,%rcx,8), %xmm2
	addpd	%xmm1, %xmm2
	movupd	496(%r15,%rcx,8), %xmm1
	addpd	%xmm4, %xmm1
	movupd	480(%r15,%rcx,8), %xmm4
	addpd	%xmm3, %xmm4
	mulpd	%xmm0, %xmm5
	mulpd	%xmm0, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm4
	movapd	%xmm4, 352(%rax,%rcx,8)
	movapd	%xmm1, 368(%rax,%rcx,8)
	movapd	%xmm2, 320(%rax,%rcx,8)
	movapd	%xmm5, 336(%rax,%rcx,8)
	addq	$32, %rcx
	cmpq	$480, %rcx                      # imm = 0x1E0
	jb	.LBB0_1
# %bb.2:                                # %.preheader.preheader
	movq	$-128, %rcx
	.p2align	4, 0x90
.LBB0_3:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movapd	1024(%rax,%rcx,8), %xmm1
	movapd	1040(%rax,%rcx,8), %xmm2
	movapd	1056(%rax,%rcx,8), %xmm3
	movapd	1072(%rax,%rcx,8), %xmm4
	subpd	1536(%rax,%rcx,8), %xmm1
	subpd	1552(%rax,%rcx,8), %xmm2
	subpd	1568(%rax,%rcx,8), %xmm3
	subpd	1584(%rax,%rcx,8), %xmm4
	mulpd	%xmm0, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm2
	mulpd	%xmm0, %xmm1
	movapd	%xmm1, 1536(%r12,%rcx,8)
	movapd	%xmm2, 1552(%r12,%rcx,8)
	movapd	%xmm3, 1568(%r12,%rcx,8)
	movapd	%xmm4, 1584(%r12,%rcx,8)
	movapd	1024(%rax,%rcx,8), %xmm1
	movapd	1040(%rax,%rcx,8), %xmm2
	movapd	1056(%rax,%rcx,8), %xmm3
	movapd	1072(%rax,%rcx,8), %xmm4
	addpd	1584(%rax,%rcx,8), %xmm4
	addpd	1568(%rax,%rcx,8), %xmm3
	addpd	1552(%rax,%rcx,8), %xmm2
	addpd	1536(%rax,%rcx,8), %xmm1
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	movapd	%xmm4, 1072(%r12,%rcx,8)
	movapd	%xmm3, 1056(%r12,%rcx,8)
	movapd	%xmm2, 1040(%r12,%rcx,8)
	movapd	%xmm1, 1024(%r12,%rcx,8)
	movapd	1088(%rax,%rcx,8), %xmm1
	movapd	1104(%rax,%rcx,8), %xmm2
	movapd	1120(%rax,%rcx,8), %xmm3
	movapd	1136(%rax,%rcx,8), %xmm4
	subpd	1648(%rax,%rcx,8), %xmm4
	subpd	1632(%rax,%rcx,8), %xmm3
	subpd	1616(%rax,%rcx,8), %xmm2
	subpd	1600(%rax,%rcx,8), %xmm1
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	movapd	%xmm4, 1648(%r12,%rcx,8)
	movapd	%xmm3, 1632(%r12,%rcx,8)
	movapd	%xmm2, 1616(%r12,%rcx,8)
	movapd	%xmm1, 1600(%r12,%rcx,8)
	movapd	1088(%rax,%rcx,8), %xmm1
	movapd	1104(%rax,%rcx,8), %xmm2
	movapd	1120(%rax,%rcx,8), %xmm3
	movapd	1136(%rax,%rcx,8), %xmm4
	addpd	1648(%rax,%rcx,8), %xmm4
	addpd	1632(%rax,%rcx,8), %xmm3
	addpd	1616(%rax,%rcx,8), %xmm2
	addpd	1600(%rax,%rcx,8), %xmm1
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	movapd	%xmm4, 1136(%r12,%rcx,8)
	movapd	%xmm3, 1120(%r12,%rcx,8)
	movapd	%xmm2, 1104(%r12,%rcx,8)
	movapd	%xmm1, 1088(%r12,%rcx,8)
	movapd	1152(%rax,%rcx,8), %xmm1
	movapd	1168(%rax,%rcx,8), %xmm2
	movapd	1184(%rax,%rcx,8), %xmm3
	movapd	1200(%rax,%rcx,8), %xmm4
	subpd	1712(%rax,%rcx,8), %xmm4
	subpd	1696(%rax,%rcx,8), %xmm3
	subpd	1680(%rax,%rcx,8), %xmm2
	subpd	1664(%rax,%rcx,8), %xmm1
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	movapd	%xmm4, 1712(%r12,%rcx,8)
	movapd	%xmm3, 1696(%r12,%rcx,8)
	movapd	%xmm2, 1680(%r12,%rcx,8)
	movapd	%xmm1, 1664(%r12,%rcx,8)
	movapd	1152(%rax,%rcx,8), %xmm1
	movapd	1168(%rax,%rcx,8), %xmm2
	movapd	1184(%rax,%rcx,8), %xmm3
	movapd	1200(%rax,%rcx,8), %xmm4
	addpd	1712(%rax,%rcx,8), %xmm4
	addpd	1696(%rax,%rcx,8), %xmm3
	addpd	1680(%rax,%rcx,8), %xmm2
	addpd	1664(%rax,%rcx,8), %xmm1
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	movapd	%xmm4, 1200(%r12,%rcx,8)
	movapd	%xmm3, 1184(%r12,%rcx,8)
	movapd	%xmm2, 1168(%r12,%rcx,8)
	movapd	%xmm1, 1152(%r12,%rcx,8)
	movapd	1216(%rax,%rcx,8), %xmm1
	movapd	1232(%rax,%rcx,8), %xmm2
	movapd	1248(%rax,%rcx,8), %xmm3
	movapd	1264(%rax,%rcx,8), %xmm4
	subpd	1776(%rax,%rcx,8), %xmm4
	subpd	1760(%rax,%rcx,8), %xmm3
	subpd	1744(%rax,%rcx,8), %xmm2
	subpd	1728(%rax,%rcx,8), %xmm1
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	movapd	%xmm4, 1776(%r12,%rcx,8)
	movapd	%xmm3, 1760(%r12,%rcx,8)
	movapd	%xmm2, 1744(%r12,%rcx,8)
	movapd	%xmm1, 1728(%r12,%rcx,8)
	movapd	1216(%rax,%rcx,8), %xmm1
	movapd	1232(%rax,%rcx,8), %xmm2
	movapd	1248(%rax,%rcx,8), %xmm3
	movapd	1264(%rax,%rcx,8), %xmm4
	addpd	1776(%rax,%rcx,8), %xmm4
	addpd	1760(%rax,%rcx,8), %xmm3
	addpd	1744(%rax,%rcx,8), %xmm2
	addpd	1728(%rax,%rcx,8), %xmm1
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	movapd	%xmm4, 1264(%r12,%rcx,8)
	movapd	%xmm3, 1248(%r12,%rcx,8)
	movapd	%xmm2, 1232(%r12,%rcx,8)
	movapd	%xmm1, 1216(%r12,%rcx,8)
	movapd	1280(%rax,%rcx,8), %xmm1
	movapd	1296(%rax,%rcx,8), %xmm2
	movapd	1312(%rax,%rcx,8), %xmm3
	movapd	1328(%rax,%rcx,8), %xmm4
	subpd	1840(%rax,%rcx,8), %xmm4
	subpd	1824(%rax,%rcx,8), %xmm3
	subpd	1808(%rax,%rcx,8), %xmm2
	subpd	1792(%rax,%rcx,8), %xmm1
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	movapd	%xmm4, 1840(%r12,%rcx,8)
	movapd	%xmm3, 1824(%r12,%rcx,8)
	movapd	%xmm2, 1808(%r12,%rcx,8)
	movapd	%xmm1, 1792(%r12,%rcx,8)
	movapd	1280(%rax,%rcx,8), %xmm1
	movapd	1296(%rax,%rcx,8), %xmm2
	movapd	1312(%rax,%rcx,8), %xmm3
	movapd	1328(%rax,%rcx,8), %xmm4
	addpd	1840(%rax,%rcx,8), %xmm4
	addpd	1824(%rax,%rcx,8), %xmm3
	addpd	1808(%rax,%rcx,8), %xmm2
	addpd	1792(%rax,%rcx,8), %xmm1
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	movapd	%xmm4, 1328(%r12,%rcx,8)
	movapd	%xmm3, 1312(%r12,%rcx,8)
	movapd	%xmm2, 1296(%r12,%rcx,8)
	movapd	%xmm1, 1280(%r12,%rcx,8)
	movapd	1344(%rax,%rcx,8), %xmm1
	movapd	1360(%rax,%rcx,8), %xmm2
	movapd	1376(%rax,%rcx,8), %xmm3
	movapd	1392(%rax,%rcx,8), %xmm4
	subpd	1904(%rax,%rcx,8), %xmm4
	subpd	1888(%rax,%rcx,8), %xmm3
	subpd	1872(%rax,%rcx,8), %xmm2
	subpd	1856(%rax,%rcx,8), %xmm1
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	movapd	%xmm4, 1904(%r12,%rcx,8)
	movapd	%xmm3, 1888(%r12,%rcx,8)
	movapd	%xmm2, 1872(%r12,%rcx,8)
	movapd	%xmm1, 1856(%r12,%rcx,8)
	movapd	1344(%rax,%rcx,8), %xmm1
	movapd	1360(%rax,%rcx,8), %xmm2
	movapd	1376(%rax,%rcx,8), %xmm3
	movapd	1392(%rax,%rcx,8), %xmm4
	addpd	1904(%rax,%rcx,8), %xmm4
	addpd	1888(%rax,%rcx,8), %xmm3
	addpd	1872(%rax,%rcx,8), %xmm2
	addpd	1856(%rax,%rcx,8), %xmm1
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	movapd	%xmm4, 1392(%r12,%rcx,8)
	movapd	%xmm3, 1376(%r12,%rcx,8)
	movapd	%xmm2, 1360(%r12,%rcx,8)
	movapd	%xmm1, 1344(%r12,%rcx,8)
	movapd	1408(%rax,%rcx,8), %xmm1
	movapd	1424(%rax,%rcx,8), %xmm2
	movapd	1440(%rax,%rcx,8), %xmm3
	movapd	1456(%rax,%rcx,8), %xmm4
	subpd	1968(%rax,%rcx,8), %xmm4
	subpd	1952(%rax,%rcx,8), %xmm3
	subpd	1936(%rax,%rcx,8), %xmm2
	subpd	1920(%rax,%rcx,8), %xmm1
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	movapd	%xmm4, 1968(%r12,%rcx,8)
	movapd	%xmm3, 1952(%r12,%rcx,8)
	movapd	%xmm2, 1936(%r12,%rcx,8)
	movapd	%xmm1, 1920(%r12,%rcx,8)
	movapd	1408(%rax,%rcx,8), %xmm1
	movapd	1424(%rax,%rcx,8), %xmm2
	movapd	1440(%rax,%rcx,8), %xmm3
	movapd	1456(%rax,%rcx,8), %xmm4
	addpd	1968(%rax,%rcx,8), %xmm4
	addpd	1952(%rax,%rcx,8), %xmm3
	addpd	1936(%rax,%rcx,8), %xmm2
	addpd	1920(%rax,%rcx,8), %xmm1
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	movapd	%xmm4, 1456(%r12,%rcx,8)
	movapd	%xmm3, 1440(%r12,%rcx,8)
	movapd	%xmm2, 1424(%r12,%rcx,8)
	movapd	%xmm1, 1408(%r12,%rcx,8)
	movapd	1472(%rax,%rcx,8), %xmm1
	movapd	1488(%rax,%rcx,8), %xmm2
	movapd	1504(%rax,%rcx,8), %xmm3
	movapd	1520(%rax,%rcx,8), %xmm4
	subpd	2032(%rax,%rcx,8), %xmm4
	subpd	2016(%rax,%rcx,8), %xmm3
	subpd	2000(%rax,%rcx,8), %xmm2
	subpd	1984(%rax,%rcx,8), %xmm1
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	movapd	%xmm4, 2032(%r12,%rcx,8)
	movapd	%xmm3, 2016(%r12,%rcx,8)
	movapd	%xmm2, 2000(%r12,%rcx,8)
	movapd	%xmm1, 1984(%r12,%rcx,8)
	movapd	1472(%rax,%rcx,8), %xmm1
	movapd	1488(%rax,%rcx,8), %xmm2
	movapd	1504(%rax,%rcx,8), %xmm3
	movapd	1520(%rax,%rcx,8), %xmm4
	addpd	2032(%rax,%rcx,8), %xmm4
	addpd	2016(%rax,%rcx,8), %xmm3
	addpd	2000(%rax,%rcx,8), %xmm2
	addpd	1984(%rax,%rcx,8), %xmm1
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	movapd	%xmm4, 1520(%r12,%rcx,8)
	movapd	%xmm3, 1504(%r12,%rcx,8)
	movapd	%xmm2, 1488(%r12,%rcx,8)
	movapd	%xmm1, 1472(%r12,%rcx,8)
	subq	$-128, %rcx
	cmpq	$384, %rcx                      # imm = 0x180
	jb	.LBB0_3
# %bb.4:
	movq	%r12, 8(%rbx)
	movq	%r14, (%rbx)
	movq	$1, 32(%rbx)
	movq	$512, 24(%rbx)                  # imm = 0x200
	movq	$0, 16(%rbx)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	test, .Lfunc_end0-test
                                        # -- End function
	.section	".note.GNU-stack","",@progbits

	.file	"asgn6.c"
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"\nEnter a positive integer: "
.LC1:
	.string	"%d"
.LC2:
	.string	"\n%d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.file 1 "asgn6.c"
	.loc 1 7 0	# This line is an debugger directive.
	.cfi_startproc	# This line is an Assembler directive. 
	pushq	%rbp	# Pushes rbp to the top of the stack
	.cfi_def_cfa_offset 16	# This line is an Assembler directive.
	.cfi_offset 6, -16	# This line is an Assembler directive.
	movq	%rsp, %rbp # Copys rsp to rbp
	.cfi_def_cfa_register 6	# This line is an Assembler directive.
	subq	$16, %rsp	# Subtracts 16 from rsp
	.loc 1 11 0	# This line is an debugger directive.
	movl	$.LC0, %edi # Copys LC0 to eax
	movl	$0, %eax	# Copys 0 to eax
	call	printf	# Prints the prompt for user input (int n).
	.loc 1 12 0	# This line is an debugger directive.
	leaq	-8(%rbp), %rax	# Gets the address of -8(rbp) and stores it in rax
	movq	%rax, %rsi # Copys rax to rsi
	movl	$.LC1, %edi	# Copys LC1 to eax
	movl	$0, %eax	# Copys 0 to eax
	call	__isoc99_scanf	# Calls the scanf function.
	.loc 1 14 0	# This line is an debugger directive.
	movl	-8(%rbp), %eax	# Copys -8(rbp) to eax
	movl	%eax, %edi	# Copys eax to edi
	call	calcPrimes	# Calls the calcPrimes function.
	.loc 1 16 0	# This line is an debugger directive.
	movl	$0, -4(%rbp) # Copys 0 to -4(rbp)
	jmp	.L2	# Unconditional jump to block L2(Top of for loop).
.L4:
	.loc 1 17 0	# This line is an debugger directive.
	movl	-4(%rbp), %eax	# Copys -4(rbp) to eax
	movl	%eax, %edi	# Copys eax to edi
	call	calcPrimes	# Calls the calcPrimes function.
	testb	%al, %al	# Computes the AND operator on al to al(if statement header).
	je	.L3	# Conditional jump to block L3(for loop header).
	.loc 1 18 0	# This line is an debugger directive.
	movl	-4(%rbp), %eax	# Copys -4(rbp) to eax
	movl	%eax, %esi	# Copys eax to esi
	movl	$.LC2, %edi	# Copys LC2 to edi
	movl	$0, %eax	# Copys 0 to eax
	call	printf	# Prints all prime numbers less than int n.
.L3:
	.loc 1 16 0	# This line is an debugger directive.
	addl	$1, -4(%rbp)	# Adds 1 to -4(rbp) and stores it in rbp.
.L2:
	.loc 1 16 0 is_stmt 0 discriminator 1	# This line is an debugger directive.
	movl	-8(%rbp), %eax	# Copys -8(rbp) to eax
	cmpl	%eax, -4(%rbp)	# Compares -4(rbp) to eax(for loop header).
	jle	.L4	# Conditional jump to block L4(nested if statement).
	.loc 1 22 0 is_stmt 1	# This line is an debugger directive.
	movl	$10, %edi	# Copys 10 to edi
	call	putchar	# Prints ("\n") on the screen.
	.loc 1 24 0	# This line is an debugger directive.
	movl	$0, %eax # Copys 0 to eax
	.loc 1 25 0	# This line is an debugger directive.
	leave # End of function
	.cfi_def_cfa 7, 8	# This line is an Assembler directive.
	ret	# End of function
	.cfi_endproc	# This line is an Assembler directive.
.LFE0:
	.size	main, .-main
	.globl	calcPrimes
	.type	calcPrimes, @function
calcPrimes:
.LFB1:
	.loc 1 34 0	# This line is an debugger directive.
	.cfi_startproc	# This line is an Assembler directive.
	pushq	%rbp	# Pushes rbp to the top of the stack
	.cfi_def_cfa_offset 16	# This line is an Assembler directive.
	.cfi_offset 6, -16	# This line is an Assembler directive.
	movq	%rsp, %rbp	# Copys rsp to rbp
	.cfi_def_cfa_register 6	# This line is an Assembler directive.
	movl	%edi, -20(%rbp)	# Copys edi to -20(rbp)
	.loc 1 36 0	# This line is an debugger directive.
	cmpl	$1, -20(%rbp)	# Compares -20(rbp) to 1(if statement).
	jg	.L7	# Conditional jump to block L7(else if statement).
	.loc 1 37 0	# This line is an debugger directive.
	movl	$0, %eax	# Copys 0 to eax
	jmp	.L8	# Unconditional jump to block L8(Return statement).
.L7:
	.loc 1 38 0	# This line is an debugger directive.
	cmpl	$2, -20(%rbp)	# Compares -20(rbp) to 2(if statement).
	jne	.L9 # Conditional jump to block L9(else if statement).
	.loc 1 39 0	# This line is an debugger directive.
	movl	$1, %eax	# Copys 1 to eax
	jmp	.L8	# Unconditional jump to block L8(Return statement).
.L9:
	.loc 1 42 0	# This line is an debugger directive.
	cmpl	$4, -20(%rbp)	# Compares -20(rbp) to 4(if statement).
	jne	.L10	# Conditional jump to block L10(for loop in calcPrimes).
	.loc 1 43 0	# This line is an debugger directive.
	movl	$0, %eax	# Copys 0 to eax
	jmp	.L8	# Unconditional jump to block L8(Return statement).
.L10:
	.loc 1 46 0	# This line is an debugger directive.
	movl	$3, -4(%rbp)	# Copys 3 to -4(rbp)
	jmp	.L11	# Unconditional jump to block L11(Top of for loop in calcPrimes()).
.L13:
	.loc 1 47 0	# This line is an debugger directive.
	movl	-20(%rbp), %eax	# Copys -20(rbp) to eax
	cltd	# Doubles the size of eax.
	idivl	-4(%rbp)	# Divides the value -4(rbp) and stores it in eax.
	movl	%edx, %eax	# Copys edx to eax
	testl	%eax, %eax	# Computes the AND operator on eax and eax(if statement header).
	jne	.L12	# Conditional jump to block L12(for loop header).
	.loc 1 48 0	# This line is an debugger directive.
	movl	$0, %eax	# Copys 0 to eax
	jmp	.L8	# Unconditional jump to block L8(Return statement).
.L12:
	.loc 1 46 0	# This line is an debugger directive.
	addl	$1, -4(%rbp)	# Adds 1 to -4(rbp) and stores it in rbp.
.L11:
	.loc 1 46 0 is_stmt 0 discriminator 1	# This line is an debugger directive.
	movl	-4(%rbp), %eax	# Copys -4(rbp) to eax
	cmpl	-20(%rbp), %eax	# Compares eax to -20(rbp)(for loop header).
	jl	.L13	# Conditional jump to block L13(nested if statement).
	.loc 1 51 0 is_stmt 1	# This line is an debugger directive.
	movl	$1, %eax	# Copys 1 to eax
.L8:
	.loc 1 52 0	# This line is an debugger directive.
	popq	%rbp	# Pops the top of the stack into rbp.
	.cfi_def_cfa 7, 8	# This line is an Assembler directive.
	ret	# End of function
	.cfi_endproc	# This line is an Assembler directive.
.LFE1:
	.size	calcPrimes, .-calcPrimes
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:	# The rest of the code is handled by the debugger. 
	.long	0xeb
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF10
	.byte	0x1
	.long	.LASF11
	.long	.LASF12
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x4
	.long	.LASF13
	.byte	0x1
	.byte	0x7
	.long	0x57
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xad
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0x9
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"i"
	.byte	0x1
	.byte	0x9
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.long	.LASF14
	.byte	0x1
	.byte	0x22
	.long	0xe7
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0xe7
	.uleb128 0x7
	.string	"n"
	.byte	0x1
	.byte	0x22
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"i"
	.byte	0x1
	.byte	0x2c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF9
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"unsigned int"
.LASF11:
	.string	"asgn6.c"
.LASF0:
	.string	"long unsigned int"
.LASF8:
	.string	"char"
.LASF1:
	.string	"unsigned char"
.LASF13:
	.string	"main"
.LASF14:
	.string	"calcPrimes"
.LASF6:
	.string	"long int"
.LASF12:
	.string	"/home/UAB/jdp2/asgn6"
.LASF9:
	.string	"_Bool"
.LASF2:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF10:
	.string	"GNU C 4.8.5 20150623 (Red Hat 4.8.5-44) -mtune=generic -march=x86-64 -g"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"sizetype"
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits

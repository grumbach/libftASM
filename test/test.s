; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    test.s                                             :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/17 17:56:55 by agrumbac          #+#    #+#              ;
;    Updated: 2018/05/18 03:14:46 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

;//APP (Asm Pre Processor) macros
%define MACH_SYSCALL(n)    0x2000000 | n
%define WRITE              4
%define STDOUT             1

;//data
section .data
hello:
	.string db "Hello world!", 10
	.len equ $ - hello.string

;//text symbols
section .text
	global start
	global _main
	extern _printf

;//nasm entry point
start:
	call _main                    ;//backup instruction pointer EIP jump to _main
	ret

;//default entry point
_main:
	push rbp                      ;//backup stack frame base pointer RBP
	mov rbp, rsp                  ;//stack end pointer RSP
	sub rsp, 16                   ;//grow the stack towards lower addresses
	mov rdi, STDOUT               ;//passing parameters to the WRITE syscall...
	lea rsi, [rel hello.string]
	mov rdx, hello.len
	mov rax, MACH_SYSCALL(WRITE)  ;//RAX holds the syscall number
	syscall
	leave                         ;//set RSP to RBP, then pop RBP (pushed above)
	ret                           ;//pop EIP (pushed above in call)
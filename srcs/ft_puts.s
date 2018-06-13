; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 05:23:30 by agrumbac          #+#    #+#              ;
;    Updated: 2018/06/12 18:52:42 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define MACH_SYSCALL(n)    0x2000000 | n
%define WRITE              4
%define STDOUT             1

section .data
default_null:
	.string db "(null)"
	.len equ $ - default_null.string

section .text
	global _ft_puts
	extern _ft_strlen
	extern _ft_putchar

_null_case:
	lea rsi, [rel default_null.string]
	mov rdx, default_null.len
	jmp _write_syscall

_ft_puts:
	push rbp
	mov rbp, rsp

	test rdi, rdi
	jz _null_case

	push rdi
	sub rsp, 8

	call _ft_strlen
	mov rdx, rax

	add rsp, 8
	pop rsi

_write_syscall:
	mov rdi, STDOUT
	mov rax, MACH_SYSCALL(WRITE)
	syscall

	push rax
	sub rsp, 8

	mov rdi, 10
	call _ft_putchar

	add rsp, 8
	pop rax
	inc rax

	leave
	ret

; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 05:23:30 by agrumbac          #+#    #+#              ;
;    Updated: 2018/05/18 05:56:53 by agrumbac         ###   ########.fr        ;
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

	and rdi, rdi
	jz _null_case

	call _ft_strlen
	mov rdx, rax
	mov rsi, rdi

_write_syscall
	mov rdi, STDOUT
	mov rax, MACH_SYSCALL(WRITE)
	syscall

	mov rdi, 10
	call _ft_putchar

	leave
	ret

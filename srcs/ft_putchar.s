; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putchar.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 04:48:30 by agrumbac          #+#    #+#              ;
;    Updated: 2018/05/18 05:22:31 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define MACH_SYSCALL(n)    0x2000000 | n
%define WRITE              4
%define STDOUT             1

section .text
	global _ft_putchar

_ft_putchar:
	push rbp               ;build stack frame
	mov rbp, rsp

	push rdi
	lea rsi, [rsp]
	mov rdi, STDOUT
	mov rdx, 1
	mov rax, MACH_SYSCALL(WRITE)
	syscall

	mov rsp, rbp          ;reset stack frame
	pop rbp

	ret

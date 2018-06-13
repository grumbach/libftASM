; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putstr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/19 12:54:14 by agrumbac          #+#    #+#              ;
;    Updated: 2018/06/13 21:14:21 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define MACH_SYSCALL(n)    0x2000000 | n
%define WRITE              4
%define STDOUT             1

section .text
	global _ft_putstr
	extern _ft_strlen

_ft_putstr:
	push rbp
	mov rbp, rsp

	mov rsi, rdi

	call _ft_strlen
	mov rdx, rax

	mov rdi, STDOUT
	mov rax, MACH_SYSCALL(WRITE)
	syscall

	leave
	ret

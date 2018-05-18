; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 05:29:05 by agrumbac          #+#    #+#              ;
;    Updated: 2018/05/18 07:17:25 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strlen

_ft_strlen:
	push rbp
	mov rbp, rsp

	mov rcx, rdi

	jmp _loop
_do:
	inc rcx
_loop:
	cmp BYTE [rcx], 0
	jnz _do

	sub rcx, rdi
	mov rax, rcx

	leave
	ret

; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 05:29:05 by agrumbac          #+#    #+#              ;
;    Updated: 2018/06/12 00:12:58 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strlen

_ft_strlen:
	push rbp
	mov rbp, rsp

	xor al, al
	xor rcx, rcx

	not rcx

	cld

	repnz scasb

	not rcx
	dec rcx

	mov rax, rcx

	leave
	ret

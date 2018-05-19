; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strchr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/20 00:05:10 by agrumbac          #+#    #+#              ;
;    Updated: 2018/05/20 00:25:03 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strchr

_ft_strchr:
	push rbp
	mov rbp, rsp

	mov rdx, rsi
	mov rax, 0

	jmp _loop
_do:
	inc rdi
_loop:
	mov dh, BYTE [rdi]     ;read char

	cmp dh, dl
	je _found

	test dh, dh
	jz _not_found

	jmp _do

_found:
	mov rax, rdi

_not_found:
	leave
	ret

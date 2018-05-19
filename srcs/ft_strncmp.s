; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strncmp.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/19 20:06:50 by agrumbac          #+#    #+#              ;
;    Updated: 2018/05/20 00:03:40 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strncmp

_return_greater:
	mov rax, -1
	jmp _break

_return_less:
	mov rax, 1
	jmp _break


_ft_strncmp:
	push rbp
	mov rbp, rsp

	mov rax, 0

	jmp _loop
_do:
	inc rdi
	inc rsi
	dec rdx
_loop:
	test rdx, rdx          ;test reached len
	jz _break

	mov ch, BYTE [rdi]     ;read char dest
	mov cl, BYTE [rsi]     ;read char src

	test cx, cx            ;reached end of both strings
	jz _break

	cmp cl, ch             ;compare chars
	je _do
	jg _return_greater
	jl _return_less

	jmp _do

_break:

	leave
	ret

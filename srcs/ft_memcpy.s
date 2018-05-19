; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 07:06:29 by agrumbac          #+#    #+#              ;
;    Updated: 2018/05/19 16:47:10 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_memcpy

_ft_memcpy:
	push rbp
	mov rbp, rsp

	mov rcx, rdi

	jmp _loop
_do:
	mov al, BYTE [rsi]
	mov BYTE [rcx], al
	inc rcx
	inc rsi
	dec rdx
_loop:
	test rdx, rdx
	jnz _do

	mov rax, rdi

	leave
	ret

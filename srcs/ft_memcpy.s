; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 07:06:29 by agrumbac          #+#    #+#              ;
;    Updated: 2018/05/18 09:00:29 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_memcpy

_ft_memcpy:
	push rbp
	mov rbp, rsp

	mov rcx, rdi
	push rsi               ;backup rsi (non-volatile)

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

	pop rsi                ;restore rsi
	mov rax, rdi

	leave
	ret

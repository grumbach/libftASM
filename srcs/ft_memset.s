; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 07:06:26 by agrumbac          #+#    #+#              ;
;    Updated: 2018/05/20 21:47:28 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_memset

_ft_memset:
	push rbp
	mov rbp, rsp

	mov rcx, rdi
	mov rax, rsi

	jmp _loop
_do:
	mov BYTE [rcx], al
	inc rcx
	dec rdx
_loop:
	test rdx, rdx
	jnz _do

	mov rax, rdi

	leave
	ret

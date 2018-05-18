; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 07:06:37 by agrumbac          #+#    #+#              ;
;    Updated: 2018/05/18 07:47:26 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_bzero

_ft_bzero:
	push rbp
	mov rbp, rsp

	mov rcx, rdi
	mov rdx, rsi

	jmp _loop
_do:
	mov BYTE [rcx], 0
	inc rcx
	dec rsi
_loop:
	test rsi, rsi
	jnz _do

	leave
	ret

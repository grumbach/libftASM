; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 07:06:19 by agrumbac          #+#    #+#              ;
;    Updated: 2018/06/13 21:09:02 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strcat
	extern _ft_strlen
	extern _ft_memcpy

_ft_strcat:
	push rbp
	mov rbp, rsp

	push rdi
	push rsi

	mov rdi, rsi

	call _ft_strlen

	mov rdx, rax       ;len rsi
	inc rdx            ;copy the zero too

	mov rdi, [rsp + 8] ;get original rdi

	call _ft_strlen    ;move rdi to end of string

	pop rsi
	mov rdi, [rsp]
	add rdi, rax
	sub rsp, 8         ;padding

	call _ft_memcpy

	add rsp, 8         ;remove padding
	pop rax

	leave
	ret

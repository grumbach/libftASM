; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 07:06:29 by agrumbac          #+#    #+#              ;
;    Updated: 2018/06/12 15:41:26 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_memcpy

_ft_memcpy:
	push rbp
	mov rbp, rsp

	mov rax, rdi

	mov rcx, rdx

	rep movsb

	leave
	ret

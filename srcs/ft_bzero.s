; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 07:06:37 by agrumbac          #+#    #+#              ;
;    Updated: 2018/06/12 16:02:01 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_bzero

_ft_bzero:
	push rbp
	mov rbp, rsp

	mov rcx, rsi

	xor al, al

	rep stosb

	leave
	ret

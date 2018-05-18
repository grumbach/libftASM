; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 06:29:23 by agrumbac          #+#    #+#              ;
;    Updated: 2018/05/18 06:43:45 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isascii

_ft_isascii:
	push rbp
	mov rbp, rsp

	mov rax, 0

	cmp rdi, 0
	jl _is_not_ascii
	cmp rdi, 127
	jg _is_not_ascii

	mov rax, 1

_is_not_ascii:
	leave
	ret

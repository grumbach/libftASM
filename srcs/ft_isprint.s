; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 06:29:34 by agrumbac          #+#    #+#              ;
;    Updated: 2018/05/18 07:01:13 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isprint

_ft_isprint:
	push rbp
	mov rbp, rsp

	mov rax, 0

	cmp rdi, 32
	jl _is_not_print
	cmp rdi, 126
	jg _is_not_print

	mov rax, 1

_is_not_print:
	leave
	ret

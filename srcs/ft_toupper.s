; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/17 17:51:22 by agrumbac          #+#    #+#              ;
;    Updated: 2018/05/18 07:36:56 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_toupper

_ft_toupper:
	push rbp
	mov rbp, rsp

	mov rax, rdi

	cmp rdi, 97
	jl _is_not_lower
	cmp rdi, 122
	jg _is_not_lower

	sub rax, 32

_is_not_lower:

	leave
	ret

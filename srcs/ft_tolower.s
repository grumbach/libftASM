; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 07:06:10 by agrumbac          #+#    #+#              ;
;    Updated: 2018/05/20 21:48:59 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_tolower

_ft_tolower:
	push rbp
	mov rbp, rsp

	mov rax, rdi

	cmp rdi, 65
	jl _is_not_upper
	cmp rdi, 90
	jg _is_not_upper

	add rax, 32

_is_not_upper:

	leave
	ret

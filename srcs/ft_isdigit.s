; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 06:29:29 by agrumbac          #+#    #+#              ;
;    Updated: 2018/05/18 06:38:00 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isdigit

_ft_isdigit:
	push rbp
	mov rbp, rsp

	mov rax, 0

	cmp rdi, 48
	jl _is_not_digit
	cmp rdi, 57
	jg _is_not_digit

	mov rax, 1

_is_not_digit:
	leave
	ret

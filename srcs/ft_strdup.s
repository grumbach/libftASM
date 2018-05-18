; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 07:06:16 by agrumbac          #+#    #+#              ;
;    Updated: 2018/05/18 10:46:39 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strdup
	extern _ft_strlen
	extern _ft_memcpy
	extern _malloc

_failure:
	add rsp, 16
	pop rdi
	pop rsi

	mov rax, 0

	leave
	ret


_ft_strdup:
	push rbp
	mov rbp, rsp

	push rsi
	push rdi

	call _ft_strlen

	inc rax
	push rax
	sub rsp, 8              ;padding for 16-bit alignment

	mov rdi, rax
	call _malloc

	test rax, rax
	jz _failure

	add rsp, 8              ;remove padding
	pop rdx

	mov rdi, rax
	mov rsi, [rsp]

	call _ft_memcpy

	pop rdi
	pop rsi

	leave
	ret

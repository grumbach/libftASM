; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 07:06:16 by agrumbac          #+#    #+#              ;
;    Updated: 2018/05/19 16:41:38 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strdup
	extern _ft_strlen
	extern _ft_memcpy
	extern _malloc

_ft_strdup:
	push rbp
	mov rbp, rsp

	call _ft_strlen

	inc rax
	push rax
	push rdi

	mov rdi, rax
	call _malloc

	pop rsi                 ;source
	pop rdx                 ;len

	test rax, rax           ;test malloc return
	jz _return

	mov rdi, rax

	call _ft_memcpy

_return:
	leave
	ret

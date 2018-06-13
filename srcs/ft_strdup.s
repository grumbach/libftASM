; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 07:06:16 by agrumbac          #+#    #+#              ;
;    Updated: 2018/06/13 14:38:32 by agrumbac         ###   ########.fr        ;
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

	push rdi                ;source
	sub rsp, 8              ;align

	call _ft_strlen

	add rsp, 8              ;remove padding
	inc rax
	push rax                ;len

	mov rdi, rax
	call _malloc

	pop rdx                 ;len
	pop rsi                 ;source

	test rax, rax           ;test malloc return
	jz _return

	mov rdi, rax

	call _ft_memcpy

_return:
	leave
	ret

; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memalloc.s                                      :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 11:20:25 by agrumbac          #+#    #+#              ;
;    Updated: 2018/06/12 16:58:58 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_memalloc
	extern _ft_bzero
	extern _malloc

_return_null:
	mov rax, 0
	leave
	ret

_ft_memalloc:
	push rbp
	mov rbp, rsp

	test rdi, rdi
	jz _return_null

	push rdi
	sub rsp, 8                     ;16bit align

	call _malloc
	test rax, rax
	jz _return_null

	add rsp, 8                     ;remove padding
	pop rsi
	mov rdi, rax
	push rax
	sub rsp, 8                     ;16bit align

	call _ft_bzero

	add rsp, 8                     ;remove padding
	pop rax

	leave
	ret

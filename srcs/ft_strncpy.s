; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strncpy.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/19 19:20:14 by agrumbac          #+#    #+#              ;
;    Updated: 2018/05/19 19:55:21 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strncpy

_fill_zeros:
	mov BYTE [rcx], 0
	inc rcx
	dec rdx
	test rdx, rdx
	jnz _fill_zeros
	jmp _break


_ft_strncpy:
	push rbp
	mov rbp, rsp

	mov rcx, rdi

	jmp _loop
_do:
	mov BYTE [rcx], al     ;copy char
	inc rcx
	inc rsi
	dec rdx
_loop:
	test rdx, rdx          ;test reached len
	jz _break

	mov al, BYTE [rsi]     ;read char

	test al, al            ;test reached end of src
	jz _fill_zeros
	jmp _do

_break:
	mov rax, rdi

	leave
	ret

; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 07:06:19 by agrumbac          #+#    #+#              ;
;    Updated: 2018/05/18 09:27:27 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strcat
	extern _ft_strlen

_ft_strcat:
	push rbp
	mov rbp, rsp

	call _ft_strlen

	mov rdx, rdi
	mov rcx, rsi

	add rdx, rax

	mov al, BYTE [rcx]
	jmp _loop
_do:
	mov al, BYTE [rcx]
	mov BYTE [rdx], al
	inc rcx
	inc rdx
_loop:
	test al, al
	jnz _do

	mov rax, rdi

	leave
	ret

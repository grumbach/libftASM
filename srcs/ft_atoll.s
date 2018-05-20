; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_atoll.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/20 17:36:00 by agrumbac          #+#    #+#              ;
;    Updated: 2018/05/20 21:10:45 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_atoll


_manage_sign_negative:
	xor rdx, rdx
_manage_sign:
	inc rdi                  ;go to next char
	mov cl, BYTE [rdi]       ;read char
	jmp _digit_loop


_ft_atoll:
	push rbp
	mov rbp, rsp

	mov rax, 0               ;default return value 0
	mov rdx, 1               ;sign: positive
	mov rcx, 0               ;char

	jmp _spaces_loop

_check_spaces:
	inc rdi                  ;go to next char

_spaces_loop:
	mov cl, BYTE [rdi]       ;read char

	cmp cl, 32
	je _check_spaces
	cmp cl, 9
	jl _check_sign
	cmp cl, 13
	jg _check_sign

	jmp _check_spaces

_check_sign:

	cmp cl, 0x2b             ;check for + sign
	je _manage_sign
	cmp cl, 0x2d             ;check for - sign
	je _manage_sign_negative

	jmp _digit_loop

_check_digits:
	inc rdi                  ;go to next char
	mov cl, BYTE [rdi]       ;read char

_digit_loop:
	cmp cl, 48               ;check >= '0'
	jl _return
	cmp cl, 57               ;check <= '9'
	jg _return

	imul rax, 10
	sub cl, 48               ;sub ascii zero for int value
	add rax, rcx

	jmp _check_digits

_return:

	test rdx, rdx            ;positive then leave
	jnz _leave

	neg rax                  ;else negative

_leave:

	leave
	ret

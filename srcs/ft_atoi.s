; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_atoi.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/20 21:16:17 by agrumbac          #+#    #+#              ;
;    Updated: 2018/05/20 21:17:35 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_atoi


_manage_sign_negative:
	xor edx, edx
_manage_sign:
	inc rdi                  ;go to next char
	mov cl, BYTE [rdi]       ;read char
	jmp _digit_loop


_ft_atoi:
	push rbp
	mov rbp, rsp

	mov rax, 0               ;default return value 0
	mov edx, 1               ;sign: positive
	mov ecx, 0               ;char

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

	imul eax, 10
	sub cl, 48               ;sub ascii zero for int value
	add eax, ecx

	jmp _check_digits

_return:

	test edx, edx            ;positive then leave
	jnz _leave

	neg eax                  ;else negative

_leave:

	leave
	ret

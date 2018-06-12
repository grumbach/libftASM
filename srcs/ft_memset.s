; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 07:06:26 by agrumbac          #+#    #+#              ;
;    Updated: 2018/06/12 16:02:04 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_memset

_ft_memset:
	push rbp
	mov rbp, rsp

	mov rcx, rdx

	mov rdx, rdi  ;backup 1st arg

	mov ax, si  ;setting the source char in al

	rep stosb

	mov rax, rdx  ;return 1st arg

	leave
	ret

; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 07:06:34 by agrumbac          #+#    #+#              ;
;    Updated: 2018/05/19 13:17:00 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define MACH_SYSCALL(n)    0x2000000 | n
%define READ               3
%define BUF_SIZE           1024

section .text
	global _ft_cat
	extern _ft_putstr

_ft_cat:
	push rbp
	mov rbp, rsp                        ;setup stack frame

	push rdi                            ;backup rdi (non-volatile)
	push rsi                            ;backup rsi (non-volatile)
	sub rsp, BUF_SIZE                   ;make a big stack buffer

_loop:

	mov rdi, [rbp - 8]                  ;fd
	mov rsi, rsp                        ;buffer
	mov rdx, BUF_SIZE - 1               ;
	mov rax, MACH_SYSCALL(READ)         ;call read
	syscall

	cmp rax, 0                          ;check for err or EOF TODO check msb neg
	jle _break

	mov rdx, rsp
	add rdx, rax
	mov BYTE [rdx], 0                   ;null terminate buffer

	mov rdi, rsp                        ;puts buffer
	call _ft_putstr

	jmp _loop

_break:

	add rsp, BUF_SIZE                   ;destroy big stack buffer
	pop rsi                             ;restore rsi
	pop rdi                             ;restore rdi

	leave                               ;destroy stack frame
	ret

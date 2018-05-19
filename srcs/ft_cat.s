; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 07:06:34 by agrumbac          #+#    #+#              ;
;    Updated: 2018/05/19 17:09:17 by agrumbac         ###   ########.fr        ;
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

	push rbx                            ;backup preserved register
	sub rsp, 8                          ;16bit align stack

	sub rsp, BUF_SIZE                   ;make a big stack buffer

	mov rbx, rdi                        ;store fd

_loop:

	mov rdi, rbx                        ;fd
	mov rsi, rsp                        ;buffer
	mov rdx, BUF_SIZE - 1               ;read size
	mov rax, MACH_SYSCALL(READ)         ;call read
	syscall

	cmp rax, 0                          ;check for err or EOF
	jle _break

	mov rdx, rsp
	add rdx, rax
	mov BYTE [rdx], 0                   ;null terminate buffer

	mov rdi, rsp                        ;puts buffer
	call _ft_putstr

	jmp _loop

_break:

	add rsp, BUF_SIZE                   ;destroy big stack buffer
	add rsp, 8
	pop rbx                             ;restore rbx

	leave                               ;destroy stack frame
	ret

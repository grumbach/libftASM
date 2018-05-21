; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/05/18 07:06:34 by agrumbac          #+#    #+#              ;
;    Updated: 2018/05/21 18:46:27 by agrumbac         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define MACH_SYSCALL(n)    0x2000000 | n
%define READ               3
%define WRITE              4
%define STDOUT             1
%define BUF_SIZE           1024

section .text
	global _ft_cat

_ft_cat:
	push rbp
	mov rbp, rsp                        ;setup stack frame

	push rbx                            ;backup preserved register
	sub rsp, 8                          ;16bit align stack

	sub rsp, BUF_SIZE                   ;make a big stack buffer

	mov rbx, rdi                        ;store fd in a preserved register

_loop:

	mov rdi, rbx                        ;fd
	mov rsi, rsp                        ;buffer
	mov rdx, BUF_SIZE - 1               ;read size
	mov rax, MACH_SYSCALL(READ)         ;call read
	syscall

	jc _break                           ;quit if read set carry (error)
	cmp rax, 0                          ;check for EOF
	jle _break


	mov rdi, STDOUT
	mov rsi, rsp                         ;buffer on stack
	mov rdx, rax                         ;length returned by read
	mov rax, MACH_SYSCALL(WRITE)         ;call write
	syscall

	jmp _loop

_break:

	add rsp, BUF_SIZE                   ;destroy big stack buffer
	add rsp, 8
	pop rbx                             ;restore rbx

	leave                               ;destroy stack frame
	ret

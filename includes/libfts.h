/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/05/21 22:01:48 by agrumbac          #+#    #+#             */
/*   Updated: 2018/05/21 22:31:01 by agrumbac         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

# include <stdio.h>
# include <fcntl.h>
# include <stdlib.h>
# include <unistd.h>

long long			ft_atoll(const char *str);
int					ft_atoi(const char *str);
char				*ft_strncpy(char * dst, const char * src, size_t len);
int					ft_strncmp(const char *s1, const char *s2, size_t n);
char				*ft_strchr(const char *s, const char c);
void				*ft_memalloc(const unsigned long int len);
void				ft_cat(const int fd);
char				*ft_strdup(const char *s);
char				*ft_strcat(char *restrict s1, const char *restrict s2);
void				*ft_memcpy(void *restrict dst, const void *restrict src, \
						size_t n);
void				ft_memset(void *a, int c, size_t len);
void				ft_bzero(void *a, size_t len);
int					ft_toupper(int a);
int					ft_tolower(int a);
size_t				ft_strlen(const char *b);
int					ft_isalpha(int a);
int					ft_isascii(int a);
int					ft_isdigit(int a);
int					ft_isalnum(int a);
int					ft_isprint(int a);
void				ft_putchar(char c);
int					ft_puts(char *s);

#endif

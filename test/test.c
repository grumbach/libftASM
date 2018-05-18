/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/05/17 17:50:29 by agrumbac          #+#    #+#             */
/*   Updated: 2018/05/18 07:37:54 by agrumbac         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>

int					ft_toupper(int a);
int					ft_tolower(int a);
unsigned long int	ft_strlen(const char *b);
int					ft_isalpha(int a);
int					ft_isascii(int a);
int					ft_isdigit(int a);
int					ft_isalnum(int a);
int					ft_isprint(int a);
void				ft_putchar(char c);
int					ft_puts(char *s);

char *a = "qwertyuiopasdfghjklzxcvbnmufqyew iufew fpqueiwh ewpqiufh ewqoifugeqw ofiugweq foiequwg fqewoiufg qweofiuweqg wkug reifugrw orweiufg reowifugrwe ofiuegrw fiuewgf qweoigyfghjklzxcvbnmufqyew iufew fpqueiwh ewpqiufh ewqoifugeqw ofiugweq foiequwg fqewoiufg qweofiuweqg wkug reifugrw orweiufg reowifugrwe ofiuegrw fiuewgf qweoigyfghjklzxcvbnmufqyew iufew fpqueiwh ewpqiufh ewqoifugeqw ofiugweq foiequwg fqewoiufg qweofiuweqg wkug reifugrw orweiufg reowifugrwe ofiuegrw fiuewgf qweoigyfghjklzxcvbnmufqyew iufew fpqueiwh ewpqiufh ewqoifugeqw ofiugweq foiequwg fqewoiufg qweofiuweqg wkug reifugrw orweiufg reowifugrwe ofiuegrw fiuewgf qweoigyfghjklzxcvbnmufqyew iufew fpqueiwh ewpqiufh ewqoifugeqw ofiugweq foiequwg fqewoiufg qweofiuweqg wkug reifugrw orweiufg reowifugrwe ofiuegrw fiuewgf qweoigyfghjklzxcvbnmufqyew iufew fpqueiwh ewpqiufh ewqoifugeqw ofiugweq foiequwg fqewoiufg qweofiuweqg wkug reifugrw orweiufg reowifugrwe ofiuegrw fiuewgf qweoigyfghjklzxcvbnmufqyew iufew fpqueiwh ewpqiufh ewqoifugeqw ofiugweq foiequwg fqewoiufg qweofiuweqg wkug reifugrw orweiufg reowifugrwe ofiuegrw fiuewgf qweoigyfghjklzxcvbnmufqyew iufew fpqueiwh ewpqiufh ewqoifugeqw ofiugweq foiequwg fqewoiufg qweofiuweqg wkug reifugrw orweiufg reowifugrwe ofiuegrw fiuewgf qweoigyfghjklzxcvbnmufqyew iufew fpqueiwh ewpqiufh ewqoifugeqw ofiugweq foiequwg fqewoiufg qweofiuweqg wkug reifugrw orweiufg reowifugrwe ofiuegrw fiuewgf qweoigyfghjklzxcvbnmufqyew iufew fpqueiwh ewpqiufh ewqoifugeqw ofiugweq foiequwg fqewoiufg qweofiuweqg wkug reifugrw orweiufg reowifugrwe ofiuegrw fiuewgf qweoigyfghjklzxcvbnmufqyew iufew fpqueiwh ewpqiufh ewqoifugeqw ofiugweq foiequwg fqewoiufg qweofiuweqg wkug reifugrw orweiufg reowifugrwe ofiuegrw fiuewgf qweoigyfghjklzxcvbnmufqyew iufew fpqueiwh ewpqiufh ewqoifugeqw ofiugweq foiequwg fqewoiufg qweofiuweqg wkug reifugrw orweiufg reowifugrwe ofiuegrw fiuewgf qweoigy42";

int					main(void)
{
//ft_cat.s
//ft_strcat.s
//ft_strdup.s
//ft_memcpy.s
//ft_memset.s
//ft_bzero.s
//ft_tolower.s
printf("ft_tolower\n");
	printf("ft_tolower('%c') -> [%c]\n", '*', ft_tolower('*'));
	printf("ft_tolower('%c') -> [%c]\n", 'A', ft_tolower('A'));
	printf("ft_tolower('%c') -> [%c]\n", 'a', ft_tolower('a'));
	printf("ft_tolower('%c') -> [%c]\n", 'Q', ft_tolower('Q'));
//ft_toupper.s
printf("ft_toupper\n");
	printf("ft_toupper('%c') -> [%c]\n", '*', ft_toupper('*'));
	printf("ft_toupper('%c') -> [%c]\n", 'A', ft_toupper('A'));
	printf("ft_toupper('%c') -> [%c]\n", 'a', ft_toupper('a'));
	printf("ft_toupper('%c') -> [%c]\n", 'q', ft_toupper('q'));
//ft_strlen.s
printf("ft_strlen\n");
	printf("  ft_strlen(\"%s\") -> [%lu]\n", "", ft_strlen(""));
	printf("  ft_strlen(\"%s\") -> [%lu]\n", "1", ft_strlen("1"));
	printf("  ft_strlen(\"%s\") -> [%lu]\n", "12345", ft_strlen("12345"));
	printf("  ft_strlen(\"%s\") -> [%lu]\n", a, ft_strlen(a));
//ft_isalnum.s
printf("ft_isalnum\n");
	printf("  ft_isalnum %c -> [%d]\n", 42, ft_isalnum(42));
	printf("  ft_isalnum %c -> [%d]\n", 'c', ft_isalnum('c'));
	printf("  ft_isalnum %c -> [%d]\n", '0', ft_isalnum('A'));
	printf("  ft_isalnum %c -> [%d]\n", 'z', ft_isalnum('z'));
	printf("  ft_isalnum %c -> [%d]\n", 'Z', ft_isalnum('Z'));
	printf("  ft_isalnum %c -> [%d]\n", '4', ft_isalnum('4'));
	printf("  ft_isalnum %c -> [%d]\n", '`', ft_isalnum('`'));
	printf("  ft_isalnum %c  -> [%d]\n", 0, ft_isalnum(0));
//ft_isalpha.s
printf("ft_isalpha\n");
	printf("  ft_isalpha %c -> [%d]\n", 42, ft_isalpha(42));
	printf("  ft_isalpha %c -> [%d]\n", 'c', ft_isalpha('c'));
	printf("  ft_isalpha %c -> [%d]\n", 'A', ft_isalpha('A'));
	printf("  ft_isalpha %c -> [%d]\n", 'z', ft_isalpha('z'));
	printf("  ft_isalpha %c -> [%d]\n", 'Z', ft_isalpha('Z'));
	printf("  ft_isalpha %c -> [%d]\n", '4', ft_isalpha('4'));
	printf("  ft_isalpha %c -> [%d]\n", '`', ft_isalpha('`'));
	printf("  ft_isalpha %c  -> [%d]\n", 0, ft_isalpha(0));
//ft_isascii.s
printf("ft_isascii\n");
	printf("  ft_isascii %c -> [%d]\n", 42, ft_isascii(42));
	printf("  ft_isascii [%d] -> [%d]\n", 129, ft_isascii(129));
	printf("  ft_isascii %c -> [%d]\n", 'A', ft_isascii('A'));
	printf("  ft_isascii [%d] -> [%d]\n", -42, ft_isascii(-42));
	printf("  ft_isascii %c -> [%d]\n", 'Z', ft_isascii('Z'));
	printf("  ft_isascii %c -> [%d]\n", '4', ft_isascii('4'));
	printf("  ft_isascii %c -> [%d]\n", '`', ft_isascii('`'));
	printf("  ft_isascii %c  -> [%d]\n", 0, ft_isascii(0));
//ft_isdigit.s
printf("ft_isdigit\n");
	printf("  ft_isdigit %c -> [%d]\n", 42, ft_isdigit(42));
	printf("  ft_isdigit %c -> [%d]\n", '0', ft_isdigit('0'));
	printf("  ft_isdigit %c -> [%d]\n", '9', ft_isdigit('9'));
	printf("  ft_isdigit %c -> [%d]\n", '4', ft_isdigit('4'));
	printf("  ft_isdigit %c -> [%d]\n", 'Z', ft_isdigit('Z'));
	printf("  ft_isdigit %c -> [%d]\n", '/', ft_isdigit('/'));
	printf("  ft_isdigit %c -> [%d]\n", '`', ft_isdigit('`'));
	printf("  ft_isdigit %c  -> [%d]\n", 0, ft_isdigit(0));
//ft_isprint.s
printf("ft_isprint\n");
	printf("  ft_isprint %c -> [%d]\n", 42, ft_isprint(42));
	printf("  ft_isprint [%d] -> [%d]\n", 127, ft_isprint(127));
	printf("  ft_isprint [%d] -> [%d]\n", -42, ft_isprint(-42));
	printf("  ft_isprint [%d] -> [%d]\n", 13, ft_isprint(13));
	printf("  ft_isprint %c -> [%d]\n", 'Z', ft_isprint('Z'));
	printf("  ft_isprint %c -> [%d]\n", '4', ft_isprint('4'));
	printf("  ft_isprint %c -> [%d]\n", '`', ft_isprint('`'));
	printf("  ft_isprint %c  -> [%d]\n", 0, ft_isprint(0));
//ft_putchar.s
printf("ft_putchar -------------\n");
	ft_putchar('h');
	ft_putchar(-42);
	ft_putchar(97);
	ft_putchar(0);
	ft_putchar('\n');
printf("ft_putchar -------------\n");
//ft_puts.s
printf("ft_puts\n");
	printf("-> is ft_puts: [%d]\n" , ft_puts("b"));
	printf("-> is ft_puts: [%d]\n" , ft_puts(a));
	printf("-> is ft_puts: [%d]\n" , ft_puts("hello world\n"));
	printf("-> is ft_puts: [%d]\n" , ft_puts(0));

	return (0);
}

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/05/17 17:50:29 by agrumbac          #+#    #+#             */
/*   Updated: 2018/05/18 06:26:19 by agrumbac         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int			ft_isalpha(int a);
void		ft_putchar(char c);
int			ft_puts(char *s);

int			main(int ac, char **av)
{
//ft_bzero.s
//ft_cat.s
//ft_isalnum.s
//ft_isalpha.s
	printf("is ft_isalpha %c -> [%d]\n", 42, ft_isalpha(42));
	printf("is ft_isalpha %c -> [%d]\n", 'c', ft_isalpha('c'));
	printf("is ft_isalpha %c -> [%d]\n", 'A', ft_isalpha('A'));
	printf("is ft_isalpha %c -> [%d]\n", 'z', ft_isalpha('z'));
	printf("is ft_isalpha %c -> [%d]\n", 'Z', ft_isalpha('Z'));
	printf("is ft_isalpha %c -> [%d]\n", '4', ft_isalpha('4'));
	printf("is ft_isalpha %c -> [%d]\n", '`', ft_isalpha('`'));
	printf("is ft_isalpha %c -> [%d]\n", 0, ft_isalpha(0));
//ft_isascii.s
//ft_isdigit.s
//ft_isprint.s
//ft_memcpy.s
//ft_memset.s
//ft_putchar.s
	ft_putchar('\n');
	ft_putchar(42);
	ft_putchar(97);
	ft_putchar(0);
	ft_putchar('\n');
//ft_puts.s
	printf("-> is ft_puts: [%d]\n" , ft_puts("b"));
	printf("-> is ft_puts: [%d]\n" , ft_puts("lol"));
	printf("-> is ft_puts: [%d]\n" , ft_puts("hello world\n"));
	printf("-> is ft_puts: [%d]\n" , ft_puts(0));
//ft_strcat.s
//ft_strdup.s
//ft_strlen.s
//ft_tolower.s
//ft_toupper.s

	return (0);
}

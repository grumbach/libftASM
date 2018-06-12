/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/05/17 17:50:29 by agrumbac          #+#    #+#             */
/*   Updated: 2018/06/12 16:33:58 by agrumbac         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */



// #define __FT_strdup
// #define __FT_strcat
// #define __FT_memcpy
// #define __FT_memset
// #define __FT_bzero
// #define __FT_tolower
// #define __FT_toupper
// #define __FT_strlen
// #define __FT_isalnum
// #define __FT_isalpha
// #define __FT_isascii
// #define __FT_isdigit
// #define __FT_isprint
// #define __FT_putchar
// #define __FT_puts
// #define __FT_cat
// #define __FT_strncmp
// #define __FT_strchr
// #define __FT_atoll
// #define __FT_atoi



#include "libfts.h"

char *a = "qwertyuiopasdfghjklzxcvbnmufqyew iufew fpqueiwh ewpqiufh ewqoifugeqw ofiugweq foiequwg fqewoiufg qweofiuweqg wkug reifugrw orweiufg reowifugrwe ofiuegrw fiuewgf qweoigyfghjklzxcvbnmufqyew iufew fpqueiwh ewpqiufh ewqoifugeqw ofiugweq foiequwg fqewoiufg qweofiuweqg wkug reifugrw orweiufg reowifugrwe ofiuegrw fiuewgf qweoigyfghjklzxcvbnmufqyew iufew fpqueiwh ewpqiufh ewqoifugeqw ofiugweq foiequwg fqewoiufg qweofiuweqg wkug reifugrw orweiufg reowifugrwe ofiuegrw fiuewgf qweoigyfghjklzxcvbnmufqyew iufew fpqueiwh ewpqiufh ewqoifugeqw ofiugweq foiequwg fqewoiufg qweofiuweqg wkug reifugrw orweiufg reowifugrwe ofiuegrw fiuewgf qweoigyfghjklzxcvbnmufqyew iufew fpqueiwh ewpqiufh ewqoifugeqw ofiugweq foiequwg fqewoiufg qweofiuweqg wkug reifugrw orweiufg reowifugrwe ofiuegrw fiuewgf qweoigyfghjklzxcvbnmufqyew iufew fpqueiwh ewpqiufh ewqoifugeqw ofiugweq foiequwg fqewoiufg qweofiuweqg wkug reifugrw orweiufg reowifugrwe ofiuegrw fiuewgf qweoigyfghjklzxcvbnmufqyew iufew fpqueiwh ewpqiufh ewqoifugeqw ofiugweq foiequwg fqewoiufg qweofiuweqg wkug reifugrw orweiufg reowifugrwe ofiuegrw fiuewgf qweoigyfghjklzxcvbnmufqyew iufew fpqueiwh ewpqiufh ewqoifugeqw ofiugweq foiequwg fqewoiufg qweofiuweqg wkug reifugrw orweiufg reowifugrwe ofiuegrw fiuewgf qweoigyfghjklzxcvbnmufqyew iufew fpqueiwh ewpqiufh ewqoifugeqw ofiugweq foiequwg fqewoiufg qweofiuweqg wkug reifugrw orweiufg reowifugrwe ofiuegrw fiuewgf qweoigyfghjklzxcvbnmufqyew iufew fpqueiwh ewpqiufh ewqoifugeqw ofiugweq foiequwg fqewoiufg qweofiuweqg wkug reifugrw orweiufg reowifugrwe ofiuegrw fiuewgf qweoigyfghjklzxcvbnmufqyew iufew fpqueiwh ewpqiufh ewqoifugeqw ofiugweq foiequwg fqewoiufg qweofiuweqg wkug reifugrw orweiufg reowifugrwe ofiuegrw fiuewgf qweoigyfghjklzxcvbnmufqyew iufew fpqueiwh ewpqiufh ewqoifugeqw ofiugweq foiequwg fqewoiufg qweofiuweqg wkug reifugrw orweiufg reowifugrwe ofiuegrw fiuewgf qweoigy42";

char z[7] = "hellow";
char x[100];
char tu[7] = "\x2a\x2a\x2a\x2a\x2a\x2a\0";
char cato[100];
char *me_strcat[3] = {"", "123", " it works!!"};

int					main(void)
{
	x[99] = 0;
	cato[0] = 0;

#ifdef __FT_strdup
printf("ft_strdup\n");
	char *dup;
	printf("  ft_strdup(\"%s\") = %s\n",me_strcat[0] , (dup = ft_strdup(me_strcat[0])));
	free(dup);
	printf("  ft_strdup(\"%s\") = %s\n",me_strcat[1] , (dup = ft_strdup(me_strcat[1])));
	free(dup);
	printf("  ft_strdup(\"%s\") = %s\n",me_strcat[2] , (dup = ft_strdup(me_strcat[2])));
	free(dup);
#endif
#ifdef __FT_strcat
printf("ft_strcat\n");
	ft_strcat(cato, me_strcat[0]);
	printf("  ft_strcat(cato, me_strcat[0]) -> cato [%c][%c][%c][%c][%c][%c][%c]\n", cato[0], cato[1], cato[2], cato[3], cato[4], cato[5], cato[6]);
	ft_strcat(cato, me_strcat[1]);
	printf("  ft_strcat(cato, me_strcat[1]) -> cato [%c][%c][%c][%c][%c][%c][%c]\n", cato[0], cato[1], cato[2], cato[3], cato[4], cato[5], cato[6]);
	ft_strcat(cato, me_strcat[2]);
	printf("  ft_strcat(cato, me_strcat[2]) -> cato {%s}\n", cato);
#endif
#ifdef __FT_memcpy
printf("ft_memcpy\n");
char *dst_memcpy;
	dst_memcpy = ft_memcpy(tu, z, 0);
	printf(" (ret %s) ft_memcpy(tu, \"%s\", 0) -> tu [%c][%c][%c][%c][%c][%c][%c]\n", dst_memcpy, z, tu[0], tu[1], tu[2], tu[3], tu[4], tu[5], tu[6]);
	dst_memcpy = ft_memcpy(tu, z, 3);
	printf(" (ret %s) ft_memcpy(tu, \"%s\", 3) -> tu [%c][%c][%c][%c][%c][%c][%c]\n", dst_memcpy, z, tu[0], tu[1], tu[2], tu[3], tu[4], tu[5], tu[6]);
	dst_memcpy = ft_memcpy(tu, z, 7);
	printf(" (ret %s) ft_memcpy(tu, \"%s\", 6) -> tu [%c][%c][%c][%c][%c][%c][%c]\n", dst_memcpy, z, tu[0], tu[1], tu[2], tu[3], tu[4], tu[5], tu[6]);
#endif
#ifdef __FT_memset
printf("ft_memset\n");
char * memset_dst;
	memset_dst = (char *)ft_memset(z, 42, 0);
	printf("(ret %s)  ft_memset(\"hellow\", 42, 0) -> [%c][%c][%c][%c][%c][%c][%c]\n", memset_dst, z[0], z[1], z[2], z[3], z[4], z[5], z[6]);
	memset_dst = (char *)ft_memset(x, 42, 99);
	printf("(ret %s)  ft_memset(\"%s\", 42, 99) -> %s (of length %lu)\n", memset_dst, x, x, ft_strlen(x));
#endif
#ifdef __FT_bzero
printf("ft_bzero\n");
	ft_bzero(z, 0);
	printf("  ft_bzero(\"hellow\", 0) -> [%c][%c][%c][%c][%c][%c][%c]\n", z[0], z[1], z[2], z[3], z[4], z[5], z[6]);
	ft_bzero(z, 3);
	printf("  ft_bzero(\"hellow\", 3) -> [%c] [%c] [%c] [%c][%c][%c][%c]\n", z[0], z[1], z[2], z[3], z[4], z[5], z[6]);
#endif
#ifdef __FT_tolower
printf("ft_tolower\n");
	printf("  ft_tolower('%c') -> [%c]\n", '*', ft_tolower('*'));
	printf("  ft_tolower('%c') -> [%c]\n", 'A', ft_tolower('A'));
	printf("  ft_tolower('%c') -> [%c]\n", 'a', ft_tolower('a'));
	printf("  ft_tolower('%c') -> [%c]\n", 'Q', ft_tolower('Q'));
#endif
#ifdef __FT_toupper
printf("ft_toupper\n");
	printf("  ft_toupper('%c') -> [%c]\n", '*', ft_toupper('*'));
	printf("  ft_toupper('%c') -> [%c]\n", 'A', ft_toupper('A'));
	printf("  ft_toupper('%c') -> [%c]\n", 'a', ft_toupper('a'));
	printf("  ft_toupper('%c') -> [%c]\n", 'q', ft_toupper('q'));
#endif
#ifdef __FT_strlen
printf("ft_strlen\n");
	printf("  ft_strlen(\"%s\") -> [%lu]\n", "", ft_strlen("\0\0tutu"));
	printf("  ft_strlen(\"%s\") -> [%lu]\n", "1", ft_strlen("1"));
	printf("  ft_strlen(\"%s\") -> [%lu]\n", "12345", ft_strlen("12345"));
	printf("  ft_strlen(\"%s\") -> [%lu]\n", a, ft_strlen(a));
#endif
#ifdef __FT_isalnum
printf("ft_isalnum\n");
	printf("  ft_isalnum %c -> [%d]\n", 42, ft_isalnum(42));
	printf("  ft_isalnum %c -> [%d]\n", 'c', ft_isalnum('c'));
	printf("  ft_isalnum %c -> [%d]\n", '0', ft_isalnum('A'));
	printf("  ft_isalnum %c -> [%d]\n", 'z', ft_isalnum('z'));
	printf("  ft_isalnum %c -> [%d]\n", 'Z', ft_isalnum('Z'));
	printf("  ft_isalnum %c -> [%d]\n", '4', ft_isalnum('4'));
	printf("  ft_isalnum %c -> [%d]\n", '`', ft_isalnum('`'));
	printf("  ft_isalnum %c  -> [%d]\n", 0, ft_isalnum(0));
#endif
#ifdef __FT_isalpha
printf("ft_isalpha\n");
	printf("  ft_isalpha %c -> [%d]\n", 42, ft_isalpha(42));
	printf("  ft_isalpha %c -> [%d]\n", 'c', ft_isalpha('c'));
	printf("  ft_isalpha %c -> [%d]\n", 'A', ft_isalpha('A'));
	printf("  ft_isalpha %c -> [%d]\n", 'z', ft_isalpha('z'));
	printf("  ft_isalpha %c -> [%d]\n", 'Z', ft_isalpha('Z'));
	printf("  ft_isalpha %c -> [%d]\n", '4', ft_isalpha('4'));
	printf("  ft_isalpha %c -> [%d]\n", '`', ft_isalpha('`'));
	printf("  ft_isalpha %c  -> [%d]\n", 0, ft_isalpha(0));
#endif
#ifdef __FT_isascii
printf("ft_isascii\n");
	printf("  ft_isascii %c -> [%d]\n", 42, ft_isascii(42));
	printf("  ft_isascii [%d] -> [%d]\n", 129, ft_isascii(129));
	printf("  ft_isascii %c -> [%d]\n", 'A', ft_isascii('A'));
	printf("  ft_isascii [%d] -> [%d]\n", -42, ft_isascii(-42));
	printf("  ft_isascii %c -> [%d]\n", 'Z', ft_isascii('Z'));
	printf("  ft_isascii %c -> [%d]\n", '4', ft_isascii('4'));
	printf("  ft_isascii %c -> [%d]\n", '`', ft_isascii('`'));
	printf("  ft_isascii %c  -> [%d]\n", 0, ft_isascii(0));
#endif
#ifdef __FT_isdigit
printf("ft_isdigit\n");
	printf("  ft_isdigit %c -> [%d]\n", 42, ft_isdigit(42));
	printf("  ft_isdigit %c -> [%d]\n", '0', ft_isdigit('0'));
	printf("  ft_isdigit %c -> [%d]\n", '9', ft_isdigit('9'));
	printf("  ft_isdigit %c -> [%d]\n", '4', ft_isdigit('4'));
	printf("  ft_isdigit %c -> [%d]\n", 'Z', ft_isdigit('Z'));
	printf("  ft_isdigit %c -> [%d]\n", '/', ft_isdigit('/'));
	printf("  ft_isdigit %c -> [%d]\n", '`', ft_isdigit('`'));
	printf("  ft_isdigit %c  -> [%d]\n", 0, ft_isdigit(0));
#endif
#ifdef __FT_isprint
printf("ft_isprint\n");
	printf("  ft_isprint %c -> [%d]\n", 42, ft_isprint(42));
	printf("  ft_isprint [%d] -> [%d]\n", 127, ft_isprint(127));
	printf("  ft_isprint [%d] -> [%d]\n", -42, ft_isprint(-42));
	printf("  ft_isprint [%d] -> [%d]\n", 13, ft_isprint(13));
	printf("  ft_isprint %c -> [%d]\n", 'Z', ft_isprint('Z'));
	printf("  ft_isprint %c -> [%d]\n", '4', ft_isprint('4'));
	printf("  ft_isprint %c -> [%d]\n", '`', ft_isprint('`'));
	printf("  ft_isprint %c  -> [%d]\n", 0, ft_isprint(0));
#endif
#ifdef __FT_putchar
printf("ft_putchar -------------\n");
	ft_putchar('h');
	ft_putchar(-42);
	ft_putchar(97);
	ft_putchar(0);
	ft_putchar('\n');
printf("ft_putchar -------------\n");
#endif
#ifdef __FT_puts
printf("ft_puts\n");
	printf("  -> is ft_puts: [%d]\n" , ft_puts("b"));
	printf("  -> is ft_puts: [%d]\n" , ft_puts(a));
	printf("  -> is ft_puts: [%d]\n" , ft_puts("hello world\n"));
	printf("  -> is ft_puts: [%d]\n" , ft_puts(0));
#endif
#ifdef __FT_cat
printf("ft_cat =============test/test.c=============\n");
	int fd = open("test/test.c", O_RDONLY);
	ft_cat(fd);
	close(fd);
printf("ft_cat =============test/test.c=============\n");
// ft_memalloc
printf("ft_memalloc\n");
	dup = ft_memalloc(0);
	printf("  ft_memalloc(0) should be NULL -> %p\n", dup);
	dup = ft_memalloc(7);
	printf("  return address %p\n", dup);
	printf("  ft_memalloc(7) -> [%c][%c][%c][%c][%c][%c][%c]\n", dup[0], dup[1], dup[2], dup[3], dup[4], dup[5], dup[6]);
	free(dup);
// ft_strncpy
char *titi = ft_memalloc(100);
    ft_memset(titi, 'a', 5);
printf("ft_strncpy\n");
    ft_strncpy(titi, "hey-man", 7);
	printf("  ft_strncpy(titi, \"hey-man\", 7) -> [%c][%c][%c][%c][%c][%c][%c]\n", titi[0], titi[1], titi[2], titi[3], titi[4], titi[5], titi[6]);
    ft_strncpy(titi, "hey", 6);
    printf("  ft_strncpy(titi, \"hey\", 6) -> [%c][%c][%c][%c][%c][%c][%c]\n", titi[0], titi[1], titi[2], titi[3], titi[4], titi[5], titi[6]);
    ft_strncpy(titi, "", 7);
    printf("  ft_strncpy(titi, \"\", 7) -> [%c][%c][%c][%c][%c][%c][%c]\n", titi[0], titi[1], titi[2], titi[3], titi[4], titi[5], titi[6]);
    ft_strncpy(titi, "hey", 2);
    printf("  ft_strncpy(titi, \"hey\", 2) -> [%c][%c][%c][%c][%c][%c][%c]\n", titi[0], titi[1], titi[2], titi[3], titi[4], titi[5], titi[6]);
    ft_strncpy(titi, "shit", 0);
    printf("  ft_strncpy(titi, \"shit\", 0) -> [%c][%c][%c][%c][%c][%c][%c]\n", titi[0], titi[1], titi[2], titi[3], titi[4], titi[5], titi[6]);
    ft_strncpy(titi, "hellow", 47);
    printf("  ft_strncpy(titi, \"hellow\", 47) -> [%c][%c][%c][%c][%c][%c][%c]\n", titi[0], titi[1], titi[2], titi[3], titi[4], titi[5], titi[6]);
    ft_strncpy(titi, "Yaa", 1);
    printf("  ft_strncpy(titi, \"Yaa\", 1) -> [%c][%c][%c][%c][%c][%c][%c]\n", titi[0], titi[1], titi[2], titi[3], titi[4], titi[5], titi[6]);
    free(titi);
#endif
#ifdef __FT_strncmp
printf("ft_strncmp\n");
    printf("  ft_strncmp(\"hello\", \"aaaaa\", 0) 0 -> %d\n", ft_strncmp("hello", "haaaa", 1));
    printf("  ft_strncmp(\"hallo\", \"heaaa\", 2) -1 -> %d\n", ft_strncmp("hallo", "heaaa", 2));
    printf("  ft_strncmp(\"hello\", \"haaaa\", 1) 0 -> %d\n", ft_strncmp("hello", "haaaa", 1));
    printf("  ft_strncmp(\"hello\", \"ha\", 42) 1 -> %d\n", ft_strncmp("hello", "haaaa", 42));
    printf("  ft_strncmp(\"ha\", \"mello\", 42) 1 -> %d\n", ft_strncmp("hello", "haaaa", 42));
    printf("  ft_strncmp(\"\", \"mello\", 42) 1 -> %d\n", ft_strncmp("hello", "haaaa", 42));
    printf("  ft_strncmp(\"hwoooho\", \"\", 42) 1 -> %d\n", ft_strncmp("hello", "haaaa", 42));
#endif
#ifdef __FT_strchr
printf("ft_strchr\n");
    char *du = ft_strchr("halla", 'a');
    printf("%p\n", du);
    printf("  ft_strchr alla -> [%s]\n", du);
    printf("  ft_strchr 0 -> [%s]\n", ft_strchr("hello", 'a'));
    printf("  ft_strchr '' -> [%s]\n", ft_strchr("hello", 0));
    printf("  ft_strchr 0 -> [%s]\n", ft_strchr("", 'a'));
    printf("  ft_strchr '' -> [%s]\n", ft_strchr("", 0));
    printf("  ft_strchr good day! -> [%s]\n", ft_strchr("hello my man! good day!", 'g'));
#endif
#ifdef __FT_atoll
printf("ft_atoll\n");
	printf("  ft_atoll( -42) -> %lld\n", ft_atoll(" -42"));
	printf("  ft_atoll( -2147483648) -> %lld\n", ft_atoll(" -2147483648"));
	printf("  ft_atoll( 2147483647) -> %lld\n", ft_atoll(" 2147483647"));
	printf("  ft_atoll( 9223372036854775807) -> %lld\n", ft_atoll(" 9223372036854775807"));
	printf("  ft_atoll( -9223372036854775808) -> %lld\n", ft_atoll(" -9223372036854775808"));
	printf("  ft_atoll() -> %lld\n", ft_atoll(""));
	printf("  ft_atoll(  42) -> %lld\n", ft_atoll("  42"));
	printf("  ft_atoll(12s) -> %lld\n", ft_atoll("12s"));
	printf("  ft_atoll(-65498765465465465414234523132515ll) -> %lld (real %lld)\n", ft_atoll("  -65498765465465465414234523132515ll"), atoll("  -65498765465465465414234523132515ll"));
	printf("  ft_atoll(        +42) -> %lld\n", ft_atoll("  \t\n\v\r\f\n \n\v\r\f\n \n\v\r\f\n  +42"));
	printf("  ft_atoll(merde) -> %lld\n", ft_atoll("merde"));
#endif
#ifdef __FT_atoi
printf("ft_atoi\n");
	printf("  ft_atoi( -42) -> %d\n", ft_atoi(" -42"));
	printf("  ft_atoi( ,-42) -> %d\n", ft_atoi(" ,-42"));
	printf("  ft_atoi( -2147483648) -> %d\n", ft_atoi(" -2147483648"));
	printf("  ft_atoi( 2147483647) -> %d\n", ft_atoi(" 2147483647"));
	printf("  ft_atoi( 9223372036854775807) -> %d\n", ft_atoi(" 9223372036854775807"));
	printf("  ft_atoi( -9223372036854775808) -> %d\n", ft_atoi(" -9223372036854775808"));
	printf("  ft_atoi() -> %d\n", ft_atoi(""));
	printf("  ft_atoi(  42) -> %d\n", ft_atoi("  42"));
	printf("  ft_atoi(12s) -> %d\n", ft_atoi("12s"));
	printf("  ft_atoi(-65498765465465465414234523132515ll) -> %d (real %d)\n", ft_atoi("  -65498765465465465414234523132515ll"), atoi("  -65498765465465465414234523132515ll"));
	printf("  ft_atoi(        +42) -> %d\n", ft_atoi("  \t\n\v\r\f\n \n\v\r\f\n \n\v\r\f\n  +42"));
	printf("  ft_atoi(merde) -> %d\n", ft_atoi("merde"));
#endif

	return (0);
}

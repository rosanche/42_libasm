#include "libasm.h"

int main()
{
    char *str = strdup("bonjour");
    printf("STRLEN:\n%s:\nreal:%lu, mine:%d\n\n", str, strlen(str), ft_strlen(str));

    char *src = strdup("bonjour");
    char *dest = strdup("");
    printf("STRCPY:\n%s:\nreal:%s, mine:%s\n\n", src, strcpy(dest, src), ft_strcpy(dest, src));

    char *s1 = strdup("bonjour");
    char *s2 = strdup("bonaour");
    printf("STRCMP:\ns1: %s, s2:%s\nreal:%d, mine:%d\n\n", s1, s2, strcmp(s1, s2), ft_strcmp(s1, s2));

    printf("WRITE:\n");
    write(1, "real: this\n", 11);
    ft_write(1, "mine: this\n\n", 12);

    char *buf = malloc(sizeof(char) * 18);
    int fd = open("test.c", O_RDONLY);
    printf("READ:\n");
    read(fd, buf, 15);
    close(fd);
    fd = open("test.c", O_RDONLY);
    printf("real:%s\n", buf);
    ft_read(fd, buf, 15);
    printf("mine:%s\n\n", buf);

    printf("STRDUP:\nbonjour;\nreal:%s, mine:%s\n\n", strdup("bonjour"), ft_strdup("bonjour"));
}
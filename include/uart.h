#ifndef CL_UART
#define CL_UART

#include <stdio.h>

void uart_init(void);
int uart_putchar(char c, FILE *stream);
int uart_getchar(FILE *stream);


#endif
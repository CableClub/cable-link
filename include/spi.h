#ifndef CL_SPI
#define CL_SPI

#include <stdint.h>
void spi_init_master();
uint8_t spi_tranceiver(uint8_t data);

#endif
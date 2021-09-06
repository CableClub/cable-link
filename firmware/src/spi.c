#include <stdint.h>
#include "hardware/pio.h"
#include "pio/pio_spi.h"

pio_spi_inst_t spi = {
        .pio = pio1,
        .sm = 0
};

#define PIN_SCK 18
#define PIN_SIN 16
#define PIN_SOUT 19

void spi_init_master()
{
  uint cpha1_prog_offs = pio_add_program(spi.pio, &spi_cpha1_program);
  pio_spi_init(spi.pio, spi.sm, cpha1_prog_offs, 8, 4058.838, 1, 1, PIN_SCK, PIN_SOUT, PIN_SIN);
}

uint8_t spi_tranceiver(uint8_t to_gb)
{
  uint8_t from_gb = 0x00;
  pio_spi_write8_read8_blocking(&spi, &to_gb, &from_gb, 1);
  return from_gb;
}
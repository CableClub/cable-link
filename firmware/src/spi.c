#include <stdint.h>

#include "pico/stdlib.h"
#include "hardware/spi.h"

void spi_init_master()
{
  gpio_set_function(PICO_DEFAULT_SPI_RX_PIN, GPIO_FUNC_SPI);
  gpio_set_function(PICO_DEFAULT_SPI_SCK_PIN, GPIO_FUNC_SPI);
  gpio_set_function(PICO_DEFAULT_SPI_TX_PIN, GPIO_FUNC_SPI);
  spi_init(spi_default, 8 * 1000);
}

uint8_t spi_tranceiver(uint8_t to_gb)
{
  uint8_t from_gb = 0x00;
  int num_bytes = spi_write_read_blocking(spi_default, &to_gb, &from_gb, 1);
  return from_gb;
}
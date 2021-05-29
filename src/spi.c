#include <avr/io.h>
#include <stdint.h>
#include "spi.h"

// Initialize SPI Master Device (without interrupt)
void spi_init_master()
{
  DDRB = (1<<2)|(1<<3)|(1<<5); // MOSI, SCK, SS as Output
  DDRB &= ~(1 << 4); // MISO as input

  SPCR = ((1 << SPE) | (1 << MSTR) | (1 << CPOL) | (1 << CPHA) | (1 << SPR1) | (1 << SPR0));
  SPCR &= ~(1 << SPIE);
  SPCR &= ~(1 << DORD);
}

//Function to send and receive data for both master and slave
uint8_t spi_tranceiver(uint8_t data)
{
  SPDR = data;
  asm volatile("nop");
  while (!(SPSR & (1 << SPIF)))
    ;
  return (SPDR);
}
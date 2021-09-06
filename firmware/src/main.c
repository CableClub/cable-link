#include <stdio.h>
#include "pico/stdlib.h"

#include "pokemon_gen1_link_protocol.h"
#include "spi.h"

uint8_t out = 0x1;
uint8_t in = 0xfe;

volatile connection_state_t connection_state = UNKNOWN;
volatile trade_centre_state_t trade_centre_state = INIT;
int trade_buffer_index = 0;

int main()
{
  stdio_init_all();
  spi_init_master();

  while (1 == 1)
  {
    in = spi_tranceiver(out);
    printf("transfer out=%02X in=%02X\n", out, in);
    out = PKMN_NO_DATA;
    switch (connection_state)
    {
    case UNKNOWN:
      out = PKMN_MASTER;

      if (in == PKMN_SLAVE)
        connection_state = NOT_CONNECTED;

      break;
    case NOT_CONNECTED:
      out = PKMN_MASTER;

      if (in == PKMN_SLAVE)
        out = PKMN_BLANK;

      if (in == PKMN_BLANK)
        out = PKMN_CONNECTED;

      if (in == PKMN_CONNECTED)
      {
        out = PKMN_CONNECTED;
        connection_state = CONNECTED;
      }

      break;

    case CONNECTED:
      if (in == PKMN_SLAVE)
        connection_state = UNKNOWN;

      if (in == PKMN_TRADE_CENTRE)
      {
        out = PKMN_TRADE_CENTRE;
        connection_state = TRADE_CENTRE;
      }
      else if (in == PKMN_COLOSSEUM)
      {
        out = PKMN_BREAK_LINK;
      }
      else if (in == PKMN_BREAK_LINK)
      {
        out = PKMN_BREAK_LINK;
        connection_state = UNKNOWN;
      }
      else
      {
        out = in;
      }
      break;

    case TRADE_CENTRE:
      out = TRADE_CENTRE_WAIT;

      switch (trade_centre_state)
      {
      case INIT:
        if (in == TRADE_CENTRE_WAIT)
        {
          trade_centre_state = SEND_RAND0;
        }
        else
        {
          out = in;
        }
        break;
      case SEND_RAND0:
      case SEND_RAND1:
      case SEND_RAND2:
      case SEND_RAND3:
      case SEND_RAND4:
      case SEND_RAND5:
      case SEND_RAND6:
      case SEND_RAND7:
      case SEND_RAND8:
      case SEND_RAND9:
        out = 0x2b;
        trade_centre_state = trade_centre_state + 1;
        break;
      case (WAIT):
        if (in == TRADE_CENTRE_WAIT)
          trade_centre_state = SEND_DATA;
        break;
      case (SEND_DATA):
        // out = load_byte_from_uart(in);
        out = in;
        trade_buffer_index++;
        if (trade_buffer_index == 415)
          trade_centre_state = SEND_PATCH;
        break;

      case (SEND_PATCH): // fall thru for now

      default:
        out = in;
        break;
      }

      break;

    default:
      break;
    }
    sleep_ms(250);
  }
}
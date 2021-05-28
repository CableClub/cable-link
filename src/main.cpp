#include <Arduino.h>
#include <SPI.h>
#include <pokemon_gen1_link_protocol.h>

byte out=0x1;
byte in=0xfe;
byte out_buffer[8] = {0};
byte in_buffer[8] = {0};

unsigned long timestamp = 0;
volatile connection_state_t connection_state = UNKNOWN;
volatile trade_centre_state_t trade_centre_state = INIT;
int waittime = 250;
int index = 0;

byte load_byte_from_uart(byte from_gameboy) 
{
  int data = -1;

  // out_buffer[0] = 104;
  // out_buffer[1] = from_gameboy;
  // out_buffer[2] = 0x81;
  // out_buffer[3] = 0;
  // out_buffer[7] = timestamp;
  // out_buffer[6] = timestamp >> 8;
  // out_buffer[5] = timestamp >> 16;
  // out_buffer[4] = timestamp >> 24;
  
  out_buffer[0] = from_gameboy;
  Serial.write(out_buffer, 1);

  while(true) {
    data = Serial.read();
    if(data != -1)
      return data;
  }
}

void setup() 
{
  Serial.begin(115200);
  SPI.begin();
}

void loop() 
{
  SPI.beginTransaction(SPISettings(8000, MSBFIRST, SPI_MODE3));
  in = SPI.transfer(out);
  SPI.endTransaction();
  Serial.print("a");

  out = PKMN_NO_DATA;
  switch(connection_state) {
    case UNKNOWN:
      out = PKMN_MASTER;

      if(in == PKMN_SLAVE)
        connection_state = NOT_CONNECTED;

      break;
    case NOT_CONNECTED:
      out = PKMN_MASTER;

      if(in == PKMN_SLAVE)
        out = PKMN_BLANK;

      if(in == PKMN_BLANK)
        out = PKMN_CONNECTED;
      
      if(in == PKMN_CONNECTED) {
        out = PKMN_CONNECTED;
        connection_state = CONNECTED;
      }

      break;

    case CONNECTED:
      if(in == PKMN_SLAVE)
        connection_state = UNKNOWN;

      if(in == PKMN_TRADE_CENTRE) {
        out = PKMN_TRADE_CENTRE;
        waittime = 10;
        connection_state = TRADE_CENTRE;
      } else if(in == PKMN_COLOSSEUM) {
        out = PKMN_BREAK_LINK;
      } else if(in == PKMN_BREAK_LINK) {
        out = PKMN_BREAK_LINK;
        connection_state = UNKNOWN;
      } else {
        out = in;
      }
      break;
    
    case TRADE_CENTRE:
      out = TRADE_CENTRE_WAIT;

      switch (trade_centre_state) {
        case INIT:
          if(in == TRADE_CENTRE_WAIT) {
            // Serial.println("sending random");

            trade_centre_state = SEND_RAND0;
          } else {
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
          trade_centre_state = trade_centre_state = static_cast<trade_centre_state_t>(static_cast<int>(trade_centre_state) + 1);
          // Serial.println("sent random byte");
          break;
        case(WAIT):
          if(in == TRADE_CENTRE_WAIT)
            trade_centre_state = SEND_DATA;
          break;
        case(SEND_DATA):
          // out = DATA_BLOCK[index++];
          out = load_byte_from_uart(in);
          index++;
          if(index == 415) {
            // Serial.println("sent data");
            trade_centre_state = SEND_PATCH;
          }
          break;

        case(SEND_PATCH): // fall thru for now

        default:
          out = in;
          break;
      }

      break;

    default:
    break;
  }
  delay(waittime);
}
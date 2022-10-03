#define _UART_H_
#define _SYSTEM_HEADER_FILE
#define _DMA_1XX_2XX_H_
#define PMP_H
#define _RTCC_H_
#define _SPI_H_
#define _PIC32INT_HEADER_FILE

#include <plib.h>

#include "alarm_intf.h"


#ifdef ALARM_USE_PLIB

#include <inttypes.h>
// Initialize the alarm interfaces
void initAlarm(){
    PORTSetPinsDigitalIn(IOPORT_B, BIT_4);
    PORTSetPinsDigitalOut(IOPORT_B, BIT_14 | BIT_15);
    
}

// gets the status of the door: 0 for closed, 1 for open
uint8_t readDoor(){
    mPORTBReadBits(BIT_4) >> 4;
}

// turn warning LED OFF
void ledOff(){
    mPORTBClearBits(BIT_15);
}

// turn warning LED ON
void ledOn(){
    mPORTBSetBits(BIT_15);
}

// turn alarm buzzer OFF
void alarmOff(){
    mPORTBClearBits(BIT_14);
}

// turn alarm buzzer ON
void alarmOn(){
    mPORTBSetBits(BIT_14);
}

#endif
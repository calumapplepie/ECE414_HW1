#include <xc.h>
#include <inttypes.h>

#include "alarm_intf.h"

#ifndef ALARM_USE_PLIB

void initAlarm(){
    // we use the CLR and SET registers throughout to avoid interefering with
    // some later additon of features.  Maybe someone in facilities will want to
    // take my homework and use it for the actual door alarm.  
    // (if someone does, please put a disable button, because those alarms
    // drive people NUTS on move-in day, or during a power outage)

    
    // ensure the door sensor is being digital  
    ANSELBCLR = 0x01 << 4;
    
    // also ensure the outputs are digital
    ANSELBCLR = (0x0003 << 14);
            
    // set inputs
    TRISBSET = 0x01 << 4;

    // set outputs
    TRISBCLR = 0x03 << 14;
}

uint8_t readDoor(){
    // returns bit 4 (the sensor bit)
    return (PORTB & 0x10) >> 4 ;
}

// turn warning LED OFF
void ledOff(){
    PORTBCLR = 0x01 << 15;
}

// turn warning LED ON
void ledOn(){
    PORTBSET = 0x01 << 15;
}

// turn alarm buzzer OFF
void alarmOff(){
    PORTBCLR = 0x01 << 14;
}

// turn alarm buzzer ON
void alarmOn(){
    PORTBSET = 0x01 << 14;
}

#endif /* ALARM_USE_PLIB */
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
}

#endif
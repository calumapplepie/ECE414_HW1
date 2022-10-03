#include "alarm_intf.h"
#include "alarmfsm.h"

uint8_t warn = 0;

void tickFct_ALARMFSM(){
    static enum state_t {OFF, WARN, ALARM} state = OFF;
    static uint16_t timer = 0;
    
    // meally actions and transitions
    switch(state){
        case OFF:
            if(readDoor()){
                // do meally actions before transition; compiler won't care, 
                // but we can pretend it's safer
                timer = 0;
                warn = 1;
                state = WARN;

            }
            else {
                // will be optimized out
                state = OFF;
            }
            break;
        case WARN:
            if(readDoor()){
                if(timer >= 30){
                    alarmOn();
                    state = ALARM;
                }
                else{
                    state = WARN;
                }
            }
            else{ //door closed
                state = OFF;
            }
            break;
        case ALARM:
            if(readDoor()){
                // beep beep beep
                state = ALARM;
            }
            else{
                alarmOff();
                state = OFF;
            }
            break;
    }
   
    //moore actions
    switch(state){
            case OFF:
                timer = 0;
                warn = 0;
                break;
            case WARN:
                timer ++;
                /*fall through*/
            case ALARM:
                warn = 1;
                break;
    }
    
}

#include "warnfsm.h"
#include "alarmfsm.h"
#include "alarm_intf.h"



void tickFct_WARNFSM(){
    static enum state_t {WRNOFF, WRNON} state = WRNOFF;
    // if-then as opposed to switch for simplicity
    // there's only two states, we're more likely to introduce a bug via a
    // switch then we are via a simple if/then
    if(state == WRNON){
        state = WRNOFF;
    }
    else if(readDoor()){
        state = WRNON;
    }
    else { state = WRNOFF;}
    
    if(state == WRNON){
        ledOn();
    }
    else {
        ledOff();
    }
}
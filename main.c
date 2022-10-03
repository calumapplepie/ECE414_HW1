
#include "warnfsm.h"
#include "alarmfsm.h"
#include "ztimer.h"

void main() {
    zTimerSet(1000);
    zTimerOn();
    while(1){
        if(!zTimerReadFlag()){
            // loop on reading the flag until it is set
            continue;
        }
        // tick both FSMs
        tickFct_ALARMFSM();
        tickFct_WARNFSM();
    }
}


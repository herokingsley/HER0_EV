#include "hreactor.h"
#include <assert.h>

HReactor::HReactor(){
   m_running = false; 
}

HReactor::~HReactor(){
    m_running = false;
}

void HReactor::Start(){

    printf("the hreactor is starting");
    while(true){
        m_running = true;
        this->run();
        m_running = false;
    }
}

void HReactor::Run(){
    assert(poller != NULL);
    int timeInterval = 1;
    poller->WaitForEvent(timeInterval);

    /**
     * handle timeout event
     */

    /**
     * handle event
     */
    for(;;){
        /*
         * fetch eventhandler from channel;
         */
        break;
    }


    printf("reactor running.\n");
}


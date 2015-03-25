#include "HReactor.h"
#include "Channel.h"
#include <assert.h>

HReactor::HReactor(){
   m_running = false; 
}

HReactor::~HReactor(){
    m_running = false;
}

void HReactor::start(){

    printf("the hreactor is starting");
    while(true){
        m_running = true;
        this->run();
        m_running = false;
    }
}

void HReactor::run(){
    assert(poller != NULL);
    //printf("reactor run started.\n");


    int timeInterval = 1000;

    m_channelList.clear();
    
    poller->waitForEvent(timeInterval,m_channelList);

    /**
     * handle timeout event
     */

    /**
     * handle event
     */
    int activeChannelNum = m_channelList.size();
    printf("active channel num: %d\n",activeChannelNum);
    for(int i = 0 ; i < activeChannelNum; ++i ){
        /*
         * fetch eventhandler from channel;
         */
        Channel* nowChannel = m_channelList[i];
        nowChannel->handleEvent();
    }


    //printf("reactor run finished.\n");
}

void HReactor::updateChannel(Channel* channel){
    assert(poller != NULL);
    poller->updateChannel(channel);    
}

void HReactor::removeChannel(Channel* channel){
    assert(poller != NULL);
    poller->removeChannel(channel);
}


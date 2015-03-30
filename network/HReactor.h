#ifndef __HEVENT_NETWORK_HREACTOR__
#define __HEVENT_NETWORK_HREACTOR__

#include <cstdio>
#include "EventHandler.h"

using namespace std;

class Channel;

class HReactor{
public:
    HReactor();
    ~HReactor();
    void start();
    void run(); //the method will be invoked continuly
    //void AddEventHandler(EventHandler* eventHandler);
    //void RemoveEventHandler(EventHandler* eventHandler);
    void updateChannel(Channel* channel);
    void removeChannel(Channel* channel);

    /**
     * setter 
     */
    void setPoller(Poller* poller){ this->poller = poller; }

private:
    bool m_running;//whether the reactor is running; 
    //const pid_t m_threadId;
 
    Poller* poller;
    //Channel list;
    vector<Channel*> m_channelList;

}; 


#endif

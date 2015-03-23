#ifndef __HEVENT_NETWORK_HREACTOR__
#define __HEVENT_NETWORK_HREACTOR__

#include <cstdio>
#include "eventhandler.h"
#include "poll.h"
#include "channel.h"

using namespace std;

class HReactor{
public:
    HReactor();
    ~HReactor();
    void Start();
    void Run(); //the method will be invoked continuly
    void AddEventHandler(EventHandler* eventHandler);
    void RemoveEventHandler(EventHandler* eventHandler);

    /**
     * setter 
     */
    void SetPoller(Poller* poller){ this->poller = poller; }

private:
    bool m_running;//whether the reactor is running; 
    //const pid_t m_threadId;
 
    Poller* poller;
    //Channel list;
    vector<Channel*> m_channelList;


}; 


#endif

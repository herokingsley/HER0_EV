#ifndef __HEVENT_NETWORK_POLL__
#define __HEVENT_NETWORK_POLL__

/**
 *
 *
 *
 *
 *
 */

#include <map>
#include <vector>
#include "eventhandler.h"

class Channel;

class Poller{
public:
    Poller();
    virtual ~Poller();
    virtual bool IsChannelInList(Channel* channel);
    virtual void UpdateChannel(Channel* channel);
    virtual void RemoveChannel(Channel* channel);
    virtual void WaitForEvent(int timeInterval, std::vector<Channel*>& channelList );
    virtual void FillForActiveChannel(int eventsNum, std::vector<Channel*>& channelList);
protected:
    //std::vector<EventHandler*> eventHandlers;
    std::map<int,Channel*> m_ChannelMap;
    const int EVENT_IN;
    const int EVENT_OUT;
    const int EVENT_ERR;
    const int EVENT_PRI;
    const int EVENT_HUP;
    const int EVENT_RDHUP;

    
    
private:

};


#endif

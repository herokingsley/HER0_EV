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

class Channel;

class Poller{
public:
    Poller();
    virtual ~Poller();
    virtual bool isChannelInList(Channel* channel);
    virtual void updateChannel(Channel* channel);
    virtual void removeChannel(Channel* channel);
    virtual void waitForEvent(int timeInterval, std::vector<Channel*>& channelList );
    virtual void fillForActiveChannel(int eventsNum, std::vector<Channel*>& channelList);
protected:
    //std::vector<EventHandler*> eventHandlers;
    std::map<int,Channel*> m_ChannelMap;
    int EVENT_IN;
    int EVENT_OUT;
    int EVENT_ERR;
    int EVENT_PRI;
    int EVENT_HUP;
    int EVENT_RDHUP;

    
    
private:

};


#endif

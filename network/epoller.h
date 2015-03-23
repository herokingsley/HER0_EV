#ifndef __HEVENT_NETWORK_EPOLLER__
#define __HEVENT_NETWORK_EPOLLER__

#include "poller.h"
#include <sys/epoll.h>

class EPoller : public Poller{
public:
    
    static EPoller* CreateEPoller();
    EPoller();

    virtual ~EPoller(); 
    virtual bool IsChannelInList(Channel* channel);
    virtual void UpdateChannel(Channel*  channel);
    virtual void RemoveChannel(Channel* channel);
    virtual void WaitForEvent(int timeInterval,std::vector<Channel*>& channelList);
    virtual void FillForActiveChannel(int eventsNum,std::vector<Channel*>& channelList);
private:
    //use epoll_ctl to controll the epoll_wait list
    void update(int operation, Channel* channel);
    //the epoll list
    std::vector<struct epoll_event> eventList;
    int epoll_fd;
    
};

#endif

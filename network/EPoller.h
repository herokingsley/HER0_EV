#ifndef __HEVENT_NETWORK_EPOLLER__
#define __HEVENT_NETWORK_EPOLLER__

#include "PollerBase.h"
#include <sys/epoll.h>

class EPoller : public Poller{
public:
    
    static Poller* CreateEPoller();
    EPoller();

    virtual ~EPoller(); 
    virtual void updateChannel(Channel*  channel);
    virtual void removeChannel(Channel* channel);
    virtual void waitForEvent(int timeInterval,std::vector<Channel*>& channelList);
    virtual void fillForActiveChannel(int eventsNum,std::vector<Channel*>& channelList,struct 
                epoll_event* events);
private:
    //use epoll_ctl to controll the epoll_wait list
    void update(int operation, Channel* channel);
    //the epoll list
    std::vector<struct epoll_event> eventList;
    int epoll_fd;
    struct epoll_event events[10000];
    
};

#endif

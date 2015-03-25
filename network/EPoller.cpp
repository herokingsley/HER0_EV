#include "EPoller.h"
#include "Channel.h"

#include <memory.h>

const int EPOLL_MAX_LISTENER_NUM = 10000;

EPoller* EPoller::CreateEPoller(){
    EPoller* epoller = new EPoller();
    return epoller;
}

EPoller::EPoller(){
    this->epoll_fd = ::epoll_create(EPOLL_MAX_LISTENER_NUM);
    this->EVENT_IN = EPOLLIN;
    this->EVENT_OUT = EPOLLOUT;
    this->EVENT_PRI = EPOLLPRI;
    this->EVENT_ERR = EPOLLERR;
    this->EVENT_HUP = EPOLLHUP;
    this->EVENT_RDHUP = EPOLLRDHUP;
}

EPoller::~EPoller(){
    ::close(this->epoll_fd);
}

    

void EPoller::updateChannel(Channel* channel){
    //first see whether the channel is already in the list.
    printf("epoll update channel fd: %d\n",channel->fd());
    if(isChannelInList(channel)){
        //update the epoll
        printf("channel already in the list\n");
        update(EPOLL_CTL_MOD,channel);
    }else{
        printf("add channel in the list\n");
        update(EPOLL_CTL_ADD,channel);
    }
}

void EPoller::removeChannel(Channel* channel){
    if(!isChannelInList(channel)){
        return ;
    }
    //delete
    update(EPOLL_CTL_DEL,channel);
}

void EPoller::update(int operation, Channel* channel){
    struct epoll_event ev;
    memset(&ev,0,sizeof(struct epoll_event));
    ev.data.ptr = channel;
    ev.events = channel->getInterestedEvents(); 
    ::epoll_ctl(epoll_fd,operation,channel->fd(),&ev);
    printf("operation %d ,fd: %d\n",operation,channel->fd());
    //log
}

void EPoller::waitForEvent(int timeInterval, std::vector<Channel*>& channelList){
    
    int eventsNum = ::epoll_wait(epoll_fd,events,10000,timeInterval);
    printf("epoll_wait event num:%d\n",eventsNum);
    
    fillForActiveChannel(eventsNum,channelList,events);
}

void EPoller::fillForActiveChannel(int eventsNum, std::vector<Channel*>& channelList
            , struct epoll_event* events){
    
    for(int i = 0 ; i < eventsNum; ++i){
        printf("fill fillForActiveChannel i: %d\n",i); 
        //find channel
        Channel* channel = (Channel*)events[i].data.ptr;
        
        //fill channel
        channel->setCurrentEvents(events[i].events);
        
        //add to the list
        channelList.push_back(channel);
    } 
    int size = channelList.size();
    printf("epoll channellist size: %d\n",size);
}

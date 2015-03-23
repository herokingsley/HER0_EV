#include "epoller.h"
#include "channel.h"

const int EPOLL_MAX_LISTENER_NUM = 100000;

static EPoller* EPoller::CreateEPoller(){
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

    

void EPoller::UpdateChannel(Channel* channel){
    //first see whether the channel is already in the list.

    if(IsChannelInList(channel)){
        //update the epoll
        Update(EPOLL_CTL_MOD,channel);
    }else{
        Update(EPOLL_CTL_ADD,channel);
    }
}

void EPoller::RemoveChannel(Channel* channel){
    if(!IsChannelInList(channel)){
        return ;
    }
    //delete
    Update(EPOLL_CTL_DEL,channel);
}

void EPoller::Update(int operation, Channel* channel){
    struct epoll_event ev;
    memset(ev,0,sizeof(epoll_event));
    ev.data.ptr = channel;
    ev.event = channel->getInterestedEvents(); 
    ::epoll_ctl(epoll_fd,operation,channel->fd(),&ev);
    //log
}

void EPoller::WaitForEvent(int timeInterval, std::vector<Channel*>& channelList){
    //
    int eventNum = ::epoll_wait();
    //
    FillForActiveChannel();
}

void EPoller::FillForActiveChannel(int eventsNum, std::vector<Channel*>& channelList){

}

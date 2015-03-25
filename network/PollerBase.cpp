#include "PollerBase.h"
#include "Channel.h"

Poller::Poller(){

}

Poller::~Poller(){

}


bool Poller::isChannelInList(Channel* channel){
    std::map<int,Channel*>::const_iterator it = m_ChannelMap.find(channel->fd());
    return (it!= m_ChannelMap.end() && it->second == channel);
}

void Poller::updateChannel(Channel* channel){

}

void Poller::removeChannel(Channel* channel){
}

void Poller::waitForEvent(int timeInterval, std::vector<Channel*>& channelList ){
}

void Poller::fillForActiveChannel(int eventsNum, std::vector<Channel*>& channelList){
}

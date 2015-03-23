#include "poller.h"

Poller::Poller(){

}

Poller::~Poller(){

}


bool EPoller::IsChannelInList(Channel* channel){
    std::map<int,Channel*>::const_iterator it = m_ChannelMap.find(channel->fd());
    return (const_iterator!= m_ChannelMap.end() && it->second == channel);
}


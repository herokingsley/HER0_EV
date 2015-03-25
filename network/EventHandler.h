#ifndef __HEVENT_NETWORK_EVENTHANDLER__
#define __HEVENT_NETWORK_EVENTHANDLER__

#include "Socket.h"

class Channel;

class EventHandler{
public:


    virtual void handleRead(Channel* channel) = 0;
    virtual void handleNewConnection(Channel* channel) = 0;
    virtual void handleWrite(Channel* channel) = 0;
    virtual void handleConnectOut() = 0;

    /**
     * setter
     */
    //void setSocket(Socket& socket){ this->socket = socket; } 

protected:
    int enabledEvent; //a integer to repo

};


#endif

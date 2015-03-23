#ifndef __HEVENT_NETWORK_EVENTHANDLER__
#define __HEVENT_NETWORK_EVENTHANDLER__

#include "socket.h"

static const int k_ReadEvent;
static const int k_WriteEvent ;
static const int k_ConnectEvent ;
static const int k_CloseEvent ;


class EventHandler{
public:


    virtual void handleRead() = 0;
    virtual void handleConnection() = 0;
    virtual void handleWrite() = 0;
    virtual void handleDisConnect() = 0;

    /**
     * setter
     */
    void setSocket(Socket& socket){ this->socket = socket; } 

private:
    int enabledEvent; //a integer to repo
    Socket& socket;

};


#endif

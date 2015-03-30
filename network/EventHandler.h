#ifndef __HEVENT_NETWORK_EVENTHANDLER__
#define __HEVENT_NETWORK_EVENTHANDLER__

#include "Socket.h"

class Channel;
class IPPort;

class EventHandler{
public:

    virtual void onData(char* pData,int length,IPPort IpPort) ;
    virtual void handleRead(Channel* channel) ;
    virtual void handleWrite(Channel* channel) ;
    virtual void handleConnectOut() ;

    /**
     * setter
     */
    //void setSocket(Socket& socket){ this->socket = socket; } 

protected:
    int enabledEvent; //a integer to repo

};


#endif

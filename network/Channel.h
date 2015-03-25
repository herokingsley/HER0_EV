#ifndef __HEVENT_NETWORK_CHANNEL__
#define __HEVENT_NETWORK_CHANNEL__

#include "Socket.h"


class HReactor;
class EventHandler;

class Channel{

public:
    Channel(HReactor* reactor, Socket* socket,EventHandler* eventHandler,int events);
    virtual ~Channel();
    void handleEvent();

    int getInterestedEvents(){ return events; }
    int getCurrentEvents(){ return r_events; }
    Socket* getSocket(){ return socket; }
    HReactor* getReactor(){ return reactor; }
    void setCurrentEvents(int c_event){ r_events = c_event; } 

    int fd(){ return socket->getSocketFd(); }
    void setEventHandler(EventHandler* eventHandler){ this->eventHandler = eventHandler;}
    void setInterestedEvents(int events){ this->events = events; }
    
    static const int k_ReadEvent;
    static const int k_WriteEvent;
    static const int k_ConnectEvent;
    static const int k_ConnectOutEvent;
   

private:

    void update();

    HReactor* reactor;
    Socket* socket;
    EventHandler* eventHandler;
    int events; // interested event
    int r_events;// current event
    

};


#endif

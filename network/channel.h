#ifndef __HEVENT_NETWORK_CHANNEL__
#define __HEVENT_NETWORK_CHANNEL__

#include "socket.h"
#include "eventhandler.h"

/*
static const int k_ReadEvent;
static const int k_WriteEvent;
static const int k_ConnectEvent;
static const int k_ConnectOutEvent;
*/



class Channel{

public:
    Channel(Socket& socket,EventHandler* eventHandler);
    ~Channel();
    void handleEvent(int eventType);
    
    //getter and setter
    void setEventHandler(EventHandler* eventHandler){ this->eventHandler = eventHandler;}
    void setSocket(Socket& socket){ this.socket = socket; }
    int GetInterestedEvents(){ return events; }
    int GetCurrentEvents(){ return r_events; }

private:
    Socket& socket;
    EventHandler* eventHandler;
    int events;
    int r_events;// current event
    

};


#endif

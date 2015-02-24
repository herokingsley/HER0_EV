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
        void handleEvent();
        
        //getter and setter
        void setEventHandler(EventHandler* eventHandler);
        

    private:
        Socket& socket;
        EventHandler* eventHandler;

};


#endif

#ifndef __HEVENT_NETWORK_UDPSERVER__
#define __HEVENT_NETWORK_UDPSERVER__

#include "EventHandler.h"
#include "Acceptor.h"

class HReactor;
class IPPort;
class Channel;

class UdpDefaultHandler:public EventHandler{
public:
    UdpDefaultHandler(EventHandler* eventhandler);
    virtual void handleRead(Channel* channel);    
private:
    EventHandler* customHandler;
};

class UdpServer{

public:
    UdpServer(HReactor* reactor,IPPort& ipPort,EventHandler* eventHandler);
    ~UdpServer();
    void listen();
    void start();
    void stop();
    

private:
    HReactor* reactor;
    IPPort ipPort; 
    EventHandler* defaultHandler;
    EventHandler* handler;
    Channel serverChannel;
    //Acceptor acceptor;
    bool bIsListen;
};


#endif

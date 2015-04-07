#ifndef __HEVENT_NETWORK_ACCEPTOR__
#define __HEVENT_NETWORK_ACCEPTOR__

#include "Socket.h"
#include "IpPort.h"
#include "Channel.h"


class HReactor;
class Socket;

class Acceptor{
public:
    Acceptor(HReactor* reactor, IPPort& ipPort,EventHandler* eventHandler);
    ~Acceptor();

    bool isListening(){ return bIsListen;}
    void bind();
    void listen();
    void handleNewConnection();

private:
    bool bIsListen;

    HReactor* reactor;
    IPPort ipPort;
    Channel acceptChannel;
    Socket* acceptSocket;
    
};


#endif

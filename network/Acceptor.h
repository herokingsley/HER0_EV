#ifndef __HEVENT_NETWORK_ACCEPTOR__
#define __HEVENT_NETWORK_ACCEPTOR__

#include "Socket.h"
#include "IpPort.h"


class DefaultEventHandler;

class Acceptor{
public:
    Acceptor();
    ~Acceptor();
    void handleNewConnection(int socketFd);
private:
    HReactor* reactor;
    IPPort& ipPort;
    Socket* acceptSocket;
    Channel* acceptChannel;
    DefaultEventHandler eventHandler;
    
};


#endif

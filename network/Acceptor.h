#ifndef __HEVENT_NETWORK_ACCEPTOR__
#define __HEVENT_NETWORK_ACCEPTOR__

#include "Socket.h"
#include "IpPort.h"
#include "Channel.h"


class DefaultEventHandler;
class HReactor;
class Socket;

class Acceptor{
public:
    Acceptor(HReactor* reactor, IPPort ipPort,Socket socket,EventHandler* eventHandler);
    ~Acceptor();

    bool isListening(){ return bIsListen;}
    void listen();
    void handleNewConnection();

private:
    bool bIsListen;

    HReactor* reactor;
    IPPort ipPort;
    Socket acceptSocket;
    DefaultEventHandler eventHandler;
    Channel acceptChannel;
    
};


#endif

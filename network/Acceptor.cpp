#include "Acceptor.h"
#include "EventHandler.h"

#define MAX_LISTEN_NUM 1024

/*
class AcceptorEventHandler:public EventHandler{
public:
    virtual handleRead(Channel* channel){
        Socket* acceptorSocket = channel->getSocket();
        Socket* connSocket = acceptSocket->accept(); 
        HReactor* reactor = channel->getReactor();
        Channel* connChannel = new Channel(reactor,); 
        acceptorCallBack->handleRead(channel); 
    }

private:
    EventHandler* acceptorCallBack;
};
*/

Acceptor::Acceptor(HReactor* reactor,IPPort& ipPort, Socket socket,EventHandler* eventHandler):
    reactor(reactor),
    ipPort(ipPort),
    acceptSocket(socket),
    eventHandler(eventHandler),
    Channel(reactor,&acceptSocket,eventHandler)
{
}

Acceptor::~Acceptor(){

}

void Acceptor::listen(){
    if(!bIsListen){
        return;
    }
    bIsListen = true;
    acceptSocket.listen(ipPort,MAX_LISTEN_NUM);
    channel.enableRead(); 
}

     


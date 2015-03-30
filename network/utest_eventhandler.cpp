#include "EventHandler.h"
#include "Channel.h"
#include "Socket.h"
#include "HReactor.h"

class DefaultTcpEventHandler : public EventHandler{
    
    virtual void handleRead(Channel* channel){
        printf("Default handleRead\n"); 
           
    }

    /*
    virtual void handleNewConnection(Channel* channel){
        Socket* socket = channel->getSocket();
        Socket* newSocket = socket->Accept();
        HReactor* reactor = channel->getReactor();
        Channel* newChannel = new Channel(channel->getReactor(),newSocket,this,Channel::k_ReadEvent);

        printf("Default handleNewConnection\n"); 
    }*/

    virtual void handleWrite(Channel* channel){
        printf("Default handleWrite\n"); 
    }

    virtual void handleConnectOut(){
        printf("Default handleConnection\n"); 
    }

};

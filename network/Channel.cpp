#include "Channel.h"
#include "EventHandler.h"
#include "EPoller.h"
#include "HReactor.h"

const int Channel::k_ReadEvent = EPOLLIN;
const int Channel::k_WriteEvent = EPOLLOUT;
const int Channel::k_ConnectEvent = EPOLLIN;
const int Channel::k_ConnectOutEvent = EPOLLERR | EPOLLHUP | EPOLLRDHUP;

Channel::Channel(HReactor* reactor, Socket* socket,EventHandler* eventHandler,int events){
    this->reactor = reactor;
    this->socket = socket;
    this->eventHandler = eventHandler;
    this->events = events;
    
    this->reactor->updateChannel(this);
}

Channel::~Channel(){

    this->reactor->removeChannel(this);
}

void Channel::handleEvent(){
   // connection esliabment
   printf("r_events value:%d\n",r_events);

    if(r_events & k_ConnectEvent){
        this->eventHandler->handleNewConnection(this);
    }
        
   // read event
   if( r_events & k_ReadEvent){
        this->eventHandler->handleRead(this);
   }
   
   // write event 
   if( r_events & k_WriteEvent){
        this->eventHandler->handleWrite(this);
   }
   
   // close event
   if( r_events & k_ConnectOutEvent){
        this->eventHandler->handleConnectOut();
   }
   
   //exception event?
}

void Channel::update(){

}

#include "channel.h"

Channel::Channel(Socket& socket,EventHandler* eventHandler){
    this->socket = socket;
    this->eventHandler = eventHandler;
}

Channel::~Channel(){

}

void Channel::handleEvent(int eventType){
    printf("handleEvent type:%d\n",eventType);
   // connection esliabment
   
   // read event
   
   // write event 
   
   // close event
   
   //exception event?
}

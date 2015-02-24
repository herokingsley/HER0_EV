#include "channel.h"

Channel::Channel(Socket& socket,EventHandler* eventHandler){
    this->socket = socket;
    this->eventHandler = eventHandler;
}

Channel::~Channel(){

}

void Channel::handleEvent(){

}

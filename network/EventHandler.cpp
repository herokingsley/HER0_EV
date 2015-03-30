#include "EventHandler.h"
#include "Channel.h"

void EventHandler::handleRead(Channel* channel){
    printf("base eventhandle read\n");
}


void EventHandler::handleWrite(Channel* channel){
    printf("base eventhandle write\n");

}

void EventHandler::handleConnectOut(){
    printf("base eventhandle out\n");

}

void EventHandler::onData(char* pData,int length){

}

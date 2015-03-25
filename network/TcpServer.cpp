#include "TcpServer.h"

TcpServer::TcpServer(HReactor* reactor,IpPort& ipPort){
    this->reactor = reactor;
    this->ipPort = ipPort;
}


void TcpServer::Start(){
    reactor->start();
}





#include "TcpServer.h"
#include "HReactor.h"
#include "IpPort.h"

TcpServer::TcpServer(HReactor* reactor,IPPort& ipPort):
    reactor(reactor),
    ipPort(ipPort)
{
}


void TcpServer::Start(){
    reactor->start();
}





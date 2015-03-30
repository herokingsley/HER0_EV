#include "HReactor.h"
#include "IpPort.h"
#include "Channel.h"
#include "Acceptor.h"
#include "UdpServer.h"

#include <cstdio>
#include <sys/socket.h>
#include <netinet/in.h>

#define MAX_UDP_PACKET 2048

UdpDefaultHandler::UdpDefaultHandler(EventHandler* handler){
   customHandler = handler; 
}

void UdpDefaultHandler::handleRead(Channel* channel){
    char udpPacket[MAX_UDP_PACKET];
    int  iPacketLen;
    struct sockaddr_in sockAddrIn;
    socklen_t cli_len = sizeof(sockAddrIn);
    int socketFd = channel->fd();
    iPacketLen =  recvfrom(socketFd, udpPacket, MAX_UDP_PACKET, 0, (struct sockaddr *)&sockAddrIn, &cli_len);
    IPPort ipPort("",12345);

    //callback
   if(customHandler){
       customHandler->onData(udpPacket,iPacketLen,ipPort);
   }
}

UdpServer::UdpServer(HReactor* reactor,IPPort& ipPort, EventHandler* eventHandler):
    reactor(reactor),
    ipPort(ipPort),
    handler(eventHandler),
    acceptor(reactor,ipPort, Socket(UDP),eventHandler),
    bIsListen(false)
{
    printf("Create a UDP server.\n");
    defaultHandler = new UdpDefaultHandler();
}

UdpServer::~UdpServer(){
    EventHandler* defaultHandler;
    delete defaultHandler;
}

void UdpServer::start(){
    this->listen();
    this->reactor->run();
}

void UdpServer::stop(){
    bIsListen = false;
}

void UdpServer::listen(){
    acceptor.listen();  
}



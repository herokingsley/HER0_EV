#include "Socket.h"


Socket::~Socket(){
    close(socketFd);
}

//Socket::Socket(SocketType type,int socketFd):type(type),socketFd(socketFd);

Socket::Socket(SocketType type){
    this->type = type;
    this->initSocketWithType(type);
    //bind the ip address
    
}

Socket::Socket(SocketType type, int sockFd){
    this->type = TCP;
    this->socketFd = sockFd;
}

void Socket::initSocketWithType(SocketType type){
    if(type == TCP){
        socketFd = socket(AF_INET,SOCK_STREAM,0);
    }else if(type == UDP){
        socketFd = socket(AF_INET,SOCK_DGRAM,0);
    }

    if(socketFd == -1){
        perror("socket() error.");
    }
}

void Socket::bind(IPPort& ipPort){
    struct sockaddr_in sockAddrIn;
    sockAddrIn.sin_family = AF_INET;
    sockAddrIn.sin_port = ipPort.getNetworkPort();
    sockAddrIn.sin_addr.s_addr = INADDR_ANY;
    int ret = ::bind(this->socketFd,(const struct  sockaddr*)&sockAddrIn,static_cast<socklen_t>(sizeof sockAddrIn) );
    if(ret == -1)
        perror("bind() error");
}

void Socket::connect(IPPort& ipPort){
    struct sockaddr_in sockAddrIn;
    sockAddrIn.sin_family = AF_INET;
    sockAddrIn.sin_port = ipPort.getNetworkPort();
    inet_pton(AF_INET,ipPort.getIp(),&(sockAddrIn.sin_addr) );
    int ret = ::connect(this->socketFd,(const struct sockaddr*)&sockAddrIn,static_cast<socklen_t>(sizeof sockAddrIn) );
    if(ret == -1)
        perror("bind() error");
}

void Socket::listen(IPPort& ipPort,int maxNum){
   int ret = ::listen(socketFd,maxNum);
   if( ret < 0 )
       perror("listen() error.");
}

Socket* Socket::accept(){
    socklen_t addrlen = sizeof(sockaddr_in);
    struct sockaddr_in sockAddrIn;

    int connfd = ::accept(socketFd,(struct sockaddr*)&sockAddrIn,&addrlen);
    return new Socket(TCP,connfd);
}

ssize_t Socket::write(char* data,int iLen){
    return ::write(socketFd,data,iLen);
}

ssize_t Socket::read(char* data,int& iLen){
    return ::read(socketFd,data,iLen) ;    
}

bool Socket::readLine(char* data,int &iLen){
    return true;
}

void Socket::setNotBlock(bool on){
    int flags = ::fcntl(this->socketFd,F_GETFL,0);
    flags |= O_NONBLOCK;

    int ret = ::fcntl(this->socketFd,F_SETFL,flags);

    //flags = ::fcntl(sockFd,F_GETFD,0);
}

void Socket::setTCPNoDelay(bool on){
    //setsockopt(socketFd,SOL_SOCKET,SO_);
}

void Socket::setKeepALive(bool on){
    /*
    int keepALive = 1;
    setsockopt(socketFd,SOL_SOCKET,SO_KEEPALIVE,*keepALive,sizeof(int));
    */

}

ssize_t Socket::recv(char* data,int& iLen){

}

ssize_t Socket::send(char* data,int iLen){

}




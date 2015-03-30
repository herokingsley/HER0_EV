#ifndef __HEVENT_NETWORK_SOCKET__
#define __HEVENT_NETWORK_SOCKET__

#include "IpPort.h"
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <netinet/udp.h>
#include <errno.h>
#include <fcntl.h>
#include <stdio.h> // snprintf
#include <strings.h> //bzero
#include <unistd.h> //linux


enum SocketType{
    TCP,
    UDP,
    UNKNOWN,
};

class Socket{
public:
    
    /*
     * factory method
     */
    static Socket* createNotBlockSocket();
    static Socket* createSocketWithFd(int socketFd);
   
    Socket(SocketType type,int socketFd);
    Socket(SocketType type);

    Socket* accept();
    void bind(IPPort& ipPort);
    void connect(IPPort& ipPort);
    void listen(IPPort& ipPort,int maxNum);
    void setNotBlock(bool on);
    void setTCPNoDelay(bool on); 
    void setKeepALive(bool on);



    ssize_t write(char* data,int iLen);
    ssize_t read(char* data,int& iLen);
    bool readLine(char* data,int& iLen);

    ssize_t recv(char* data,int& iLen); 
    ssize_t send(char* data,int iLen); 

    ssize_t sendTo(char* data,IPPort& ipPort,int iLen);
    ssize_t recvFrom(char* data,IPPort& ipPort,int& iLen);

    ~Socket();

    /**
     * setter and getter
     */
    int getSocketFd(){ return socketFd; }

private:
    /*
     * internal function
     */
    void initSocketWithType(SocketType type);


    SocketType type;
    int socketFd;
    struct sockaddr_in peer_sockAddrIn;

};



#endif

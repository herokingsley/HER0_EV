#ifndef __HEVENT_NETWORK_SOCKET__
#define __HEVENT_NETWORK_SOCKET__

#include "ipport.h"
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
    Socket Accept();
    //void Accept(IPPort& ipPort);
    void Bind(IPPort& ipPort);
    void Connect(IPPort& ipPort);
    void Listen(IPPort& ipPort,int maxNum);
    void SetNotBlock(bool on);
    void SetTCPNoDelay(bool on); 
    void SetKeepALive(bool on);



    ssize_t Write(char* data,int iLen);
    ssize_t Read(char* data,int& iLen);
    bool ReadLine(char* data,int& iLen);

    ssize_t Recv(char* data,int& iLen); 
    ssize_t Send(char* data,int iLen); 

    ssize_t SendTo(char* data,IPPort& ipPort,int iLen);
    ssize_t RecvFrom(char* data,IPPort& ipPort,int& iLen);

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
    struct sockaddr_in m_sockAddrIn;



};



#endif

#ifndef __HEVENT_NETWORK_SOCKET__
#define __HEVENT_NETWORK_SOCKET__

enum SocketType{
    TCP,
    UDP,
    UNKNOWN,
};

class Socket{
public:
    
    Socket();
    Socket(SocketType type);
    void Bind();
    void Listen();
    bool Write(char* data,int iLen);
    bool Read(char* data,int& iLen);


private:
    SocketType type;
    int socketFd;



};



#endif

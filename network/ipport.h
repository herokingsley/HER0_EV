#ifndef __HEVENT_NETWORK_IPPORT__
#define __HEVENT_NETWORK_IPPORT__

//#include <unistd.h>
#include <arpa/inet.h>

//a class use by socket
class IPPort{
public:
    IPPort(char const* ip,int port);
    char* getIp(){return m_ip;}
    int getPort(){return m_port;}
    int getNetworkPort(){ return htons(m_port); }
private:
    char m_ip[20];
    int m_port;
};

#endif

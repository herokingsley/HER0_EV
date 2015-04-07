#include "UdpServer.h"
#include "IpPort.h"
#include "HReactor.h"
#include <cstdio>

class MyEventListener:public EventHandler{
public:
    virtual void onData(char* pData,int length,IPPort ipport){
        printf("Receive packet,content length: %d, content: %s\n",length,pData);
    }
};


int main(){

    EventHandler* handler = new MyEventListener();
    HReactor reactor;
    IPPort ipPort("127.0.0.1",12345);
    UdpServer server(&reactor,ipPort, handler);
    server.start();
    
}

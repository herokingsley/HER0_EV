#include "HReactor.h"
#include "IpPort.h"
#include "utest_eventhandler.cpp"
#include "EPoller.h"

char ip[20] = "127.0.0.1";
char readBuf[200];
int readLen = 10;
int writeLen = 10;



int main(){

    Poller* poller = EPoller::CreateEPoller();

    EventHandler* handler = new DefaultTcpEventHandler();

    IPPort ipPort1(ip,12345);
    HReactor* reactor = new HReactor();
    reactor->setPoller(poller);
    Socket srvSock(TCP);
    srvSock.Bind(ipPort1);
    srvSock.Listen(ipPort1,100);

    Channel channel(reactor,&srvSock,handler,Channel::k_ConnectEvent);
    reactor->start();
}

#ifndef __HEVENT_NETWORK_TCPSERVER__
#define __HEVENT_NETWORK_TCPSERVER__

#include "hreactor.h"
#include "Acceptor.h"
#include "IpPort.h"
#include <vector>

class TcpConnection;
class EventHandler;

class TcpServer{
public:
  TcpServer(HReactor* reactor,IpPort& ipPort); 
  virtual ~TcpServer();
  void Start();

private:
    HReactor* reactor;
    IPPort& ipPort;
    Acceptor acceptor;
    EventHandler* eventHandler;


    std::vector<TcpConnection*> tcpConnectionArr;

    std::vector<TcpConnection*> cleaningTcpConnectionArr;

    
};

#endif


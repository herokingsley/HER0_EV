#ifndef __HEVENT_NETWORK_TCPSERVER__
#define __HEVENT_NETWORK_TCPSERVER__

#include "Acceptor.h"
#include "IpPort.h"
#include <vector>

class TcpConnection;
class EventHandler;
class HReactor;

class TcpServer{
public:
  TcpServer(HReactor* reactor,IPPort& ipPort); 
  virtual ~TcpServer();
  void Start();

private:
    HReactor* reactor;
    IPPort ipPort;
    Acceptor acceptor;
    EventHandler* eventHandler;


    std::vector<TcpConnection*> tcpConnectionArr;

    std::vector<TcpConnection*> cleaningTcpConnectionArr;

    
};

#endif


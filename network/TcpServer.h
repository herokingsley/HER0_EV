#ifndef __HEVENT_NETWORK_TCPSERVER__
#define __HEVENT_NETWORK_TCPSERVER__

#include "hreactor.h"
#include "Acceptor.h"
#include "IpPort.h"

class TcpServer{
  TcpServer(HReactor* reactor,IpPort& ipPort); 
  virtual ~TcpServer();
  void Start();

private:
    HReactor* reactor;
    IPPort& ipPort;
    Acceptor acceptor;
    
};

#endif


#ifndef __HEVENT_NETWORK_TCPCONNECTION__
#define __HEVENT_NETWORK_TCPCONNECTION__

class HReactor;
class Socket;
class Channel;
class EventHandler;

#define MAX_BUF_SIZE 1024

class TcpConnection {

public:
    TcpConnection(HReactor* reactor, Channel* channel, EventHandler* handler);
    ~TcpConnection();

    void send(char* message,int length);

    void onConnectionCallBack();
    void onReadCallBack();
    void onWriteCallBack();
    void onCloseCallBack();

    //getter and setter
    HReactor* getReactor(){ return reactor; }
    Channel*  getChannel(){ return channel; }
    

private:
    enum Tcp_State { kDisconnected,kConnecting, kConnected, kDisconnecting };
    HReactor* reactor;
    Channel* channel;
    Tcp_State kState; 
    Socket* socket;
    EventHandler* eventHandler;
    char inBuf[MAX_BUF_SIZE];
    char outBuf[MAX_BUF_SIZE]; 
};

#endif

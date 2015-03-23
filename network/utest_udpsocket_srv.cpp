#include "socket.h"

/**
 * author: her0kings1ey
 * contact: herokingsley4job@gmail.com
 * descrption : this is a unit test for class Socket
 */
char ip[20] = "127.0.0.1";
char readBuf[2000];
int readLen = 10; 
int writeLen = 10; 

int main(){

    IPPort ipPort1(ip,12345);    
    Socket srvSock(TCP);
    srvSock.Bind(ipPort1);
    printf("accpet a client: %d\n",clientSock.getSocketFd());
    while(1){
        int readNum = srvSock.Read(readBuf,readLen);
        if(readNum == 0){
            printf("client close\n");
            break;
        }
        printf("read len: %d ,content: %s\n",readNum,readBuf);
        int writeNum = srvSock.Write(readBuf,writeLen);
        printf("write len: %d ,content: %s\n",writeLen,readBuf);
        sleep(1);
    }
    return 0;
}

#include "socket.h"

/**
 * author: her0kings1ey
 * contact: herokingsley4job@gmail.com
 * descrption : this is a unit test for class Socket
 */

const char ip[20] = "127.0.0.1";
char readBuf[20] = "helloWorld";
int readLen = 10 ; 
int writeLen = 10;

int main(){
    IPPort ipPort1(ip,12345);
    Socket cliSock(UDP);
    cliSock.Connect(ipPort1);
    printf("connect success");
    while(1){
        int writeNum = cliSock.Write(readBuf,writeLen);
        printf("cli write len: %d,content: %s\n",writeNum,readBuf);
        int readNum = cliSock.Read(readBuf,readLen);
        if(readNum == 0){
            printf("svr lost.\n");
            break;
        }
        printf("cli read len: %d, content: %s\n",readLen,readBuf);
        sleep(1);
    }
    return 0;
}

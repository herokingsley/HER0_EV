#include "Socket.h"
#include <unistd.h>
#include "IpPort.h"

/**
 * author: her0kings1ey
 * contact: herokingsley4job@gmail.com
 * descrption : this is a unit test for class Socket
 */

const char ip[20] = "127.0.0.1";
char readBuf[100] = "helloWorld";
int readLen = 10 ; 
int writeLen = 10;

int main(){

    printf("connect success");
    for(int i = 0; i < 10 ; ++i){
        int pid = fork();
        if(pid == 0){
            pid_t childpid = getpid();
            IPPort ipPort1(ip,12345);
            Socket cliSock(UDP);
            writeLen = sprintf(readBuf,"pid: %d,hello world\n",childpid);
            while(1){
                
                int writeNum = cliSock.sendTo(readBuf,ipPort1,writeLen);
                printf("cli write len: %d,content: %s\n",writeNum,readBuf);
                int readNum = cliSock.recvFrom(readBuf,ipPort1,readLen);
                if(readNum == 0){
                    printf("svr lost.\n");
                    break;
                }
                printf("cli read len: %d, content: %s\n",readLen,readBuf);
                sleep(3);
            }
        }
    }
    while(1);
    return 0;
}

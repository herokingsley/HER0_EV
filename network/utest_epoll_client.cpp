#include <unistd.h>
#include <cstdio>
#include "Socket.h"
#include "IpPort.h"

const char ip[20] = "127.0.0.1";
char readBuf[100];
int readLen;
int writeLen;

int main(){

    for(int i = 0 ; i < 10 ; ++i){
        int pid = fork();
        if(pid == 0){
            pid_t childpid = getpid();
            IPPort ipPort1(ip,12345);
            Socket cliSock(TCP);
            cliSock.connect(ipPort1);
            printf("connect success");
            writeLen = sprintf(readBuf,"pid: %d,hello world\n",childpid);
            while(1){

                int writeNum = cliSock.write(readBuf,writeLen);
                printf("cli write len: %d,content: %s\n",writeNum,readBuf);
                int readNum = cliSock.read(readBuf,writeLen);
                if(readNum == 0){
                    printf("svr lost.\n");
                    break;
                }
                printf("cli read len: %d, content: %s\n",readNum,readBuf);
                sleep(1);
            }
  
        }else{
            //do nothing
        }

    }
    while(1);
}

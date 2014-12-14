#include "utlity/proccess_trans.h"
#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>

#define MAX_BUFSIZE 1024

int StartUdpServer(char* szIpAddress,int iPort){
	int server_sockFd;
	int len,sin_size;
	char buf[MAX_BUFSIZE] = {0};
	struct sockaddr_in  my_addr;
	memset(&my_addr,0,sizeof(my_addr));
	my_addr.sin_family = AF_INET;
	my_addr.sin_addr.s_addr= INADDR_ANY;
	my_addr.sin_port = htons(iPort);

	if((server_sockFd = socket(PF_INET,SOCK_DGRAM,0))<0){
		perror("server socket create error");	
		return -1;
	}

	//bind
	if( bind(server_sockFd,(struct sockaddr *)&my_addr,sizeof(struct sockaddr))<0){
		perror("server bind socket error");
		return -2;
	}
	sinsize = sizeof(struct sockaddr_in);
	printf("create server completed");

	if(( len = recvfrom(server_sockfd,buf,MAX_BUFSIZE,0,(struct sockaddr *)&remote_addr,&sin_size)) < 0 ){
		perror("server socket recvfrom error");
		return -3;
	}
	printf("received packet from %s:/n",inet_ntoa(remote_addr.sin_addr));
	buf[len] = '\0';
	close(server_sockFd);
	return 0;
}

int StartSingleTcpServer(char* szIpAddress,int iPort);


char *szIpAddress;
int port;


int main(int argc,char** argv){

	if(argc == 1){
				
	}
	StartUdpServer(szIpAddress,port);
		
}

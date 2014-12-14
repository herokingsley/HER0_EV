#include "proccess_trans.h"

int SendUdpPacket(char* szIpAddress,int port,char* szSendBuffer,int iLen,int iTimeOut){
	
	int clientSockFd;
	struct sockaddr_in remote_addr;
	int sin_size;
	memset(&remote_addr,0,sizeof(remote_addr));
	remote_addr.sin_family = AF_INET;
	//set remote ip address and port
	remote_addr.sin_addr.s_addr=inet_addr(szIpAddress);
	remote_addr.sin_port= htons(port);
	
	//set socket fd's behavior
	//setSndAndRevTimeout(clientSockFd,iTimeout);
	setSndTimeout(clientSockFd,iTimeout);

	if((clientSockFd = socket(PF_INET,SOCK_DGRAM,0))<0){
		perror("socket create");
		return -1;
	}
	printf("sending: '%s'\n",szSendBuffer);
	
	if((len = sendto(clientSockFd,szSendBuffer,iLen,0,&remote_addr,sizeof((struct sockaddr))) < 0){
		perror("send error");
		return -1;
	}
	return 0;	
}


int SendUdpPacketWithRes(char* szIpAddress,int port,char* szSendBuffer,char* szRecvBuffer,int iTimeOut){
	int clientSockFd;
	struct sockaddr_in remote_addr;
	int sin_size;
	memset(&remote_addr,0,sizeof(remote_addr));
	remote_addr.sin_family = AF_INET;
	//set remote ip address and port
	remote_addr.sin_addr.s_addr=inet_addr(szIpAddress);
	remote_addr.sin_port= htons(port);
	
	//set socket fd's behavior
	//setSndAndRevTimeout(clientSockFd,iTimeout);
	setSndTimeout(clientSockFd,iTimeout);

	if((clientSockFd = socket(PF_INET,SOCK_DGRAM,0))<0){
		perror("socket create");
		return -1;
	}
	printf("sending: '%s'\n",szSendBuffer);
	
	if((len = sendto(clientSockFd,szSendBuffer,iLen,0,&remote_addr,sizeof((struct sockaddr))) < 0){
		perror("send error");
		return -1;
	}
}

int RecvUdpPacket(char* szIpAddress,int port,char* szRecvBuffer,int iTimeOut){
	int clientSockFd;
	struct sockaddr_in remote_addr;
	int sin_size;
	memset(&remote_addr,0,sizeof(remote_addr));
	remote_addr.sin_family = AF_INET;
	//set remote ip address and port
	remote_addr.sin_addr.s_addr=inet_addr(szIpAddress);
	remote_addr.sin_port= htons(port);
	
	//set socket fd's behavior
	//setSndAndRevTimeout(clientSockFd,iTimeout);
	setRcvTimeout(clientSockFd,iTimeout);

	if((clientSockFd = socket(PF_INET,SOCK_DGRAM,0))<0){
		perror("client socket create");
		return -1;
	}
	
	if((len = recvfrom(clientSockFd,szRecvBuffer,iLen,0,&remote_addr,sizeof((struct sockaddr))) < 0){
		perror("recv error");
		return -1;
	}

	printf("recvfrom server:'%s'\n",szRecvBuffer);
	return 0;
}

//tcp
int SendTcpPacketWithNoRes(char* szIpAddress,int port,char* szSendBuffer,int iTimeOut);
int SendTcpPacketWithUCLenRes(char* szIpAddress,int port,char* szSendBuffer,char* szRecvBuffer,int iTimeOut);
int SendTcpPacketWithUSLenRes(char* szIpAddress,int port,char* szSendBuffer,char* szRecvBuffer,int iTimeOut);
int SendTcpPacketWithULenRes(char* szIpAddress,int port,char* szSendBuffer,char* szRecvBuffer,int iTimeOut);
int SendTcpPacketWithULLenRes(char* szIpAddress,int port,char* szSendBuffer,char* szRecvBuffer,int iTimeOut);
int RecvTcpPacketWithLen();



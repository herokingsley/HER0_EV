#include  "socketutil.h"

bool setSndAndRevTimeout(int sockFd,int iTimeout){
	
	//set send timeout parameter on sockFd
	setsockopt(s,SOL_SOCKET,SO_SNDTIMEO,(char*)&iTimeOut,sizeof(int));

	//set recv timeoute parameter on sockFd
	setsockopt(s,SOL_SOCKET,SO_RCVTIMEO,(char*)&iTimeOut,sizeof(int));

	return true;
}

bool setSndTimeout(int sockFd,int iTimeout){

	setsockopt(s,SOL_SOCKET,SO_SNDTIMEO,(char*)&iTimeOut,sizeof(int));
	return true;

}

bool setRevTimeout(int sockFd,int iTimeout){

	//set recv timeoute parameter on sockFd
	setsockopt(s,SOL_SOCKET,SO_RCVTIMEO,(char*)&iTimeOut,sizeof(int));
	return true;
}

bool setNonBlock(int sockFd){

}

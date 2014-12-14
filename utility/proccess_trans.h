/**
 * author: herokingsley
 * date ; 2014/12/06
 * purpose : use for quick network transport.
 * encasulate socket using tcp or udp.
 */
#ifndef __PROCESS__TRANS__
#define __PROCESS__TRANS__

#include <apra/inet.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <sys/fcntl.h>
#include "socketutil.h"





//udp
int SendUdpPacket(char* szIpAddress,int port,char* szSendBuffer,int iTimeOut);
int SendUdpPacketWithRes(char* szIpAddress,int port,char* szSendBuffer,char* szRecvBuffer,int iTimeOut);
int RecvUdpPacket(char* szIpAddress,int port,char* szRecvBuffer,int iTimeOut);

//tcp
int SendTcpPacketWithNoRes(char* szIpAddress,int port,char* szSendBuffer,int iTimeOut);
int SendTcpPacketWithUCLenRes(char* szIpAddress,int port,char* szSendBuffer,char* szRecvBuffer,int iTimeOut);
int SendTcpPacketWithUSLenRes(char* szIpAddress,int port,char* szSendBuffer,char* szRecvBuffer,int iTimeOut);
int SendTcpPacketWithULenRes(char* szIpAddress,int port,char* szSendBuffer,char* szRecvBuffer,int iTimeOut);
int SendTcpPacketWithULLenRes(char* szIpAddress,int port,char* szSendBuffer,char* szRecvBuffer,int iTimeOut);
int RecvTcpPacketWithLen();


#endif

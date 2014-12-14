/**
 * author: herokingsley
 * date : 2014/12/13
 * purpose : utility for socket util in procedural way
 */
#ifndef __SOCKET__UTIL__
#define __SOCKET__UTIL__

bool setSndAndRcvTimeout(int sockFd,int iTimeout);
bool setSndTimeout(int sockFd,int iTimeout);
bool setRcvTimeout(int sockFd,int iTimeout);
bool setNonBlock(int sockFd);

#endif

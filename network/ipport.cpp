#include "ipport.h"
#include <cstring>
#include <memory.h>
#include <assert.h>

IPPort::IPPort(char const* ip, int port){
   assert(ip != NULL); 
  int len = strlen(ip);
   memcpy(m_ip,ip,len);
   m_ip[len] = 0;
   
   m_port = port;
}



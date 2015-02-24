#ifndef __HEVENT_NETWORK_HREACTOR__
#define __HEVENT_NETWORK_HREACTOR__

#include <cstdio>


class HReactor{
public:
    HReactor();
    ~HReactor();
    void start();
    void run(); //the method will be invoked continuly
private:
   bool m_running;//whether the reactor is running; 



}; 


#endif

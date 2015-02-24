#ifndef __HEVENT_NETWORK_POLL__
#define __HEVENT_NETWORK_POLL__
/**
 *
 *
 *
 *
 *
 */

#include <vector>
#include "eventhandler.h"

class Poller{
public:
    Poller();
    void addChannel();
private:
    std::vector<EventHandlerBase*> eventHandlers;
};
};

#endif

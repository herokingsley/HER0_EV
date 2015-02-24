#include "hractor.h"

HReactor::HReactor(){
   m_running = false; 
}

HReactor::~HReactor(){
    m_running = false;
}

void HReactor::start(){

    printf("the hreactor is starting");
    while(true){
        m_running = true;
        this->run();
        m_running = false;
    }
}

void HReactor::run(){

    printf("reactor running.");
}

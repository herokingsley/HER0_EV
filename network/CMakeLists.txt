SET(SRC_LIST 
        eventhandler.cpp
        hreactor.cpp
        socket.cpp
        ipport.cpp
    )
MESSAGE(STATUS "This is BINARY dir " ${HREACTOR_TEST_01_BINARY_DIR})
MESSAGE(STATUS "This is SOURCE dir " ${HREACTOR_TEST_01_SOURCE_DIR})
ADD_EXECUTABLE(main application.cpp ${SRC_LIST})
ADD_EXECUTABLE(srv utest_tcpsocket_srv.cpp ${SRC_LIST})
ADD_EXECUTABLE(cli utest_tcpsocket_cli.cpp ${SRC_LIST})

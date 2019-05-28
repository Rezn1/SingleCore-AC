
AC_ADD_SCRIPT("${CMAKE_CURRENT_LIST_DIR}/src/BetterBots.cpp")

AC_ADD_SCRIPT_LOADER("BetterBots" "${CMAKE_CURRENT_LIST_DIR}/src/loader.h")

CU_ADD_HOOK(AFTER_WORLDSERVER_CMAKE "${CMAKE_CURRENT_LIST_DIR}/src/cmake/after_ws_install.cmake")

install(FILES "${CMAKE_SOURCE_DIR}/modules/mod-BetterBots/conf/BetterBots.conf.dist" DESTINATION ${CONF_DIR})

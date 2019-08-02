# Install script for directory: /home/ubuntu/ccms/catkin_ws/src/ccms_pro

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ubuntu/ccms/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ccms_pro/msg" TYPE FILE FILES
    "/home/ubuntu/ccms/catkin_ws/src/ccms_pro/msg/UnpackingCanData1.msg"
    "/home/ubuntu/ccms/catkin_ws/src/ccms_pro/msg/UnpackingCanData2.msg"
    "/home/ubuntu/ccms/catkin_ws/src/ccms_pro/msg/UnpackingCanData3.msg"
    "/home/ubuntu/ccms/catkin_ws/src/ccms_pro/msg/UnpackingCanData4.msg"
    "/home/ubuntu/ccms/catkin_ws/src/ccms_pro/msg/UnpackingCanData5.msg"
    "/home/ubuntu/ccms/catkin_ws/src/ccms_pro/msg/UnpackingCanData6.msg"
    "/home/ubuntu/ccms/catkin_ws/src/ccms_pro/msg/HistoryMsg.msg"
    "/home/ubuntu/ccms/catkin_ws/src/ccms_pro/msg/BlockResult.msg"
    "/home/ubuntu/ccms/catkin_ws/src/ccms_pro/msg/ModuleResult.msg"
    "/home/ubuntu/ccms/catkin_ws/src/ccms_pro/msg/BatteryResult.msg"
    "/home/ubuntu/ccms/catkin_ws/src/ccms_pro/msg/BalanceResult.msg"
    "/home/ubuntu/ccms/catkin_ws/src/ccms_pro/msg/CalcResult.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ccms_pro/srv" TYPE FILE FILES "/home/ubuntu/ccms/catkin_ws/src/ccms_pro/srv/ModuleData.srv")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ccms_pro/cmake" TYPE FILE FILES "/home/ubuntu/ccms/catkin_ws/build/ccms_pro/catkin_generated/installspace/ccms_pro-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ubuntu/ccms/catkin_ws/devel/include/ccms_pro")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ubuntu/ccms/catkin_ws/devel/share/roseus/ros/ccms_pro")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ubuntu/ccms/catkin_ws/devel/share/common-lisp/ros/ccms_pro")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ubuntu/ccms/catkin_ws/devel/share/gennodejs/ros/ccms_pro")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/ubuntu/ccms/catkin_ws/devel/lib/python2.7/dist-packages/ccms_pro")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/ubuntu/ccms/catkin_ws/devel/lib/python2.7/dist-packages/ccms_pro")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ubuntu/ccms/catkin_ws/build/ccms_pro/catkin_generated/installspace/ccms_pro.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ccms_pro/cmake" TYPE FILE FILES "/home/ubuntu/ccms/catkin_ws/build/ccms_pro/catkin_generated/installspace/ccms_pro-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ccms_pro/cmake" TYPE FILE FILES
    "/home/ubuntu/ccms/catkin_ws/build/ccms_pro/catkin_generated/installspace/ccms_proConfig.cmake"
    "/home/ubuntu/ccms/catkin_ws/build/ccms_pro/catkin_generated/installspace/ccms_proConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ccms_pro" TYPE FILE FILES "/home/ubuntu/ccms/catkin_ws/src/ccms_pro/package.xml")
endif()


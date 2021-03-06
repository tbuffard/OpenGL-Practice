# Install script for directory: /Users/thomas/Downloads/assimp-5.0.1/tools/assimp_cmd

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xassimp-binx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/thomas/Downloads/assimp-5.0.1/cmake-build-debug/tools/assimp_cmd/assimpd")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/assimpd" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/assimpd")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -change "@rpath/libassimpd.5.dylib" "/usr/local/lib/libassimpd.5.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/assimpd")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/thomas/Downloads/assimp-5.0.1/cmake-build-debug"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/assimpd")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/thomas/Downloads/assimp-5.0.1/cmake-build-debug/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/assimpd")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/thomas/Downloads/assimp-5.0.1/cmake-build-debug/code"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/assimpd")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/thomas/Downloads/assimp-5.0.1/cmake-build-debug/contrib/irrXML"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/assimpd")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/assimpd")
    endif()
  endif()
endif()


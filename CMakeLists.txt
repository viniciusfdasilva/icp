cmake_minimum_required(VERSION 2.8)
project(ipc)

set(INCLUDE_DIR ${CMAKE_SOURCE_DIR}/include)
set(SRC_DIR ${CMAKE_SOURCE_DIR}/src)

execute_process(
    COMMAND mkdir -p bin
    COMMAND mkdir -p /usr/include/ipc/
)

include_directories(${INCLUDE_DIR})

set(INCLUDE_FILES
    ${INCLUDE_DIR}/utils/kassert
    ${INCLUDE_DIR}/utils/kpanic
    ${INCLUDE_DIR}/utils/kprint
    ${INCLUDE_DIR}/utils/null
    ${INCLUDE_DIR}/ipc
    ${INCLUDE_DIR}/pm
    ${INCLUDE_DIR}/process
    ${INCLUDE_DIR}/semaphore
    ${INCLUDE_DIR}/shm	
)

set(SOURCE_FILES
    ${SRC_DIR}/ipc.c
    ${SRC_DIR}/pm.c
    ${SRC_DIR}/process.c
    ${SRC_DIR}/semaphore.c
    ${SRC_DIR}/shm.c
)

set(CMAKE_CXX_STANDARD 11)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra")

set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O3 -march=native")

add_executable(./bin/kmain ${SOURCE_FILES} ./src/kmain.c)

target_include_directories(./bin/kmain PUBLIC ${INCLUDE_DIR})

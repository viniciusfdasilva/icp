#ifndef __IPC_H__

#include "process.h"
#include "shm.h"

#include <stdint.h>
#include <stddef.h>

#define QEQUE_SIZE 16

typedef struct ipc_message {
    __pid_t pid;
    size_t  size;
    uint8_t message;
} ipc_message_t;

typedef struct ipc {
    __pid_t first_pid;
    __pid_t second_pid;
    shmseg *shm;
    ipc_message_t write_qeque[QEQUE_SIZE];
    ipc_message_t read_qeque[QEQUE_SIZE];
} ipc_t;

extern void ipc_init(); 
extern void ipc_send(ipc_t ipc,    struct process process);
extern void ipc_receive(ipc_t ipc, struct process process);
extern void ipc_destroy(ipc_t ipc);

#endif // __IPC_H__
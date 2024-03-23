
#include "../include/ipc.h"
#include "../include/shm.h"

static void ipc_init()
{
    ipc_t ipc;

    ipc.first_pid  = 0;
    ipc.second_pid = 0;
    ipc.shm = shm_init();
}


static void ipc_send(ipc_t ipc, struct process process)
{

}
static void ipc_receive(ipc_t ipc, struct process process)
{

}

static void ipc_destroy(ipc_t ipc)
{

    process_destroy(ipc.first_pid);
    process_destroy(ipc.second_pid);
    free(ipc.qeque);
    shm_destroy(ipc.shm);
    free(ipc);
}
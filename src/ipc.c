
#include "../include/ipc.h"
#include "../include/shm.h"
#include "../include/semaphore.h"

sem_t empty, mutex, full;
pthread_t writer, reader;

static void ipc_init()
{
    ipc_t ipc;

    ipc.first_pid  = 0;
    ipc.second_pid = 0;
    ipc.shm = shm_init();

    semaphore_init(mutex, 0);
    semaphore_init(empty, 0);
    semaphore_init(full, 0 );

    phthread_create(&writer, NULL, ipc_send, NULL);
    pthread_create(&reader, NULL, ipc_receive, NULL);

    pthread_join(writer, NULL);
    pthread_join(reader, NULL);

    semaphore_destroy(mutex);
    semaphore_destroy(empty);
    semaphore_destroy(full);
}


static void ipc_send(ipc_t ipc, struct process process)
{
    while(true)
    {
        semaphore_wait(empty);
        semaphore_wait(mutex);
        shm_write(ipc.shm, ipc.write_qeque);
        semaphore_signal(mutex);
        semaphore_signal(full);
    }
}
static void ipc_receive(ipc_t ipc, struct process process)
{
    while(true)
    {
        semaphore_wait(full);
        semaphore_wait(mutex);
        shm_read(ipc.shm, &ipc.read_qeque);
        semaphore_signal(mutex);
        semaphore_signal(empty);
    }
}

static void ipc_destroy(ipc_t ipc)
{

    process_destroy(ipc.first_pid);
    process_destroy(ipc.second_pid);
    shm_destroy(ipc.shm);
}
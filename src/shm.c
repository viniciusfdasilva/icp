#include "../include/shm.h"
#include "../include/utils/kassert.h"
#include <sys/shm.h>

#define BUF_SIZE 1024
#define SHM_KEY 0x1234

static shmseg *shm_init()
{   
    shm_id_t shmid;
    shmseg *shmp;
    
    shmid = shmget(SHM_KEY, sizeof(shmseg), 0644|IPC_CREAT);
    
    KASSERT(shmid != -1, "Shared memory creation error!");

    // Attach to the segment to get a pointer to it.
    shmp = shmat(shmid, NULL, 0);

    KASSERT(shmp != (void*) -1, "Shared memory attach error!");
    
    shmp->size = 0;
    shmp->id   = shmid;

    return shmp;
}

static void shm_write(shmseg *shm, uint8_t data[])
{

}

static void shm_destroy(shmseg *shm)
{
    shmctl(shm->id, IPC_RMID, NULL);
    free(shm);
}
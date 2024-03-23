#ifndef __SHM_H__

#include <stdint.h>
#include <stddef.h>

typedef unsigned int shm_id_t;

#define SHM_SIZE 4096

typedef struct shm_segment{
    size_t size;
    shm_id_t id;
    uint32_t buff[SHM_SIZE];
}shmseg;

extern shmseg *shm_init();
extern void shm_write(shmseg *shm, uint8_t data[]);
extern void shm_destroy(shmseg *shm);

#endif // __SHM_H__
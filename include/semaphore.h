#ifndef __SEMAPHORE_H__

typedef struct semaphore{
    int value;
    int waiting;
    int* queue;
}sem_t;

extern void semaphore_init(sem_t sem, int value);
extern void semaphore_wait(sem_t sem);
extern void semaphore_signal(sem_t sem);
extern void semaphore_destroy(sem_t sem);

#endif // __SEMAPHORE_H__
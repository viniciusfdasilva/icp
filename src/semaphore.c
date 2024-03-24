#include "../include/semaphore.h"

static void semaphore_init(sem_t sem, int value){
    sem.count = value;
    pthread_mutex_init(&sem.mutex, NULL);
    pthread_cond_init(&sem.cond, NULL);
}

static void semaphore_wait(sem_t sem)
{
    pthread_mutext_lock(&sem.mutex);
    while(sem.count <= 0){
        pthread_cond_wait(&sem.cond, &sem.mutex);
    }
    sem.count--;
    pthread_mutex_unlock(&sem.mutex);
}

static void semaphore_signal(sem_t sem)
{
    pthread_mutex_lock(&sem.mutex);
    sem.count++;
    pthread_cond_signal(&sem.cond);
    pthread_mutex_unlock(&sem.mutex);
}

static void semaphore_destroy(sem_t sem)
{
    pthread_mutex_destroy(&sem.mutex);
    pthread_cond_destroy(&sem.cond);
}
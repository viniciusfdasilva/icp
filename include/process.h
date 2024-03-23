#ifndef __PROCESS_H__

#include <stdint.h>
#include <stdbool.h>

typedef struct process {
    uint32_t pid;
    char* name;
    uint32_t priority;
    bool alive;
    bool state;
    uint32_t next;
}process_t;

extern void process_init();
extern void process_destroy(__pid_t pid);
extern __pid_t process_create();
extern void exit_all_process();

#endif // __PROCESS_H__
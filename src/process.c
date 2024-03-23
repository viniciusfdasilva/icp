#include "../include/process.h"
#include "../include/utils/null.h"
#include <stdbool.h>

#define MAX_PROCESSES 16
#define ROOT_PID      1

process_t processes[MAX_PROCESSES];

static __pid_t next_pid = 0;

void process_init()
{
    process_create();
    processes[ROOT_PID-1].alive = true;

    for (int i = 1; i < MAX_PROCESSES; i++)
    {
        process_create();
    }
}

void process_destroy(__pid_t pid)
{
    KASSERT(pid >= ROOT_PID && pid <= MAX_PROCESSES, "Invalid pid");
    KASSERT(pid != ROOT_PID, "Cannot destroy root process");

    processes[pid-1].pid      = 0;
    processes[pid-1].name     = NULL;
    processes[pid-1].priority = 0;
    processes[pid-1].state    = false;
    processes[pid-1].next     = 0;
}


void exit_all_process()
{
    for(int curr_pid = ROOT_PID; curr_pid < MAX_PROCESSES; curr_pid++)
    {
        process_destroy(curr_pid);
    }
}

__pid_t process_create()
{
    KASSERT((++next_pid) < MAX_PROCESSES, "Max processes reached");

    process_t process;
    process.pid      = ++next_pid;
    process.name     = NULL;
    process.priority = 0;
    process.state    = false;
    process.next     = 0;
    processes[process.pid-1] = process;
    return process.pid;
}
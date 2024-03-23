#include "../include/pm.h"
#include "../include/process.h"

static void pm_init()
{
    kprint("Initializing process manager");
    process_init();
}
static void pm_destroy()
{
    exit_all_process();
}

__pid_t pm_create_process()
{
    __pid_t pid = process_create();
    return pid;
}
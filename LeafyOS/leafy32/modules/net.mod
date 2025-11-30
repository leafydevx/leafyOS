// net.mod — networking module
#include "driver.h"

static leafy_status_t net_init(void* kap) { (void)kap; return LEAFY_OK; }
static leafy_status_t net_start(void)     { return LEAFY_OK; }
static leafy_status_t net_stop(void)      { return LEAFY_OK; }
static const char*    net_name(void)      { return "LeafyNet Module Loaded"; }

leafy_driver_header_t LeafyHeader = {
    .magic   = LEAFY_MAGIC,
    .version = LEAFY_DRIVER_VERSION,
    .class_id= DRV_CLASS_GENERIC,
    .reserved= 0
};

typedef struct {
    drv_init_fn  init;
    drv_start_fn start;
    drv_stop_fn  stop;
    drv_name_fn  name;
} drv_table_t;

drv_table_t LeafyTable = {
    .init  = net_init,
    .start = net_start,
    .stop  = net_stop,
    .name  = net_name
};
// fs.mod — filesystem module
#include "driver.h"

static leafy_status_t fs_init(void* kap) { (void)kap; return LEAFY_OK; }
static leafy_status_t fs_start(void)     { return LEAFY_OK; }
static leafy_status_t fs_stop(void)      { return LEAFY_OK; }
static const char*    fs_name(void)      { return "LeafyFS Module Loaded"; }

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
    .init  = fs_init,
    .start = fs_start,
    .stop  = fs_stop,
    .name  = fs_name
};
#include "timer.h"
#include "app_timer.h"

void timer_init()
{
}

void timer_clear()
{
}

inline
uint16_t timer_read()
{
    return (uint16_t)(timer_read32() % 0xFFFF);
}

inline
uint32_t timer_read32()
{
    uint32_t time;
    time = app_timer_cnt_get();
    return time / 32; // 32768 times/s.
}

inline
uint16_t timer_elapsed(uint16_t last)
{
    return TIMER_DIFF_16(timer_read(), last);
}

inline
uint32_t timer_elapsed32(uint32_t last)
{
    uint32_t time,elapsed;
    time = app_timer_cnt_get();
    app_timer_cnt_diff_compute(time, last*32, &elapsed);
    return elapsed / 32;
}

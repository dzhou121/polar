#include "nrf_gpio.h"
#include "matrix.h"

#define DEBOUNCE	5

static uint8_t debouncing = DEBOUNCE;
static matrix_row_t matrix[MATRIX_ROWS];
static matrix_row_t matrix_debouncing[MATRIX_ROWS];

static const uint8_t row_pin_array[MATRIX_ROWS] = {20, 18, 15, 13, 11};
static const uint8_t column_pin_array[MATRIX_COLS] = {22, 24, 25, 28, 30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

void matrix_init(void)
{
   for (uint_fast8_t i = 0; i < MATRIX_ROWS; i++)
    {
        nrf_gpio_cfg_output((uint32_t)row_pin_array[i]);
        NRF_GPIO->PIN_CNF[(uint32_t)row_pin_array[i]] |= 0x400; //Set pin to be "Disconnected 0 and standard 1"
        nrf_gpio_pin_clear((uint32_t)row_pin_array[i]);         //Set pin to low
    }
    for (uint_fast8_t i = 0; i < MATRIX_COLS; i++)
    {
        nrf_gpio_cfg_input((uint32_t)column_pin_array[i], NRF_GPIO_PIN_PULLDOWN);
    }
}

static void select_row(uint8_t row)
{
    nrf_gpio_pin_set((uint32_t)row_pin_array[row]);
}

static void unselect_row(uint8_t row)
{
    nrf_gpio_pin_clear((uint32_t)row_pin_array[row]);
}

static matrix_row_t read_cols(uint8_t row)
{
    uint16_t result = 0;

    for (uint_fast8_t c = 0; c < MATRIX_COLS; c++)
    {
        if (nrf_gpio_pin_read((uint32_t)column_pin_array[c])) {
            result |= 1 << c;
        }
    }

    return result;
}

static inline void delay_30ns(void)
{
#ifdef __GNUC__
#define __nop() __asm("NOP")
#endif
    for(int i=0; i<60; i++) {
        __nop();
    } 
}

uint8_t matrix_scan(void)
{
    for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
        select_row(i);
        delay_30ns();
        matrix_row_t cols = read_cols(i);
        if (matrix_debouncing[i] != cols) {
            matrix_debouncing[i] = cols;
            debouncing = DEBOUNCE;
        }
        unselect_row(i);
    }

    if (debouncing) {
        if (--debouncing) {
        } else {
            for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
                matrix[i] = matrix_debouncing[i];
            }
        }
    }

    return 1;
}


inline
matrix_row_t matrix_get_row(uint8_t row)
{
    return matrix[row];
}

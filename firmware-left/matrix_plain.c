#include "nrf_gpio.h"
#include "matrix.h"
#include "main.h"

#define DEBOUNCE	5

const int row_pins[MATRIX_ROWS][MATRIX_COLS] = {
    {14,     15,     10,      5,      2, -1, -1, -1, -1, -1, -1, -1,-1,-1},
    {13,      8,      7,      4,      1, -1, -1, -1, -1, -1, -1, -1,-1,-1},
    {19,      9,      6,      3,      0, -1, -1, -1, -1, -1, -1, -1,-1,-1},
    {-1,      30,     29,     28,     25, -1, -1, -1, -1, -1, -1, -1,-1,-1},
    {-1,      -1,     -1,     -1,     -1, -1, -1, -1, -1, -1, -1, -1,-1,-1},
};

static uint8_t debouncing = DEBOUNCE;
static matrix_row_t matrix[MATRIX_ROWS];
static matrix_row_t matrix_debouncing[MATRIX_ROWS];

static const uint8_t row_pin_array[MATRIX_ROWS] = {21, 22, 23, 24, 25};
static const uint8_t column_pin_array[7] = {4, 5, 6, 7, 8, 9, 10};

void matrix_init(void)
{
   for (uint_fast8_t i = 0; i < MATRIX_ROWS; i++)
    {
        nrf_gpio_cfg_output((uint32_t)row_pin_array[i]);
        NRF_GPIO->PIN_CNF[(uint32_t)row_pin_array[i]] |= 0x400; //Set pin to be "Disconnected 0 and standard 1"
        nrf_gpio_pin_clear((uint32_t)row_pin_array[i]);         //Set pin to low
    }
    for (uint_fast8_t i = 0; i < 7; i++)
    {
        nrf_gpio_cfg_input((uint32_t)column_pin_array[i], NRF_GPIO_PIN_PULLDOWN);
    }
}

static void select_row(uint8_t row)
{
    nrf_gpio_pin_set((uint32_t)row_pin_array[row]);
}

static void unselect_rows(void)
{
    for (uint_fast8_t i = 0; i < MATRIX_ROWS; i++)
    {
        nrf_gpio_pin_clear((uint32_t)row_pin_array[i]);
    }
}

static matrix_row_t read_cols(uint8_t row)
{
    uint16_t result = 0;

    for (uint_fast8_t c = 0; c < 7; c++)
    {
        if (nrf_gpio_pin_read((uint32_t)column_pin_array[c]))
            result |= 1 << c;
    }

    result |= (uint16_t)(read_cols_right(row)) << 7;

    return result;
}

uint8_t matrix_scan(void)
{
    for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
        select_row(i);
        matrix_row_t cols = read_cols(i);
        if (matrix_debouncing[i] != cols) {
            matrix_debouncing[i] = cols;
            debouncing = DEBOUNCE;
        }
        unselect_rows();
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

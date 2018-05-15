/* Copyright (c) 2012 Nordic Semiconductor. All Rights Reserved.
 *
 * The information contained herein is property of Nordic Semiconductor ASA.
 * Terms and conditions of usage are described in detail in NORDIC
 * SEMICONDUCTOR STANDARD SOFTWARE LICENSE AGREEMENT.
 *
 * Licensees are granted free, non-transferable use of the information. NO
 * WARRANTY of ANY KIND is provided. This heading must NOT be removed from
 * the file.
 *
 * $LastChangedRevision: 40042 $
 */

/**
 * This project requires that a host that runs the
 * @ref gzll_host_m_ack_payload_example example is used as a counterpart for
 * receiving the data. This can be on either an nRF5x device or an nRF24Lxx device
 * running the \b gzll_host_m_ack_payload example in the nRFgo SDK.
 *
 * This example sends a packet and adds a new packet to the TX queue every time
 * it receives an ACK. Before adding a packet to the TX queue, the contents of
 * the GPIO Port BUTTONS is copied to the first payload byte (byte 0).
 * When an ACK is received, the contents of the first payload byte of
 * the ACK are output on GPIO Port LEDS.
 */

#include "nrf_gpio.h"
#include "nrf_gzll.h"
#include "nrf_drv_clock.h"
#include "app_timer.h"
#include "app_error.h"
#include "nrf_gzll_error.h"

#define NRF_LOG_MODULE_NAME "APP"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"

/*****************************************************************************/
/** @name Configuration */
/*****************************************************************************/
#define PIPE_NUMBER             0   /**< Pipe 0 is used in this example. */

#define TX_PAYLOAD_LENGTH       5   /**< 1-byte payload length is used when transmitting. */
#define MAX_TX_ATTEMPTS         100 /**< Maximum number of transmission attempts */

#define APP_TIMER_PRESCALER     0   /**< Value of the RTC PRESCALER register. */
#define APP_TIMER_OP_QUEUE_SIZE 8u  /**< Size of timer operation queues. */

#define KEY_SCAN_INTERVAL                APP_TIMER_TICKS(1, APP_TIMER_PRESCALER) /**< Battery level measurement interval (ticks). */

APP_TIMER_DEF(m_key_scan_timer_id);


static uint8_t m_ack_payload[NRF_GZLL_CONST_MAX_PAYLOAD_LENGTH]; /**< Placeholder for received ACK payloads from Host. */

static uint8_t matrix[MATRIX_ROWS];
static const uint8_t row_pin_array[MATRIX_ROWS] = {20, 19, 18, 17, 16};
static const uint8_t column_pin_array[8] = {3, 4, 5, 6, 7, 8, 9, 10};


/*****************************************************************************/
/** @name Gazell callback function definitions  */
/*****************************************************************************/
/**
 * @brief TX success callback.
 *
 * @details If an ACK was received, another packet is sent.
 */
void  nrf_gzll_device_tx_success(uint32_t pipe, nrf_gzll_device_tx_info_t tx_info)
{
    uint32_t m_ack_payload_length = NRF_GZLL_CONST_MAX_PAYLOAD_LENGTH;

    if (tx_info.payload_received_in_ack)
    {
        // Pop packet and write first byte of the payload to the GPIO port.
        nrf_gzll_fetch_packet_from_rx_fifo(pipe, m_ack_payload, &m_ack_payload_length);
    }
}


/**
 * @brief TX failed callback.
 *
 * @details If the transmission failed, send a new packet.
 *
 * @warning This callback does not occur by default since NRF_GZLL_DEFAULT_MAX_TX_ATTEMPTS
 * is 0 (inifinite retransmits).
 */
void nrf_gzll_device_tx_failed(uint32_t pipe, nrf_gzll_device_tx_info_t tx_info)
{
}


/**
 * @brief Gazelle callback.
 * @warning Required for successful Gazell initialization.
 */
void nrf_gzll_host_rx_data_ready(uint32_t pipe, nrf_gzll_host_rx_info_t rx_info)
{
}


/**
 * @brief Gazelle callback.
 * @warning Required for successful Gazell initialization.
 */
void nrf_gzll_disabled()
{
}

// Setup switch pins with pullups
static void gpio_config(void)
{
   for (uint_fast8_t i = 0; i < MATRIX_ROWS; i++)
    {
        nrf_gpio_cfg_output((uint32_t)row_pin_array[i]);
        NRF_GPIO->PIN_CNF[(uint32_t)row_pin_array[i]] |= 0x400; //Set pin to be "Disconnected 0 and standard 1"
        nrf_gpio_pin_clear((uint32_t)row_pin_array[i]);         //Set pin to low
    }
    for (uint_fast8_t i = 0; i < 8; i++)
    {
        nrf_gpio_cfg_input((uint32_t)column_pin_array[i], NRF_GPIO_PIN_PULLDOWN);
    }
}

void select_row(uint8_t row)
{
    nrf_gpio_pin_set((uint32_t)row_pin_array[row]);
}

void unselect_row(uint8_t row)
{
    nrf_gpio_pin_clear((uint32_t)row_pin_array[row]);
}

uint8_t read_cols(uint8_t row)
{
    uint8_t result = 0;

    for (uint_fast8_t c = 0; c < 8; c++)
    {
        if (nrf_gpio_pin_read((uint32_t)column_pin_array[c]))
            result |= 1 << c;
    }

    return result;
}


static void key_scan_handler(void * p_context)
{
    UNUSED_PARAMETER(p_context);

    int changed = 0;
    for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
        select_row(i);
        uint8_t cols = read_cols(i);
        if (matrix[i] != cols) {
            matrix[i] = cols;
            changed = 1;
        }
        unselect_row(i);
    }

    if (changed == 1) {
        nrf_gzll_add_packet_to_tx_fifo(PIPE_NUMBER, matrix, TX_PAYLOAD_LENGTH);
        /* ble_nus_string_send(&m_nus, data, 5); */
    }
}

/*****************************************************************************/
/**
 * @brief Main function.
 *
 * @return ANSI required int return type.
 */
/*****************************************************************************/
int main()
{

    // Set up the user interface (buttons and LEDs).
    gpio_config();

    // Initialize Gazell.
    bool result_value = nrf_gzll_init(NRF_GZLL_MODE_DEVICE);
    GAZELLE_ERROR_CODE_CHECK(result_value);

    // Attempt sending every packet up to MAX_TX_ATTEMPTS times.
    result_value = nrf_gzll_set_max_tx_attempts(MAX_TX_ATTEMPTS);
    GAZELLE_ERROR_CODE_CHECK(result_value);

    nrf_gzll_set_base_address_0(0x01020304);

    // Enable Gazell to start sending over the air.
    result_value = nrf_gzll_enable();
    GAZELLE_ERROR_CODE_CHECK(result_value);

    nrf_drv_clock_init();
    nrf_drv_clock_lfclk_request(NULL);

    // Initialize application timer.
    APP_TIMER_INIT(APP_TIMER_PRESCALER, APP_TIMER_OP_QUEUE_SIZE, NULL);
    app_timer_create(&m_key_scan_timer_id, APP_TIMER_MODE_REPEATED, key_scan_handler);
    app_timer_start(m_key_scan_timer_id, KEY_SCAN_INTERVAL, NULL);

    while (1)
    {
        __SEV();
        __WFE();
        __WFE();
    }
}



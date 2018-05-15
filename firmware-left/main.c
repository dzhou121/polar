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
 * This project requires that a device that runs the
 * @ref gzll_device_m_ack_payload_example is used as a counterpart for
 * receiving the data. This can be on either an nRF5x device or an nRF24Lxx device
 * running the \b gzll_device_m_ack_payload example in the nRFgo SDK.
 *
 * This example listens for a packet and sends an ACK
 * when a packet is received. The contents of the first payload byte of
 * the received packet is output on the GPIO Port BUTTONS.
 * The contents of GPIO Port LEDS are sent in the first payload byte (byte 0)
 * of the ACK packet.
 */
#include "nrf_gzll.h"
#include "bsp.h"
#include "nrf_drv_clock.h"
#include "app_timer.h"
#include "app_error.h"
#include "nrf_gzll_error.h"
#include "app_uart.h"
#include "nrf_delay.h"

#define NRF_LOG_MODULE_NAME "APP"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "keyboard.h"
#include "host.h"
#include "host_driver.h"

/*****************************************************************************/
/** @name Configuration  */
/*****************************************************************************/
#define PIPE_NUMBER             0  ///< Pipe 0 is used in this example.

#define TX_PAYLOAD_LENGTH       5  ///< 1-byte payload length is used when transmitting.

#define APP_TIMER_PRESCALER     0  ///< Value of the RTC PRESCALER register.
#define APP_TIMER_OP_QUEUE_SIZE 4 ///< Size of timer operation queues.

#define UART_TX_BUF_SIZE                256                                         /**< UART TX buffer size. */
#define UART_RX_BUF_SIZE                256                                         /**< UART RX buffer size. */

#define KEY_SCAN_INTERVAL                APP_TIMER_TICKS(1, APP_TIMER_PRESCALER) /**< Battery level measurement interval (ticks). */


static uint8_t m_data_payload[NRF_GZLL_CONST_MAX_PAYLOAD_LENGTH]; ///< Placeholder for data payload received from host.
static uint8_t m_ack_payload[TX_PAYLOAD_LENGTH];                  ///< Payload to attach to ACK sent to device.

extern nrf_gzll_error_code_t nrf_gzll_error_code;                 ///< Error code.

APP_TIMER_DEF(m_key_scan_timer_id);                        

static uint8_t keyboard_leds(void);
static void send_keyboard(report_keyboard_t * report);
static void send_mouse(report_mouse_t * report);
static void send_system(uint16_t data);
static void send_consumer(uint16_t data);

host_driver_t driver = {
        keyboard_leds,
        send_keyboard,
        send_mouse,
        send_system,
        send_consumer
};


/*****************************************************************************/
/** @name Gazell callback function definitions.  */
/*****************************************************************************/
/**
 * @brief RX data ready callback.
 *
 * @details If a data packet was received, the first byte is written to LEDS.
 */
void nrf_gzll_host_rx_data_ready(uint32_t pipe, nrf_gzll_host_rx_info_t rx_info)
{
    uint32_t data_payload_length = NRF_GZLL_CONST_MAX_PAYLOAD_LENGTH;

    // Pop packet and write first byte of the payload to the GPIO port.
    nrf_gzll_fetch_packet_from_rx_fifo(pipe, m_data_payload, &data_payload_length);

    // Read buttons and load ACK payload into TX queue.
    m_ack_payload[0] = 0x55; // Button logic is inverted.

    nrf_gzll_add_packet_to_tx_fifo(pipe, m_ack_payload, TX_PAYLOAD_LENGTH);
}


/**
 * @brief Gazelle callback.
 * @warning Required for successful Gazell initialization.
 */
void nrf_gzll_device_tx_success(uint32_t pipe, nrf_gzll_device_tx_info_t tx_info)
{
}


/**
 * @brief Gazelle callback.
 * @warning Required for successful Gazell initialization.
 */
void nrf_gzll_device_tx_failed(uint32_t pipe, nrf_gzll_device_tx_info_t tx_info)
{
}


/**
 * @brief Gazelle callback.
 * @warning Required for successful Gazell initialization.
 */
void nrf_gzll_disabled()
{
}


uint8_t read_cols_right(uint8_t row)
{
    return m_data_payload[row];
}

void bootloader_jump(void)
{
}

uint8_t keyboard_leds()
{
    return 0;
}

void send_keyboard(report_keyboard_t * report)
{
    for (uint8_t i = 0; i < KEYBOARD_REPORT_SIZE; i++) {
        app_uart_put(report->raw[i]);
    }
}

void send_mouse(report_mouse_t * report)
{
    // unsupport, and will not support in future.
}

void send_system(uint16_t data)
{
    // may support in future.
}

void send_consumer(uint16_t data)
{
    // may support in future.
}


static void key_scan_handler(void * p_context)
{
    UNUSED_PARAMETER(p_context);
    keyboard_task();
}


void uart_event_handle(app_uart_evt_t * p_event)
{
    switch (p_event->evt_type)
    {
        case APP_UART_COMMUNICATION_ERROR:
            APP_ERROR_HANDLER(p_event->data.error_communication);
            break;

        case APP_UART_FIFO_ERROR:
            APP_ERROR_HANDLER(p_event->data.error_code);
            break;

        default:
            break;
    }
}


static void uart_init(void)
{
    uint32_t                     err_code;
    const app_uart_comm_params_t comm_params =
    {
        RX_PIN_NUMBER,
        TX_PIN_NUMBER,
        RTS_PIN_NUMBER,
        CTS_PIN_NUMBER,
        APP_UART_FLOW_CONTROL_ENABLED,
        false,
        UART_BAUDRATE_BAUDRATE_Baud115200
    };

    APP_UART_FIFO_INIT( &comm_params,
                       UART_RX_BUF_SIZE,
                       UART_TX_BUF_SIZE,
                       uart_event_handle,
                       APP_IRQ_PRIORITY_LOW,
                       err_code);
    APP_ERROR_CHECK(err_code);
}


/*****************************************************************************/
/**
 * @brief Main function.
 * @return ANSI required int return type.
 */
/*****************************************************************************/
int main()
{
    uart_init();

    // Initialize Gazell.
    bool result_value = nrf_gzll_init(NRF_GZLL_MODE_HOST);
    GAZELLE_ERROR_CODE_CHECK(result_value);

    nrf_gzll_set_base_address_0(0x01020304);

    // Load data into TX queue.
    m_ack_payload[0] = 0x55;

    nrf_gzll_add_packet_to_tx_fifo(PIPE_NUMBER, m_data_payload, TX_PAYLOAD_LENGTH);

    // Enable Gazell to start sending over the air.
    result_value = nrf_gzll_enable();
    GAZELLE_ERROR_CODE_CHECK(result_value);

    keyboard_init();
    host_set_driver(&driver);

    nrf_drv_clock_init();
    nrf_drv_clock_lfclk_request(NULL);

    APP_TIMER_INIT(APP_TIMER_PRESCALER, APP_TIMER_OP_QUEUE_SIZE, NULL);
    app_timer_create(&m_key_scan_timer_id, APP_TIMER_MODE_REPEATED, key_scan_handler);
    app_timer_start(m_key_scan_timer_id, KEY_SCAN_INTERVAL, NULL);

    while (1)
    {
        /* keyboard_task(); */
        /* nrf_delay_ms(1); */
        /* power_manage(); */
        __SEV();
        __WFE();
        __WFE();
    }
}



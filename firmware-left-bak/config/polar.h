
#define HAND_SENSE 12
#define RIGHT_HAND false
#define LEFT_HAND true

#define ALPHA_SENSE 20
#define ALPABETICAL false

// left hand pins

#define L_C01 6
#define L_C02 5
#define L_C03 4
#define L_C04 3
#define L_C05 2
#define L_C06 0
#define L_C07 30
#define L_R01 28
#define L_R02 23
#define L_R03 22
#define L_R04 21
#define L_R05 29

#define L_MASK (1<<L_C01 | \
 				1<<L_C02 | \
				1<<L_C03 | \
				1<<L_C04 | \
				1<<L_C05 | \
				1<<L_C06 | \
				1<<L_C07)

// right hand pins

#define R_C01 10
#define R_C02 9
#define R_C03 7
#define R_C04 6
#define R_C05 5
#define R_C06 4
#define R_C07 3
#define R_R01 14
#define R_R02 17
#define R_R03 18
#define R_R04 19
#define R_R05 13

#define R_MASK (1<<R_C01 | \
 				1<<R_C02 | \
				1<<R_C03 | \
				1<<R_C04 | \
				1<<R_C05 | \
				1<<R_C06 | \
				1<<R_C07)

#define PIPE_NUMBER 0

#define C01 4
#define C02 5
#define C03 6
#define C04 7
#define C05 8
#define C06 9
#define C07 10
#define R01 21
#define R02 22
#define R03 23
#define R04 24
#define R05 25

#define INPUT_MASK (1<<C01 | \
 				1<<C02 | \
				1<<C03 | \
				1<<C04 | \
				1<<C05 | \
				1<<C06 | \
				1<<C07)

#define COLUMNS 7
#define ROWS 5

// Low frequency clock source to be used by the SoftDevice
#define NRF_CLOCK_LFCLKSRC      {.source        = NRF_CLOCK_LF_SRC_XTAL,            \
                                 .rc_ctiv       = 0,                                \
                                 .rc_temp_ctiv  = 0,                                \
                                 .xtal_accuracy = NRF_CLOCK_LF_XTAL_ACCURACY_20_PPM}

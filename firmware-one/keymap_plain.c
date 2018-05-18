#include "keycode.h"
#include "action.h"
#include "keymap.h"


/* 4100/4125 keymap definition macro
   See keymap.xlsx in Wiki's Advanced page for more infomation.
 */
#define KEYMAP( \
    K000, K001, K002, K003, K004, K005, K006, K007, K008, K009, K010, K011, K012, K013, K014, \
    K100,       K102, K103, K104, K105, K106, K107, K108, K109, K110, K111, K112, K113, K114, \
    K200,       K202, K203, K204, K205, K206, K207, K208, K209, K210, K211, K212,       K214, \
    K300,       K302, K303, K304, K305, K306, K307, K308, K309, K310, K311,             K314, \
                K402, K403, K404, K405, K406, K407, K408, K409, K410, K411                    \
) { \
    { KC_##K000, KC_##K001, KC_##K002, KC_##K003, KC_##K004, KC_##K005, KC_##K006, KC_##K007, KC_##K008, KC_##K009, KC_##K010, KC_##K011, KC_##K012, KC_##K013, KC_##K014, }, \
    { KC_##K100, KC_NO,     KC_##K102, KC_##K103, KC_##K104, KC_##K105, KC_##K106, KC_##K107, KC_##K108, KC_##K109, KC_##K110, KC_##K111, KC_##K112, KC_##K113, KC_##K114, }, \
    { KC_##K200, KC_NO,     KC_##K202, KC_##K203, KC_##K204, KC_##K205, KC_##K206, KC_##K207, KC_##K208, KC_##K209, KC_##K210, KC_##K211, KC_##K212, KC_NO,     KC_##K214, }, \
    { KC_##K300, KC_NO,     KC_##K302, KC_##K303, KC_##K304, KC_##K305, KC_##K306, KC_##K307, KC_##K308, KC_##K309, KC_##K310, KC_##K311, KC_NO,     KC_NO,     KC_##K314, }, \
    { KC_NO,     KC_NO,     KC_##K402, KC_##K403, KC_##K404, KC_##K405, KC_##K406, KC_##K407, KC_##K408, KC_##K409, KC_##K410, KC_##K411, KC_NO,     KC_NO,     KC_NO,     }, \
}

const uint8_t keymaps[2][MATRIX_ROWS][MATRIX_COLS] = {
    /* layer 0 */
    KEYMAP(
         ESC,    1,    2,    3,    4,    5,    6,    7,    8,    9,    0, MINS,  EQL, BSLS,  GRV, \
         TAB,          Q,    W,    E,    R,    T,    Y,    U,    I,    O,    P, LBRC, RBRC, BSPC, \
        LCTL,          A,    S,    D,    F,    G,    H,    J,    K,    L, SCLN, QUOT,        ENT, \
        LSFT,          Z,    X,    C,    V,    B,    N,    M, COMM,  DOT, SLSH,             RSFT, \
                    LALT, LGUI, LSFT,  SPC,  TAB, BSPC, LCTL,  FN0, RALT, RALT                    ),
    /* layer 1 */
    KEYMAP(
        TRNS,   F1,   F2,   F3,   F4,   F5,   F6,   F7,   F8,   F9,  F10,  F11,  F12, TRNS, TRNS, \
        TRNS,       TRNS, TRNS,  END, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, \
        TRNS,       HOME, TRNS, TRNS, TRNS, TRNS, LEFT, DOWN,   UP, RGHT, TRNS, TRNS,       TRNS, \
        TRNS,       TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS,             TRNS, \
                    TRNS, TRNS, TRNS,  TAB, TRNS,  DEL, TRNS, TRNS, TRNS, TRNS                    ),
};

const action_t PROGMEM fn_actions[] = {ACTION_LAYER_MOMENTARY(1)};

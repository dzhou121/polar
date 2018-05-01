#include "keycode.h"
#include "action.h"
#include "keymap.h"


/* 4100/4125 keymap definition macro
   See keymap.xlsx in Wiki's Advanced page for more infomation.
 */
#define KEYMAP( \
    K0A, K0B, K0C, K0D, K0E, K0F, K0G, K0H, K0I, K0J, K0K, K0L, K0M, K0N, K0O, \
    K1A, K1B, K1C, K1D, K1E, K1F,      K1H, K1I, K1J, K1K, K1L, K1M, K1N, K1O, \
    K2A, K2B, K2C, K2D, K2E, K2F,      K2H, K2I, K2J, K2K, K2L, K2M, K2N,      \
    K3A, K3B, K3C, K3D, K3E, K3F,      K3H, K3I, K3J, K3K, K3L, K3M,           \
         K4B, K4C, K4D, K4E, K4F,      K4H, K4I, K4J, K4K                      \
) { \
    { KC_##K0A, KC_##K0B, KC_##K0C, KC_##K0D, KC_##K0E, KC_##K0F, KC_##K0G, KC_##K0H, KC_##K0I, KC_##K0J, KC_##K0K, KC_##K0L, KC_##K0M, KC_##K0N, KC_##K0O }, \
    { KC_##K1A, KC_##K1B, KC_##K1C, KC_##K1D, KC_##K1E, KC_##K1F,    KC_NO, KC_##K1H, KC_##K1I, KC_##K1J, KC_##K1K, KC_##K1L, KC_##K1M, KC_##K1N, KC_##K1O }, \
    { KC_##K2A, KC_##K2B, KC_##K2C, KC_##K2D, KC_##K2E, KC_##K2F,    KC_NO, KC_##K2H, KC_##K2I, KC_##K2J, KC_##K2K, KC_##K2L, KC_##K2M, KC_##K2N,    KC_NO }, \
    { KC_##K3A, KC_##K3B, KC_##K3C, KC_##K3D, KC_##K3E, KC_##K3F,    KC_NO, KC_##K3H, KC_##K3I, KC_##K3J, KC_##K3K, KC_##K3L, KC_##K3M,    KC_NO,    KC_NO }, \
    { KC_NO,    KC_##K4B, KC_##K4C, KC_##K4D, KC_##K4E, KC_##K4F,    KC_NO, KC_##K4H, KC_##K4I, KC_##K4J, KC_##K4K,    KC_NO,    KC_NO,    KC_NO,    KC_NO }  \
}

const uint8_t keymaps[2][MATRIX_ROWS][MATRIX_COLS] = {
    /* 0: qwerty */
    KEYMAP(
        ESC, 1,   2,   3,   4,   5,   6,   7,   8,   9,   0,   MINS,EQL, BSLS, GRV, \
        TAB, Q,   W,   E,   R,   T,        Y,   U,   I,   O,   P,   LBRC,RBRC,BSPC, \
        LCTL,A,   S,   D,   F,   G,        H,   J,   K,   L,   SCLN,QUOT,ENT,  \
        LSFT,Z,   X,   C,   V,   B,        N,   M,   COMM,DOT, SLSH,LSFT, \
           LALT,LGUI,LSFT,SPC, FN0,        FN0,LCTL, TAB,LALT),
    /* 1: Fn */       
    KEYMAP(
        ESC,F1,  F2,  F3,  F4,  F5,  F6,  F7,  F8,  F9, F10,   MINS,EQL, BSLS, GRV, \
        TAB, Q,   W, END,   R,   T,        Y,   U,   I,   O,   P,   LBRC,RBRC,BSPC, \
        LCTL,HOME,S,   D,   F,   G,     LEFT,DOWN,  UP,RGHT,   SCLN,QUOT,ENT,  \
        LSFT,Z,   X,   C,   V,   B,        N,   M,   COMM,DOT, SLSH,LSFT, \
           LALT,LGUI,LSFT,SPC, FN0,        FN0,LCTL, TAB,LALT),
};

const action_t PROGMEM fn_actions[] = {ACTION_LAYER_MOMENTARY(1)};

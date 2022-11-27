#pragma once
#include QMK_KEYBOARD_H

enum layers {
  BASE,
  NUM,
  NAV,
  FN1,
};

// Thumb keys
// hold, tap
#define LTHUMB_OUT LT(NUM, KC_ESC)
#define LTHUMB_IN MT(MOD_LSFT, KC_SPC)
#define RTHUMB_IN LT(NAV, KC_BSPC)
#define RTHUMB_OUT MT(MOD_RSFT, KC_ENT)

// HOME ROW MODIFIERS
#define HM_N LGUI_T(KC_N) // COMMAND & N


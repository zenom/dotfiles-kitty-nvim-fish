/*
Copyright 2020 Pierre Chevalier <pierrechevalier83@gmail.com>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#pragma once

#define COMBO_VARIABLE_LEN
#define COMBO_TERM 50

// #define COMBO_TERM 60
// #define COMBO_TERM_PER_COMBO
// #define COMBO_VARIABLE_LEN
// #define COMBO_MUST_HOLD_PER_COMBO

#define TAPPING_TERM 250
#define TAPPING_TERM_PER_KEY
#define IGNORE_MOD_TAP_INTERRUPT
#define TAPPING_FORCE_HOLD
#define TAPPING_FORCE_HOLD_PER_KEY

#define MOUSEKEY_INTERVAL 16
#define MOUSEKEY_TIME_TO_MAX 64
#define MOUSEKEY_DELAY 0
#define MOUSEKEY_WHEEL_DELAY 0
#define MOUSEKEY_MAX_SPEED      6
// #define MOUSEKEY_WHEEL_INTERVAL 50
// #define MOUSEKEY_WHEEL_TIME_TO_MAX 100

#define TAPPING_TERM 250
#define TAPPING_TERM_PER_KEY
#define IGNORE_MOD_TAP_INTERRUPT
#define TAPPING_FORCE_HOLD
#define TAPPING_FORCE_HOLD_PER_KEY

// Underglow configuration
#ifdef RGBLIGHT_ENABLE
  #define RGBLIGHT_ANIMATIONS
  #define RGBLIGHT_HUE_STEP 8
  #define RGBLIGHT_SAT_STEP 8
  #define RGBLIGHT_VAL_STEP 8
#endif

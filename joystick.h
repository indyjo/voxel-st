#ifndef JOYSTICK_H
#define JOYSTICK_H

typedef struct {
    unsigned char up : 1;
    unsigned char left : 1;
    unsigned char down : 1;
    unsigned char right : 1;
} keys_t;

extern volatile keys_t pressed_keys;

void install_joystick_handler();
void uninstall_joystick_handler();

#endif

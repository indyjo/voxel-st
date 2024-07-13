#include <mint/sysbind.h>
#include "joystick.h"

static void (*old_joyvec) (void *);
volatile keys_t pressed_keys = {0, 0, 0, 0};

static void joystick_handler(void *pvoid) {
    unsigned char *buf = pvoid;
    if (buf[0] == 0xff) {
        pressed_keys.up = 0 != (buf[2] & 1);
        pressed_keys.down = 0 != (buf[2] & 2);
        pressed_keys.left = 0 != (buf[2] & 4);
        pressed_keys.right = 0 != (buf[2] & 8);
    }
    old_joyvec(pvoid);
}

void install_joystick_handler() {
	_KBDVECS *vecs = Kbdvbase();
	old_joyvec = vecs->joyvec;
    vecs->joyvec = &joystick_handler;
}

void uninstall_joystick_handler() {
	_KBDVECS *vecs = Kbdvbase();
    vecs->joyvec = old_joyvec;
}

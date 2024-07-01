#ifndef INTERRUPT_H
#define INTERRUPT_H

void set_palette_immediately(const unsigned char *colors);
void set_top_palette(const unsigned char *colors);
void set_bottom_palette(const unsigned char *colors);
void install_interrupts();
void uninstall_interrupts();

#endif


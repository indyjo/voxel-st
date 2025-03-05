#include <mint/errno.h>
#include <mint/osbind.h>

// Forward declaration of program entry point
extern int mymain(int, char **);

// Must be the very first function so it gets linked in at the beginning of the text segment.
__attribute__((noreturn)) void start(BASEPAGE *pb) {
    unsigned long newsize = sizeof(BASEPAGE) + pb->p_tlen + pb->p_dlen + pb->p_blen + 32768;
    //(m + 3L) & (~3L)
    if (0 != Mshrink(pb, newsize)) {
        Pterm(42);
        __builtin_unreachable();
    }
    char * newsp = (char *)pb + newsize - 128;
	__asm__ __volatile__(
		"\tmovel    %0,%%sp\n"
		: /* no outputs */
		: "r"(newsp)
		: "cc" AND_MEMORY
	);

	Pterm(mymain(0, 0));
    __builtin_unreachable();
}

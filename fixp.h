#ifndef FIXP_H
#define FIXP_H

// The fixpoint format was chosen so that exactly 512 integral values exist, with 7 bit fractional part.
// This way, the integral part maps directly to a coordinate from the 512x512 heightfield.
#define FIXP_PRECISION 7
#define FIXP_FRACT_MASK ((1 << FIXP_PRECISION) - 1)
#define FIXP_FACTOR (1<<FIXP_PRECISION)
#define FIXP(_r,_f) ((((_r) << FIXP_PRECISION) & ~FIXP_FRACT_MASK) | (_f & FIXP_FRACT_MASK))
typedef signed short fixp;
typedef unsigned int fixp_2in1;

static signed short fixp_int(fixp val) {
	return ((unsigned short)val) >> FIXP_PRECISION;
}

static unsigned short fixp_uint(fixp val) {
	return ((unsigned short)val) >> FIXP_PRECISION;
}

static fixp fixp_mul(fixp a, fixp b) {
	return (fixp)(((int)a * (int)b) >> FIXP_PRECISION);
}

// First-order approximation of 1/sqrt(x) around x0=1
static fixp fixp_sqrt_inv(fixp x) {
	// f(1) = 1/sqrt(1)
	// f'(x) = -0.5 * sqrt(x^(-3/2)) = -0.5 * sqrt(1/x^(3/2))
	// f'(1) = -0.5
	return FIXP(1,0) - ((x - FIXP(1,0)) >> 1);
}

static fixp_2in1 make_2in1(fixp a, fixp b) {
	return (((unsigned int)(unsigned short)a << 16) | (unsigned short)b) & 0xfffefffe;
}

static fixp_2in1 add_2in1(fixp_2in1 a, fixp_2in1 b) {
	return (a + b) & 0xfffefffe;
}

static fixp get_2in1_upper(fixp_2in1 val) {
	return val >> 16;
}

static fixp get_2in1_lower(fixp_2in1 val) {
	return val & 0xffff;
}

#endif // FIXP_H
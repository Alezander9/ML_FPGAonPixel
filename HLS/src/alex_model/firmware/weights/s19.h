//Numpy array shape [1]
//Min 0.500000000000
//Max 1.000000000000
//Number of zeros 0

#ifndef S19_H_
#define S19_H_

#ifndef __SYNTHESIS__
exponent_scale19_t s19[8];
#else
exponent_scale19_t s19[8] = {{1.0, 0}, {1.0, -1}, {1.0, -1}, {1.0, -1}, {1.0, 0}, {1.0, -1}, {1.0, -1}, {1.0, 0}};
#endif

#endif

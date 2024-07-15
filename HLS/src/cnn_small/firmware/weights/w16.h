//Numpy array shape [7, 1]
//Min -3.640625000000
//Max 3.367187500000
//Number of zeros 0

#ifndef W16_H_
#define W16_H_

#ifndef __SYNTHESIS__
weight16_t w16[7];
#else
weight16_t w16[7] = {3.3671875, -3.6406250, 0.9921875, -0.5703125, 0.6250000, -1.1328125, 2.2343750};
#endif

#endif

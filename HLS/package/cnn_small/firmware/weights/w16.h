//Numpy array shape [7, 1]
//Min -3.382812500000
//Max 3.640625000000
//Number of zeros 2

#ifndef W16_H_
#define W16_H_

#ifndef __SYNTHESIS__
weight16_t w16[7];
#else
weight16_t w16[7] = {-3.3828125, 1.2890625, 0.0000000, 1.2578125, 3.6406250, 0.0000000, -1.7031250};
#endif

#endif

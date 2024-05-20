//Numpy array shape [8]
//Min -0.273437500000
//Max 0.226562500000
//Number of zeros 0

#ifndef B2_H_
#define B2_H_

#ifndef __SYNTHESIS__
bias2_t b2[8];
#else
bias2_t b2[8] = {0.1406250, -0.0468750, -0.2734375, -0.0546875, -0.1093750, 0.0078125, -0.2343750, 0.2265625};
#endif

#endif

# DCT - Discret Cosine Transform
A combinational hardware implementation for the DCT transform with four inputs, 8-bit wide, in the systemverlilog language.

The submodules are divided in a file for each one of then. In the top file, the inputs are sended to the direct transform, followed by the renormalization module and finally to the inverse transform, where we expect to see the same initial inputs.

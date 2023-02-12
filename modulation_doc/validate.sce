fd = mopen("./bpsk.cf32", 'rb');

cap_data = mget(150000, 'f',fd);

I = cap_data(1:2:$);
Q = cap_data(2:2:$);

complex_sig = complex(I,Q);

packet_fft = fft(complex_sig(35650:36650));

subplot(121);
plot(fftshift(20*log10(abs(packet_fft))));

sq_sig = complex_sig.*complex_sig;

sq_fft = fft(sq_sig(35650:36650));

subplot(122);
plot(fftshift(20*log10(abs(sq_fft))));

mclose(fd);

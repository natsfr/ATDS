pkg load signal;
clear;
a = [0 0 1 0 1 1 1 0 1 1 1 1 1 1 0 0];
b = [1 0 0 1 1 0 0 0 0 0 1 0 0 1 1 1];

a(a==0) = -1;
b(b==0) = -1;

plot(xcorr(a,a));
hold on;
plot(xcorr(b,b));
plot(xcorr(b,a));
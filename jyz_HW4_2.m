a = [1 -1.7 0.8];
b = [0.1 -0.12 0.1];
[H, om] = freqz(b, a);
plot(om, abs(H));
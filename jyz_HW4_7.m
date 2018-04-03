clear
close all

a = [1 -1.7 0.8];
b = [0.1 -0.12 0.1];

figure(1)
zplane(b,a,'g')
legend('Zero', 'Pole')
[H, om] = freqz(b, a);
figure(2)
plot(om, abs(H));
clear
close all

u = @(n) (n >= 0); %Function

a = [1 -1.7 0.8];
b = [0.1 -0.12 0.1];
n = -10 : 100;
x = cos(0.1 * pi * n).* u(n);
y = filter(b,a,x);
subplot(2,1,1)
stem(n, x, 'b.')
title('Input Signal x(n)')
subplot(2,1,2)
stem(n, y, 'm.')
title('Output Signal y(n)')
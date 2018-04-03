clear
close all

u = @(n) (n >= 0); %Function

a = [1 -1.7 0.8];
b = [0.1 -0.12 0.1];

n = -10:100;
x = cos(0.1 * pi * n).*u(n);
y = filter(b,a,x);
z = exp(i*0.1*pi);
Hf = polyval(b, z)/polyval(a, z);
Hfabs = abs(Hf);
Hfangle = angle(Hf);
s = Hfabs * cos(0.1*pi.*n+Hfangle).*u(n);
figure(1)
stem(n,s,'.')
xlabel('n')
ylabel('x(n)')
title('Input Signal x(n)')
legend('Input Signal')
figure(2)
plot(n,y,'m',n,s,'g--')
xlabel('n')
title('Output and steady-state Signals')
legend('Output Signal y(n)', 'Steady-state Output s(n)')
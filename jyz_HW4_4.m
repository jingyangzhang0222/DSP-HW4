clear
close all

a = [1 -1.7 0.8];
b = [0.1 -0.12 0.1];

z = exp(i*0.1*pi);
Hf = polyval(b, z)/polyval(a, z);
disp(Hf)
clc; 
clear all;
close all;
x=0:0.5 *pi:10*pi;
y = sin(x);
subplot(2,3,1);
stem(y)
title('Sin(x)');
z= cos(x);
subplot(2,3,2)
stem(z)
title('Cos(x)')
t= exp(x)
subplot(2,3,3)
stem(t)
title('Exp(x)')
c= xcorr(y,z)
subplot(2,3,4)
stem(c)
title('Correlation with Sin and Cos')
b = xcorr(y,t)
subplot(2,3,5)
stem(b)
title('Correlation with Sin and Exp')
a = xcorr(z,t)
subplot(2,3,6)
stem(a)
title('Correlation with Cos and Exp')

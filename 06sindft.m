clc;
clear all;
close all;
A=1;
f=5;
Fs=50;
N=50;
t=(0:N-1)/Fs;
x=A*sin(2*pi*f*t);
X=fft(x);
y=ifft(X);

subplot(3,1,1);
plot(t,x,'b');

subplot(3,1,2);
stem(abs(X),'r');

subplot(3,1,3);
plot(t,y,'g');

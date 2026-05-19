clc;close all;clear all;

fs=1000;
t=0:1/fs:1-1/fs;
N=length(t);

f=5;
s=sin(2*pi*f*t);
c=cos(2*pi*f*t);

sin_fft=fft(s);
cos_fft=fft(c);

sin_ifft=ifft(fft(s));
cos_ifft=ifft(fft(c));

f_axis=(0:N-1)*(fs/N);   

subplot(2,3,1)
stem(t,s)

subplot(2,3,2)
stem(f_axis, abs(sin_fft)/N)   
xlim([0 20])                  

subplot(2,3,3)
stem(t,real(sin_ifft))        

subplot(2,3,4)
stem(t,c)

subplot(2,3,5)
stem(f_axis, abs(cos_fft)/N)  
xlim([0 20])                  

subplot(2,3,6)
stem(t,real(cos_ifft))         
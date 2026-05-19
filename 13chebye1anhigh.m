
clc;
clear all;
close all;

[b,a] = cheby2(9, 0.7, 90, 'high', 's');   % analog Chebyshev Type II low-pass filter (Rs = 30 dB)

w = linspace(0,1000,1000);   % frequency range
[h,w] = freqs(b,a,w);

figure;

subplot(2,1,1);
plot(w,abs(h));
xlabel('Frequency (rad/s)');
ylabel('Magnitude');
title('Analog Magnitude response');
grid on;

subplot(2,1,2);
plot(w,angle(h));
xlabel('Frequency (rad/s)');
ylabel('Phase');
title('Analog Phase response');
grid on;
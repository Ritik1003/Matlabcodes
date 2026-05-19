clc;
clear all;
close all;

[b,a] = cheby1(9,0.7,[80 120],'stop','s');   % analog band-stop filter

w = linspace(0,1000,1000);   % smoother frequency range

[h,w] = freqs(b,a,w);

figure;   % ensure figure window opens

subplot(2,1,1);
plot(w,abs(h));
xlabel('Frequency (rad/s)');
ylabel('Magnitude');
title('Analog Band-stop Magnitude response');
grid on;

subplot(2,1,2);
plot(w,angle(h));
xlabel('Frequency (rad/s)');
ylabel('Phase');
title('Analog Band-stop Phase response');
grid on;
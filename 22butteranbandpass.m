clc; clear all; close all;

[b,a] = butter(8,[80 120],'bandpass','s');   % analog Butterworth band-pass filter

w = linspace(0,1000,1000).';   % column vector frequency range (rad/s)
h = freqs(b,a,w);              % frequency response

figure;
subplot(2,1,1);
plot(w,abs(h));      % magnitude 
xlabel('Frequency (rad/s)');
ylabel('Magnitude ');
title('Analog Bandpass Magnitude response');

subplot(2,1,2);
plot(w,unwrap(angle(h))*180/pi);  % phase in degrees
xlabel('Frequency (rad/s)');
ylabel('Phase (degrees)');
title('Analog Bandpass Phase response');
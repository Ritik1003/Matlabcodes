
clc;
clear all;
close all;

% Analog highpass design: cutoff = 60 rad/s
[b,a] = butter(8,60,'high','s');   % analog Butterworth high-pass filter

w = linspace(0,1000,1000);   % frequency range (rad/s)
[h,wout] = freqs(b,a,w);     % get frequency response (wout returned)

figure;
subplot(2,1,1);
plot(wout,abs(h));
xlabel('Frequency (rad/s)');
ylabel('Magnitude');
title('Analog Highpass Magnitude response');

subplot(2,1,2);
plot(wout,unwrap(angle(h))*180/pi);  % phase in degrees, unwrapped
xlabel('Frequency (rad/s)');
ylabel('Phase (degrees)');
title('Analog Highpass Phase response');
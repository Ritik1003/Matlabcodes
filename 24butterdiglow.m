clc; clear all; close all;

fs = 700;        


[b,a] = butter(8, 90/(fs/2), 'low');  

f = linspace(0, fs/2, 1000).';    % frequency axis in Hz
[h,wout] = freqz(b,a,f,fs);    

figure;
subplot(2,1,1);
plot(wout, abs(h));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Digital Magnitude response');

subplot(2,1,2);
plot(wout, unwrap(angle(h))*180/pi);
xlabel('Frequency (Hz)');
ylabel('Phase (degrees)');
title('Digital Phase response');
clc;
close all;
clear all;
n   = 10;        % filter order
fc  = 90;        % cutoff frequency in Hz
fs  = 1000;      % sampling frequency in Hz (example)
Wn  = fc / (fs/2);% normalized cutoff (0..1, 1 = Nyquist)

b = fir1(n, Wn, 'low', hamming(n+1)); % returns numerator
a = 1;                                 % FIR denominator

% Inspect frequency response
freqz(b, a, 1024, fs);



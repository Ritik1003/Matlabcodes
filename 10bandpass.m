clc;
clear all;
close all;

n   = 10;           % filter order
fs  = 1000;         % sampling frequency in Hz

% Band edges in Hz (choose your passband)
f1 = 80;            % lower cutoff (Hz)
f2 = 200;           % upper cutoff (Hz)

% Normalized band [0..1], 1 = Nyquist (fs/2)
Wn  = [f1 f2] / (fs/2);

b = fir1(n, Wn, 'bandpass', hamming(n+1)); % numerator (FIR)
a = 1;

% Inspect frequency response
freqz(b, a, 1024, fs);

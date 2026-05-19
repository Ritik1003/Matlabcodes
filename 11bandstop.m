clc;
clear all;
close all;

n   = 10;           % filter order
fs  = 1000;         % sampling frequency in Hz

% Stopband edges in Hz (frequencies to attenuate)
f1 = 80;            % lower edge of stopband (Hz)
f2 = 200;           % upper edge of stopband (Hz)

% Normalized band [0..1], 1 = Nyquist (fs/2)
Wn  = [f1 f2] / (fs/2);

b = fir1(n, Wn, 'stop', hamming(n+1)); % numerator (FIR band-stop)
a = 1;

% Inspect frequency response
freqz(b, a, 1024, fs);

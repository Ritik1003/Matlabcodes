clc; clear all; close all;
fs = 1000;
t  = 0:1/fs:1;
fc = 50;
data = [1 0 1 1 0 0 1];

% FIX: Use floor() so bit_duration is always an integer
% Without floor(), ones(1, bit_duration) errors if bit_duration is a float
bit_duration = floor(length(t) / length(data));

% Build NRZ message signal
message = [];
for i = 1 : length(data)
    message = [message, data(i) * ones(1, bit_duration)];
end
message = message(1:length(t));   % Trim to exact length of t

% Carrier and BPSK
carrier = cos(2*pi*fc*t);
bpsk    = carrier .* (2*message - 1);  % Maps 1->+1, 0->-1

% Plot
subplot(3,1,1);
plot(t, message);
ylim([-0.5 1.5]);
title('Binary Message Signal [1 0 1 1 0 0 1]');
xlabel('Time (s)'); ylabel('Amplitude'); grid on;

subplot(3,1,2);
plot(t, carrier);
title('Carrier Signal (fc = 50 Hz)');
xlabel('Time (s)'); ylabel('Amplitude'); grid on;

subplot(3,1,3);
plot(t, bpsk);
title('BPSK Modulated Signal');
xlabel('Time (s)'); ylabel('Amplitude'); grid on;

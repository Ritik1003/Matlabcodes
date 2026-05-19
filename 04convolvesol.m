clc;
clear all;
close all;

x1 = [1 2 3 4];
x2 = [2 4 6 8];

N1 = length(x1);
N2 = length(x2);

% Output length = N1 + N2 - 1
y = zeros(1, N1 + N2 - 1);

for i = 1:N1
    for j = 1:N2
        y(i + j - 1) = y(i + j - 1) + x1(i) * x2(j);
    end
end

plot(y);
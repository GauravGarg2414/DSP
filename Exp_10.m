clear all;
clc;

N = 51; % Length of sequence
n = 0 : (N - 1);
x1 = sin(2 * pi * 0.1 * n);

M1 = 4;
y1 = upsample(x1, M1);
L1 = length(y1);

M2 = 5;
y3 = downsample(x1, M2);
L3 = length(y3);


subplot(3, 1, 1);
plot(n, x1(1 : N));
xlabel('n');
ylabel('x1[n]');
title('Original signal x1[n]');

subplot(3, 1, 2);
stem(0 : (L1 - 1), y1(1 : L1));
xlabel('m');
ylabel('y1[m]');
title('Upsampled signal y1[m] (M = 5)');

subplot(3, 1, 3);
stem(0 : (L3 - 1), y3(1 : L3));
xlabel('m');
ylabel('y3[m]');
title('Downsampled signal y3[m] (M = 4)');



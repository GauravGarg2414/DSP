clc
clear all;

x = input('Enter first sequence: ');
h = input('Enter second sequence: ');

% Calculate the lengths of the input sequences
N = length(x);
M = length(h);

% Calculate the circular convolution result using DFT and IDFT
L = max(N, M);
M = cconv(x,h,N)
X = fft(x, L);
H = fft(h, L);
Y = X .* H;
circular_conv = ifft(Y);

subplot(4,1,1)
stem(x)
xlabel('Time-->');
ylabel('Amplitude(x1[n])-->');
title('Sequence x1[n]');

subplot(4,1,2);
stem(h)
xlabel('Time-->');
ylabel('Amplitude(x2[n])-->');
title('Sequence x2[n]');

subplot(4,1,3);
stem(circular_conv);
title('Circular Convolution');
xlabel('n');
ylabel('y[n]');

subplot(4,1,4);
stem(M);
title('Circular Convolution Using cconv');
xlabel('n');
ylabel('y[n]');
clc
clear all;

ws1 = 0.30 * pi; % Stop band edge frequency 1
wp1 = 0.35 * pi; % Pass band edge frequency 1
ws2 = 0.65 * pi; % Stop band edge frequency 2
wp2 = 0.70 * pi; % Pass band edge frequency 2
tr_width = min(abs(ws1 - wp1), abs(ws2 - wp2)); % Transition width2
wc1 = (wp1 + ws1) / 2; % Cutoff frequency 1
wc2 = (wp2 + ws2) / 2; % Cutoff frequency 2
delta = 0.01; % Ripple factor

A = -20 * log10(delta);
if(A > 50)
    beta = 0.1102 * (A - 8.7); % Shape factor of Kaiser window
elseif(A >= 21 && A <= 51)
    beta = 0.5842 * (A - 21) .^ 0.4 + 0.07886 * (A - 21);
else
    beta = 0;
end

M = ceil((A - 8) / (2.285 * tr_width)) + 1;
w_n = kaiser(M, beta); % Kaiser window
n = (-(M - 1) / 2) : ((M - 1) / 2);
fc1 = wc1 / (2 * pi);
fc2 = wc2 / (2 * pi);
hd = (2 * fc2 * sinc(2 * fc2 * n)) - (2 * fc1 * sinc(2 * fc1 * n)); % Ideal impulse response of band pass filter
h = hd .* w_n';
[HW, WW] = freqz(h, 1); % Freqiency response of digital filter

plot(WW ./ pi, abs(HW));
title('Band Pass Filter using Kaiser Window Function');
xlabel('Normalized Frequency (\omega / \pi)');
ylabel('Magnitude Response of BPF |H(\omega)|');
grid on;
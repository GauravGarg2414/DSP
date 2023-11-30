% clear all;
% clc;
% wp = 0.51 * pi;
% ws = 0.47 * pi; 
% tr_width = abs(ws - wp); 
% wc = (wp + ws) / 2; 
% M = ceil(6.1 * pi / tr_width) + 1;
% if(rem(M, 2) == 0)
%     M = M + 1;
% end
% n = (-(M - 1) / 2) : ((M - 1) / 2);
% w_n = hann(M); % Hanning Window
% fc = wc / (2 * pi);
% hd = -2 * fc * sinc(2 * fc * n);
% hd(((M - 1) / 2) + 1) = 1 - 2 * fc;
% h = hd .* w_n'; 
% [HW, WW] = freqz(h, 1); 
% 
% 
% plot(WW ./ pi, abs(HW));
% title('High Pass Filter using Hanning Window Function');
% xlabel('Normalized Frequency (\omega / \pi)');
% ylabel('Magnitude Response of HPF |H(\omega)|');


clear all;
clc;
wp = 0.51 * pi;
ws = 0.47 * pi;
tr_width = abs(ws - wp);
wc = (wp + ws)  / 2;
M = ceil(6.1 * pi / tr_width) + 1; 
if(rem(M, 2) == 0)
    M = M + 1;
end
n = (-(M - 1) / 2) : ((M - 1) / 2);
fc = wc / (2 * pi);
w_n = hamming(M); % Hamming window
hd = -2 * fc * sinc(2 * fc * n);
hd(((M - 1) / 2) + 1) = 1 - 2 * fc;
h = hd .* w_n';
[HW, WW] = freqz(h, 1);


plot(WW ./ pi, abs(HW));
title('High Pass Filter using Hamming Window Function');
xlabel('Normalized Frequency (\omega / \pi)');
ylabel('Magnitude Response of HPF |H(\omega)|');
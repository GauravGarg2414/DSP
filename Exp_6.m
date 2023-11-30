% clc
% clear all
% wp=0.5*pi
% ws=0.75*pi
% tr_width=abs(ws-wp)
% wc=(wp+ws)/2
% M=ceil(6.1*pi/tr_width)+1
% rect_window=(rectwin(M))
% n=-(M-1)/2:(M-1)/2
% fc=wc/(2*pi)
% hd=2*fc*(sinc(2*fc*n))
% h=hd.*rect_window'
% [HW,WW]=freqz(h,1)
% 
% plot(WW./pi,abs(HW));
% xlabel('Normalized frequency');
% ylabel('Magnitude response of LPF');
% title('Low pass filter');

clc
clear all
wp=0.5*pi
ws=0.75*pi
tr_width=abs(ws-wp)
wc=(wp+ws)/2
M=ceil(6.1*pi/tr_width)+1
tri_window=(triang(M))
n=-(M-1)/2:(M-1)/2
fc=wc/(2*pi)
hd=2*fc*(sinc(2*fc*n))
h=hd.*tri_window'
[HW,WW]=freqz(h,1)

plot(WW./pi,abs(HW));
xlabel('Normalized frequency');
ylabel('Magnitude response of LPF');
title('Low pass filter');
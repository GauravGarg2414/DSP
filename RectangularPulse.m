clc 
clear all
t=-3:0.01:3;
rect=abs(t)<=1;

plot(t,rect); % make changes in t to shift
xlabel('t');
ylabel('rect(t)');
title('Rectangular Pulse (Width=2, Amplitude=1)')
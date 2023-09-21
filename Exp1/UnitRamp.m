clc 
clear all
t=-1:0.1:1;
ut=(t>=0);
rt=t.*ut;

plot(t,rt); % make changes in t to shift
xlabel('t');
ylabel('r(t)');
title('Continuous time unit ramp')

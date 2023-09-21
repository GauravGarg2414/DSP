clc
clear all;

time = 0:0.01:1;

A = input('Enter Amplitude: ');
phase = input('Enter Phase: '); 
f = input('Enter frequency: '); 

x = A*sin(2*pi*f*time + phase);

subplot(2,1,1);
plot(time, x);
title('Continuous time Sine Wave');
xlabel('t (time)-->');
ylabel('x (Amplitude)-->');

subplot(2,1,2);
stem(time, x);
title('Discrete time Sine Wave');
xlabel('n (time)-->');
ylabel('x (Amplitude)-->');
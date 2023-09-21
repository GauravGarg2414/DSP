clc
clear all

time=-10:0.1:10;

freq = input('Enter frequency: ');
duty = input('Enter Duty Cycle: ');

x = square(2*pi*freq*time,duty);

subplot(2,1,1);
plot(time, x);
title('Continuous time Square Wave');
xlabel('t (time)-->');
ylabel('x (Amplitude)-->');

subplot(2,1,2);
stem(time, x);
title('Discrete time Square Wave');
xlabel('n (time)-->');
ylabel('x (Amplitude)-->');

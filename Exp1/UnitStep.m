clc
clear all

t=-10:0.1:10;
ut=(t>=0);
n=-10:10;
un=(n>=0);

subplot(2,1,1);
plot(t,ut);
xlabel('t');
ylabel('u(t)');
title('Continuous time unit step');

subplot(2,1,2);
stem(n,un);
xlabel('n');
ylabel('u[n]');
title('Discrete time unit step');

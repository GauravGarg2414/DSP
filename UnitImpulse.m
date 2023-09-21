clc 
clear all

t=-10:0.1:10;
dt=(t==0);
n=-10:10;
dn=(n==0);

subplot(2,1,1);
plot(t,dt);
xlabel('t');
ylabel('delta(t)');
title('Continuous time unit impulse')

subplot(2,1,2);
stem(n,dn);
xlabel('n');
ylabel('delta[n]');
title('Discrete time unit impulse')
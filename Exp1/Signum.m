clc 
clear all

t=-10:0.1:10;
st=(t>=0)-(t<=0);
n=-10:0.1:10;
sn=(n>=0)-(n<=0);

subplot(2,1,1);
plot(t,st);
xlabel('t');
ylabel('u(t)');
title('Continuous time signum');

subplot(2,1,2);
stem(n,sn);
xlabel('n');
ylabel('u(n)');
title('Discrete time signum');
%u=sign(n); stem(u,n)

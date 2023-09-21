clc
clear all
close all

x1 = input('Enter the values in xn ->')
N = length(x1)
y1=zeros(1,N)

for n = 0 : N-1
    for k = 0 : N-1
        y1(n+1) = y1(n+1) + (x1(k+1))*exp((-i*2*pi*k*n)/N)
    end
end

phase1 = angle(y1)
subplot(2, 2, 1)
stem(y1)
title('Magnitude of DFT')
xlabel('n --> ')
ylabel('|y| --> ')

subplot(2, 2, 2)
stem(phase1)
title('Phase Of DFT')
xlabel('n --> ')
ylabel('angle(y) --> ')


y2 = zeros(1,N)
for n = 0 : N-1
    for k = 0 : N-1
        y2(n+1) = y2(n+1) + (1/N)*(y1(k+1))*exp((i*2*pi*k*n)/N)
    end
end

phase2 = angle(y2)
subplot(2, 2, 3)
stem(y2)
title('IDFT')
xlabel('n --> ')
ylabel('|y| --> ')

subplot(2, 2, 4)
stem(phase2)
title('Phase of IDFT')
xlabel('n --> ')
ylabel('angle(y) --> ')

clc
clear all

x1 = input('Enter sequence : ')
x2 = input('Enter sequence : ')
Z = conv(x1,x2)

N = length(x1) + length(x2) -1

x1 = [x1, zeros(1, N - length(x1))]
x2 = [x2, zeros(1, N - length(x2))]

for i=1:N
    Y(i) = 0
    for j=1:N
        k = i-j+1;
        if k<=0
            k = N+k;
        end
        Y(i) = Y(i) + x1(j)*x2(k)
    end
end

subplot(4,1,1)
stem(x1)
title('Sequence x1[n]')
xlabel('n --> ')
ylabel('x --> ')

subplot(4,1,2)
stem(x2)
title('Sequence x2[n]')
xlabel('n --> ')
ylabel('x --> ')

subplot(4,1,3)
stem(Y)
title('Linear Convolution')
xlabel('n --> ')
ylabel('x --> ')

subplot(4,1,4)
stem(Z)
title('Linear Convolution using conv')
xlabel('n --> ')
ylabel('x --> ')
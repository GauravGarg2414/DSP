clc
clear all

x1 = input('Enter the values in x1 ->')
x2 = input('Enter the values in x2 ->')

ConvUsingFunc = conv(x1,x2)

conv_len = length(x1) + length(x2) - 1

x1 = [x1, zeros(1, conv_len - length(x1))]
x2 = [x2, zeros(1, conv_len - length(x2))]
y = zeros(1, conv_len);

for n = 1:conv_len
    for i = 1 : n
        y(n) = y(n) + x1(i)*x2(n-i+1)
    end
end

subplot(1, 4, 1);
stem(x1);
xlabel('n -->');
ylabel('Amplitude x(n) -->');
title('x(n)');

subplot(1, 4, 2);
stem(x2);
xlabel('n -->');
ylabel('Amplitude h(n) -->');
title('h(n)');

subplot(1, 4, 3);
stem(y);
xlabel('n -->');
ylabel('Amplitude');
title('x(n) * h(n) without using function' );

subplot(1, 4, 4);
stem(ConvUsingFunc);
xlabel('n -->');
ylabel('Amplitude');
title('x(n) * h(n) using function');
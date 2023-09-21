clc
clear all

x1 = input('Enter the values in x1 ->')
x2 = input('Enter the values in x2 ->')

new_len = max(length(x1),length(x2))
Z=cconv(x1,x2,new_len)
conv_len = length(x1) + length(x2) - 1

x1 = [x1, zeros(1, conv_len - length(x1))]
x2 = [x2, zeros(1, conv_len - length(x2))]
y = zeros(1, conv_len);

for n = 1:conv_len
    for i = 1 : n
        y(n) = y(n) + x1(i)*x2(n-i+1)
    end
end

C=zeros(1,new_len)
for m = 1:conv_len
    if m<=new_len
        C(m)=C(m)+y(m)
    else
        C(m-new_len)=C(m-new_len)+y(m)
    end
end

subplot(4, 1, 1);
stem(x1);
xlabel('n -->');
ylabel('Amplitude x1(n) -->');
title('x1(n)');

subplot(4, 1, 2);
stem(x2);
xlabel('n -->');
ylabel('Amplitude x2(n) -->');
title('x2(n)');

subplot(4, 1, 3);
stem(C);
xlabel('n -->');
ylabel('Amplitude');
title('Circular Convolution' );

subplot(4,1,4)
stem(Z)
title('Circular Convolution using cconv')
xlabel('n --> ')
ylabel('x --> ')
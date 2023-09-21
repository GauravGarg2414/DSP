clc;
clear all;
M= 50;
n=0:49;
N=1024;
hm= 0.54-0.46*cos(2*pi*n./(M-1))
subplot(4,2,1)
stem(n,hm)
xlabel('Time-->');
ylabel('Amplitude-->');
title('Hamming Window: Time Domain')

xaxis=0:1/N:(N-1)/N
ffthm= fft(hm,N)
fyaxis= abs(ffthm/max(ffthm))
yaxis= 20.*log10(fyaxis)
subplot(4,2,2)
plot(xaxis,fftshift(yaxis))
xlabel('Frequency-->')
ylabel('Amplitude-->')
title('Hamming Window: Freq Domain')

hn= 0.5*[1- cos((2*pi*n)./(M-1))]
subplot(4,2,3)
stem(n,hn)
xlabel('Time-->');
ylabel('Amplitude-->');
title('Hanning Window: Time Domain')

xaxis=0:1/N:(N-1)/N
ffthn= fft(hn,N)
fyaxis= abs(ffthn/max(ffthn))
yaxis= 20.*log10(fyaxis)
subplot(4,2,4)
plot(xaxis,fftshift(yaxis))
xlabel('Frequency-->')
ylabel('Amplitude-->')
title('Hanning Window: Freq Domain')

bl= 0.42- 0.5*(cos((2*pi*n)./(M-1)))+ 0.08*(cos((4*pi*n)./(M-1)))
subplot(4,2,5)
stem(n,bl)
xlabel('Time-->');
ylabel('Amplitude-->');
title('Blackman Window: Time Domain')

xaxis=0:1/N:(N-1)/N
fftbl= fft(bl,N)
fyaxis= abs(fftbl/max(fftbl))
yaxis= 20.*log10(fyaxis)
subplot(4,2,6)
plot(xaxis,fftshift(yaxis))
xlabel('Frequency-->')
ylabel('Amplitude-->')
title('Blackman Window: Freq Domain')

t=(0:1:M-1);
r=ones(M);
subplot(4,2,7)
stem(t,r)
xlabel('Time-->');
ylabel('Amplitude-->');
title('Rectangular Window : Time Domain')

xaxis=0:1/N:(N-1)/N
fftr = fft(r,N);
fyaxis = abs(fftr/max(fftr));
q=20.*log10(fyaxis);
subplot(4,2,8)
plot(xaxis,fftshift(q));
xlabel('Frequency-->')
ylabel('Amplitude-->')
title('Rectangular Window : Freq Domain')
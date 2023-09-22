clc
clear all
m=25;
P=1024;
t=0:m-1;

rect=ones(1,m);
subplot(4,2,1)
stem(t,rect);
xlabel('n -->')
ylabel('x[n] -->')
title('Rectangular window')
[h,w]=freqz(rect,1,P);
wn=w/(2*pi);
hn=abs(h)/max(abs(h));
subplot(4,2,2)
plot(wn,20*log10(hn))
xlabel('frequency -->')
ylabel('magnitude (db) -->')
title('frequency response of rectangular window')


hamming=0.54-0.46*cos((2*pi*t)/(m-1));
subplot(4,2,3)
stem(t,hamming);
xlabel('n -->')
ylabel('x[n] -->')
title('Hamming window')
[h,w]=freqz(hamming,1,P);
wn=w/(2*pi);
hn=abs(h)/max(abs(h));
subplot(4,2,4)
plot(wn,20*log10(hn))
xlabel('frequency -->')
ylabel('magnitude (db) -->')
title('frequency response of Hamming window')


hanning=(0.5)*(1-cos((2*pi*t)/(m-1)));
subplot(4,2,5)
stem(t,hanning);
xlabel('n -->')
ylabel('x[n] -->')
title('Hanning window')
[h,w]=freqz(hanning,1,P);
wn=w/(2*pi);
hn=abs(h)/max(abs(h));
subplot(4,2,6)
plot(wn,20*log10(hn))
xlabel('frequency -->')
ylabel('magnitude (db) -->')
title('frequency response of Hanning window')

blackman= 0.42 - (0.5)*(cos((2*pi*t)/(m-1))) + (0.08)*(cos((4*pi*t)/(m-1)));
subplot(4,2,7)
stem(t,blackman);
xlabel('n -->')
ylabel('x[n] -->')
title('Blackman window')
[h,w]=freqz(blackman,1,P);
wn=w./(2*pi);
hn=abs(h)/max(abs(h));
subplot(4,2,8)
plot(wn,20*log10(hn))
xlabel('frequency -->')
ylabel('magnitude (db) -->')
title('frequency response of Blackman window')

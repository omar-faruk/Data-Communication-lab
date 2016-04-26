fs=100;
t=[0:6*fs+1]/fs;
x=sin(0.5*pi*t);
fc=3;
deviation=1.2;
y=ammod(x,fc,fs,deviation);
subplot(2,2,1)
plot(t,x)
grid on
title('Modulating signal');
subplot(2,2,2)
plot(t,y)
grid on
title('Modulating signal');
z=demod(y,fc,fs,'fm',deviation);%demodulated signal
subplot(2,2,3)
plot(t,z); %demodulated signal
grid on
title('Demodulated Signal');
subplot(2,2,4);
spectrum(y)
grid on

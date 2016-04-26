%AM modulator and demodulator
Fs=100; %sampling rate of plot
t=[0:2*Fs+1]'/Fs; %#ok<NBRAK>
%time scale 0 0.0100 0.0200 0.0300 0.0400 0.0500 .........2.0100
Fc=10;%carrier frequency
x=sin(2*pi*t); %base band or modulating signal
y=ammod(x,Fc,Fs);
%AM with double sideband suppressed carrier 
subplot(2,2,1)
plot(t,x,'k');%base band signal
title('base band signal');
grid on
subplot(2,2,2)
plot(t,y,'k')%AM signal
title('Am signal');
grid on
z=demod(y,Fc,Fs,'amdsb-sc');%demodulated signal
subplot(2,2,3)
plot(t,z,'k')%demodulated signal
grid on
title('Demodulated signal');
subplot(2,2,4)
spectrum(y)%power spectral density of AM
grid on
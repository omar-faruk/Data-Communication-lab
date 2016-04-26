%AM modulator demodulator
load mtlb
in =mtlb
N=600; %number of samples of speech signal
for  j=1:500
    x(j)=in(j)
end
Fs=10000; %sampling rate of plot
Fc=4000;
in_phase=0;
y=ammod(x,Fc,Fs,in_phase);
%AM with double sideband suppressed carrier
subplot(2,2,1);
plot(x,'k'); % base band signal
title('Base Band Signal');
 grid on
 subplot(2,2,2);
 plot(y,'k'); %AM signal
 title('AM Signal');
 grid on
 z=demod(y,Fc,Fs,'am');
 subplot(2,2,3);
 plot(z,'k');
 grid on
 title('Demodulated Signal');
 subplot(2,2,4);
 spectrum(y);
 grid on
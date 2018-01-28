n=0:100;
T=1/15;
x=1+cos(2*pi*n*T)+cos(10*pi*n*T); 

%if we remove the 1 added on the first, the DC value will be discarded
%that case the signal will be both side of the axis

Fs=15;
m=2;
w=2;
[b,a]=butter(m,w/(Fs/2));
z=filter(b,a,x);
subplot(2,1,1);
stem(n,x,'r');
%plot(n,x,'r');
title('original signal');
subplot(2,1,2);
stem(n,z,'b');
title('Filtered Signal');

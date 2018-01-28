%home task
t=1:0.0005:3*pi;
x=cos(2*pi*t);
N=31;
Wn=0.5;
b=fir1(N,Wn);
n=0.15*randn(1,length(t));
d=filter(b,1,x);
mu=0.009;
ha=adaptfilt.lms(32,'StepSize',0.01);
[y1,e1]=filter(ha,n,d);
subplot(2,1,1)
plot(1:length(t),d,'r');
title('Desired');
xlabel('Time Index');
subplot(2,1,2)
plot(1:length(t),e1);
title('Output Signal');
xlabel('Time Index');
ylabel('Signal Value');

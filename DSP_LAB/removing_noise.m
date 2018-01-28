t=0:0.01:1;
Fs=1000;
y=sin(8*pi*t); %original sig
yn=y+0.5*rand(1,length(t));

grid on
subplot(2,2,1);
plot(t,y,'r');
title('original');

subplot(2,2,2);
plot(t,yn,'g');
title('noisy');
n=2;
w=100;
[b,a]=butter(n,w/(Fs/2));
z=filter(b,a,yn);

subplot(2,2,3);
plot(t,z,'b');
title('filtered');
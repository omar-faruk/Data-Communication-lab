Rp=25;
Fs=1000;
n=10;
Wn=[100 200]/(Fs/2);
[b,a]=cheby1(n,Rp,Wn);
freqz(b,a,512,Fs);
figure
[y,t]=impz(b,a,100);
plot(t,y);
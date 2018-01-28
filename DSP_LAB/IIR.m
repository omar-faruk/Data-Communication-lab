Fs=1000;
n=10;
Wn=[100 200]/(Fs/2);
[b,a]=butter(n,Wn);
freqz(b,a,512,Fs);
figure
[y,t]=impz(b,a,100);
plot(t,y);
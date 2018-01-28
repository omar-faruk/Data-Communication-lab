t=cputime
fc=0.21875;
N=53;
Fs=8000;
wn=hamming(N);
hn=fir1(N-1,2*fc,wn); %fc is multiplied by 2 since FN=Fs/2
[H,f]=freqz(hn,1,512,Fs);
mag=20*log10(abs(H));
plot(f,mag);
grid on
xlabel('f');
ylabel('H(h)|(db)')
cputime-t
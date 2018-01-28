t=cputime
Fs=1000;
FN=Fs/2;
N=73;
beta=5.65;
fc1=125/FN;
fc2=275/FN;
fc=[fc1 fc2];
hn=fir1(N-1,fc,hamming(N));
[H f]=freqz(hn,1,512,Fs);
mag=20*log10(abs(H));
plot(f,mag);
grid on
xlabel('f');
ylabel('|H(h)|(db)')
cputime-t
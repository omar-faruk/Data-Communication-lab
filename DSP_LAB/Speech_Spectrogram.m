load mtlb
y=mtlb;
subplot(2,2,1)
plot(y)
title('Speech Signal')
subplot(2,2,2)
specgram(mtlb,512,Fs,kaiser(500,5),475)
title('Spectogram')
z=fft(y);
z=fftshift(z);
subplot(2,2,3)
plot(abs(z))
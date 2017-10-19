x=zeros(32);
x(10:24,10:24)=ones(15);
subplot(2,1,1);
title('3D rectangular pulse');
mesh(x);
x=fft2(x);
x=fftshift(x);

%DC value is at the corner of the array
%let us move it at the middle
subplot(2,1,2);
surf(abs(x));
title('3D sinc in frequency domain');
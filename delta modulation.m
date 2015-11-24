% lab3 24/11/15

predictor=[0 1];
% y(k)=x(k-1) i.e previous sample is predicted sample
%predictor =[0,a1,a2,a3....am]
%y(k) =a1x(k-1)+a2x(k-2)...+amx(k-m)
partition=[-1:0.1:0.9];
codebook=[-1:0.1:1];
t=0:pi/100:2*pi;
x=sin(pi*t); %original Signal
%quantize x using dpcm
encodedx=dpcmenco(x,codebook,partition,predictor);
%try to recover x from the modulated signal
decodedx=dpcmdeco(encodedx,codebook,predictor);
plot(t,x,'r',t,decodedx,'k--')
legend('original','recovered')
grid on
distor=sum((x-decodedx).^2)/length(x) %mean square error
xlebel('time')
ylebel('original and recovered signal');

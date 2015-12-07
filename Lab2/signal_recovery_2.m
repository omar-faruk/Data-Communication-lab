load mtlb
x=mtlb;
t=1:1:length(x);
predictor =[0,1];
%y(k)=x(k-1) i.e.,previous sample is the predicted sample
partition = [-3:0.1:3];
codebook =[-3:0.1:3.1];
%quantiz x using DPCM
encodedx = dpcmenco(x,codebook,partition,predictor);
%try to recover x from the modulated signal
decodedx = dpcmdeco(encodedx,codebook,predictor);
plot(t,x,'r',t,decodedx,'k--')
legend('Original','Recovered')
grid on 
distor=sum((x-transpose(decodedx)).^2)/length(x)
xlabel('time')
ylabel('Original and Recovered signal')
[distor]
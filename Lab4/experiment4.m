%define parameters
Fd=1;
Fs=10;
M=4; % Size of sinal constellation
k=log2(M); % Number of bits per symbol
n=1000; % Number of 
nsamp=2; %Create a 16-QAM modulator

% single source
%Create binary data stream as acolumn vector

hMd=comm.RectangularQAMModulator(M); % Random binary data stream 


x=randi([0,1],n,1);
hBitToInt=comm.BitToInteger(k);
xsym=step(hBitToInt,x);
y=modulate(modem.qammod(M),xsym);
N=Fs/Fd; %number of sample per 
W=0.5;
period=1/Fd;
delay=3;

offset=0;
rcv= rcosflt(y,Fd,Fs,'fir/normal',W,delay); %received signal
h1=eyediagram(rcv,N,period,offset); % eye diagram
h2=scatterplot(rcv,N,offset,'k*'); % scattered plot

%let us add some noise with signal
rcvl=awgn(rcv,4);
h3=eyediagram(rcvl,N,period,offset);
h2=scatterplot(rcvl,N,offset,'k*');
Status 

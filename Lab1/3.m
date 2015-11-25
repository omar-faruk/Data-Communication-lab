% Do the same job for a sinusiodal wave and plot the results

% Matlab code
t=0:0.1:2*pi;

S=4*sin(pi*t); %sampled signal

partition = [-3,-2,-1,0,1,2,2.5,3.5];

quantization = [-3.5,-3,-2,-1,0,1,2,3,3.5];

[I,Q]=quantiz(S,partition,quantization);

%Q gives quantized value

plot(t,S,'k',t,Q,'*k')
xlabel('time')

ylabel('Amplitude')

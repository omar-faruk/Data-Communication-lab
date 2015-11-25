% Following code shows the quantization of speech signal and the
% corresponding result is shown in figure.

% Matlab code
load mtlb

S=mtlb;

partition=[-3,-2,-1,0,1,2,2.5,3.5];

quantization=[-3.5,-3,-2,-1,0,1,2,3,3.5];

[I,Q]=quantiz(S, partition, quantization);

plot(Q,'k')

hold on

plot(S,'g')

xlabel('Time in number of samples')
ylabel('Amplitude')

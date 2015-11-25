% Design a quantizer to quantize sampled signal, S=[-2.7,-1.6,-1.2,1.4,2.8,3.9,4.2]
% for the range, [3,inf]=3.5, [1,3]=2, [0,1]=0.5, and [-inf,0]=-1.

%Matlab Code
partition = [0,1,3];
quatization = [-1,0.5,2,3.5];

S=[-2.7,-1.6,-1.2,1.4,2.8,3.9,4.2]; %sapmled signal

[I,Q]=quantiz(S,partition,quatization);

%Q gives the quantized value
stem(S)
hold on
stem(Q,'>r')
grid on
S
Q

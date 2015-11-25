% Design a quantizer to quantize sampled signal,
% S=[-0.7,1.6,1.2,3.4,3.1,3.9,4.2] for the following pqrtition and
% quantization lavels. Also find PCM.

%Matlab Code
partition = [1.5,2.5,3.5];
quantization = [1,2,3,4];

S = [-0.7, 1.6, 1.2, 3.4, 3.1, 3.9, 4.2]; %sampled signal

[I,Q] = quantiz(S,partition,quantization);

%Q gives the quantize vale
Q
dec2bin(Q)  %Decimal to binary i.e., PCM

% Determine the maximum error and standard deviation of error; hence plot
% error versus time.

% Matlab code
t=0:0.01:2*pi;

S=4*sin(pi*t); %sampled signal

partition = [-3,-2,-1,0,1,2,2.5,3.5];

quantization = [-3.5,-3,-2,-1,0,1,2,3,3.5];

[I,Q]=quantiz(S,partition,quantization);

%Q gives quantized value

SD = sqrt(sum((Q-S).^2)/length(Q))
%Standard deviation of Q and S

E=max(abs(Q-S)) %maximum value of error

Er=S-Q;

plot(t,Er,'k')

xlabel('time')

ylabel('Error')

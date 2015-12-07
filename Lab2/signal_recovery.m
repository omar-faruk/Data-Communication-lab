%lab4 1/12/15
%recovery of signal using mu-law companding
%quantize an exponential signal in two ways
%direct quantization an evaluate mean square
%value of distortion or error
%evaluate mean square value of distortion using mu-law
%compare the results and coment on it
Mu=255;
t=-4:0.1:4;
S=exp(t);
V=max(S);
%let us quantize using equal length 
[index,quants,distor1]=quantiz(S,0:floor(V),0:ceil(V));
compsig=compand(S,Mu,V,'mu/compressor');

%quantize the compressed signal

[index,quants]=quantiz(compsig,0:floor(V),0:ceil(V));
Sn=compand(quants,Mu,max(quants),'mu/expander');

distor2=(sum(Sn-S)^2)/length(S);
%display both mean square distortion
[distor1,distor2]
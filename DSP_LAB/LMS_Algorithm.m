M=200;
mu=0.5;
w1(1)=0;
w2(1)=0;
N=16;
for k=2:M;
    d(k)=2*cos(2*pi*k/N);
    x1(k)=sin(2*pi*k/N);
    x2(k)=sin(2*pi*(k-1)/N);
    E(k)=d(k)-transpose([x1(k);x2(k)])*[w1(k-1);w2(k-1)];
    W=[w1(k-1);w2(k-1)]+mu*E(k)*[x1(k);x2(k)];
    
    w1(k)=W(1);
    w2(k)=W(2);
    geta(k)=(0.5)*(W(1)^2+W(2)^2)+W(1)*W(2)*cos(2*pi/N)+2*W(2)*sin(2*pi/N)+2;
end

w1
w2
subplot(2,2,1)
plot(1:M,w1,'--k')
xlabel('k')
ylabel('w1')
title('Profile of W1')
hold on

subplot(2,2,2)
plot(1:M,w2,'--k')
xlabel('k')
ylabel('W2')
title('Profile of w2')
hold on

subplot(2,2,3)
plot(w1,w2,'--k')
xlabel('w1')
ylabel('w2')
title('Profile of w1 and w2')
hold on

subplot(2,2,4)
plot(1:M,geta,'--k')
xlabel('k')
ylabel('geta')
title('profile of minimum error')
hold on
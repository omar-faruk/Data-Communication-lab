beta=5.2;
N=20;
n=1:1:20;
y=hamming(N);
y1=hann(N);
y2=kaiser(N,beta);
plot(n,y,'r^-',n,y1,'kd:',n,y2,'b*:');
xlabel('n');
ylabel('h(n)');
legend('Hamming','Hann','Kaiser');
grid on
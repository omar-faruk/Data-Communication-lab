N=3;
[W1,W2]=meshgrid(-8:0.5:8);
z=(0.5)*(W1.^2+W2.^2)+W1.*W2*cos(2*pi/N)+2*W2*sin(2*pi/N)+2;
figure(1)
mesh(z);
title('mesh plot');
figure(2);
contour(z);
title('contour plot');
y=min(z)
emin=min(y)
clear
s=poly(0,'s')

//Motor X
R = 1.8;
L = 0.000159;
Kt = 0.05567;
Kb = 0.05871;
I = 0.00004534;
p = 0.0028;
m = 0.218;
c = 95;
r = 0.011;
alfa = 60*%pi/180;
voltmax = 40;
d = m + 2*%pi*I*tan(alfa)/(p*r);

a22 = -c/d;
a23 = Kt*tan(alfa)/(r*d);
a32 = -2*%pi*Kb/(p*L);
a33 = -R/L;
b31 = 1/L;

Ax = [0 1 0; 0 a22 a23; 0 a32 a33];
Bx = [0; 0; b31];
Cx = [1 0 0];
Dx = 0;

motorX = syslin('c',Ax,Bx,Cx,Dx);

//Motor Y
R = 1.92;
L = 0.0001801;
Kt = 0.09156;
Kb = 0.08925;
I = 0.000098342;
p = 0.0042;
m = 0.375 + 0.218 + 0.13;
c = 95;
r = 0.02;
alfa = 60*%pi/180;
voltmax = 50;
d = m + 2*%pi*I*tan(alfa)/(p*r);

a22 = -c/d;
a23 = Kt*tan(alfa)/(r*d);
a32 = -2*%pi*Kb/(p*L);
a33 = -R/L;
b31 = 1/L;

Ay = [0 1 0; 0 a22 a23; 0 a32 a33];
By = [0; 0; b31];
Cy = [1 0 0];
Dy = 0;

motorY = syslin('c',Ay,By,Cy,Dy);

function [E,N] = cyclotron(V)
m=3.344e-27;
q=1.603e-19;
B=1.6;
r=sqrt(m*V/q/B^2);
c=-r/2.;
N=2;
d=0;
while d<=0.5
    r_past=r;
    r=sqrt(r^2+2*m*V/q/B^2);
    if mod(N,2)
        c=c-r+r_past;
    else
        c=c+r-r_past;
    end
    d=c+r;
    N=N+1;
end
E=V*(N-1)*1e-6;
N=N-1;
end
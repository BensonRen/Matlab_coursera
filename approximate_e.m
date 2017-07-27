function [appro,k]=approximate_e(delta)
appro=1;
k=0;
fac=1;
while abs(appro-exp(1))>delta
    k=k+1;
    fac=fac*k;
    appro=appro+1./fac;
end

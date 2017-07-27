function mbd = spherical_mirror_aberr(fn,D)
if isscalar(fn) && isscalar(D)
    f=fn*D;
    delta_x=0.01;
    x=0:delta_x:D/2;
    theta=asin(x./2/f);
    d1=2*f*tan(2*theta);
    d2=1./cos(theta)-1;
    d=d1.*d2;
    mbd=8*delta_x/D^2*sum(x*d');
end
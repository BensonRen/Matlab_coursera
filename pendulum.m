function T = pendulum(L,a0)
delta_t=1e-6;
a=a0;
w=0;
T=0;
if L<=0
    T=0;
    return
end

while a>0
    Acc=-9.8*sin(a)/L;
    w=w+delta_t*Acc;
    a=a+w*delta_t;
    T=T+delta_t;
end
T=4*T;
end
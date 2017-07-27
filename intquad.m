function Q=intquad(n,m)
a=zeros(n,m);
b=ones(n,m);
c=2*b;
d=3*b;
Q=[a b;c d]
end

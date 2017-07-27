function S=halfsum(A)
a=size(A);
S=0;
for i=1:a(2)
    b=a(1)+1-i;
    if b<=0
        b=1;
    end
    S=S+sum(A(b:a(1),i));
end
end
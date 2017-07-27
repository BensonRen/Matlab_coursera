function S=sum3and5muls(n)
a=floor(n/3);
b=floor(n/5);
c=floor(n/15);
A=3*[1:a];
B=5*[1:b];
C=15*[1:c];
S=sum(A)+sum(B)-sum(C);
end
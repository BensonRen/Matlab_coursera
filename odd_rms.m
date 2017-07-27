function orms=odd_rms(nn)
A=[];
i=1:nn;
A=2*i-1;
A=A.*A;
orms=sqrt(mean(A));
end
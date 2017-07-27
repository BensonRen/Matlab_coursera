function pre=zero_stat(A)
b=size(A);
pre=100*(1-sum(A(:))/(b(1)*b(2)));
end
function A=reverse_diag(n)
A=zeros(n);
i=(n:n-1:n^2-1);
A(i)=1;
end
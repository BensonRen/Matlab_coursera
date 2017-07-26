function B=top_right(N,n)
a=size(N);
B=N(1:n,a(2)-n+1:a(2));
end
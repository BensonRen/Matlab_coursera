function S=spiral_diag_sum(n)
S=1;
a=1;
if n~=1
    for i=3:2:n
        for j=1:4
            a=a+i-1;
            S=S+a;
        end
    end
end
end
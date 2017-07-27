function res=smallest_multiple(n)
res=uint64(n);
for i=n-1:-1:n/2
    res=lcm(res,i);
    if res+1~=res
        continue;
    else
        res=uint64(0);
        return;
    end
end
res=uint64(res);
end
function M=maxproduct(A,n)
a=size(A);
max=0;
M(n,2)=0;
if n>a(1) && n>a(2)
    M=[];
    return;
end

for i=1:a(1)
    for j=1:a(2)
        if j+n-1<=a(2)
            if prod(A(i,j:j+n-1))>max
                max=prod(A(i,j:j+n-1));
                M(:,1)=i;
                M(:,2)=j:j+n-1;
            end
        end
        if i+n-1<=a(1)
            if prod(A(i:i+n-1,j))>max
                max=prod(A(i:i+n-1,j));
                M(:,2)=j;
                M(:,1)=i:i+n-1;
            end
        end
        if i+n-1<=a(1) && j+n-1<=a(2)
            tem=1;
            for k=0:n-1
                tem=tem*A(i+k,j+k);
            end
            if tem>max
                max=tem;
                M(:,1)=i:i+n-1;
                M(:,2)=j:j+n-1;
            end
        end
        if j-n+1>=1 && i+n-1<=a(1)
            tem=1;
            for k=0:n-1
                tem=tem*A(i+k,j-k);
            end
            if tem>max
                max=tem;
                M(:,1)=i:i+n-1;
                M(:,2)=j:-1:j-n+1;
            end
        end
    end
end
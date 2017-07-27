function n = palin_product(dig,lim)

n=0;
a=10^dig;
A=[];

for i=a/10+1:a-1
    for j=i:a-1
        b=int2str(i*j);
        tem=1;
        for k=1:length(b)/2.+1
            if b(k)==b(length(b)-k+1)
                continue;
            else
                tem=0;
                break;
            end
        end
        if tem==1
            A=[A i*j];
        end
    end
end
A=sort(A,'descend');
B=(lim>A);
c=find(B,1);
if isempty(c)==0
    n=A(c);
end
end



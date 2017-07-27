function c=logipack(A)
a=length(A);
c={};
for i=1:a
    tem=[];
    for j=1:a
        if A(i,j)
            tem=[tem j];
        end
    end
    c{i}=tem;
end
end
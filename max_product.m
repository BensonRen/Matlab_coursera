function [Pro,Ind]=max_product(v,n)

if length(v)<n
    Pro=0;
    Ind=-1;
    return
end
Pro=[];
Ind=1;
for i=1:length(v)-n+1
    Tem=1;
    for j=i:i+n-1
        Tem=Tem*v(j);
    end
    if isempty(Pro)
        Pro=Tem;
    elseif Tem>Pro
        Pro=Tem;
        Ind=i;
    end
end       
end
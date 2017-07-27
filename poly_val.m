function p=poly_val(c0,c,x)
if isempty(c)
    p=c0;
elseif isscalar(c)
    p=c0+c*x;
else
    a=length(c);
    b=1:a;
    b=x.^b;
    if isequal(size(c),[1 a])
        p=c0+sum(c.*b);
    else
        p=c0+sum(c.*b');
    end
end
end
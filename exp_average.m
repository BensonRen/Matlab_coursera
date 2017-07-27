function ewma=exp_average(a,b)
persistent last;
persistent beta;
if nargin==2
    last=a;
    beta=b;
    ewma=last;
elseif nargin==1
    if isempty(last)
        last=a;
        beta=0.1;
    else
        last=beta*a+(1-beta)*last;
    end
    ewma=last;
end

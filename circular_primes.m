function m=circular_primes(n)
m=0;
list=[];
P=primes(n-1);
for i=1:length(P)
    a=num2str(P(i));
    for j=1:length(a)
        tem=1;
        b=str2num(strcat(a(j:end),a(1:j-1)));
        if ~isprime(b)
            tem=0;
            break;
        end
    end
    if tem==1
        m=m+1;
        list=[list P(i)];
    end
end
end
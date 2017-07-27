function S=simple_stats(N)
a=size(N);
S=ones(a(1),4);
i = 1:a(1);
T=N';

S(i,1)=mean(T(:,i)); 
S(i,2)=median(T(:,i));
S(i,3)=min(T(:,i));
S(i,4)=max(T(:,i));

end
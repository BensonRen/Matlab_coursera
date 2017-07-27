function w = move_me(v,a)
count=0;
w=[];
if nargin==1
    a=0;
end
for i=1:length(v)
    if v(i)==a
        count=count+1;
    else
        w=[w v(i)];
    end
end
for i=1:count
    w=[w a];
end
end

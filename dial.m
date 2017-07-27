function num=dial(c)
num=uint64(0);
b=length(c);
if b>16
    return;
end
a=abs(c);
tem=0;
for i=1:b
    if a(i)<48 || a(i)>90
        return;
    elseif a(i)>57 && a(i)<65
        return;
    elseif a(i)<60
        tem=tem+str2num(c(i))*10^(b-i);
    elseif a(i)<83
        tem=tem+floor((a(i)-59)/3)*10^(b-i);
    elseif a(i)==83
        tem=tem+7*10^(b-i);
    elseif a(i)<=86
        tem=tem+8*10^(b-i);
    elseif a(i)<=90
        tem=tem+9*10^(b-i);
    end
end
num=uint64(tem);
end
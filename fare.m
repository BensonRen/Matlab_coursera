function f=fare(dis,age)
dis=round(dis);
if dis<=1
    f=2;
elseif dis<=10
    f=2+0.25*(dis-1);
else
    f=2+0.25*9+(dis-10)*0.1;
end

if age<=18 || age>=60
    f=f*0.8;
end
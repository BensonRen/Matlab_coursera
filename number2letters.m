function num=number2letters(n)
under_20={'one','two','three','four','five','six','seven','eight','nine','ten','eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen','twenty'};
tens={'ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety'};
num=0;
a=floor(n/100);
%%IF it has hundred digit number
if logical(a)
    num=num+length(under_20{a})+7;
    b=n-a*100;
    if b==0
        return;
    elseif b<20
        num=num+length(under_20{b});
    else
        c=floor(b/10);
        d=b-c*10;
        if d>0
            num=num+length(tens{c})+length(under_20{d});
        else
            num=num+length(tens{c});
        end
    end
elseif n<=20
    num=length(under_20{n});
else
    c=floor(n/10);
    d=n-c*10;
    if d>0
        num=num+length(tens{c})+length(under_20{d});
    else
        num=num+length(tens{c});
    end
end
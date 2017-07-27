function [a,b,c]=sort3(v)
if v(1)<=v(2)
    if v(1)<=v(3)
        a=v(1);
        if v(2)>=v(3)
            b=v(3);
            c=v(2);
            return
        else
            b=v(2);
            c=v(3);
            return
        end
    else
        a=v(3);
        b=v(1);
        c=v(2);
        return
    end
elseif v(2)>=v(3)
    a=v(3);
    b=v(2);
    c=v(1);
    return
elseif v(2)<=v(3)
    a=v(2);
    if v(1)>=v(3)
        b=v(3);
        c=v(1);
    else
        b=v(1);
        c=v(3);
    end
end
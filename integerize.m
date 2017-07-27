function S=integerize(A)
num=1;
for i=1:numel(A)
    
    if (A(i)-int8(A(i)))~=0
        if (A(i)-int16(A(i)))~=0
            if (A(i)-int32(A(i)))~=0
                if (A(i)-int64(A(i)))~=0
                    S='NONE';
                    return
                else
                    tem=64;
                end
            else
                tem=32;
            end
        else
            tem=16;
        end
    else tem=8;
    end
    
    if tem>=num
        num=tem;
    end
end
num=num2str(num);
a='int';
S=strcat(a,num);
end
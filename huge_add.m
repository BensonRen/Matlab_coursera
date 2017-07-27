function output=huge_add(n1,n2)
%%MAKE SURE THE INPUT IS VALID
if sum(isstrprop(n1,'digit'))==length(n1) && sum(isstrprop(n2,'digit'))==length(n2) && ischar(n1) && ischar(n2)
    
    %make a 2*a matrix to store the two huge numbers
    a=length(n1);
    b=length(n2);
    c=max(a,b);
    A=zeros(3,c+1);
    
    %assign the numbers into the matrix
    for i=1:a
        A(1,c-i+2)=str2num(n1(a-i+1));
    end
    for i=1:b
        A(2,c-i+2)=str2num(n2(b-i+1));
    end
    
    %%Start adding the two huge numbers to the third row of the matrix
    add=0;
    for i=c+1:-1:1
        A(3,i)=A(1,i)+A(2,i)+add;
        if A(3,i)>=10
            add=1;
            A(3,i)=mod(A(3,i),10);
        else
            add=0;
        end
    end
    
    
    if A(3,1)==1;
        output='';
    %print the output into char
        for i=1:c+1
          output=strcat(output,num2str(A(3,i)));
        end
    else
        output='';
        for i=2:c+1
          output=strcat(output,num2str(A(3,i)));
        end
    end
else
    output=-1;
end
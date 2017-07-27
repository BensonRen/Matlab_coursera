function A=small_elements(X)
a=size(X);
A=[];
for j=1:a(2)
    for i=1:a(1);
        if X(i,j)<i*j
            A=[A;i j;];
        end
    end
end    
end
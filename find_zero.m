function x = find_zero(f,x1,x2)
%%FIND_ZERO description
%The first input argument is special. It is a ¡°function
%handle¡±. A function handle is gotten by typing @
%and the name of any function.
x=x1;
while abs(f(x))>=1e-10
    x=(x1+x2)/2.;
    if f(x1)*f(x)<0
        x2=x;
    else
        x1=x;
    end
end
end
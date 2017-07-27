function S=triangle_wave(n)
t=0:4*pi/1000:4*pi;
S=0;
for k=0:n
    b=2*k+1;
    S=S+((-1)^k)*sin(t*b)/b^2;
end

end
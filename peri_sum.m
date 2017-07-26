function a= peri_sum(A)
a=sum(A(1:end,1))+sum(A(1:end,end))+sum(A(1,2:end-1))+sum(A(end,2:end-1));
end
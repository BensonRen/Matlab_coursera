function [res,avg]=sindeg(deg)
res=sin(deg./180.*pi);
avg=mean(res(:));
end
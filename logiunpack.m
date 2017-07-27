function M=logiunpack(c)
%LOGIUNPACK Summary of this function goes here
%   c is cell vector
%   M is corresponding n x n logical matrix
l=length(c);
M=zeros(l);
for i=1:l
    if isempty(c{i})==0
        M(i,c{i})=1;
    end
end
M=logical(M);

end
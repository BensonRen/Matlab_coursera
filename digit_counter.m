function dig=digit_counter(infile)
fid=fopen(infile,'rt');
if fid<0
    dig=-1;
    return
end
A=fread(fid,inf,'char');
dig=A(isstrprop(A,'digit'));
dig=length(dig);

fclose(fid);
end
function char_vec=centuries(year)
%%CNETURIES FUNCTION
%this function  takes a positive integer smaller than or equal to 3000 representing a year as its input and returns a char vector with the century the given year falls into. If the input is invalid, the function returns the empty char vector '' (there is no space between the apostrophes). Centuries are specified using roman numerals. Note that we require the shortest legal roman number.
if isscalar(year)==0
    char_vec='';
    return
elseif (year>3000) || (fix(year)-year~=0) ||(year<=0)
    char_vec='';
    return

end
centurytable={'I','II','III','IV','V','VI','VII','VIII','IX','X','XI','XII','XIII','XIV','XV','XVI','XVII','XVIII','XIX','XX','XXI','XXII','XXIII','XXIV','XXV','XXVI','XXVII','XXVIII','XXIX','XXX'};
if mod(year,100)==0
    char_vec=centurytable{year/100};
    return
else
    char_vec=centurytable{floor(year/100)+1};
end
end
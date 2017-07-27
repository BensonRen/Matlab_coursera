function s=year2016(n)
m=1:12;
if ismember(n,m)==0
    s=[];
    return 
elseif isscalar(n)==0
    s=[];
    return 
end
mon={'January','February','March','April','May','June','July','August','September','October','November','December'};
week=['Mon';'Tue';'Wed';'Thu';'Fri';'Sat';'Sun'];
dates=[31,29,31,30,31,30,31,31,30,31,30,31];
add=[3,6,0,3,5,1,3,6,2,4,0,2];
for i=1:dates(n)
    s(i).month=mon{n};
    s(i).date=i;
    d=mod(i+add(n),7)+1;
    s(i).day=week(d,:);
end
end
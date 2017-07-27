function dd=day_diff(month1,day1,month2,day2)
monthrange=1:12;
dayrange=1:31;
m=[31 28 31 30 31 30 31 31 30 31 30 31];
if isequal(size(month1),[1 1])&&isequal(size(day2),[1 1])&&isequal(size(day1),[1 1])&&isequal(size(month2),[1 1])
    if ismember(month1,monthrange) && ismember(month2,monthrange) && ismember(day1,dayrange) && ismember(day2,dayrange) && day1<=m(month1) && day2<=m(month2)
        if month1<month2
            inter=[month1:month2];
          dd=sum(m(inter))-day1-(m(month2)-day2);
       elseif month1==month2
           dd=abs(day1-day2);
        else
            inter=[month2:month1];
            dd=sum(m(inter))-day2-(m(month1)-day1);
        end
    else
     dd=-1;
    end
else
    dd=-1;
end

end
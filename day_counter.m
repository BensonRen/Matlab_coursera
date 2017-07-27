function num_mon=day_counter(year)
month_days=[31 28 31 30 31 30 31 31 30 31 30 31];
month_days_leap=[31 29 31 30 31 30 31 31 30 31 30 31];
calen={};
acc=1;
start_year=1776;
end_year=2016;
count=0;
%%CALENDAR CREATION
%Creat a calandar that starts from the 
for i=1:end_year-start_year+1
    y=i+start_year-1;
    %%LEAP_YEAR_DETERMINATOR
    %determine it is a leap year or not
    if ~mod(y,4) && mod(y,100) || ~mod(y,400)
            %Year Y is a leap year
            mm=month_days_leap;
        else
            %Year Y is a normal year
            mm=month_days;
    end
    
    %%ADDING DAY_COUNTS TO THE CALANDAR
    %using for loops and while loops, input all the dates into the calendar
    for j=1:12
        k=1;
        while k<=mm(j)
            calen{i}{j}(k)=acc;
            k=k+1;
            acc=acc+1;
        end
    end
end
%%DETERMINE THE #Mondays in a year
for i=1:12
    y=year-start_year+1;
    if mod(calen{y}{i}(1),7)==1
        count=count+1;
    end
end
num_mon=count;
end
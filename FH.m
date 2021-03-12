function y=FH(x) %family history 
switch x
    case 1 %family members lived more than 70 and without heart problems under 50.
        y=2;
    case 2  % one family member with heart problems under 50
        y=1;
    case 3  % more than two family members with heart problems under 50
        y=-1;
    case 4
        y=0; % don't know
end
end

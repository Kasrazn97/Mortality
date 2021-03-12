function y=Chek(x) %doctor visit
switch x
     case 1 % regularly cheked
        y=1;
    case 2 % time to time
        y=0;
    case 3 % never
        y=-1;
end
end

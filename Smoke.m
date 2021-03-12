function y=Smoke(x)
switch x
     case 1 %never
        y=2;
    case 2 %quit more tha n2 years ago
        y=1;
    case 3  % quit less than 2 years ago
        y=-1;
    case 4 %less tha n2 packs per day
        y=-3;
    case 5 %more than 2 packs per day
        y=-8;
end
end

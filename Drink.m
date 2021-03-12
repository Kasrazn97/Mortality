function y=Drink(x)
switch x
    case 1 % 2 drink per day or never
        y=1;
    case 2 % 3 or 4 drinks more than 2 times a week
        y=-3;
    case 3 % more than 5 drinks more than one time per month
        y=-6;
end
end

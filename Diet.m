function y=Diet(x)
switch x
    case 1 %5 serves of fruits and vegetables per day
        y=3;
    case 2 %median serves of vegetables and low fastfood
        y=0;
    case 3 %median fastfood and low vegetables
        y=-2;
end
end


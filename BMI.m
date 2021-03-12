function y=BMI(w,h)
h=h/100;
bmi=w/h^2;
if bmi > 35
    y=-10;
elseif bmi<35 && bmi>30
        y=-3;
elseif bmi<18.5
            y=-3;
else y=0;    
end
end
        
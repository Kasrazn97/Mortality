function y=BP(x)
switch x
    case 1 %don't know
        y=-2;
    case 2  % regularly cheked and normal
        y=3;
    case 3 %regularly cheked with high blood pressure but under control
        y=2;
    case 4  %high blood pressure and no control on it
        y=-3; 
end
end
%Function calculating roots of given legendre polynomial using built-in
%MatLAB function
%Usage: getlegenferroots(l), where l is coefficeints vector
%Output: roots vector
function [x] = getlegendreroots(l)

if l<1
    x=NA;
    disp("getlegendreroots(n), n must be greater than 0")
    return;
end

if l==1
    x=0;
    return;
end

x = roots(l);
return


x = zeros(1,200);
y= zeros(1,200);
p = rand(1,3);

h1 = 2/200;
h2 = 2/200;
for k = 1:200
    x(k) = -1+k*h1;
end
for k = 1:200
    y(k) = -1+k*h2;
end
A = zeros(200, 200);
for k=1:200
    for j=1:200
        v=x(k) + y(j)*1i;
        [a,b] = polyweier(p,v,1.e-12,1000);
        A(k,j) = b;
    end
end
imagesc(A);

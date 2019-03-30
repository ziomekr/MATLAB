%Tests of Gauss_Legendre method for calculating p(x). Tests consist of
%integration of polynomial of smaller than 2n-1, equal 2n-1 and equal to
%2n, where n is number of points of integration. As expected, method works
%for polynomials of degree smaller or equal 2n-1 and produces significant
%error for polynomials of higher degree

a0=rand(1,3); %3 random coefficients, degree of polynomial=2
calculated_value=integratechebyshev(a1,3); %value calculated by implemented method, 3 integration points
actual_value=checkchebintegr(a1); %actual value
error=actual_value-calculated_value %error

a1=rand(1,6); %6 random coefficients, degree of polynomial=5
calculated_value=integratechebyshev(a1,3); %value calculated by implemented method, 3 integration points
actual_value=checkchebintegr(a1); %actual value
error=actual_value-calculated_value %error

a2=rand(1,7); %7 random coefficients, degree of polynomial=6
calculated_value=integratechebyshev(a2,3); %value calculated by implemented method, 3 integration points
actual_value=checkchebintegr(a2); %actual value
error=actual_value-calculated_value %error

a3=rand(1,12); %12 random coefficients, degree of polynomial=11
calculated_value=integratechebyshev(a3,9) ;%value calculated by implemented method, 9 integration points
actual_value=checkchebintegr(a3); %actual value
error=actual_value-calculated_value

a4=rand(1,18); %18 random coefficients, degree of polynomial=17
calculated_value=integratechebyshev(a4,9) ;%value calculated by implemented method, 9 integration points
actual_value=checkchebintegr(a4); %actual value
error=actual_value-calculated_value %error

a5=rand(1,19); %19 random coefficients, degree of polynomial=18
calculated_value=integratechebyshev(a5,9); %value calculated by implemented method, 9 integration points
actual_value=checkchebintegr(a5); %actual value
error=actual_value-calculated_value %error

a6=rand(1,20); %20 random coefficients, degree of polynomial=19
calculated_value=integratechebyshev(a6,15); %value calculated by implemented method, 15 integration points
actual_value=checkchebintegr(a6); %actual value
error=actual_value-calculated_value %error

a7=rand(1,30); %30 random coefficients, degree of polynomial=29
calculated_value=integratechebyshev(a7,15);%value calculated by implemented method, 15 integration points
actual_value=checkchebintegr(a7); %actual value
error=actual_value-calculated_value %error

a8=rand(1,31); %31 random coefficients, degree of polynomial=30
calculated_value=integratechebyshev(a8,15); %value calculated by implemented method, 15 integration points
actual_value=checkchebintegr(a8); %actual value
error=actual_value-calculated_value %error

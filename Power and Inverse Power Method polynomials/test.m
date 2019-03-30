%Test script, tests 1-5 are with roots that are significantly different
%from each other (in absolute value). In other tests, the difference is
%small.
tolerance = 1e-10;

%TEST 1
disp('Roots: -1,2,3');
roots = [-1,2,3];
[minRoot, maxRoot, steps] = stepsTest(roots, tolerance)

%TEST 2
disp('Roots: -7,9,3,5');
roots = [-7,9,3,5];
[minRoot, maxRoot, steps] = stepsTest(roots, tolerance)

%TEST 3
disp('Roots: 1,2,3,3,4,5,6,7,8,9,10');
roots = [1,2,3,3,4,5,6,7,8,9,10];
[minRoot, maxRoot, steps] = stepsTest(roots, tolerance)

%TEST 4
disp('Roots: -100, 10000, 0.00000000000001');
roots = [-100, 10000, 0.00000000000001];
[minRoot, maxRoot, steps] = stepsTest(roots, tolerance)

%TEST 5
disp('Roots: -0.001, 123, 0.000003');
roots = [-0.001, 123, 0.000003];
[minRoot, maxRoot, steps] = stepsTest(roots, tolerance)

%TEST 6
disp('Roots: 1, 3, 5, 7, 9, 11');
roots = [1, 3, 5, 7, 9, 11];
[minRoot, maxRoot, steps] = stepsTest(roots, tolerance)


%TEST 7
disp('Roots: 14, 14.01');
roots = [ 14, 14.01];
[minRoot, maxRoot, steps] = stepsTest(roots, tolerance)

%TEST 8
disp('Roots: -1.000123, 1.000132');
roots = [ -1.000123, 1.000132];
[minRoot, maxRoot, steps] = stepsTest(roots, tolerance)


%TEST 9
disp('Roots: 1.000123, 1.000132');
roots = [ 1.000123, 1.000132];
[minRoot, maxRoot, steps] = stepsTest(roots, tolerance)

%TEST 10
disp('Roots: 2, -2.05');
roots = [ 2, -2.05];
[minRoot, maxRoot, steps] = stepsTest(roots, tolerance)
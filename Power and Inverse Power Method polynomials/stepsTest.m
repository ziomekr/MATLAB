%Function for testing. It runs an algorithm to the point where given
%tolerance is reached. However some tests gave results that were not
%converging, hence the limit 2000 for steps, so the program does not enter
%infinite (or very very long) loop
%Inputs: roots- vector of roots, tolerance - wanted tolerance
%Output: min_root - calculated smallest root, max_root - calculated largest
%root, steps - number of steps needed for given tolerance, if >2000, then
%it hold error
function [min_root, max_root, steps] = stepsTest(roots, tolerance)

coefs = generatePolyWithGivenRoots(roots);
err = 1;
steps = 1;
[~,idx_min] = min(abs(roots));
[~,idx_max] = max(abs(roots));
root_min = roots(idx_min);
root_max = roots(idx_max);
while (err>tolerance)
    [min_root, max_root] = findMinMaxRoots(coefs,steps);
    err = max(abs([root_min-min_root, root_max-max_root]));
    steps = steps + 1;
    if (steps>2000)
        disp("Number of steps more than 2000");
        steps = err;
        return
    end
end

end


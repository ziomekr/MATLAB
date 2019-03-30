%Function takes coefficients matrix, without coef of x^n since it is 1 and
%returns min and max root in absolute value, number of steps is fixed
function [root_min,root_max] = findMinMaxRoots(coefVector, steps)
   compMatrix = createCompanionMatrix(coefVector);
   root_max=powerMethod(compMatrix, steps);
   root_min=inversePowerMethod(compMatrix,steps);
end


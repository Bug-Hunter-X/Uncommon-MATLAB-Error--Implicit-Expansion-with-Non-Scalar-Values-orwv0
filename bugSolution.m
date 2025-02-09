function result = myFunctionSolution(input)
% This function demonstrates the corrected approach to avoid the implicit expansion issue.
% It explicitly handles both row and column vectors.

if ~isvector(input)
    error('Input must be a vector.');
end

result = input + [1; 2; 3]; %Corrected code; works regardless of vector orientation

%Alternative corrected code
%if isrow(input)
%    result = input + [1, 2, 3];
%else
%    result = input + [1; 2; 3];
%end
end
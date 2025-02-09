function result = myFunction(input)
% This function demonstrates an uncommon MATLAB error related to implicit expansion.
% It incorrectly uses implicit expansion with a non-scalar value.

if ~isvector(input)
    error('Input must be a vector.');
end

result = input + [1, 2]; % Implicit expansion that will work for row vectors only

end
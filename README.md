# Uncommon MATLAB Error: Implicit Expansion with Non-Scalar Values

This repository demonstrates an uncommon error in MATLAB related to implicit expansion with non-scalar values.

## Description

The `bug.m` file contains a MATLAB function `myFunction` that attempts to add a scalar value to a vector using implicit expansion.  This approach works correctly only if the vector is a row vector; however, the code doesn't explicitly check or handle the case of a column vector.  This leads to an error or incorrect results when a column vector is passed as an input. 

The `bugSolution.m` file provides a corrected version of the function that addresses this issue by using explicit element-wise operations.

## How to Reproduce

1. Clone this repository.
2. Open MATLAB.
3. Navigate to the directory containing the `bug.m` and `bugSolution.m` files.
4. Run the following commands in the MATLAB command window:

```matlab
result1 = myFunction([1, 2, 3]);  %This will work for row vector
result2 = myFunction([1; 2; 3]); % This will produce an error
result3 = myFunctionSolution([1; 2; 3]); %This will work
```

## Solution

The solution involves explicit handling of element-wise operations rather than relying on implicit expansion with non-scalars, ensuring compatibility regardless of the vector orientation.

function [L,U] = my_LUdecomp(A)
% check the size of A
[n,m] = size(A);
if n~=m
    error("The matrix should be square")
end
% essential computation starts here
L = eye(n);
U = A;
for i=1:n-1
    % check whether the current pivot is nonzero
    if U(i,i)==0.
       error("The %dth pivot is zero",i)
    end
    % row multipliers
    rm = U(i+1:n,i)/U(i,i);
    L(i+1:n,i) = rm;
    % row operations
    U(i+1:n,i) = zeros(n-i,1);
    U(i+1:n,i+1:n) = U(i+1:n,i+1:n) - rm*U(i,i+1:n);
end
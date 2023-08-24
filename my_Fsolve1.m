function x = my_Fsolve(A,b)
n = 3;
x(1,1) = b(1)/A(1,1);
for i = 2:n
    x(i,1)=(b(i)-A(i,1:i-1)*x(1:i-1,1))./A(i,i);
end
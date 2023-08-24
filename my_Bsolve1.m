function y = my_Bsolve(A,b)
n = 3;
y(3,1) = b(n)/A(n,n);
for i = n-1:-1:1
    y(i,1)=(b(i)-A(i,i+1:n)*y(i+1:n,1))./A(i,i);
end

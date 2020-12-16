A = [16 2 3 13;
    3 4 5 6;
    3 5 6 7;
    3 4 5 6];
A(1:4,1:2)

v = zeros(10,1)
X = magic(10)
x = X(:,1)

A=magic(10)
for i = 1:10
  for j = 1:10
    v(i) = v(i) + A(i, j) * x(j);
  end
end
v

sum(A*x)

v =[1 2 3 4 5 6 7]
w = [1 2 3 4 5 6 7]


z = 0;
for i = 1:7
  z = z + v(i) * w(i);
end


disp(z)

w'*v

sum(v.*w)

A = zeros(7, 7)

A = A+1
A/4
A.^2
A^2


A = [1 2; 3 4; 4 5]
B = [1 2 3; 4 5 6]

A'+B

A = magic(10)

v = 2*ones(10,1)

A*x == A*x


v = ones(7,1)
w = ones(7,1)

v= 2*v
w=2*w

p= w'*v

disp(p)

sum(v.*w)

z = 0;
for i = 1:7
  z = z + v(i) * w(i);
end

z



A = ones(7)

A = 2*A

A/4
A+1
A.^2
A^2
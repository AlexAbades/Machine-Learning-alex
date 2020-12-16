X = [1 2 3 4;
     5 6 7 8;
     2 2 1 4;
     5 7 2 1;
     7 3 3 8;
     3 4 5 2;
     2 3 4 5;
     2 4 1 5]

A = sum(X,1)
B = A/5
C = (X - B)
D = C*C'



a = zeros(1, 1000); 
a(1:100:end) = 1;

% We have 1000 points and 10 pints positive

c = find(a == 1);
c = c(:,1:5);
y = a;

y(c)=0;
find(y==1)
% True positives 
find(y == 1 & a==1)

% False positives
sum(y==0 & a==1)

% Random vector 
g = randperm(1000,1000);

g_bin = g<200;


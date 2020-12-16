% Testing sigmoid function in matrices 
A = ones(4,1)



X = [ 1 45 85;
    1 65 55;
    1 65 65;
    1 70 40;
    1 60 60];
size(X)
theta = [-25.3613; 0.2062; 0.2015];
size(theta)



sigmoid(X*theta)

predict(theta, X)

theta = [1; 2; 4; 6; 8]


sum(theta(2:end).^2)

sum(theta.^2)
[m, n] = size(ones(5));
L = [0, ones(1, n-1)]'

L1 = eye(n);
L1(1,1) = 0;
L1


A = L.*theta 
A1 = L1*theta 


5*A/10
A*5/10

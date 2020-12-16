data = load("ex2data2.txt");
X = data(:, [1, 2]); y = data(:, 3);
X = mapFeature(X(:,1), X(:,2));

% Initialize fitting parameters
initial_theta = zeros(size(X, 2), 1);

% Set regularization parameter lambda to 1
lambda = 1;

% Compute and display initial cost and gradient for regularized logistic regression
% [cost, grad] = costFunctionReg(initial_theta, X, y, lambda);
fprintf('Cost at initial theta (zeros): %f\n', cost);
disp('The gradient matrix is: ')
grad


% Validating the vectorized function 
data = load("ex2data2.txt");
X = data(:, [1, 2]); y = data(:, 3);

% Adding some extra features
X = mapFeature(X(:,1), X(:,2));

% Initialize fitting parameters
initial_theta = zeros(size(X, 2), 1);

% Set regularization parameter lambda to 1
lambda = 10;

% Compute and display initial cost and gradient for regularized logistic regression
% [cost1, grad1] = Vectorized(initial_theta, X, y, lambda);
fprintf('Cost at initial theta (zeros): %f\n', cost1);
disp('The gradient matrix is: ')
grad1

disp("It is the cost equal for the two equations?")
cost == cost1

disp("It's the gradient equal for the two equations?")
% grad == grad1

% [grad, grad1]






X = [2 4 6 8;
    1 3 5 7;
    2 3 4 5];

m = length(X)

y = [6; 8; 10];

theta = [1; 2; 3; 4];

hx = sigmoid(X * theta);
m = length(X);

J = (sum(-y' * log(hx) - (1 - y')*log(1 - hx)) / m) + lambda * sum(theta(2:end).^2) / (2*m)

h = sigmoid(X * theta);
J1 = ((-y'*(X*theta) - (1-y)'*log(1-(X*theta)))/m) %+ (lambda * sum(theta(2:end).^2)*(1/2*m))



L = eye(length(theta));
L(1,1) = 0

grad = (1/m * X'*(h-y)) + (lambda*(L*theta)/m)



grad =((hx - y)' * X / m)' + lambda .* theta .* [0; ones(length(theta)-1, 1)] ./ m 

A = [2;
     3;
     4];

sum(A.^2)


sigmoid(X*theta)

data = load("ex2data2.txt");
X = data(:, [1, 2]); y = data(:, 3);
X = mapFeature(X(:,1), X(:,2));


lambda * sum(theta(2:end).^2) / (2*m)

(lambda/(2*m)) * sum((L*theta).^2)

function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% We create an identity matrix and substitute the first element by a 0.
L = eye(length(theta));
L(1,1)=0;


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%


% Calculate the predctions
h = X*theta; % (mx1)

% Calculate the cost function
J = 1/(2*m)*sum((h-y).^2) + lambda/(2*m)*sum(theta(2:end).^2);

% Calculate the cost function
% grad = 1/m * X'*(h-y) + lambda/m * [zeros((length(theta)-1),1) theta(2:end)];  % It doesn't work, don't know why

grad = (X'*(X*theta - y))/m + (lambda*L*theta)/m;  % We use the identity matrix with the first element substitued to don't regularize the baies term of the theta.

% =========================================================================

grad = grad(:);

end

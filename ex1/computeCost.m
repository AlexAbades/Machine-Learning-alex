function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y
%   X it's a (mx2) matrix (we have put one ones column)
%   y it's a (mx1) martix (or vector) 
%   Theta it's (2x1) matrix (or vector)
%   Predictions = (mx2)*(2x1) = (mx1)
%   sqrError = ((mx1)-(mx1)).^2 --> we put the element wise power ( we want
%   x(i) element minus y(i) element to the power of two

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
predictions = X*theta; % (mx1)
sqrErrors = (predictions-y).^2; % (mx1)

J = 1/(2*m)*sum(sqrErrors); 


% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.





% =========================================================================

end

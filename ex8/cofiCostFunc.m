function [J, grad] = cofiCostFunc(params, Y, R, num_users, num_movies, ...
                                  num_features, lambda)
%COFICOSTFUNC Collaborative filtering cost function
%   [J, grad] = COFICOSTFUNC(params, Y, R, num_users, num_movies, ...
%   num_features, lambda) returns the cost and gradient for the
%   collaborative filtering problem.
%

% Unfold the U and W matrices from params
X = reshape(params(1:num_movies*num_features), num_movies, num_features);
Theta = reshape(params(num_movies*num_features+1:end), ...
                num_users, num_features);

            
% You need to return the following values correctly
J = 0;
X_grad = zeros(size(X));
Theta_grad = zeros(size(Theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost function and gradient for collaborative
%               filtering. Concretely, you should first implement the cost
%               function (without regularization) and make sure it is
%               matches our costs. After that, you should implement the 
%               gradient and use the checkCostFunction routine to check
%               that the gradient is correct. Finally, you should implement
%               regularization.
%
% Notes: X - num_movies  x num_features matrix of movie features
%        Theta - num_users  x num_features matrix of user features
%        Y - num_movies x num_users matrix of user ratings of movies
%        R - num_movies x num_users matrix, where R(i, j) = 1 if the 
%            i-th movie was rated by the j-th user
%
% You should set the following variables correctly:
%
%        X_grad - num_movies x num_features matrix, containing the 
%                 partial derivatives w.r.t. to each element of X
%        Theta_grad - num_users x num_features matrix, containing the 
%                     partial derivatives w.r.t. to each element of Theta
%

% First we'd like to get out the null values those ones that have not 
% rating, because we only want to compre the prediction values with the 
% values that we have. We can do that with binay matrix R which contains
% one if the user j has rated the movie i.
% Y.^R

% To calculate the cost function, we have to get rid of the values that
% we've predicted and we don't have nothing to compare with, those values
% which the user hasn't rated. Because if not, as we've filtered the true
% values Y puting a 0 on those null values, when we compute the cost
% function, even if we don't have nothing to compare those values with, 
% we'll get some value X 


% Cost Function 
J = (1/2) * sum(sum(((X*Theta'-Y).*R).^2));


% Regularized Terms
% We don't have the bais terms, so we don't have to extract the first
% element of the row

% Regularized Theta 
r_theta = lambda * sum(sum(Theta.^2)) / 2;

%Regularized X
r_x = lambda * sum(sum(X.^2)) / 2;

% Regulrized cost function J
J = J + r_theta + r_x;



% Calculate the gradients

% X gradient 
X_grad = ((X*Theta'-Y).*R)*Theta;
% It has to be of the same dimensions of X (5x3)

% Theta Gradient 
Theta_grad = ((X*Theta'-Y).*R)'*X;
%It has to be of the same dimensions of the matrix Theta (4x3)

% Regularized gradients
X_grad = X_grad + lambda*X;

Theta_grad = Theta_grad + lambda*Theta;












% =============================================================

grad = [X_grad(:); Theta_grad(:)];

end

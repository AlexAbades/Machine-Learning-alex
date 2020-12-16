function [error_train, error_val] = ...
    learningCurve(X, y, Xval, yval, lambda)
%LEARNINGCURVE Generates the train and cross validation set errors needed 
%to plot a learning curve
%   [error_train, error_val] = ...
%       LEARNINGCURVE(X, y, Xval, yval, lambda) returns the train and
%       cross validation set errors for a learning curve. In particular, 
%       it returns two vectors of the same length - error_train and 
%       error_val. Then, error_train(i) contains the training error for
%       i examples (and similarly for error_val(i)).
%
%   In this function, you will compute the train and test errors for
%   dataset sizes from 1 up to m. In practice, when working with larger
%   datasets, you might want to do this in larger intervals.
%

% Number of training examples
m = size(X, 1);

% You need to return these values correctly
error_train = zeros(m, 1);
error_val   = zeros(m, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return training errors in 
%               error_train and the cross validation errors in error_val. 
%               i.e., error_train(i) and 
%               error_val(i) should give you the errors
%               obtained after training on i examples.
%
% Note: You should evaluate the training error on the first i training
%       examples (i.e., X(1:i, :) and y(1:i)).
%
%       For the cross-validation error, you should instead evaluate on
%       the _entire_ cross validation set (Xval and yval).
%
% Note: If you are using your cost function (linearRegCostFunction)
%       to compute the training and cross validation error, you should 
%       call the function with the lambda argument set to 0. 
%       Do note that you will still need to use lambda when running
%       the training to obtain the theta parameters.
%
% Hint: You can loop over the examples with the following:
%
%       for i = 1:m
%           % Compute train/cross validation errors using training examples 
%           % X(1:i, :) and y(1:i), storing the result in 
%           % error_train(i) and error_val(i)
%           ....
%           
%       end
%

% ---------------------- Sample Solution ----------------------
% We set lambda to 0 because we don't want regularitzation term.
% lambda = 0;

% We don't need to initialize the Theta gradient, because when we call
% the trainLinearReg function, the own function initialize the gradient
% with 0. Then we only have to call the function.

% X = [ones(m,1) X];



% We create a for loop to make subsets of m training
for i =1:m
    
    [theta] = trainLinearReg(X(1:i,:), y(1:i,:), lambda);
    
    % We set J to 0
    J = 0;
    
    % We call Calulculate the Cost, by the cost Function (J) in each subset
    % of data.
    J = linearRegCostFunction(X(1:i, :), y(1:i), theta, 0);  % We set lambda to 0, because even if we are training our model with regularization,
    %  when we compute de learning curves, we won't use the regularization terms
    error_train(i,1) = J;
    
    % We, again, set J to 0 
    J = 0;
    
    % We calculate the Cost with all the corss validation data
    J = linearRegCostFunction(Xval, yval, theta, 0);
    error_val(i) = J;
end

    
    




% -------------------------------------------------------------

% =========================================================================

end

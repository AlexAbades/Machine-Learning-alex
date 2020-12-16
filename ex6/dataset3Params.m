function [C, sigma, Matrix] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
% C = 1;
% sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

% We create a vector of all the values for C and sigma
C_values = [0.01 0.03 0.1 0.3 1 3 10 30];
sigma_values = [0.01 0.03 0.1 0.3 1 3 10 30];

% We create a matrix to store the values for each paramenter and the ratio
% of preditcions
Matrix = zeros(64,4);

% We crate our track row variable
row = 1;

% We create a for loop for every element of sigma inside a for loop for
% every element inside C
for i = 1: length(C_values)
    % We asign our C value
    C = C_values(i);
    
  
    for j = 1: length(sigma_values)
        % We asign our sigma value
        sigma = sigma_values(j);
        
        % we store our sigma and C values
        Matrix(row, 2) = sigma;
        Matrix(row, 1) = C;
        
        % We train our model with svmTrain and our gaussian function
        model = svmTrain(X, y, C, @(x1, x2)gaussianKernel(x1, x2, sigma));
        
        % We calculate the predictions for the training set
        predictions_train = svmPredict(model, X);
        
        % We calculate and store the error for the training set 
        Matrix(row, 3) = mean(double(predictions_train ~= y));
        
        % We calculate the predictions with the cross calidation set 
        predictions_val = svmPredict(model, Xval);
        
        % We calculate and store the error on the validation set 
        Matrix(row, 4) = mean(double(predictions_val ~= yval));
        
        % We pass two the second roe
        row = row + 1;
        
    end
end

% Once we have the matrix we can find the minimum validation error
[M, I] = min(Matrix(:,4));

% We set our variables C and sigma where the validation error is the lower
C = Matrix(I,1);
sigma = Matrix(I,2);



% =========================================================================

end

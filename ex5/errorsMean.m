function [error_train_mean, error_val_mean] = errorsMean(X_poly, y, X_poly_val, yval, lambda, num_iter)
    
    % We create two matrices of size (m x num_iter)
    error_train_mtx = zeros(length(X_poly),num_iter);
    error_val_mtx = zeros(length(X_poly), num_iter);
    
    for i = 1:num_iter
        
                
        % We shuffle the data set, to calculate the error in different
        % traiing ponits 
        [X_shuffled, y_shuffled] = shuffleData(X_poly, y);
        
        
        % We calculate the error on different subssets substets
        [error_train_mtx(:,i), error_val_mtx(:,i)] = learningCurve(X_shuffled, y_shuffled, X_poly_val, yval, lambda);

    end
    
    % we calculate de mean by row (for each subset of n elements)
    error_train_mean = sum(error_train_mtx,2)/num_iter;
    error_val_mean = sum(error_val_mtx,2)/num_iter;
    
    
end

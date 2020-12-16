function [bestEpsilon bestF1] = selectThreshold(yval, pval)
%SELECTTHRESHOLD Find the best threshold (epsilon) to use for selecting
%outliers
%   [bestEpsilon bestF1] = SELECTTHRESHOLD(yval, pval) finds the best
%   threshold to use for selecting outliers based on the results from a
%   validation set (pval) and the ground truth (yval).
%

bestEpsilon = 0;
bestF1 = 0;
F1 = 0;

stepsize = (max(pval) - min(pval)) / 1000;
for epsilon = min(pval):stepsize:max(pval)
    
    % ====================== YOUR CODE HERE ======================
    % Instructions: Compute the F1 score of choosing epsilon as the
    %               threshold and place the value in F1. The code at the
    %               end of the loop will compare the F1 score for this
    %               choice of epsilon and set it to be the best epsilon if
    %               it is better than the current choice of epsilon.
    %               
    % Note: You can use predictions = (pval < epsilon) to get a binary vector
    %       of 0's and 1's of the outlier predictions
    
    % First step binarize the prediction vector acording to the threshold
    % value epsilon. If a point gets a value less than epsilon (low
    % probability) it will mean that it's anomalous.
    
    % Binarize Vector:
    pval_bin = (pval < epsilon);
    
    % To calculate de F1 score we have to calculate the fifferent values
    % that we can get:
    
    % True Poitive: true_value = 1 & predicted = 1
    tp = sum(yval == 1 & pval_bin == 1);
    
    % False Positive: true_value = 0 & predicted = 1
    fp = sum(yval == 0 & pval_bin == 1);
    
    % True Negative: true_value = 0 & predicted = 0
    tn= sum(yval == 0 & pval_bin == 0);
    
    % False Negative: true_value = 1 & predicted = 0
    fn = sum(yval == 1 & pval_bin == 0);
    
    
    % Caclulate the precision of the predictions
    precision = tp / (tp + fp);
    
    % Calculate the Recall of the predictions
    recall = tp / (tp + fn);
    
    % Calculate the F1 score
    
    F1 = (2*precision*recall)/(precision+recall);


    % =============================================================

    if F1 > bestF1
       bestF1 = F1;
       bestEpsilon = epsilon;
    end
end

end

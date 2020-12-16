function [X_shuffled, y_shuffled] =  shuffleData(X,y)

% We create a zeros martix of X size.
X_shuffled = zeros(size(X));
y_shuffled = zeros(size(y));
% We create a vector of random integers of X length. This will determine
% the random position
rand_pos = randperm(length(X));

% We create a for loop that puts on the first row a random row of our
% origina matrix.

for i = 1:length(rand_pos)
    X_shuffled(i,:) = X(rand_pos(i), :);
    y_shuffled(i,:) = y(rand_pos(i), :);
end


end

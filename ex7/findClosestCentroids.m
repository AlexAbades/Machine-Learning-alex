function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);
m = size(X,1) ;

% You need to return the following variables correctly.
idx = ones(size(X,1), 1);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

% First we are going to loop through the clusters, in this case K=3
for i = 1:K
    % Now we have to loop through every example
    for j = 1:m
        % Calculate the euclidean distance between the point and the centroid k
        d = X(j,:)-centroids(i,:);
        c = d*d';

        % Calculate the euclidean disctance with the centroid assaigned
        v = X(j,:)-centroids(idx(j),:);
        p = v*v';
                        
        % Compare the distance of the two centroids and we store the index
        % centroid of the lower disctance. 
        if c < p
            idx(j) = i;
        end
    end

% =============================================================

end


data = load("ex1data2.txt")
X = data(:,1:2)

means = mean(X);
size(means);

S = std(X);
disp("Comparing sizes")
size(S) == size(X)

N = normalize(X)
(X-means)./S


sigma = [std(X(:,1)) std(X(:,2))];
sigma == S

mu = [mean(X(:,1)) mean(X(:,2))];
means == mu

(X(:,2)-mu(1,2))/sigma(1,2)


means, S, X


A = X - means

A/S
A./S == N

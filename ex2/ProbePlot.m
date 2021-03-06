data = load("ex2data1.txt")
X = data(:,[1,2]);
y = data(:,3);

pos = find(y == 1), neg = find(y == 0 )

plot(X(pos,1), X(pos, 2), "k+", "LineWidth", 1, "MarkerSize",7)
hold on 

plot(X(neg, 1), X(neg, 2), "ko", "MarkerFaceColor", "y", "LineWidth", 0.5, ...
    "MarkerSize", 7)

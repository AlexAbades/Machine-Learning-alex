
% to load for example a txt, you can load it 

data=load("ex1data1.txt");
X = data(:,1); y=data(:,2);


theta = [0;0];

theta = theta - [1; 1];
theta

% Visualizing J(theta_0, theta_1):
% Grid over which we will calculate J
theta0_vals = linspace(-10, 10, 100);



open normalize

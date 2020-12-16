A = magic(10)


B = ones


clear
load("ex4data1.mat")
dir


A = 3*ones(5,10)
size(A)
B = 2 * ones(5, 10)
size(B)
A-B
size(A - B)

A'-B'
size(A'-B')

 
% Create a 10 by 10 matrix with the firts column with 1 at the end
y = [zeros(9,1) eye(9)]
zero = zeros(1,10)
zero(1,1) = 1
y = [y;zero]
y

h = ones(5000,400);
% Create a cell of matrices and get the calues after 
H1 = h(1:500, :);
H2 = h(501:1000, :);
H3 = h(1001:1500, :);
H4 = h(1501: 2000, :);
H5 = h(2001:2500, :);
H6 = h(2501:3000, :);
H7 = h(3001:3500, :);
H8 = h(3501:4000, :);
H9 = h(4001:4500, :);
H10 = h(4501:5000, :);
H = {H1, H2, H3, H4, H5, H6, H7, H8, H9, H10};

H{1};


% Create a 10 by 10 matrix with the firts column with 1 at the end
n = 0:9;
n(1) = 10;
n

y = zeros(10,10);
for i= 1:10
    y(n(i),i) = 1;
    
end


% Vector 

l = [1 2 4 4 5 6 1 4 5];
[1 l];

disp('The vectorized implementiation of the numbers are: ')
y_vec = [10 2 3 4 5 6 7 8 9]

disp('The ')
y_num = [10 10 9 9 8 8 7 7 6 6 5 5 4 4 3 3 2 2 1 1]'

for i = y_num
    y_vec == y_num(i)
end


clear
load("ex4data1.mat")
dir


% Create a column vector with all the possible values that y can have
y_vector = [10 1 2 3 4 5 6 7 8 9]';  
% We make a binary vector depending on the y value
y_k = y_vector == y(3501);

% Cheking seven
y_k
size(y_k)

%Cheking the 0, maped to the 10
y_k = y_vector == y(1);
y_k
size(y_k)


% Create a vector with the k clasifiers 

k = 3;
y_vec = [0: k-1]'
size(y_vec)
y_vec(1) = k



num_labels = 10; 
t = 1;
y_k = [1:num_labels]'==y(t)
y_k
size(y_k)

% Load the weights into variables Theta1 and Theta2
load('ex4weights.mat');

a1 = [1 X(1,:)];
Theta1;
sol1 = a1*Theta1';
sol1 = sol1';

a2 = [1 X(1,:)]';
sol2 = Theta1*a2;

sol1 == sol2



D = ones(5,5)

5*D  == D*5
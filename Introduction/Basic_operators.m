
% BASIC OPERATORS

% SUM 
a = 4 + 5;
a

% SUBSTRACTION
b = 6 - 9; 
b

% Multiplication 
c = 8 * 9;
c

% Division
d = 24 / 4;
d

% Esponential 
e = 4 ^ 4;
e

% Square 
e = sqrt(36);
e

% Logic operators 
% Equal 

d == c % equal 

d ~= c % not equal

e >= d % greater than 

d <= e % lower than 

5 && 5 % AND operator 

7 || 7 % or operator

z = 6 + 3
z; % The semicolon suppresses the print output 

% Strings 
a = ['hi']

a = pi;
a
% display function
disp(a)

% sprintf funtion to replace in the string a value 
disp(sprintf('2 decimals: %0.2f', a))

disp(sprintf('6 decimals: %0.6f', a))

% aditional functions 

a 

format long 
a 

format short 
a

% MATRIX 

A =[1 2 3; 4 5 6; 7 8 9]
% 3x3 matrix

A = [1 2 3;
    4 5 6;
    7 8 9]
% 3x3 matrix

% VECTORS 

v = [ 1 2 3]
% 1x3 vector

v = [1; 2; 3]
% 3x1 vector

% Create a vector automatically with steps 
v = 1:0.1:2

v = 1:6

% Other matrices 

ones(2,3) % matrix 2x3 of ones

2*ones(2,3) %matrix 2x3 of twos 

% vector of ones
ones(1,3)
ones(3,1)

% vector of zeros 
zeros(1,3)

% rand function, from 0 to 1 of uniform distribution

A = rand(3,3) % 3x3 matrix with uniform distribution

% randn random numbers with gaussian ditribution, mean 0 and stadart
% deviation 1

A = randn(3,3)

% powerfull operations 

w = - 6 + sqrt(10) * (randn(1,10000));

% Plot a histogram
hist(w, 50);


% Identity matrix 
A = eye(6,6)

% Help command 
help eye


% Size  command (of a matrix). It returns a matix 

size(A)


sz = size(A)

size(sz)

size(A, 1) % first dimension of A
size(A, 2) % second dimension of B

% Length command

v = [1 2 3 4]

length(v) % It returns de logest dimension

A = [1 2 3;
    4 5 6]

length(A)

length([1;2;3;4;5])

% Normally we apply the length command only to vectors 

% Get the path where we are actually working 

pwd

% Get the variables that matlab has in this moment storage

who

% With details 

whos

% Save files 
% Save in a binary format
save hello.mat w;
% Save ina ascii format 

save hello.txt v -ascii;

% To load some data

load hello.txt

% Indexing 

clear
whos

A = [1 2 3; 4 5 6; 7 8 9]

A_23 = A(2,3)

A_1 = A(1,:) % ":" means every element along that row/coolumn

A([1 3], :) % We select the first row and th thirth column [1 3], and we 
% select everything in that row ":"

% Reassaigment

A(:, 3) = [10; 11; 12]


% Append another coumn vector to the matrix 

A = [A, [100; 101; 102]] % Notice the difference in the argument
% separators and the numbers

% Put all tha values of the matrix in a nx1 vector
A(:)

% Concatenate matrices 

A 

B = [44 45 46 47; 
    66 67 68 69;
    77 88 89 90]

C = [A B] % concatenate left and right 

C = [A; B] % concatenate top and botton


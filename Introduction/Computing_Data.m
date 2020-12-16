% COMPUTING ON DATA 

A = [1 2; 3 4; 5 6]; % 3x2

B = [11 12; 13 14; 15 16]; % 3x3

C = [1 1; 2 2]; % 2x2 

% Normal multiplication with matrices
A*C

% Element multiplicaation with matrices 

A .* B

% Element square 

A.^2

% Operations with vector
v = [ 1; 2; 3];

1./v

1./A

log(v) % Logarithm og v

exp(v) % exponent function "e" to the power of every element in tha vector 

abs(v) % return the absolute value of v

-v % It's computing -1*v

v + ones(length(v), 1)

% Transpose 
A'

(A')'

a = [1 15 2 0.5]

val = max(a); % get the maximum value 
val

[val, ind] = max(a) % It returns the value plus the index of that value

% Bolean operator 

a<3 % It will compare all the elements of the vector to three, if there 
% are smaller returns 1, else 0

% We can find the elements that satifies a comparision 

find(a<3)

% Create matrices with the magic method 
% creates a matrix with the sum of all rows and columns equal and the
% diagonals
A = magic(3);
A 

% find elements in matrices 

[r, c] = find(A >= 7) % It's going to return two vector r, c. which 
% contains the index values for those values greater than 7. Where the
% values in r are the row indix and in c are the column index 

% sum function 
sum(a) % it returns the sum of every value on the vector 

prod(a) % makes the product of all the elements of the vector 

floor(a) % round down the decimal numbers 

ceil(a) % rounds up all the decimal numbers 

max(rand(3), rand(3))  % gets the maximum values of rwo random marices 

A 
max(A, [], 1) % Gets the max value for column 
max(A, [], 2) % Gets the max value per row 
max(A) % by default it's the column (1)

% get the maximum value for A
max(max(A))
max(A(:))


A = magic(9)
sum(A,1)
sum(A,1)

% To get the sum of the diagonal
sum(sum(A.*eye(9)))  % From top left to bottom right 

flipud(eye(9))
sum(sum(A.*flipud(eye(9)))) % From top right to bottom left 

A =magic(3)

pinv(A) % The inverse matrix of A 

% To caculate the identity matrix 
temp = pinv(A);

I = temp*A    
 


v = zeros(10,1);

% for loop 

for i = 1:10;
    v(i)=2^i;
end

v
v(6)

% another way to do it

indices=1:10;
indices
for i=indices,
    disp(i);
end

% we can use break and continue inside the loop 

% while loop 
i=1
while i<=5
    v(i)=100;
    i = i+1;
end
v


% if and break statement 

i=1;
while true
    v(i)=999;
    i= i+1;
    if i == 6;
        break;
    end
end

disp(v)

% if statement 

v(1)=2;

if v(1)==1
    disp('The value is one');
elseif v(1) == 2
    disp('The value is 2')
else
    disp('The number is bigger than two')
end


% Functions: We have to define the function after the calling function

squareThisNumber(5)

[a, b] = squareandcuve(5);
disp(a)
disp(b)


X = [1 1; 1 2; 1 3]

y = [1; 2; 3]

theta = [0;1];

j = costFunctionJ(X, y, theta);

scatter(X(:,2),y)
hold on 

predictions = X*theta;
plot(X(:,2), predictions, "blue")



j % The output it's o because we make outr line fit perfectli tu the plot 

% If we change our theta to theta_0 = 0 and theta_1 = 0

theta = [0; 0];

j = costFunctionJ(X, y, theta);

% that's equal than:
(1^2+2^2+3^2)/(2*3)

predictions = X*theta



plot(X(:,2), predictions, "r")








% one output function
function y = squareThisNumber(x)
    y=x^2;
end

% two function output
function [y1,y2] = squareandcuve(x)
    y1=x^2;
    y2=x^3;
end


function J = costFunctionJ(X, y, theta)
    % X is the "design matrix" containing our training exmamples
    % y is the class labels
    % m = size(X,dim) returns the size of the dimension of X specified by scalar dim.
    
    m = size(X,1);  % Number of training examples
    predictions = X* theta;  % predictions of hypothesis on all m examples
    
    sqrErrors = (predictions-y).^2; % squared errors
    
    J = 1/(2*m) * sum(sqrErrors);
    
end


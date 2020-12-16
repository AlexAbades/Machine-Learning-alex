% Testing sigmoid function in matrices 
A = ones(4,2)


for i = 1:4
    for j = 1:2
        A(i,j) = A(i,j) + i;
    end
   
end


data = load("ex2data1.txt");
X = data(:,1:2);


A = [-5 5;
     -3 3;
     0 0;
     2 2];




B = sigmoid(A)

size(B)

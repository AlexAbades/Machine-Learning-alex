t = [0: 0.01: 0.98];
t

y1 = sin(2*pi*4*t);

% To plot some function:
plot(t, y1)

y2 = cos(2*pi*4*t);

% It replace the previous plot, the sinus plot, and it will replace it with
% the new plot, the cosinus function 
plot(t, y2);

% If we want to plot something in the same plot, we have to use ethe
% following comand,
plot(t, y1)
plot(t, y2)
hold on;
plot(t, y2, 'r');
xlabel('time')
ylabel('value')
legend('sin', 'cos')
title('My plot')

% To save the plot,
print -dpng 'myplot.png'
%To close the plot window
close 

% To specify two different plots
figure(1); plot(t, y1);
figure(2); plot(t, y2);
close

% Make subplots, divide plot a 1x2 grid, access the first element 
subplot(1,2,1);
plot(t, y1);
subplot(1,2,2);
plot(t, y2);
axis([0.5 1 -1 1])

%clear the figure 
clf;

A = magic(5);

% heat plot 
imagesc(A), colorbar; colormap gray;

A_12 = A(1,2);
A_12
    
A_45 = A(4, 5)
A_45

imagesc(magic(15)), colorbar, colormap gray;

% Comma chaining 
a=1, b=2, c=3 % With the comma separator, it will print in the comand winfow the result

a=1; b=2; c=3; % With colon comma separator, it will create the variables,
% but it won't prin them in the command window 


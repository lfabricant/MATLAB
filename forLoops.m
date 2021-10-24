clear
clc
close all

%% FOR LOOPS

for i = 1:3 %1:2:10, intervals of 2
    disp(i)
end

%% 

for j = 1:3
    disp('This does not use j')
end

%%

n = randi([2,5]); % random integer between 2 and 5 inclusive
numvec = zeros(1,n); % row vector of that length
for i = 1:n
    var = input('Enter a number: ');
    numvec(i) = var;
end

fprintf('The vector is: \n')
disp(numvec)

%% Demonstrates subplot using a for loop

for i = 1:2
    x = linspace(0,2*pi,20*i)
    y = sin(x)
    
    subplot(1,2,i); % define matrix of plots (1 row 2 columns) - active subplot is i
    
    plot(x, y, 'k.')
    xlabel('x')
    ylabel('sin(x)')
    title('sin plot')
    
end

%% Nested for loops to print a box of stars

%Define size of box of stars
rows = 3;
columns = 5;

%Loop over the rows
for r = 1:rows
    % Loop over the columns
    for c = 1:columns
        fprintf('*')
    end
    fprintf('\n')
end

%% Multiplication table

%Define size of box of stars
rows = 3;
columns = 5;

% Initialize a matrix
outputmat = zeros(rows,columns);

%Loop over the rows
for r = 1:rows
    % Loop over the columns
    for c = 1:columns
        outputmat(r,c) = r*c;
    end
end
disp(outputmat)

%% Prompts the user for a number and echoes back the number it just got
% until a negative number is entered

inputnum = input('Enter a positive number:');
while inputnum >= 0
    fprintf('You entered the number %d. \n \n', inputnum) %knows to replace %d w inputnum
    inputnum = input('Enter a positive number: ');
end
fprintf('OK!\n')



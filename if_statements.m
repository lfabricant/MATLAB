clc
close all
clear

%% if statements

%num = -4
num = 5
if num < 0
    num = 0
end

%% square group program
% ask the user for a number and print its square root

num = input('Enter a number: ');
if num < 0
    disp('WARNING: There is an error. The input is negative. ')
    num = 0;
end
square_root = num^(1/2); %sqrt(num);
disp(['The square root of the number is: ' num2str(square_root)])

%% if-else coin flip simulation

if rand < 0.5 
    disp('it was heads')
else
    disp('it was tails')
end

%% elseif

x = 1
if x < -1
    y = 1
elseif x <= 2
    y = x^2
else 
    y = 4
end


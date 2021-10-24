%% Sumsteps

%function sum = sumsteps(n)
%    sum = 0;
%    for i = 1:2:n
%        sum = sum + i;
%    end
%    disp(sum)
%end

%% Random
n = randi([2,5]); % random integer between 2 and 5 inclusive
sum = 0;
for i = 1:n
    var = input('Enter a number: ');
    sum = sum + var;
end

fprintf('The sum is: \n')
disp(sum)

%% Multiplication table

for i = 1:5
    disp([i:i:i^2])
end

%% Mathematical constant e

e = 1/exp(1)
n = 1;
while e - (1-(1/n))^n >= 0.0001
    n = n+1;
end

disp(n);
disp((1-1/n)^n);
disp(e);

%% Beauty of math

%function void = beautyofmath()
%    for i = 1:9
%        exp = i-1;
%        sum1 = 0;
%        for j = 1:i
%          sum1 = sum1 + j*(10^exp);
%          exp = exp-1;
%        end
%        sum2 = sum1*8+i;
%        fprintf('%d x 8 + %d = %d \n', sum1, i, sum2)
%    end
%end


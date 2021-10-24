clear %remove all variables in the workspace
clc %clear the command window
close all %closes any open figures

% %% Area of a circle
% %This code will calculate the area of a circle
% radius = input('Enter the radius: '); % ; - suppress output
% area = pi*radius^2

%% Output of the area
% disp('The area is: ')
% disp(area)

% disp(['The area is: ' num2str(area)]) % simpler way

%% Plot one point

%Create a coordinate
x = 11;
y = 48;
plot(x,y,'b*') % will plot a blue asterisk at x, y

%Change the axes and label them
axis([9 12 35 55]) % xmin xmax ymin ymax
xlabel('Time')
ylabel('Temperature')
title('Time and Temp')

%% Plot more than one point

% Plot the points (1,1) (2,5) (3,3) (4,9) (5,11) (6,8)

x = 1:6;
y = [1 5 3 9 11 8]
plot(x,y) % new figure with points connected as a line
plot(x, y, '*') 

%% Plot 2 figures

% Create 2 different plots in 2 different figure windows

%Continue to work in figure 1 to start
clf % clears current figure
x = 1:5
y1 = [2 11 6 9 3]
y2 = [4 5 8 6 2]
plot(x,y1, 'k') % plot on figure 1
figure(2) % creates a blank figure
plot(x, y2, 'ko') % plot on figure 2
figure(3)
plot(x, y1, 'k')
hold on % allow you to plot into same figure
plot(x, y2, 'ko')

grid on % turns on grid
legend('y1', 'y2')

%% This script plots sin(x) and cos(x) for values of x in the 0 to 2pi range
clf
x = 0:2*pi/40:2*pi; % == linspace(0,2*pi,40)
y = sin(x);
plot(x,y,'ro')

hold on

y = cos(x)
plot(x,y,'b+')
legend('sin', 'cos')
xlabel('x')
ylabel('sin(x) or cos(x)')
title('sin and cos on one graph')


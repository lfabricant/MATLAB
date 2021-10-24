%% 1 & 2

k = 10; % Spring stiffness 
b = 2; % Spring damping 
m = 3; % Mass 
h = 0.001; % Time step (delta t)
X1=4; % Initial position 
V1=0; % Initial velocity


V2 = V1 + (-k/m*X1 - b/m*V1)*h;
X2 = X1 + V1*h;

t = 0:h:15;
x = zeros(size(t));
v = zeros(size(t));
v(1) = V1;
x(1) = X1;

for i = 2:length(x)
   x(i) = x(i-1) + v(i-1)*h;
   v(i) = v(i-1) + (-k/m*x(i-1) - b/m*v(i-1))*h;
end

plot(t,x, 'b')
hold on
plot(t,v, 'r--')

xlabel('Time')
ylabel('Position')
legend('X position','Velocity')

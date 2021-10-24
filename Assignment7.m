%% 1
% The shaft carrying gear E moves counterclockwise at 166.7 rpm

%% 2

no_load_speed = 7130;
stall_torque = 18.6;
x = [0 no_load_speed];
y = [stall_torque 0];
plot(x,y,'r')

xlabel('Speed (rpm)')
ylabel('Torque (mNm)')

transmission_ratios = [2 5 10];
for i = 1:length(transmission_ratios)
    r = transmission_ratios(i);
    w = [0 no_load_speed/r];
    T = [stall_torque*r 0];
    hold on 
    plot(w,T,'--r')
    text(0, stall_torque*r, num2str(r), 'Color', 'r');
    axis([0 no_load_speed 0 stall_torque*r])
end

%% 3
clc
clf
%
%x = linspace(0,2*pi,40);
%x = linspace(0,2*pi,0);
y = sin(x);
plot(x,y,'b')
axis([0 4 0 4]);

figure
delta_t = .01
t1 = 0:delta_t:1
t2 = 1:delta_t:2
t3 = 2:delta_t:3
t = [t1 t2 t3]

N1 = ones(1,length(t1));
N2 = linspace(1,3,length(t2));
N3 = 3*ones(1,length(t3));
N = [N1 N2 N3]

plot(t, N)
hold on
w = 5*sin(7*t);
w = w./N % so it keeps getting smaller
plot(t, w);


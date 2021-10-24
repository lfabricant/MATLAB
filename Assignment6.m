clear
clc
close all
% no load speed = w / stall torque = T
%% 1
no_load_speed = 7130;
stall_torque = 18.6;
x = [0 no_load_speed];
y = [stall_torque 0];
plot(x,y,'r')

xlabel('Speed (rpm)')
ylabel('Torque (mNm)')
axis([0 no_load_speed 0 stall_torque])

%% 2
hold on
short_term_torque = 10.96;
x2 = [0 8000]
y2 = [short_term_torque short_term_torque];
plot(x2,y2,'b')
%% 3
hold on
maximum_continuous_torque = 5.48;
x3 = [0 8000]
y3 = [maximum_continuous_torque maximum_continuous_torque];
plot(x3,y3,'--b')

%% 4
hold on
input_voltage = input('Enter a new voltage: ');
stall_torque = stall_torque*input_voltage/12;
no_load_speed = no_load_speed*input_voltage/12;
x4 = [0 no_load_speed];
y4 = [stall_torque 0];
plot(x4,y4,'--r')

%% 5
%Tl = 2mNm + 0.001(mNm/rpm)(wl)
torque_load = 0.001*8000
xL = [0 8000]
yL = [2 torque_load];
plot(xL,yL,'--g')

%% 6
hold on
for v = 1:24
    no_load_speed = 7130;
    stall_torque = 18.6;
    stall_torque = stall_torque*v/12;
    no_load_speed = no_load_speed*v/12;
    x = [0 no_load_speed];
    y = [stall_torque 0];
    plot(x,y,'--r')
    text(0,stall_torque,num2str(v), 'Color', 'r')
end

    

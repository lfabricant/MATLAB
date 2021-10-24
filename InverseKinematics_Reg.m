clf
clc
hold on
grid
axis equal
axis([0,3,0,3])

x_center = 1.75;
y_center = 1.25;
radius = 0.5;

x_circ1 = (x_center-radius):0.01:(x_center+radius);
x_circ2 = flip(x_circ1); 

y_circ1 = sqrt(radius^2-(x_circ1-x_center).^2)+y_center;
y_circ2 = -sqrt(radius^2-(x_circ2-x_center).^2)+y_center;
    
x_circle = [x_circ1 x_circ2];
y_circle = [y_circ1 y_circ2];

plot(x_circle,y_circle,'r--');

l1 = 2;
l2 = 1;
xE = 2.2;
yE = 1.5;
angle = input('0 for positive, 1 for negative: ');
finalx = input('Final X Position: ');

finaly = input('Final Y Position: ');

if angle == 1 
  theta2 = -acos((xE^2+yE^2-l1^2-l2^2)/(2*l1*l2));
  theta1 = atan(yE/xE)-atan((l2*sin(theta2))/(l1+l2*cos(theta2)));
else 
  theta2 = acos((xE^2+yE^2-l1^2-l2^2)/(2*l1*l2));
  theta1 = atan(yE/xE)-atan((l2*sin(theta2))/(l1+l2*cos(theta2)));
end

joint_xpos = l1*cos(theta1);
joint_ypos = l1*sin(theta1);
end_xpos = l1*cos(theta1) + l2*cos(theta1+theta2);
end_ypos = l1*sin(theta1) + l2*sin(theta1+theta2);
    
x = [0, joint_xpos, end_xpos];
y = [0, joint_ypos, end_ypos];
hold on

grid on;
box on;
RobotArm = plot(x,y,'b-o');
End = plot(xE,yE,'ko','MarkerFaceColor','k','MarkerSize',10);



    for k = 1:length(x_circle)
        xE = x_circle(k);
        yE = y_circle(k);

        if angle == 1 
          theta2 = -acos((xE^2+yE^2-l1^2-l2^2)/(2*l1*l2));
          theta1 = atan(yE/xE)-atan((l2*sin(theta2))/(l1+l2*cos(theta2)));
        else 
          theta2 = acos((xE^2+yE^2-l1^2-l2^2)/(2*l1*l2));
          theta1 = atan(yE/xE)-atan((l2*sin(theta2))/(l1+l2*cos(theta2)));
        end

        joint_xpos = l1*cos(theta1);
        joint_ypos = l1*sin(theta1);

        end_xpos = l1*cos(theta1) + l2*cos(theta1+theta2);
        end_ypos = l1*sin(theta1) + l2*sin(theta1+theta2);

        if (finalx == round(end_xpos, 2)) && (finaly == round(end_ypos, 2))
                disp(['Theta 1: ' num2str(theta1)]);
                disp(['Theta 2: ' num2str(theta2)]);
                pause(1.5);
        end

        x = [0, joint_xpos, end_xpos];
        y = [0, joint_ypos, end_ypos];
        hold on

        if joint_ypos < 0 || joint_xpos < 0 || (sqrt(end_ypos*end_ypos+end_xpos*end_xpos) > l1+l2) 
            disp('Does not work.')
            break;
        end

        set(RobotArm, 'XData', x,'YData', y)
        set(End, 'XData', x, 'YData', y)
        drawnow

    end

hold off;

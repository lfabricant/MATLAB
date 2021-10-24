clf
clc
hold on
grid
axis equal
axis([0 4 0 4])

l = 4;
radius= l/pi; 

angleInitial=0;             
angleFinal=input('Enter angle between 0 and 180: '); 

if angleFinal == 0
    theta = linspace(angleInitial+180,180-angleFinal);
    x = [0 0];
    y = [0 l];
    plot(x,y,'b');
    disp(['X: ' num2str(x(length(x)))]);
    disp(['Y: ' num2str(y(length(y)))]);
else                           
    theta = linspace(angleInitial+180,180-angleFinal);        
    x = radius+radius*cosd(theta);     
    y = radius*sind(theta);     
    circle = plot(x,y,'b'); 
    
    stop = angleFinal;
    for k = 0:stop
        angleInitial=0;             
        angleFinal=k;                                          
        theta = linspace(angleInitial+180,180-angleFinal);        
        x = (180/k) * (radius+radius*cosd(theta));
        y = (180/k) * (radius*sind(theta));
        if k == stop
            disp(['X: ' num2str(x(length(x)))]);
            disp(['Y: ' num2str(y(length(y)))]);
        end
        set(circle, 'XData', x,'YData', y);
        drawnow
    end
    hold off;
    
end

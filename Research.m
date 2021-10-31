clf
clc
hold on
grid
axis equal

l = 4;
radius= l/pi; 

axis([-l l -l l 0 l])
view(3)

angleInitial=0;             
angleFinal= input('Enter angle between 0 and 180: '); 
theta = linspace(angleInitial+180,180-angleFinal);        

if angleFinal == 0
    %RIGHT ARM - initialize plot (for straight line)
    xR = [0 l]; 
    yR = [0 0];     
    zR = [l l];
    circleR = plot3(xR,yR,zR,'b');
    dotR = plot3(xR(length(xR)),yR(length(yR)),zR(length(zR)),'ro');
    
    hold on
    
    %LEFT ARM - initialize plot (for straight line)
    xL = [0 -l];
    yL = [0 0];       
    zL = [l l];
    circleL = plot3(xL,yL,zL,'b');
    dotL = plot3(xL(length(xL)),yL(length(yL)),zL(length(zL)),'ro');
    
    hold on
    
    %BACK ARM - initialize plot (for straight line)
    xB = [0 0];
    yB = [0 l];
    zB = [l l];   
    circleB = plot3(xB,yB,zB,'b');
    dotB = plot3(xB(length(xB)),yB(length(yB)),zB(length(zB)),'ro');
    
    hold on
    
    %FRONT ARM - initialize plot (for straight line)
    xF = [0 0];
    yF = [0 -l];
    zF = [l l];     
    circleF = plot3(xF,yF,zF,'b');
    dotF = plot3(xF(length(xF)),yF(length(yF)),zF(length(zF)),'ro');
    
    plot3(0,0,l,'go')
    pause(10)
    hold on
    
    plot3(xL(length(xL)),yL(length(yL)),zL(length(zL)), 'ro')
            
    %RIGHT ARM - print coordinates of endpoints (for straight line)
    disp(['XR: ' num2str(xR(length(xR)))]);
    disp(['YR: ' num2str(yR(length(yR)))]);
    disp(['ZR: ' num2str(zR(length(zR)))]);
    
    %LEFT ARM - print coordinates of endpoints (for straight line)
    disp(['XL: ' num2str(xL(length(xL)))]);
    disp(['YL: ' num2str(yL(length(yL)))]);
    disp(['ZL: ' num2str(zL(length(zL)))]);
    
    %BACK ARM - print coordinates of endpoints (for straight line)
    disp(['XB: ' num2str(xB(length(xB)))]);
    disp(['YB: ' num2str(yB(length(yB)))]);
    disp(['ZB: ' num2str(zB(length(zB)))]);
    
    %FRONT ARM - print coordinates of endpoints (for straight line)
    disp(['XF: ' num2str(xF(length(xF)))]);
    disp(['YF: ' num2str(yF(length(yF)))]);
    disp(['ZF: ' num2str(zF(length(zF)))]);
else
    %RIGHT ARM - initialize plot
    xR = radius*sind(theta); 
    yR = radius+radius*cosd(theta);     
    zR = 0*theta;
    circleR = plot3(xR,yR,zR,'b');
    dotR = plot3(xR(length(xR)),yR(length(yR)),zR(length(zR)),'ro');
    
    hold on
    
    %LEFT ARM - initialize plot
    xL = -(radius*sind(theta));
    yL = radius+radius*cosd(theta);       
    zL = 0*theta;
    circleL = plot3(xL,yL,zL,'b');
    dotL = plot3(xL(length(xL)),yL(length(yL)),zL(length(zL)),'ro');
    
    hold on
    
    %BACK ARM - initialize plot
    xB = 0*theta;
    yB = radius+radius*cosd(theta);
    zB = radius*sind(theta);     
    circleB = plot3(xB,yB,zB,'b');
    dotB = plot3(xB(length(xB)),yB(length(yB)),zB(length(zB)),'ro');
    
    hold on
    
    %FRONT ARM - initialize plot
    xF = 0*theta;
    yF = radius+radius*cosd(theta);
    zF = radius*sind(theta);     
    circleF = plot3(xF,yF,zF,'b');
    dotF = plot3(xF(length(xF)),yF(length(yF)),zF(length(zF)),'ro');
    
    plot3(0,0,l,'go')
    hold on
    
    stop = angleFinal;
    for k = 0:stop
        angleInitial=0;             
        angleFinal=k;                                          
        theta = linspace(angleInitial+180,180-angleFinal);        
        
        %RIGHT ARM - update coordinates
        xR = (180/k) * (radius*sind(theta));
        yR = 0*theta;
        zR = l + -((180/k) * (radius+radius*cosd(theta)));
    
        %LEFT ARM - update coordinates
        xL = -((180/k) * (radius*sind(theta)));
        yL = 0*theta;
        zL = l + -((180/k) * (radius+radius*cosd(theta)));
    
        %BACK ARM - update coordinates
        xB = 0*theta;
        yB = -((180/k) * (radius*sind(theta)));
        zB = l + -((180/k) * (radius+radius*cosd(theta)));
    
        %FRONT ARM - update coordinates
        xF = 0*theta;
        yF = (180/k) * (radius*sind(theta));
        zF = l + -((180/k) * (radius+radius*cosd(theta)));
        
        %RIGHT ARM - set coordinates for plot on the graph
        set(circleR, 'xdata', xR,'ydata', yR, 'zdata', zR);
        set(dotR, 'xdata', xR(length(xR)),'ydata', yR(length(yR)), 'zdata', zR(length(zR)));
        hold on
        drawnow
        
        %LEFT ARM - set coordinates for plot on the graph
        set(circleL, 'xdata', xL,'ydata', yL, 'zdata', zL);
        set(dotL, 'xdata', xL(length(xL)),'ydata', yL(length(yL)), 'zdata', zL(length(zL)));
        hold on
        drawnow 
    
        %BACK ARM - set coordinates for plot on the graph
        set(circleB, 'xdata', xB,'ydata', yB, 'zdata', zB);
        set(dotB, 'xdata', xB(length(xB)),'ydata', yB(length(yB)), 'zdata', zB(length(zB)));
        hold on
        drawnow
    
        %FRONT ARM - set coordinates for plot on the graph
        set(circleF, 'xdata', xF,'ydata', yF, 'zdata', zF);
        set(dotF, 'xdata', xF(length(xF)),'ydata', yF(length(yF)), 'zdata', zF(length(zF)));
        drawnow
        
        if k == stop
            hold on
            % PLOT ALL ARM ENDPOINTS AS RED DOT
            plot3(xL(length(xL)),yL(length(yL)),zL(length(zL)), 'ro')
            
            %RIGHT ARM - print final coordinates
            disp(['XR: ' num2str(xR(length(xR)))]);
            disp(['YR: ' num2str(yR(length(yR)))]);
            disp(['ZR: ' num2str(zR(length(zR)))]);
    
            %LEFT ARM - print final coordinates
            disp(['XL: ' num2str(xL(length(xL)))]);
            disp(['YL: ' num2str(yL(length(yL)))]);
            disp(['ZL: ' num2str(zL(length(zL)))]);
    
            %BACK ARM - print final coordinates
            disp(['XB: ' num2str(xB(length(xB)))]);
            disp(['YB: ' num2str(yB(length(yB)))]);
            disp(['ZB: ' num2str(zB(length(zB)))]);
    
            %FRONT ARM - print final coordinates
            disp(['XF: ' num2str(xF(length(xF)))]);
            disp(['YF: ' num2str(yF(length(yF)))]);
            disp(['ZF: ' num2str(zF(length(zF)))]);
        end
    
    end
end
hold off;

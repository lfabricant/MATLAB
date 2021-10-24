%% PYTHAGOREAN THEOREM

a = input('Enter a side lengtth: ');
c = input('Enter another side lengtth: ');
if a <= 0 || c <= 0
    disp('ERROR: side length of a triangle cannot be less than or equal to zero')
end
b_squared = c^2-a^2;
b = sqrt(b_squared);
disp(['The value of the third side length is: ' num2str(b)])

%% MACH NUMBER

speed_of_aircraft = input('Enter the speed of the aircraft: ');
speed_of_sound = input('Enter the speed of sound: ');
mach_number = speed_of_aircraft/speed_of_sound;
flow = '';
if mach_number < 1
    flow = 'subsonic'
elseif mach_number == 1
     flow = 'transonic'
else
    flow = 'supersonic'
end

%% MAKEMAT
% function <return variable> = <function name>(<input>)

function matrix = makemat(row1,row2);
    %row1 = input('Enter first row vector: ');
    %row2 = input('Enter second row vector: ');
    [rowx colx] = size(x); %len1 = length(row1);
    [rowy coly] = size(y); %len2 = length(row2);
    
    errorflag = 0;
    
    if rowx > 1 || rowy > 1
        errorflag = 1;
    elseif colx < coly
        extra = coly-colx;
        zero = zeros(1,extra)
        y = [y,zero]
    elseif colx > coly
        extra = colx-coly;
        zero = zeros(extra,1);
        x = [x,zero];
    end
    
    if errorflag == 0
       matrix = [row1; row2];
    else
       matrix = 'Error';
    end
end


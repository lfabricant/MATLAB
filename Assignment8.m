%% 1

var = input('Enter a number between 0 and 1023: ');
if var > 1023
    disp('ERROR')
else 
    angle = var*(180/1023);
    disp(angle);
end

%% 2

%matrix = [0 0 0 0; 0 0 0 1; 0 0 1 0; 0 0 1 1; 0 1 0 0; 0 1 0 1; 0 1 1 0; 0 1 1 1; 1 0 0 0; 1 0 0 1; 1 0 1 0; 1 0 1 1; 1 1 0 0; 1 1 0 1; 1 1 1 0; 1 1 1 1];
matrix = dec2bin(0:15) - '0';
TestByte = [1 0 0 0];
num_rows = length(matrix(:,1));
for i = 1:num_rows
    if TestByte == matrix(i,:)
        % disp(matrix(i,:))
        disp(i);
        return
    end
end
disp('????')

%% 3

%matrix = [0 0 0 0; 0 0 0 1; 0 0 1 0; 0 0 1 1; 0 1 0 0; 0 1 0 1; 0 1 1 0; 0 1 1 1; 1 0 0 0; 1 0 0 1; 1 0 1 0; 1 0 1 1; 1 1 0 0; 1 1 0 1; 1 1 1 0; 1 1 1 1];
matrix = dec2bin(0:15) - '0';
actions = [0;1;-1;2;-1;0;2;1;1;2;0;-1;2;-1;1;0];
encoder_values = [0 0 0 0; 0 0 0 1; 0 1 1 1; 1 1 1 1; 1 1 0 1; 0 1 0 0; 0 0 0 0];
matrix_num_rows = length(matrix(:,1));
encoder_num_rows = length(encoder_values(:,1));
motor_position = 0;
for i = 1:encoder_num_rows
    count = 0;
    for j = 1:matrix_num_rows
        if encoder_values(i,:) == matrix(j,:)
            count = count+1;
            motor_position = actions(j);
            if i == encoder_num_rows
                disp(['Final position: ' num2str(motor_position)]) 
            else
                disp(['Current position: ' num2str(motor_position)])
            end
        elseif j == matrix_num_rows && count == 0
            disp('???')
        end
    end
    
end


%% FUNCTIONS: quiz grades

%input quiz score 1-10
%assign grade corresponding to the range it falls into

function grade = letgrade(quiz)
    if quiz < 0 || quiz > 10
        grade = 'X'
    elseif quiz == 9 || quiz == 10
        grade = 'A'
    elseif quiz == 8 
        grade = 'B'
    elseif quiz == 7 
        grade = 'C'
    elseif quiz == 6
        grade = 'D'
    else
        grade = 'F'
    end
end
     

    




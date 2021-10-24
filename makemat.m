function matrix = makemat(x,y);
    %row1 = input('Enter first row vector: ');
    %row2 = input('Enter second row vector: ');
    [rowx colx] = size(x); %len1 = length(row1);
    [rowy coly] = size(y); %len2 = length(row2);
    
    errorflag = 0;
    
    if rowx > 1 || rowy > 1
        errorflag = 1;
    elseif coly < colx
        extra = colx-coly;
        zero = zeros(1,extra);
        x = [x, zero]
    elseif coly > colx
        extra = coly-colx;
        zero = zeros(extra,1);
        y = [y, zero]
    end
    
    if errorflag == 0
       disp(x)
       disp(y)
       matrix = [x; y];
    else
       matrix = 'Error';
    end
end

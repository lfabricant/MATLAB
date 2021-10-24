clear
clc
close all

SignalFreq = input('Enter a signal frequency (Hz): ');
t = [0:0.01:1];
l = length(t);
disp(l)
SignalPlot = plot(t,cos(2*pi*SignalFreq*t),'b');
SamplingRate = input('Enter a sampling rate: ');
hold on
t = [0:1/SamplingRate:1];
y = cos(2*pi*SignalFreq*t);
    
plot(t,y,'r*')

Fs  = SamplingRate;
if Fs ~= 0
    Fn = Fs/2;
    Fo = SignalFreq;
    Aliased = SignalFreq;
   % result = SignalFreq
    n = 0
    %range = [-Fn,Fn];
    while abs(Aliased) > Fn
        n = n+1
        Aliased = n*Fs-Fo
        %result = result-Fo
       % result = result - Fs;
    end
    Falias = abs(Aliased);
   % Falias = abs(result)
    disp(Fo);
    disp(Falias);
    hold on
end
t = [0:0.01:1];
y = cos(2*pi*Falias*t);
plot(t,y,'r')

clc;
clear
fprintf("...Written by EMİN AYYILDIZ - MUSTAFA ATİLA...\n")
fs = 100;% Here we define our sampling frequency (fs).
t = (0:0.01:50);% The purpose here is to define the time vector. We define a vector starting from 0 to 50 in 0.01 increments.
fc = 20; % We define the carrier frequency (fc) value that we will use here.
m = sin(2*pi*t*5);
% Here we define your sinosiadel message(m) signal.
s = ammod(m,fc,fs);
% We modulate the m signal that we have created here with the MATLAB ammod (s) command.
figure(1)

plot(t,m,'r*-',t,s,'b-');% The main purpose here is to compare the original message (m) and the modulated message (s) using the time vector values to the x-axis.y
xlim([0 2]);% Here we constrain the axis so that the values on our x-axis can be in the range of 0-2.
xlabel('time vector')
ylabel('original and modulate message')
legend('Original message (m)', 'Modulated message (s)')

modulate_amDSBSC = amDSBSC(m,fc,fs);
% By calling the amDSBSC function we created here, we modulate the m value, which is our original message, with the function.
modulate_amDSBSC = modulate_amDSBSC';
% We inverted the matrix so that the row and column numbers are equal.
figure(2);
plot(t,s,'g*',t,modulate_amDSBSC,'b-')
legend('modulated message (s)', 'modulatedamDSBSC ')
% The main goal here is to compare our s signal, which we modulated with the MATLAB ammod command, with the expression we modulated by creating a function.
xlim([0 2])% Here again, we limit our x values and do it in the range of 0-2.
xlabel('time vector')
ylabel('modulated signals')

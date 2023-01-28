function modulatedSignal = amDSBSC(message, fc, fs)
% this function converts the message to modulated signal



% we use this code block to transpose of the matrix 
wid = size(message,1);
if(wid ==1)
    message = message(:);
end

% Do the modulation
% first we define the time vector 
t = (0:1/fs:((size(message, 1)-1)/fs))';
t = t(:, ones(1, size(message, 2)));
% we convert our message to modulated signal using the calculation  
modulatedSignal = (message) .* cos(2 * pi * fc * t);

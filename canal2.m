function y = canal2(x)
%CANAL1 Filters input x and returns output y.

% MATLAB Code
% Generated by MATLAB(R) 8.3 and the DSP System Toolbox 8.6.
% Generated on: 18-Oct-2016 19:39:37

persistent Hd;

if isempty(Hd)
    
    Nb     = 10;           % Numerator Order
    Na     = 10;           % Denominator Order
    Fstop1 = 800000000;    % First Stopband Frequency
    Fpass1 = 900000000;    % First Passband Frequency
    Fpass2 = 1300000000;   % Second Passband Frequency
    Fstop2 = 1400000000;   % Second Stopband Frequency
    Fs     = 10000000000;  % Sampling Frequency
    
    h = fdesign.bandpass('nb,na,fst1,fp1,fp2,fst2', Nb, Na, Fstop1, Fpass1, ...
        Fpass2, Fstop2, Fs);
    
    Hd = design(h, 'iirlpnorm');
    
    
    
    set(Hd,'PersistentMemory',true);
    
end

y = filter(Hd,x);



function [ data ] = Taild( signal,Fi, Df, Fs, Dt)
%eleimina informacion cola

w2=Hederd(fliplr(signal),Fi, Df, Fs, Dt); %reordeno hacia atraz y elimino

data=fliplr(w2); % reordeno hacia adelante

end
function [ data ] = Taild( signal)
%eleimina informacion cola

w2=Hederd(fliplr(signal)); %reordeno hacia atraz y elimino

w3=fliplr(w2); % reordeno hacia adelante

end
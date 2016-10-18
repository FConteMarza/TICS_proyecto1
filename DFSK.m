function [ data ] = DFSK( signal,Fi, Df, Fs, Dt )
%descompone la señal en sus respectibos espacios de tiempo y mediante fft
%identifica el simbolo correspondiente a la frecuencia obtenida.
%recuperandose así la data original.
np=round(Dt/(1/Fs));
n=round(length(signal)/np);
f = Fs*(0:(np/2))/np;
data=zeros(1,n*4);
for i=1:n
    auxfft=fft(signal((i-1)*np+1:i*np));
    P2 = abs(auxfft/np);
    P1 = P2(1:np/2+1);
    P1(2:end-1) = 2*P1(2:end-1);
    au= find(P1==max(P1));
    auxd=f(au)
    floor((auxd-Fi)/Df)
    data((i-1)*4+1:i*4)=de2bi(floor((auxd-Fi)/Df),4);
end
end


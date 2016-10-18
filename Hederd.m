function [ data ] = Hederd( signal,Fi, Df, Fs, Dt )
%elimina informacion cabecera


np=floor(Dt/(1/Fs));
n=length(signal)/np;
f = Fs*(0:(np/2))/np;
l=length(signal);
for i=1:l
    auxfft=fft(signal((i-1)*np+1:i*np));
    P2 = abs(auxfft/np);
    P1 = P2(1:np/2+1);
    P1(2:end-1) = 2*P1(2:end-1);
    au= find(P1==max(P1));
    auxd=f(au);
    if(15==round((auxd-Fi)/Df))
        j=i+1;
        auxfft=fft(signal((j-1)*np+1:j*np));
        P2 = abs(auxfft/np);
        P1 = P2(1:np/2+1);
        P1(2:end-1) = 2*P1(2:end-1);
        au= find(P1==max(P1));
        auxd=f(au);
        if(0==round((auxd-Fi)/Df))
            data=signal((j)*np+1:np*n);
            break
        end
    end
end


end


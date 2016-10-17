function datos_filtrados=PasaBanda(data,B1,B2)
fe=10000/2; %frecuencia de Shannon//frec de nyquist

Wp=B1/fe; %Transformar las bandas de frecuencia
Ws=B2/fe;
%coeficientes del filtro
[b,a]=butter(7,[Wp Ws],'bandpass'); %n=orden del filtro, Wn=frecuencia de corte
freqz(b,a);
datos_filtrados=filter(b,a,data);
end


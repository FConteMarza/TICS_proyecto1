function datos_filtrados=PasaBanda(data,B1,B2);
fe=8000/2; %frecuencia de Shannon//frec de nyquist

Wp=[B1 B2]/fe; %Transformar las bandas de frecuencia
Ws=[B1-200 B
    2+200]/fe;
 % Atenuación en la banda de paso
 % Atenuación en la banda de rechazo
[n,Wn]=buttord(Wp,Ws,3,40)%Calcular el orden del filtro
%coeficientes del filtro
[b,a]=butter(n,Wn); %n=orden del filtro, Wn=frecuencia de corte
datos_filtrados=filter(b,a,data);
end


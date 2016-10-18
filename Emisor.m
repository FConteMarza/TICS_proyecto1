variables

% envia datos 

%nombre imagen

z = Data('estrella.jpg'); 

% entrega imagen en binario en vector z1

%Modulacion FSK( data,Fi, Df, Fs, Dt )

z2=FSK( z,F1, Df, Fs, Dt );

%envio sonido

%sound(z2,10000);

audiowrite('canal1.wav',z2,Fs);




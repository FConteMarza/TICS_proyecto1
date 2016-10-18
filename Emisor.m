variables

% envia datos 

%nombre imagen

z = Data('estrella.jpg'); 

% entrega imagen en binario en vector z1

%Modulacion FSK( data,Fi, Df, Fs, Dt )

z2=FSK( z,F1, 10, 10000, 0.1 );

%envio sonido

sound(z2,10000);




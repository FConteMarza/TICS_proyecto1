variables;
%Recibir sonido
%Filtrar las bandas
% Record your voice for 5 seconds.
recObj = audiorecorder;
disp('Start speaking.')
recordblocking(recObj, 20);%T tiempo a grabar
disp('End of Recording.');

% Play back the recording.
%play(recObj);

% Store data in double-precision array.
myRecording = getaudiodata(recObj);

% Plot the waveform.
plot(myRecording);
%Separar bandas
canal1=PasaBanda(myRecording, F1-50,F1+210);%fl y fu las frecuenciias en las que se encuentra el canal
canal2=PasaBanda(myRecording, F2-50,F2+210);
canal3=PasaBanda(myRecording, F3-50,F3+210);

%CANAL 1
%Reconocer Header
noheaduno=Hederd(canal1,F1,Df,Fs,Dt);
%Reconocer cola
data=Taild(noheaduno,F1,Df,Fs,Dt);%datos foto 

data_bits=DFSK(data,F1,Df,Fs,Dt);%datos en bits
matriz_im=recoveryimage(data_bits);%matriz para JPG
imshow(matriz_im)




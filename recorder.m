variables;
%Recibir sonido
%Filtrar las bandas
% Record your voice for 5 seconds.
recObj = audiorecorder(Fs,16,1);
disp('Start speaking.')
recordblocking(recObj, 30);%T tiempo a grabar
disp('End of Recording.');

% Play back the recording.
%play(recObj);

% Store data in double-precision array.
myRecording = getaudiodata(recObj);
myRecording=myRecording';

% Plot the waveform.
plot(myRecording);
%Separar bandas
canal1=PasaBanda(myRecording, F1-100,F1+300);%fl y fu las frecuenciias en las que se encuentra el canal
canal2=PasaBanda(myRecording, F2-100,F2+300);
canal3=PasaBanda(myRecording, F3-100,F3+300);

%CANAL 1
%Reconocer Header
noheaduno=Hederd(canal1,F1,Df,Fs,Dt);
%Reconocer cola
data=Taild(noheaduno,F1,Df,Fs,Dt);%datos foto 

data_bits=DFSK(data,F1,Df,Fs,Dt);%datos en bits
matriz_im=recoveryimage(data_bits);%matriz para JPG
imshow(matriz_im)




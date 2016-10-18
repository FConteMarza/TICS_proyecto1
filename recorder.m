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
c1=canal1(myRecording, F1-100,F1+300);%fl y fu las frecuenciias en las que se encuentra el canal
c2=canal2(myRecording, F2-100,F2+300);
c3=canal3(myRecording, F3-100,F3+300);

%CANAL 1
%Reconocer Header
noheaduno=Hederd(c1,F1,Df,Fs,Dt);
%Reconocer cola
data=Taild(noheaduno,F1,Df,Fs,Dt);%datos foto 

data_bits=DFSK(data,F1,Df,Fs,Dt);%datos en bits
matriz_im1=recoveryimage(data_bits);%matriz para JPG
imshow(matriz_im1)

%CANAL 2
%Reconocer Header
noheaduno=Hederd(c2,F1,Df,Fs,Dt);
%Reconocer cola
data=Taild(noheaduno,F1,Df,Fs,Dt);%datos foto 

data_bits=DFSK(data,F1,Df,Fs,Dt);%datos en bits
matriz_im2=recoveryimage(data_bits);%matriz para JPG
imshow(matriz_im2)

%CANAL 3
%Reconocer Header
noheaduno=Hederd(c3,F1,Df,Fs,Dt);
%Reconocer cola
data=Taild(noheaduno,F1,Df,Fs,Dt);%datos foto 

data_bits=DFSK(data,F1,Df,Fs,Dt);%datos en bits
matriz_im3=recoveryimage(data_bits);%matriz para JPG
imshow(matriz_im3)



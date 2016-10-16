%Recibir sonido
%Filtrar las bandas
% Record your voice for 5 seconds.
recObj = audiorecorder;
disp('Start speaking.')
recordblocking(recObj, 10);%T tiempo a grabar
disp('End of Recording.');

% Play back the recording.
%play(recObj);

% Store data in double-precision array.
myRecording = getaudiodata(recObj);

% Plot the waveform.
plot(myRecording);
%Separar bandas
canal1=PasaBanda(myRecording, fl1,fu1);%fl y fu las frecuenciias en las que se encuentra el canal
canal2=PasaBanda(myRecording, fl2,fu2);
canal3=PasaBanda(myRecording, fl3,fu3);



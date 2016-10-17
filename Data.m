function [z1]=Data(Nombreimagen)
%data forma 'estrella.jpg'

%Fs= 10000; %frecuencia muestreo
%Fi=400; 
%bits=4;
%Dt=0.1;
%Df=10;

%x1=rgb2gray(imread(Data))

x1=rgb2gray(imread(Nombreimagen)); % imagen a escala de grisses binaria
%x1=rgb2gray(imread('estrella.jpg')); % imagen a escala de grisses binaria
x1=x1>128;
%x1(21,24)=1;
%x1(1,1)=1;

[x,y]=size(x1);  % tamaño imagen
M=x*y;  %largo imagen

imshow(x1); % mostrar imagen
z=reshape(x1,M,1); % Reordeno la imagen

z0=[1 1 1 1 0 0 0 0];
z2=[0 0 0 0 1 1 1 1];
z1=[z0 z' z2];

end
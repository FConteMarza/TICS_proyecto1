function [R]=recoveryimage(Data)
%data forma 'estrella.jpg'


MN =[21 24]; % tamaño imagen

l1 = MN(:,2);

l2= MN(:,1);  %21

image=zeros(21,24);

n=1;

for i=1:l1  % de i a 24 columna

    for j=1:l2      
            image(j,i)=Data(n);  
            n=n+1;        
    end
    
end
R=image;
end



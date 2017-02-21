clc % limpia pantalla
clear all % limpia todas las variables
close all % cierra los procesos
warning off all % muestra sugerencias

%lectura de una imagen desde un archivo
imagen=imread('/home/reoxb/Documentos/Escom/Nivel_III/Analisis de Imagenes/Practicas/Practica2/flower.jpg');

%despliege de una imagen
figure(1)
imshow(imagen)

%cambiar a rojo
figure(2)
rojo=imagen;
%apaga green
rojo(:,:,2)=0;
%apaga azul
rojo(:,:,3)=0;
imshow(rojo)

%cambiar a azul
figure(3)
azul=imagen;
%apaga green
azul(:,:,2)=0;
%apaga red
azul(:,:,1)=0;
imshow(azul)

%cambiar a verde
figure(4)
verde=imagen;
%apaga red
verde(:,:,1)=0;
%apaga azul
verde(:,:,3)=0;
imshow(verde)

%amarillo
figure(5)
amarillo = imagen; 
amarillo(:, :, 1) = 255;
amarillo(:, :, 2) = 255;
imshow(amarillo)

%cyan
figure(6)
cyan = imagen;
cyan(:, :, 2) = 255;
cyan(:, :, 3) = 255;
imshow(cyan)

%magenta
figure(7)
magenta = imagen;
magenta(:, :, 1) = 255;
magenta(:, :, 3) = 255;
imshow(magenta)

%histograma del nivel de rojo ---------------------------------------------
figure(8)
imhist(imagen(:,:,1))

title('Histograma de la imagen en rojo')
xlabel('# de niveles de rojo')
ylabel('# de frecuencia con que aparece') 


%histograma del nivel de verde ---------------------------------------------
figure(9)
imhist(imagen(:,:,2))

title('Histograma de la imagen en verde')
xlabel('# de niveles de verde')
ylabel('# de frecuencia con que aparece')


%histograma del nivel de azul ---------------------------------------------
figure(10)
imhist(imagen(:,:,3))

title('Histograma de la imagen en azul')
xlabel('# de niveles de azul')
ylabel('# de frecuencia con que aparece')

%histograma del nivel de cyan ---------------------------------------------
figure(11)
imhist(cyan(:,:,1))

title('Histograma de la imagen en cyan')
xlabel('# de niveles de cyan')
ylabel('# de frecuencia con que aparece')

%histograma del nivel de magenta ---------------------------------------------
figure(12)
imhist(magenta(:,:,2))

title('Histograma de la imagen en magenta')
xlabel('# de niveles de magenta')
ylabel('# de frecuencia con que aparece')


%histograma del nivel de amarillo ---------------------------------------------
figure(13)
imhist(amarillo(:,:,3))

title('Histograma de la imagen en amarillo')
xlabel('# de niveles de amarillo')
ylabel('# de frecuencia con que aparece')

disp('fin del programa') %printf



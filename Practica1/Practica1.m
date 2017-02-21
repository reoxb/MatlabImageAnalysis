clc % limpia pantalla
clear all % limpia todas las variables
close all % cierra los procesos 
warning off all % muestra sugerencias
%%--------------------------------------------------------------------------
%lectura de una imagen desde un archivo
imagen = imread('/home/reoxb/Documentos/Escom/Nivel_III/Analisis de Imagenes/Practicas/Practica1/spring.jpg');
%despliege de una imagen
figure(1)
imshow(imagen)
%--------------------------------------------------------------------------
%%obteniendo el canal R
rojo = imagen;
rojo(:, :, 2) = 0;
rojo(:, :, 3) = 0;
%obteniendo el canal G
verde = imagen;%--------------------------------------------------------------------------
verde(:, :, 1) = 0;
verde(:, :, 2) = 0;
%obteniendo el canal B
azul = imagen;
azul(:, :, 1) = 0;
azul(:, :, 3) = 0;
%--------------------------------------------------------------------------
mosaico = [imagen rojo ; azul verde];
figure(2)
imshow(mosaico)
%--------------------------------------------------------------------------
cyan = imagen;
cyan(:, :, 2) = 255;
cyan(:, :, 3) = 255;

magenta = imagen;
magenta(:, :, 1) = 255;
magenta(:, :, 3) = 255;

amarillo = imagen; 
amarillo(:, :, 1) = 255;
amarillo(:, :, 2) = 255;

%colores por composicion
cyan1 = azul + verde;
amarillo1 = azul + rojo;
magenta1 = rojo + verde;
%--------------------------------------------------------------------------
%obteniendo el color blanco 
blanco = imagen;
blanco(:,:,1) = 255;
blanco(:,:,2) = 255;
blanco(:,:,3) = 255;
%obteniendo el color negro
negro = imagen;
negro(:, :, 1) = 0;
negro(:, :, 2) = 0;
negro(:, :, 3) = 0;
%--------------------------------------------------------------------------
%mosaico 1
mosaico1 = [imagen rojo; cyan magenta];
figure(3)
imshow(mosaico1)
%mosaico 2
mosaico2 = [blanco amarillo; rojo negro];
figure(4)
imshow(mosaico2)
%--------------------------------------------------------------------------
%creando la bandera horizontal
[x,y,z] = size(imagen);
banderah = imagen;
%primera franja roja
banderah(1:x/3, :, 2) = 0;
banderah(1:x/3, :, 3) = 0;
%segunda franja verde
banderah(x/3: x*2/3, :, 1) = 0;
banderah(x/3: x*2/3, :, 3) = 0;
%tercera franja azul
banderah(x*2/3: x, :, 1) = 0;
banderah(x*2/3: x, :, 2) = 0;
figure(5)
imshow(banderah)
%--------------------------------------------------------------------------
%creando la bandera vertical
banderav = imagen;
%primera franja roja
banderav(:, 1:y/3, 2) = 0;
banderav(:, 1:y/3, 3) = 0;
%segunda franja verde
banderav(:, y/3: y*2/3, 1) = 0;
banderav(:, y/3: y*2/3, 3) = 0;
%tercera franja azul
banderav(:, y*2/3: y, 1) = 0;
banderav(:, y*2/3: y, 2) = 0;
figure(6)
imshow(banderav)
%--------------------------------------------------------------------------
%creando la I
ilatina = imagen;

%franjas horizontales

ilatina(x/10:x*3/10, y/7: y*6/7, 2) = 176;
ilatina(x/10:x*3/10, y/7: y*6/7, 3) = 246;

%franjas horizontales
ilatina(x*3/10: x*7/10, y*3/7: y*4/7, 1) = 245;
ilatina(x*3/10: x*7/10, y*3/7: y*4/7, 3) = 135;

%franjas horizontales
ilatina(x*7/10: x*9/10, y/7: y*6/7, 1) = 255;
ilatina(x*7/10: x*9/10, y/7: y*6/7, 2) = 233;


%franjas horizontales 
ilatina(x*3/10: x*7/10, y/7: y*3/7, 1) = 0;
ilatina(x*3/10: x*7/10, y/7: y*3/7, 3) = 0;

%franjas horizontales 
ilatina(x*3/10: x*7/10, y*4/7: y*6/7, 1) = 0;
ilatina(x*3/10: x*7/10, y*4/7: y*6/7, 2) = 0;

figure(7)
imshow(ilatina)
disp('fin del programa') %printf
%disp(y) 
%disp(x) 
%disp(z)

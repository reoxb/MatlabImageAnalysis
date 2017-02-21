clc % Limpia pantalla
clear all % Limpia todas la varialbes
close all % Cierra todos lo procesos
warning off all % Muestra todas las sugerencias
%--------------------------------------------------------------------------
% Lectura de imagen
imagen = imread('/home/reoxb/Documentos/Escom/Nivel_III/Analisis de Imagenes/Practicas/Practica3/imagen.jpg');
% Despliege de una imagen
figure(1)
imshow(imagen)
% Obtiene el tamaño de la imagen
[m, n, o] = size(imagen);
% Solicita el histograma a expandir o contraer 
opcion = input('Ingrese el canal: \n 1.R \n 2.G \n 3.B \n Introduzca la opcion: ');

% Solicita comprension o expansion --------------------------------------   
	opc = input('Menu \n 1.Compresion \n 2.Expansion \n Seleccione una opcion: ');

if opcion == 1
	% Cambia a rojo -------------------------------------------------------
	figure(2)
	rojo=imagen;
	%apaga verde
	rojo(:,:,2)=0;
	%apaga azul
	rojo(:,:,3)=0;
	imshow(rojo)
	
	%histograma del nivel de rojo -----------------------------------------
	figure(3)
	imhist(rojo(:,:,1))
	title('Histograma de la imagen en rojo')
	xlabel('# de niveles de rojo')
	ylabel('# de frecuencia con que aparece') 
 
    %realiza comprension o expansion --------------------------------------   
	if opc == 1
    		compresion(rojo, m, n, 1);
	elseif opc == 2
            expansion(rojo, m , n, 1);
	end

elseif opcion == 2
    %cambiar a verde
	figure(4)
	verde=imagen;
	%apaga red
	verde(:,:,1)=0;
	%apaga azul
	verde(:,:,3)=0;
	imshow(verde)

	%histograma del nivel de verde ---------------------------------------------
	figure(5)
	imhist(imagen(:,:,2))
	title('Histograma de la imagen en verde')
	xlabel('# de niveles de verde')
	ylabel('# de frecuencia con que aparece')
    
    %realiza comprension o expansion --------------------------------------   
	if opc == 1
    		compresion(verde, m, n, 2);
	elseif opc == 2
            expansion(verde, m , n, 2);
    end
    
else opcion == 3
    % Cambia a azul ---------------------------------------------
	figure(6)
	azul=imagen;
	%apaga green
	azul(:,:,2)=0;
	%apaga red
	azul(:,:,1)=0;
	imshow(azul)
	
	%histograma del nivel de azul ---------------------------------------------
	figure(7)
	imhist(imagen(:,:,3))
	title('Histograma de la imagen en azul')
	xlabel('# de niveles de azul')
	ylabel('# de frecuencia con que aparece')
    
    %realiza comprension o expansion --------------------------------------   
	if opc == 1
    		compresion(rojo, m, n, 3);
	elseif opc == 2
            expansion(rojo, m , n, 3);
    end    
   
end
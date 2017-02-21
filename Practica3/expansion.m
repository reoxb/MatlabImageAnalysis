% Funcion que realiza la expansion de la imagen
% Indicamos la salida flag y las variables  de entrada A, m, n, canal
function [flag] = expansion(A, m, n, canal)
% Solicitamos los intervalos de expansion de la nueva imagen
x = input('Intervalo minimo: ');
y = input('Intervalo maximo: ');
%creamos una matriz de ceros de mxn
Z = zeros(m, n);
%definimos el valor maximo en la matriz en el canal R|G|B
Amax = max(max(A(:,:,canal)));
%definimos el valor maximo en la matriz en el canal R|G|B
Amin = min(min(A(:,:,canal)));
%
% La funcion a calcular es la siguiente
%[ {A(j,k) - Amin} -> numerador / -> division {Amax - Amin} -> denominador] 
% 					* -> producto[(y - x) -> diferencia] + [x -> suma]
%
% ciclamos por los elementos j,k de la matriz
for j = 1:m
    for k = 1:n
        diferencia = A(j,k,canal) - Amin;
        denominador = Amax - Amin;
        numerador = y - x;
        division = numerador / double(denominador);
        producto = division * double(diferencia);
        pixel = producto + x;
        Z(j ,k) = pixel;
    end
end
Aexp = round(Z);
histo(Aexp, 'Expansion del Canal', canal, x, y);
flag = 0;
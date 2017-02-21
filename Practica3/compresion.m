function [flag] = compresion (A, m, n)
x = input('Intervalo minimo: ');
y = input('Intervalo maximo: ');
Z = zeros(m, n);
Vmax = max(max(A(:,:,1)));
Vmin = min(min(A(:,:,1)));
for j = 1:m
    for k = 1:n
        r1 = A(j,k,1) - Vmin;
        r1 = double(r1);
        r2 = Vmax - Vmin;
        r2 = double(r2);
        d1 = r1 / r2;
        r3 = y - x;
        m1 = d1 * r3;
        pixel = m1 + x;
        Z(j ,k) = pixel;
    end
end
Zf = round(Z);
histo(Zf, 'Comprension del canal', 1, x, y);
flag = 1;
function [status] = histo (Mc, titulo, i, x, y)
if i == 1
    add = 'r.-';
elseif i == 2
    add = 'g.-';
elseif i == 3
    add = 'b.-';
end
for num = x:y
        R = find(Mc == num);
        [m, n] = size(R);
        x = num;
        y = linspace(0, m);
        figure(4)
        hold on, subplot(3,1,i), plot(x, y, add), title(titulo)
        %subplot(3,3, i), imshow(Mc), title(titulo)
end
status = 1;
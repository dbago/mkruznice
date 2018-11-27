disp('Program za crtanje Nyquistovog dijagrama i m kruznica');
disp(' ');

%crtanje Nyquistovog dijagrama
br = input('Unesite koeficijente polinoma brojnika prijenosne funkcije br = [a(n), a(n-1), ... a(0)] --> br = ');
naz= input('Unesite koeficijente polinoma nazivnika prijenosne funkcije naz = [b(n), n(n-1), ... b(0)] --> naz = ');
nyquist(br, naz); hold on;

%crtanje m kruznica
Mm = input('Unesite modul do cije vrijednosti zelite da se crtaju kruznice --> M = ');
%za M>1
for i=1.05:0.1:Mm
    M=i;
    r = M/(M^2-1);
    pomakX = -((M^2)/(M^2-1));
    fi = 0:pi/25:2*pi;
    x = r*sin(fi) + pomakX;
    y = r*cos(fi);
    plot(x, y, 'r:');
    txt = ['M = ', num2str(i)];
    text(x(25), y(25), txt, 'FontSize', 8);
    axis equal;
end
%za M<1
for i=0.95:-0.1:0
    M = i;
    r = M/(M^2-1);
    pomakX = -((M^2)/(M^2-1));
    fi = 0:pi/25:2*pi;
    x = r*sin(fi) + pomakX;
    y = r*cos(fi);
    plot(x, y, 'r:')
    txt = ['M = ', num2str(i)];
    text(x(1), y(1), txt, 'FontSize', 8);
end
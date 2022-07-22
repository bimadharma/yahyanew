Program Aritmatika;
uses crt;
var a,b,c:integer;
var f:real;

begin
        clrscr;
        Writeln('KELOMPOK 13');
        Writeln('BIMA DHARMA YAHYA                 (10121266)');
        writeln('REYNER JEREMY SEBASTIAN SITOHANG  (11121102)');
        writeln('SILVESTER BAMBANG PRIAMBODO       (11121220)');
        writeln;
        writeln('membuat program pascal dengan menggunakan operator aritmatika');
        write('masukan nilai a: ');readln(a);
        write('masukan nilai b: ');readln(b);

        writeln(' ');
        textcolor(lightred);
        c := a+b;
        writeln('Hasil dari A + B adalah ',c);
        c := a*b;
        writeln('Hasil dari A x B adalah ',c);
        c := a-b;
        writeln('Hasil dari A - B adalah ',c);
        f := a/b;
        writeln('Hasil dari A : B adalah ',f:0:2);
        c := a div b;
        writeln('Hasil dari A DIV B adalah ',c);
        c := a mod b;
        writeln('Hasil dari A MOD B adalah ',c);
        writeln('Hasil dari A Pangkat B adalah ',sqr(a));
        writeln('Hasil Operasi Akar adalah ', sqrt(a):0:2);
        readln;
end.

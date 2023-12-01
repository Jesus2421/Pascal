program potencia;

uses crt;

var
base,pote:real;
I,exp:integer;

begin
     clrscr;
     write('dame el valor de base=');readln(base);
     write('dame el valor de exponente=');readln(exp);
     pote:=1;
     for I:=1 to exp do
     pote:=pote*base;
     writeln('resultado=',pote:5:2);
   readkey;
end.


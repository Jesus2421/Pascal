program funsionseno;

uses crt;
function factorial(n:integer):integer;
var
Facto,I:integer;
begin
     Facto:=1;
     for I:=1 to n do
     Facto:=Facto*I;
     Factorial:=Facto;
end;
function potencia (base:real;expo:integer):real;
var
pote:real;
I:integer;
begin
     pote:=1;
     for I:=1 to expo do
     pote:=pote*base;
     potencia:=pote;
end;
var
n,facto,i:integer;
x,equis,seno,uno:real;
begin
     clrscr;
     write('dame el valor de x=');readln(x);
     write('dame el valor de n=');readln(n);
     x:=x*3.14/180;
     seno:=0;
     for i:=1 to n do
     uno:=potencia(-1,i+1);
     facto:=factorial(2*i-1);
     equis:=x*potencia(1,2*i-1);
     seno:=seno+i;
     seno:=seno+uno*equis/facto;
     writeln('resultado=',seno:5:2);
   readkey;
end.


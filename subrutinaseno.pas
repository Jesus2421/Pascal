program subrutinaseno;

uses crt;

procedure saludo;
begin
    write ('bienenvenido al programa calculeitor                                            ');
end;
function factorial(Nro:integer):longint;
var
Au:longint;
I:integer;
begin
   Au:=1;
   for I:=1 to Nro do
   Au:=Au*I;
   factorial:=Au;
end;
function potencia(base:real;expo:integer):real;
var
Au:real;
I:integer;
begin
  Au:=1;
  for I:=1 to expo do
  Au:=Au*base;
  potencia:=Au;
end;
  var
i,n:integer;
x,seno,uno,equis:real;
facto:longint;
begin
     clrscr;
     saludo;
     write('dame el valor de x=');readln(x);
     write('dame la presion del calculo=');readln(N);
     x:=x*3.1416/180;
     seno:=0;
     for i:=1 to N do
     begin
     uno:=potencia(-1,i+1);
     equis:=potencia(x,2*i-1);
     facto:=factorial(2*i-1);
     seno:=seno+uno*equis/facto;
     end;
     writeln('resultado=',seno:5:2);
   readkey;
end.




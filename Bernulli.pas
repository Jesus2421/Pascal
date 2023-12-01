program Bernulli;

uses crt;

function potencia(base:real;Expo:integer):real;
Var
Aux:real;
I:integer;
begin
    if expo=0 then potencia:=1
    else
    begin
       Aux:=1;
       for I:=1 to Expo do
       Aux:=Aux*base;
       Potencia:=Aux;
       end;
     end;
function factorial (Nro:integer):longint;
Var
Aux:longint;
I:integer;
begin
    if Nro=0 then factorial:=1
    else
    begin
       Aux:=1;
       for I:=1 to Nro do
       Aux:=Aux*I;
       factorial:=Aux;
       end;
     end;
function Fw(J:integer):longint;
var
  Aux:longint;
  I,Geo,c:integer;
begin
       if (J mod 2=0) then
       begin
           c:=2;Aux:=2;Geo:=2;
           for I:=1 to J-1 do
           Geo:=Geo+c;
           c:=c+1;
           Aux:=Aux*Geo;
       end
    else
    begin
         Aux:=2;c:=3;Geo:=2;
         for I:=1 to J-1 do
         Geo:=Geo+c;
         c:=c+2;
         Aux:=Aux*Geo;
       end;
      Fw:=Aux;
     end;
Function suma2(J:integer):real;
var
  Aux:real;
  uno:real;
  F,ele,totalele:longint;
  L:integer;
 begin
    Aux:=0;
    for L:=1 to J do
    begin
       uno:=potencia(-1,L);
       F:=Fw(2*J);
       ele:=factorial(L);
       totalele:=factorial(J-L);
       Aux:=Aux+uno*F/(ele*totalele);
    end;
   suma2:=Aux;
 end;
function suma1 (Aux:integer;x:real):real;
var
  L:integer;
  total,equis,f,S2:real;
begin
   Aux:=0;
   for L:=1 to Aux do
    begin
    equis:=potencia(x,l-1);
    F:=fw (2*l-1);
    S2:=suma2(l);
    total:=((Aux+equis)/f)*s2;
    suma1:=total;
    end;
end;
var
  x,Bk:real;
  N:integer;
begin
    clrscr;
    write ('dame x=');readln(x);
    write ('deme N=');readln(N);
    Bk:=suma1(N,x);
    writeln ('resultado=',Bk:10:2);
    readkey;
end.

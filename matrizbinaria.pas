program matrizbinaria;

uses crt;

type
Matriz=array[1..100,1..100] of integer;
vector=array[1..100]of integer;
function potencia(base:longint;expo:byte):longint;
var
Au:longint;
I:integer;
begin
    Au:=1;
    for I:=1 to expo do
    Au:=Au*base;
    potencia:=Au;
end;
var
F,C,i,J:integer;
suma,M:matriz;
Deci:vector;
begin
   clrscr;
   write ('Bienvenido Usuario');
   writeln;
   write ('cuantas filas son:');readln(F);
   write ('cuantas columnas son:');readln(C);
   randomize;
   suma[i,j]:=0;
   for i:=1 to F do
     begin
        for J:=1 to C do
          begin
             M[i,J]:=random (2);
             suma[i,J]:=suma[i,j]+M[i,J];
             write (M[i,J],' ');
             Deci[i]:=deci[i]+potencia(2*M[i,J],C-J);
         end;
         write (deci[i],' ');
          writeln;
     end;
   readkey;
end.




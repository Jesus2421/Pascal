program Matrices;

uses crt;

type
Matriz=array[1..100,1..100] of integer;
var
C,F,suma,i,J:integer;
edad:matriz;
promedio:real;
begin
   clrscr;
   write('dame numero de filas=');readln(F);
   write('dame numero de columnas=');readln(C);
   randomize;
   suma:=0;
   for i:=1 to F do
     begin
        for J:=1 to C do
          begin             
             Edad[i,J]:=random(101);
             suma:=suma+Edad[i,J];
             write(Edad[i,j]:4);
          end;
          writeln;        
     end;
        promedio:=suma/F*C;
        writeln('Promedio=',promedio:5:2);
   readkey;
end.

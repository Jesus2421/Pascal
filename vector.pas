program vectores;

uses crt;

type
vector=array[1..100]of integer;
var
n,suma,i:integer;
edad:vector;
Promedio:real;
begin
   clrscr;
   write ('cual es el numero de elementos del vector: ');readln (n);
   randomize;
   suma:=0;
   for i:=1 to n do
   begin
       Edad[i]:=random(101);
       suma:=suma+edad[i];
   end;
       Promedio:=suma/n;
      for i:=1 to n do
       write (edad[i],' ');
       writeln;
       writeln('Promedio=',Promedio:5:2);
   readkey;
end.

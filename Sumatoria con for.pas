program Sumatoria;

uses crt;

var
N,Serie,I:integer;

begin
     clrscr;
     write('dame el valor de N=');readln(n);
     Serie:=0;
     for I:=1 to n do
     Serie:=Serie+I;
     end;
     writeln('resultado=',serie);
   readkey;
end.

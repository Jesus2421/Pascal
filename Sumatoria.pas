program Sumatoria;

uses crt;

var
n,a,i:integer;

begin
     clrscr;
     write('dame el valor de N=');readln(n);
     a:=0;
     for i:=1 to n do
     begin
     a:=a+i;
     writeln('resultado: ',i,'=',a);
     end;
     writeln('resultado=',a);
   readkey;
end.

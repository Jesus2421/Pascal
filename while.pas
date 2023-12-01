program while;

uses crt;

var
n,a,i:integer;

begin
     clrscr;
     write('dame el valor de N=');readln(n);
     a:=0;
     i:=1;
     while i=n do
     begin
     a:=a+i;
     i:=i+1;
     end;
     writeln('resultado=',serie);
   readkey;
end.


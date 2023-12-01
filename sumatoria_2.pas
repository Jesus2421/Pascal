program sumatoria_2;

uses crt;

var
N,Serie,I:integer;

begin
     clrscr;
     write('dame el valor de N=');readln(N);
     Serie:=0;
     I:=1
      while I:=N do
        begin
          writeln (I)
          Serie:=Serie+(2*I-1);
          I:=I+1;
        end;
     writeln('resultado=',serie);
   readkey;
end.


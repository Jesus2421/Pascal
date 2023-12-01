program Factorial;

uses crt;

var
N,Facto,I:integer;

begin
     clrscr;
     write('dame el valor de N=');readln(N);
     Facto:=1;
     for I:=1 to N do
     Facto:=Facto*I;
     writeln('resultado=',Facto);
   readkey;
end.

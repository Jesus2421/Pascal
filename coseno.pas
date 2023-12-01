program coseno;
uses
crt,printer;

var
x,y: real;
signo,i,j,k,expo: integer;
cosx,factoria,potencia: real;

begin
clrscr;
Writeln('Introduzca el angulo al que se desea calcular el Coseno.');
write('Angulo: ');
readln(x);
y:=x*3.1416/180; signo:=-1;
cosx:=0;
for i:=1 to 10 do
begin
     expo:=2*i;
     potencia:=1;

     for j:=1 to expo do
     potencia:=potencia*y;

     factoria:=1;
     for k:=1 to (2*i) do
     factoria:=factoria*k;

signo:=signo*-1;
cosx:=cosx+signo*potencia/factoria;

end;
writeln('');
writeln('El Coseno de ', x:2:0,' es: ',Cosx:2:10);
readln;
end.


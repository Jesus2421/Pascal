Program Convertidorbindec;

Uses crt;

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
Var
N:string;
i,longitud,dec:byte;
Aux:longint;
begin
   clrscr;
   write ('dame el numero binario=');readln(N);
   longitud:=length(N);
   for i:=longitud downto 1 do
   begin
      val(N[i],dec);
      Aux:=Aux+dec*potencia(2,longitud-i);
   end;
   str(Aux,N);
   writeln('su numero en decimal es=',N);
   readkey;
end.

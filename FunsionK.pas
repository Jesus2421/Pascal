program funcionk;

uses crt;

function potencia(base:real;expo:integer):real;
var
Au:real;
I:integer;
begin
  Au:=1;
  if expo=0 then potencia:=1
  else
  begin
  for I:=1 to expo do
  Au:=Au*base;
  potencia:=Au;
  end;
end;
function factorial(n:integer):longint;
var
I:integer;
Aux:longint;
begin
     Aux:=1;
      if n=0 then factorial:=1
      else
     begin
     for I:=1 to n do
     Aux:=Aux*I;
     Factorial:=Aux;
     end;
end;
function landa(K:integer):integer;
var
aux1,aux2,i:integer;
begin
   aux1:=1;
   aux2:=0;
   for i:=0 to K-1 do
   begin
      aux1:=aux1+i;
      aux2:=aux2+aux1;
      landa:=aux2;        
   end; 
end;
var
K,j,LA,KA,jota:integer;
suma,loga,e,loga2,Px:real;
begin
  clrscr;
  write('dame el valor de K=');readln(K);
  LA:=landa(K);
  e:=exp(-(LA-K));
  loga:=ln(LA)/ln(10);
  loga:=potencia(loga,K);
  KA:=factorial(K);
  suma:=0;
  for j:=0 to K do
  begin
     loga2:=potencia(loga,j);
     jota:=factorial(j);
     suma:=suma+e*loga2/jota;
  end;
  Px:=e*loga/ka/suma;
  writeln('resultado=',Px:5:2);
  readkey 
end.

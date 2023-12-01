Program Mitsubicho;

uses crt;

const
Modelo:array[1..3]of string[10]=('Popular','sedan','Carga');
type
Matriz=array [1..3,1..4]of integer;
Vector=array[1..4]of integer;
procedure salida(dolar:Matriz);
var
i,j:integer;
v2:vector;
begin
    writeln ('Matriz en dolares');
    writeln;
    writeln('Modelo  Sur     Norte     Centro     Euro   costo total');
    writeln;    
    for i:=1 to 3 do
    begin
    v2[i]:=0;
     writeln (modelo[i]);
      for J:=1 to 4 do
       begin
          write('   ',dolar[i,j]:7);
          v2[i]:=v2[i]+dolar[i,j];         
        end;
        write(v2[i]:7);
      writeln;
     end;
end;
procedure entrega(uni:matriz;venta:vector);
var
i,j:integer;
dolar:Matriz;
begin
  writeln;
  gotoxy(1,25);
  writeln('Ensambladora Misubicho C.A');
  writeln('telefono:04241469641');
  writeln('Rif:J-000111222');
  writeln('Estimado de unidades del 2014');
  writeln('Modelo  Sur      Norte    Centro     Euro');
   for i:=1 to 3 do
    begin   
     writeln (modelo[i]);
      for J:=1 to 4 do
       begin
           write('     ',uni[i,j]:5)         
        end;
      writeln;
     end;         
    readkey;
   writeln;
   begin
    gotoxy(1,35);
   writeln ('Precios de venta 2014');
   writeln('Venta en dolares de Popular,Sedan y Carga');
   readkey;
   writeln;
      for i:=1 to 3 do
      begin
      write (Venta[i]:5);
     end;
   end;
   for i:=1 to 3 do
    begin
      for J:=1 to 4 do
       begin
          dolar[i,j]:=uni[i,j]*venta[i];
       end;
      writeln;
     end;
    salida(dolar);
  end;
var
i,j:integer;
uni:Matriz;
venta:vector;
begin
    clrscr;
    write ('datos de entrada');
    writeln;
    for i:=1 to 3 do
    begin
      for J:=1 to 4 do
       begin
         write('introducir datos [',i,',',j,'] = ');
         readln(uni[i,j]);
       end;
      writeln;
     end;
      writeln('datos ventas');
      writeln;
      for i:=1 to 3 do
      begin
      write ('dime precio del modelo=');readln(venta[i]);
      end;
      entrega(Uni,venta);
      readkey;
end.

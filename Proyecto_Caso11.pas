program Proyecto_Caso11;

uses
  crt;

var
  IMO:array[0..100] of integer;
  IM:array[0..100] of integer;
  Q:array[0..100] of integer;
  Prod:array[0..100] of integer;
  Sem:integer;
  i, k, S, R:integer;
  NA, VT:integer;
  Dem, SemSimul, NIVELMIN, Orden:integer;
  SumaProd, SinProd, NumOrdenes, PromOrden, SumaIMO:integer;
  opcion: string;

{Procedimiento para los números aleatorios asignados}
Procedure Aleatorio;
begin
  Randomize;
  NA := Random(1000);
  if (0 <= NA) and (NA <= 15) then Dem:=0
     else if (16 <= NA) and (NA <= 128) then Dem:=80
        else if (129 <= NA) and (NA <= 278) then Dem:=160
           else if (279 <= NA) and (NA <= 289) then Dem:=240
              else if (290 <= NA) and (NA <= 309) then Dem:=320
                 else if (310 <= NA) and (NA <= 649) then Dem:=400
                      else Dem:=480;
end;
{Cuerpo del Programa}
begin
repeat
  {Impresion del menu de solicitud de datos}
  writeln;
  writeln('  Numero de semanas de simulacion (entero): '); {Semanas de simulación}
  readln(SemSimul);
  writeln;
  writeln('  Nivel Minimo de Inventario a la Mano y a la Orden (entero): ');
  readln(NIVELMIN);  {Nivel Mínimo de Inventario a la Mano y a la Orden}
  writeln;
  writeln('  Magnitud de la orden (entero): ');
  readln(Orden);
  clrscr;
    {Impresion del Encabezado de la Tabla}
  Writeln;
  GotoXY(5,2);
  write('Sem');
  GotoXY(14,2);
  Write('NA');
  GotoXY(23,2);
  Write('Dem');
  GotoXY(32,2);
  Write('IM');
  GotoXY(41,2);
  Write('IMO');
  GotoXY(50,2);
  Write('LLO');
  GotoXY(60,2);
  Write('PO');
  GotoXY(65,2);
  Write('Prod/Dia');
  Writeln;
  Writeln('   ---------------------------------------------------------------------');

  {Estado Inicial del Inventario}
  IM[0] := 600;
  Q[0]:= 650;
  IMO[0] := IM[0]+Q[0];

  k:=0; S:=1; R:=1; SinProd:=0; NumOrdenes:=1; SumaIMO:=IMO[0];  {Contadores}

  {Impresión de los datos del Inventario inicial (Semana 0)}
  Sem := 0;
  write(Sem:6,' ',IM[0]:26,' ',IMO[0]:9,' ',Q[0]:17);
  writeln;

  {Simulación del inventario para un número determinado de semanas (SemSimul)}
     For i:=1 to SemSimul do
     begin
        writeln('   ---------------------------------------------------------------------');
        write(i:6);  {Número de la la semana}

        if R = 0 then
            begin     {Control en caso de escasez}
            NA:=0;
            Dem:=0;
            SinProd:=SinProd+1;
            end
        else Aleatorio; {Cuando hay Inventario a la Mano}

        {Impresión del Número Aleatorio Transformado y la correspondiente Demanda}
        write(NA:9);
        Write(Dem:10);

        {Control del Inventario a la Mano y del Invemtario a la Mano y a la Orden
        de acuerdo a la demanda en la semana i}
        IM[i]:=IM[i-1]-Dem;
        IMO[i]:=IMO[i-1]-Dem;

        {Impresión de los Inventarios en la semana i}
        Write(IM[i]:8);
        Write(IMO[i]:10);

           {Condición en caso de escasez, sólo se produce en la semana i de acuerdo
           a las unidades de aditivo existentes a la mano, el resto se pierde}
           if (IM[i] < 0) and (IM[i-1] > 0) then
               begin
               R:=0;
               Prod[i]:=IM[i-1];
               VT:=IM[i]; IM[i]:=IM[i]-VT;IMO[i]:= IMO[i]-VT;
               end
           else
               Prod[i]:=Dem;

           {Condición para la llegada de la orden,el tiempo de entrega del aditivo
           es de L = 3 semanas}
           if k+3=i then
              begin
              IMO[i]:=IMO[i]+Q[k];
              IM[i]:=IM[i]+Q[k];
              Write(Q[k]:9); S:=0; R:=1;
              end
           Else
              Begin
                Q[i]:=0;
                Write(Q[i]:9);
              End;

           {Control del nivel del inventario y emisión de la orden.
            No se emiten ordenes hasta que la orden anterior llegue}
           if (IMO[i]<=NIVELMIN) and (S = 0)  then
              begin
                Q[i]:=Orden;
                k:=i;
                Write(Q[i]:9);
                S:=1;
                NumOrdenes:=NumOrdenes+1;
              end
           Else
              Begin
                Q[i]:=0;
                Write(Q[i]:9);
              End;
              {Impresión de las unidades diarias producidas en la semana i}
              write(Prod[i]/5:9:2);
              Writeln;

           if (i mod 10 = 0) then
              begin
              writeln('Presione Enter');
              readln; {Para poder leer los diez siguientes datos}
              end;
     end;
    readkey;

    {Impresion de resultados de la simulacion}
    clrscr;
    Writeln;
    writeln('  RESULTADOS DE LA SIMULACION:');
    writeln;
    writeln('  Numero de semanas de simulacion =  ',SemSimul,' Semanas');
    writeln;
    writeln('  Nivel minimo de inventario =  ',NIVELMIN,' unidades');
    writeln;
    writeln('  Magnitud de la orden =  ',orden,' unidades');
    writeln;
    SumaProd:=0;
    For i:=1 to SemSimul do
        SumaProd:=SumaProd + Prod[i];
    writeln('  Produccion promedio diaria = ',SumaProd/SemSimul:4:2,' Unidades');
    writeln;
    writeln('  Numero de semanas en que se detiene la produccion por escasez = ',SinProd,'  ','(',100*SinProd/SemSimul:4:2,'%)');
    writeln;
    writeln('  Numero de ordenes emitidas= ',NumOrdenes);
    writeln;
    PromOrden:=Q[0]+(NumOrdenes-1)*Orden;
    writeln('  Magnitud promedio de la orden = ',PromOrden/NumOrdenes:6:2,' unidades');
    writeln;
    writeln('  Tiempo promedio de ciclo = ',k/(NumOrdenes-1):4:2,' semanas');
    writeln;

    For i:=1 to SemSimul do
        SumaIMO:=SumaIMO + IMO[i];
    writeln('  Inventario a la Mano y a la Orden Promedio = ', SumaIMO/SemSimul:6:2,' Unidades');
    writeln;
    writeln('  Inventario a la Mano Promedio = ', (SumaIMO/SemSimul)-Q[0]:6:2,' Unidades');
    writeln('Presione Enter');
    readkey;
    clrscr;
    writeln;
    writeln(' Desea realizar otra simulacion (s/n)');
    readln(opcion);
    if opcion = 'n' then exit;
    clrscr
until opcion = 'n';
end.


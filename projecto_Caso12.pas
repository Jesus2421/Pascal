program projecto_Caso12;
{Problema de VPN y TIR}

uses
  crt;
const
  INV=7000000;
  TASA=0.05;
  PA=3000;
var
   VU, tiempo, NAPV, PVU, NAPC, PCU,i:integer;
   FC:array[1..10] of integer;
   SUMAVPN,SUMAFC,SUMAIFC,VPN,TIR:real;

{procedimiento de calculo de los años de vida util}
procedure vidautil;
  begin
    Randomize;
    tiempo := Random(101);
    if (0 <= tiempo) and (tiempo <= 10) then VU:=3
       else if (11 <= tiempo) and (tiempo <= 30) then VU:=4
          else if (31 <= tiempo) and (tiempo <= 70) then VU:=5
             else if (71 <= tiempo) and (tiempo <= 90) then VU:=6
                else VU:=7;
  end;

{Procedimiento de calculo del precio de venta unitario}
procedure precioventa;
  begin
    Randomize;
    NAPV := Random(101);
    if (0 <= NAPV) and (NAPV <= 25) then PVU:=275
       else if (26 <= NAPV) and (NAPV <= 75) then PVU:=300
          else PVU:=325;
  end;

{procedimiento de calculo del costo variable unitario}
 procedure preciocosto;
  begin
    Randomize;
    NAPC := Random(101);
    if (0 <= NAPC) and (NAPC <= 20) then PCU:=120
       else if (21 <= NAPC) and (NAPC <= 40) then PCU:=140
          else if (41 <= NAPC) and (NAPC <= 60) then PCU:=160
             else if (61 <= NAPC) and (NAPC <= 80) then PCU:=180
                else PCU:=200;
  end;

{Funcion potencia real}
 Function potencia(a,b:real):real;
  Begin
  potencia:=exp(b*ln(a));
  End;

  {Cuerpo del Programa}
begin
  {Impresion de la Tabla de los Flujos Netos de Caja}
      writeln;
      writeln('     VALOR PRESENTE NETO Y TASA INTERNA DE RETORNO');
      Writeln;
      Writeln('     Periodo','    ','Flujo Neto');
      writeln('     ----------------------');
      writeln('        ',0,'      ',-INV:8);

  {Calculo del Valor Presente Neto y la Tasa Interna de Retorno}

      vidautil;
      SUMAVPN:=-INV;
      SUMAFC:=-INV;
      SUMAIFC:=0;
      for i:=1 to VU do
      begin
        precioventa;
        preciocosto;
        FC[i]:= PA*(PVU-PCU);
        writeln('     ----------------------');
        writeln('        ',i,'      ',FC[i]:8);
        SUMAVPN:=SUMAVPN+FC[i]/potencia((1+TASA),i);
        SUMAFC:=SUMAFC+FC[i];
        SUMAIFC:=SUMAIFC+i*FC[i];
      end;
      VPN:=SUMAVPN;
      writeln;
      writeln('     Valor Presente Neto (tasa 5%)= ',VPN:8:2);
      TIR:=SUMAFC/SUMAIFC;
      writeln;
      writeln('     Tasa Interna de Retorno Aproximada = ',TIR:3:4,'  ','(',100*TIR:3:2,'%)');
      readkey;
end.


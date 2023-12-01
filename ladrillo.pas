program ladrillo;

uses crt;

var
Nombre,Esp:string;
P,h:integer;
S,horas,Imp,Aca,Social,Spf,Lph,bp,bono,D,De:real;

begin
    clrscr;
    write('Nombre del trabajador:');readln(Nombre);
    write('Especializacion:');readln(Esp);
    write('Pago por hora:');readln(P);
    write('horas de trabajo:');readln(h);
    write('Deuda con la enpresa:');readln(D);
  if h<=40 then
        begin
          S:=P*h;
        end
     else
         begin
              if h>40 then
              begin
                 horas:=h*0.25;
                 S:=P*horas;
              end
              else
          end;
  if S<=1500 then
        begin
          write('libre de impuestos:');
        end
     else
         begin
           if (S>1500) and (S<=2450) then
              begin
                 Imp:=S*0.075;
                 S:=S-Imp;
              end
           else
           begin
            if (S>2450) then
             begin
               Imp:=S*0.12;
               S:=S-Imp;
             end
            else
          end;
         end;
         begin
            Aca:=S*0.05;
            Social:=S*0.04;
            Spf:=S*0.005;
            Lph:=S*0.01;
            S:=S-Aca-Social-Spf-Lph;
         end;
         if h>=36 then
           begin
             bp:=S*0.08;
             S:=S+bp;
           end
           else
           begin
           if h<=36 then
            begin
              write('no cumple las horas necesarias:');
            end
           else
          end;
          if D=0 then
           begin
             write ('el trabajador no tiene deudas:');
           end
           else
           begin
             if D>0 then
             begin
               De:=D*0.10;
               D:=D-De;
               S:=S-De;
               writeln('Deuda con la empresa=',D:5:2);
             end
             else
           end;
          if S>2200 then
          begin
            bono:=S*0.05;
            S:=S+bono;
          end
         else
         begin
           if S<2200 then
           begin
             bono:=S*0.1;
             S:=S+bono;
           end
           else
          end;
         begin
           writeln('salario total=',S:5:2);
        end;
  readkey;
end.

program elviajero;

uses crt;

var
Nv:string[50];
edad,p,Extra,CpH,Cps,Nro:integer;
Csv,Ct,Dna:real;

begin
     clrscr;
     write ('Nombre del viajero:'); readln(Nv);
     write ('Edad del viajero:'); readln(Edad);
     write ('Numero de acompanantes:'); readln(Nro);
     write ('Costo del pasaje:'); readln(p);
     write ('Numero hospitalizaciones de los pasajeros:'); readln(Extra);
     if edad<=25 then
        begin
          Csv:=p*0.01;
        end
     else
         begin
              if edad<=50 then
              begin
                 Csv:=p*0.03;
              end
              else
           begin
            if edad>50 then
               begin
                  Csv:=p*0.05;
               end
             else
            end;
          end;
    if (Extra>=1)and(Extra<=2) then
     begin
        CpH:=25;
     end
     else
     begin
        if Extra=0 then
         begin
            CpH:=0;
         end
         else
        begin
         if edad>50 then
          begin
            Extra:=Extra-2;
            CpH:=25+Extra*35;
          end
        else
       end;
     end;
    if (edad>=18)and(edad<=30) then
      begin
        Cps:=350;
      end
     else
     begin
     if (edad>=51)and(edad<=55) then
         begin
           Cps:=250;
         end
       else
     begin
     if (edad>=56)and(edad<=65) then
         begin
           Cps:=150;
         end
       else
       begin
       if edad>65 then
       begin
          Cps:=0;
       end
       else
       end
      end
     end;
    begin
      Dna:=p*Nro*0.08;
      ct:=p+Csv+CpH+Cps-Dna;
       writeln('Costo total de crusero=',ct:5:2);
    end;
   readkey;
end.

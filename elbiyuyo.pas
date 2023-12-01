program elbiyuyo;

uses crt;

var
billete,D,b1:integer;
b,b3,Cb:real;

begin
   clrscr;
 randomize;
 billete:=random (2);
 Cb:=random (5000)+1;
 writeln ('cantidad de billetes en sistema:',Cb:5:0);
 readln;
  if billete=0 then
        begin
         for b1:=0 to 3 do
            b1:=b1+1;
            writeln ('billete defectuoso');
        end
     else
         begin
              if billete=1 then
              begin
                write ('ingrasar denominacion de los billetes que desee:');readln(D);
                write ('su billete es de:');readln(b);
                b:=b-5;
                Cb:=Cb+5;
              if Cb>D then
                begin
                b:=b/D;
                Cb:=Cb-b;
                b3:=b*D;
                end
               else
                begin
                 if Cb<D then
                 begin
                   write ('No hay dinero en el cajero');
                 end
                else
                end;
                writeln ('Se le entragaran bolivares:',b3:5:0,' En billetes de:',D);
                writeln ('cantidad de billetes en sistema:',Cb:5:0);
              end
              else
          end;
   readkey;
end.


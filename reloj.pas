Program Reloj;

Uses crt;

Var
MS:integer;
S,M,H:real;
Begin
    MS:=0;
    S:=0;
    M:=0;
    H:=0;
    Repeat
     gotoxy(1,1);
     MS:=MS+1;
      begin
      if MS=60 then
        begin
          S:=S+1;
          MS:=MS-MS;
        end
     else
         begin
              if MS>60 then
              begin
                 S:=MS/60;
               end
            end;
          end;
      begin
     if S=60 then
        begin
          M:=M+1;
          S:=S-S;
        end
     else
         begin
              if S>60 then
              begin
                 M:=S/60;
               end
            end;
          end;
            if M=60 then
        begin
          H:=H+1;
          M:=M-M;
        end
     else
         begin
              if S>60 then
              begin
                 H:=M/60;
               end;
            end;
       write ('horas=',H:5:0,' ','minutos=',M:5:0,' ','segundos=',S:5:0);
    until keypressed;
   readkey;
end.

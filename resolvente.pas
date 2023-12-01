 program resolvente;

uses crt;

var
a,b,c,x,x1,x2:real;

begin
     clrscr;
     write ('dame el valor de a='); readln(a);
     write ('dame el valor de b='); readln(b);
     write ('dame el valor de c='); readln(c);
     if a=0 then
        begin
          writeln ('ecuación de una recta');
        end
     else
         begin
             x:=SQR(b)-4*a*c;
              write('x=',x:5:2);
              if x<0 then
              begin
                write('raiz imaginaria');
              end
              else
              begin
                 writeln ('| No es raiz imaginaria');
                 x1:=-b+SQRT(x);
                 x2:=-b-SQRT(x);
                 writeln('x1=',x1:5:2);
                 writeln('x2=',x2:5:2);
               end;
          end;
     readkey;
end.

program calificacionfinal;

uses crt;

var
 nombre: string[50];
 T1,T2,T3:integer;
 Prom,algebra,Ex,Fisica,Quimica: real;
begin
     clrscr;
     writeln ('nombre del estudiante');readln(nombre);
     writeln ('calculo de algebra');
     writeln;

     writeln ('introducir notas');readln(Ex);
     writeln ('introducir tarea 1');readln(T1);
     writeln ('introducir tarea 2');readln(T2);
     writeln ('introducir tarea 3');readln(T3);
     Ex:=Ex*0.90;
     Prom:=(T1+T2+T3)/3;
     Prom:=Prom*0.10;
     algebra:=Ex+Prom;
     writeln ('Nota=',algebra:5:2);
     writeln;

      writeln ('calculo de Fisica');
      writeln;

     writeln ('introducir notas'); readln (Ex);
     writeln ('introducir tarea 1'); readln (T1);
     writeln ('introducir tarea 2'); readln (T2);
     Ex:=Ex*0.80;
     Prom:=(T1+T2)/2;
     Prom:=Prom*0.20;
     Fisica:=Ex+Prom;
     writeln ('Nota=',Fisica:5:2);
     writeln;

     writeln ('calculo de Quimica');
     writeln;

     writeln ('introducir notas'); readln(Ex);
     writeln ('introducir tarea 1'); readln (T1);
     writeln ('introducir tarea 2'); readln (T2);
     writeln ('introducir tarea 3'); readln (T3);
     Ex:=Ex*0.85;
     Prom:=(T1+T2+T3)/3;
     Prom:=Prom*0.15;
     Quimica:=Ex+Prom;
     writeln('Nota=',Quimica:5:2);
     writeln;

     writeln ('calculo del promedio del estudiante');
     writeln;
     Prom:=(algebra+Fisica+Quimica)/3;
     writeln('Nota=',Prom:5:2);
     writeln;
    readkey;
end.


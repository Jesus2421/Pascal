program Ciclo;

uses crt;

var
N,C,I:integer;
N1,N2,N3,Prom:real;
Nombre:string[40];

begin
    clrscr;
    write('Numero de estudiantes:');readln(N);
    C:=0;
    for I:=1 to N do
      begin
        write('Nombre de estudiantes:');readln(Nombre);
        write('Nota 1 es:');readln(N1);
        write('Nota 2 es:');readln(N2);
        write('Nota 3 es:');readln(N3);
        Prom:=(N1+N2+N3)/3;
        if (Prom>=12) then
        begin
          writeln ('aprobado:',Prom:5:2);
          C:=C+1;
        end
       else
       if (Prom<12) then
          begin
             writeln('No aprobo:',Prom:5:2);
          end
         else
       writeln('En el curso los aprobados son:',C,'estudiantes');
     readkey;
  end
end.


program eval;

consts:
        Min = 0.0;
        Max = 10.0;
        Total = 100;
types:
        TipoMinima = (Si, No);
        TipoPrueba = record
        {                
                notaminima: float;
                minima: TipoMinima;
                porcentaje: int;
                invalidaprueba: bool;
        };   
        TipoEvaluacion = record
        {
                prueba1: TipoPrueba;                
                prueba2: TipoPrueba;                
                prueba3: TipoPrueba;
                invalidaevaluacion: bool; 
                
                nota1: float;
                nota2: float;
                nota3: float;                
                invalidanota: bool;       
        };         
function notaincorrecta(nota:float):bool
{
        return (nota < Min) or (nota > Max);
}
function esnecesarianotaminina(prueba: TipoPrueba): bool
{
        return prueba.minima == Si;
}
procedure leerprueba(ref prueba: TipoPrueba)
{
               
        writeln("Introduce prueba ");
        readln(prueba.porcentaje);
        readln(prueba.minima);
        if (esnecesarianotaminina(prueba)){
                readln(prueba.notaminima);
                prueba.invalidaprueba = notaincorrecta(prueba.notaminima);                                
        } else{
                prueba.invalidaprueba = False;
        } 
}                
function evaluacionincorrecta(evaluacion: TipoEvaluacion): bool
{
        return ( evaluacion.prueba1.porcentaje + evaluacion.prueba2.porcentaje + evaluacion.prueba3.porcentaje ) != Total;
} 
procedure imprimirevaluacion(ref evaluacion: TipoEvaluacion)
{
        evaluacion.invalidaevaluacion=False;
        
        leerprueba(evaluacion.prueba1);
        leerprueba(evaluacion.prueba2);
        leerprueba(evaluacion.prueba3);
        evaluacion.invalidaevaluacion = evaluacion.prueba1.invalidaprueba or
                                        evaluacion.prueba2.invalidaprueba or
                                        evaluacion.prueba3.invalidaprueba or
                                        evaluacionincorrecta(evaluacion) ;
}
procedure leernotasalumno(ref alumno: TipoEvaluacion) 
{
        alumno.invalidanota = False;
        
        writeln("introduce notas del alumno");
        readln(alumno.nota1);
        readln(alumno.nota2);
        readln(alumno.nota3);
        
        alumno.invalidanota = notaincorrecta(alumno.nota1) or
                              notaincorrecta(alumno.nota2) or
                              notaincorrecta(alumno.nota3);
}   
function mediaalumno(evaluacion: TipoEvaluacion, notaalumno: TipoEvaluacion): float  
{
        return
        (notaalumno.nota1 * float(evaluacion.prueba1.porcentaje)/float(Total)) +
        (notaalumno.nota2 * float(evaluacion.prueba2.porcentaje)/float(Total)) +
        (notaalumno.nota3 * float(evaluacion.prueba3.porcentaje)/float(Total));
}  
procedure evaluarprueba(prueba: TipoPrueba, ref nota: float, ref invalida: bool)
{
        
        
        if (esnecesarianotaminina(prueba)){
           invalida = nota < prueba.notaminima;
           if (invalida){
                nota = Min;
           }
        }else{
                invalida = False;
        }
}  
procedure calificaralumno(evaluacion: TipoEvaluacion, ref notasalumno: TipoEvaluacion, ref suspende: bool)
        invalido1: bool;
        invalido2: bool;
        invalido3: bool;
{
        evaluarprueba(evaluacion.prueba1, notasalumno.nota1, invalido1);
        evaluarprueba(evaluacion.prueba2, notasalumno.nota2, invalido2);
        evaluarprueba(evaluacion.prueba3, notasalumno.nota3, invalido3);
        suspende = invalido1 or invalido2 or invalido3 or (mediaalumno(evaluacion, notasalumno) < 5.0);        
} 
procedure imprimircalificacion(evaluacion: TipoEvaluacion, ref notasalumno: TipoEvaluacion, ref suspende: bool) 
{
         if (evaluacion.invalidaevaluacion){
                 writeln("evaluacion incorrecta "); 
         } else{
             do { 
                 leernotasalumno(notasalumno);
                 if (notasalumno.invalidanota){
                         writeln("Notas invalidas");
                 } else{
                         calificaralumno(evaluacion, notasalumno, suspende);
                         write("Ha sacado: ");
                         writeln(mediaalumno(evaluacion, notasalumno));
                 } 
              } while (notasalumno.invalidanota or suspende);                   
         }
}            
procedure main()
        evaluacion: TipoEvaluacion;
        notasalumno: TipoEvaluacion;
        suspende: bool;
{
      imprimirevaluacion(evaluacion);  
      imprimircalificacion(evaluacion, notasalumno,suspende);
      
}

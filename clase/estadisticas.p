program estadisticas;

consts:

	NotasMaximas= 500;	
	NotaMax=10.0;
	NotaMin=0.0;
	NotaFin=-1.0;	

types:

	TipoNotasAlumnos=(Suspensos, Aprobados, Notables,Sobresalientes,Matriculas);
    ResultadosCurso= array[TipoNotasAlumnos] of int;

	TipoNotas= array[0..NotasMaximas] of float;
	TipoEvaluacion=record
	{
		alumno:TipoNotas;
		numeronotas:int;
		curso:ResultadosCurso;
	};

function notavalida(nota:float):bool
{
	return (nota>=NotaMin) and (nota<=NotaMax) or (nota==NotaFin);
}	

procedure leernotas(ref notas: TipoEvaluacion)

	stop: bool;
{
	stop= False;

	notas.numeronotas=0;

	do{
		do{
			read(notas.alumno[notas.numeronotas]);

			if(not notavalida(notas.alumno[notas.numeronotas])){
				writeln("Volver a introducir la nota");
			}

		}while(not notavalida(notas.alumno[notas.numeronotas]));

		if(notas.alumno[notas.numeronotas] == NotaFin){
			stop= True;
		}
		
		notas.numeronotas=notas.numeronotas + 1; 
	}while(not stop);
}	

function notamedia(nota: TipoEvaluacion):float

	i: int;
	sumanotas: float;
{	
	sumanotas = 0.0;

	for(i=0,i<nota.numeronotas-1){
		sumanotas=(sumanotas+nota.alumno[i]);
	}

	return(sumanotas/float(nota.numeronotas-1)); 
}	

procedure buscarmejornota(nota: TipoEvaluacion)

	i: int; 
	mejornota: float;
{
	mejornota=NotaMin;

	for(i=0, i<nota.numeronotas-1){

		if(nota.alumno[i]>mejornota){
			mejornota=(nota.alumno[i]);
		}
	}

	writeln(mejornota);
}	
procedure buscarpeornota(nota: TipoEvaluacion)
	i: int; 
	peornota: float;
{
	peornota=NotaMax;

	for(i=0, i<nota.numeronotas-1){

		if(nota.alumno[i]<peornota){
			peornota=(nota.alumno[i]);
		}
	}

	 writeln(peornota);
}	
function notmedia(nota: TipoEvaluacion):float
	i: int;
	sumanotas: float;
{	
	sumanotas = 0.0;

	for(i=0,i<nota.numeronotas-1){
		sumanotas=(sumanotas+nota.alumno[i]);
	}

	return(sumanotas/float(nota.numeronotas-1)); 
}

function numerodesuspensos(nota: TipoEvaluacion): int
   j:int;
{	
	 nota.curso[Suspensos] = 0;

	for(j=0, j<nota.numeronotas-1){
		if(nota.alumno[j] < 5.0){
			 nota.curso[Suspensos]= nota.curso[Suspensos] + 1;
		}
	}
	return nota.curso[Suspensos];
}
function numerodeaprobados(nota: TipoEvaluacion):int
	j:int;
{	
	nota.curso[Aprobados] = 0;

	for(j=0, j<nota.numeronotas-1){
		if((nota.alumno[j] >= 5.0) and (nota.alumno[j] < 7.0)){
			nota.curso[Aprobados]=nota.curso[Aprobados]+1;
		}
	}
	return nota.curso[Aprobados];
}
function numerodenotables(nota: TipoEvaluacion):int
	j:int;
{	
	nota.curso[Notables]=0;

	for(j=0, j<nota.numeronotas-1){
		if((nota.alumno[j]>=7.0) and (nota.alumno[j] < 9.0)){
			nota.curso[Notables]=nota.curso[Notables] + 1;
		}
	}
		return nota.curso[Notables];
}
function totalsobresalientes(nota: TipoEvaluacion): int
	s: int;
{
	nota.curso[Sobresalientes]=0;

	for(s=0, s<nota.numeronotas-1){
		if((nota.alumno[s]>=9.0) and (nota.alumno[s] <= NotaMax)){
			nota.curso[Sobresalientes]=nota.curso[Sobresalientes] + 1;
		}
	}
		return nota.curso[Sobresalientes];
}
function totalmatricula(nota: TipoEvaluacion): int
	a: int;
{
	nota.curso[Matriculas]=0;

	for(a=0, a<nota.numeronotas-1){
		if((nota.alumno[a] >= 9.0) and (nota.alumno[a] <= NotaMax)){
			nota.curso[Matriculas] = nota.curso[Matriculas] + 1;
		}
	}
	return nota.curso[Matriculas];
}

procedure mostrarresultado(numero: int, porcentaje: float)
{
	write(numero);
	write("(");
	write(porcentaje);
	write('%');
	writeln(")");
}
procedure estadisticacurso(nota: TipoEvaluacion)
	porcentajesuspensos: float;
	porcentajeaprobados: float;
	porcentajenotables: float;
	porcentajesobresalientes: float;
	porcentajematriculas: float;

	nummatriculasaconceder: int;
	numsobresalientes: int;

{
	porcentajesuspensos= (float(numerodesuspensos(nota)) / float(nota.numeronotas-1)) * float(100);
	write("Suspensos: ");
	mostrarresultado(numerodesuspensos(nota), porcentajesuspensos);	
 
	porcentajeaprobados= (float(numerodeaprobados(nota)) / float(nota.numeronotas-1)) * float(100);
	write("Aprobados: ");
	mostrarresultado(numerodeaprobados(nota),porcentajeaprobados);	

	porcentajenotables=(float(numerodenotables(nota))/float(nota.numeronotas-1))* float(100);
	write("Notables: ");
	mostrarresultado(numerodenotables(nota),porcentajenotables);

	
	porcentajesobresalientes = (float(totalsobresalientes(nota)) / float(nota.numeronotas-1)) * float(100);
	porcentajematriculas = (float(totalmatricula(nota)) / float(nota.numeronotas-1)) * float(100);

	nummatriculasaconceder =  int((float(nota.numeronotas) * float(10)) / float(100));

	if(totalmatricula(nota)>nummatriculasaconceder){
		numsobresalientes = (totalsobresalientes(nota) + (totalmatricula(nota) - nummatriculasaconceder));
		porcentajesobresalientes= (float(numsobresalientes) / float(nota.numeronotas-1)) * float(100);
		porcentajematriculas = (float(nummatriculasaconceder) / float(nota.numeronotas-1)) * float(100);
		write("Sobresalientes: ");
		mostrarresultado(numsobresalientes, porcentajesobresalientes);
		write("Matriculas: ");
		mostrarresultado(nummatriculasaconceder, porcentajematriculas);
		
	}else{
		write("Sobresalientes: ");
		mostrarresultado(totalsobresalientes(nota),porcentajesobresalientes);
		
		write("Matriculas: ");
		mostrarresultado(totalmatricula(nota),porcentajematriculas);	
	}
}
procedure main()
 
 nota: TipoEvaluacion;	

 {
	leernotas(nota);

	write("Nota media: ");
		writeln(notmedia(nota));
	write("Mejor nota : ");
		buscarmejornota(nota);
	write("Peor nota : ");
		buscarpeornota(nota);
	
	estadisticacurso(nota);
}
program eval;

consts:
	NotaMin = 0.0;
	NotaMax= 10.0;
	PorcMin=0;
	PorcMax=100;
	NumPruebas=3.0;

types:
	TipoExisteMin = (Si,No);
	
	TipoPrueba=record
	{
		porcentaje:int;
		existemin:TipoExisteMin;
		notamin:float;
	};
	
	TipoEvaluacion=record
	{
		p1:TipoPrueba;
		p2:TipoPrueba;
		p3:TipoPrueba;
	};
	
	TipoAlumno=record
	{
		nota1:float;
		nota2:float;
		nota3:float;
	 };
	 
	
procedure leerprueba (ref p:TipoPrueba)
{
	writeln ("Introduce prueba");
	readln (p.porcentaje);
	readln (p.existemin);
	if (p.existemin == Si){
		readln (p.notamin);
	}else{
		p.notamin=NotaMin;
	}
}
			
procedure leerevaluacion  (ref ev:TipoEvaluacion)
{
	leerprueba (ev.p1);
	leerprueba (ev.p2);
	leerprueba (ev.p3);
}

procedure leeralumno (ref alum:TipoAlumno)
{
	writeln ("Introduce notas del alumno");
	readln (alum.nota1);
	readln (alum.nota2);
	readln (alum.nota3);
}

function sumaporcentajes (porc1:int,porc2:int):int
{
		return porc1+porc2;
}
	
function suma100 (ev:TipoEvaluacion):bool
	aux: int;
{
	aux = sumaporcentajes(ev.p1.porcentaje,ev.p2.porcentaje);
	aux = sumaporcentajes (aux,ev.p3.porcentaje);
	return aux== 100;
}
	

function esnotavalida(n:float): bool
{
	return n>=NotaMin and n<=NotaMax;
}


function esporcentajevalido (p:int):bool
{
	return PorcMin<=p and p<=PorcMax;
}
	
function sonporcentajesvalidos (ev:TipoEvaluacion):bool
	aux: bool;
{
	aux =esporcentajevalido(ev.p1.porcentaje) and esporcentajevalido(ev.p2.porcentaje);
	return aux and  esporcentajevalido(ev.p3.porcentaje);

}

function espruebavalida (ev:TipoEvaluacion):bool
	aux: bool;
{
	aux = esnotavalida(ev.p1.notamin) and esnotavalida(ev.p2.notamin);
	aux = aux and  esnotavalida(ev.p3.notamin);
	return aux and suma100(ev);
}

function esvalidaevaluacion (ev:TipoEvaluacion):bool
{
	return  espruebavalida (ev) and sonporcentajesvalidos (ev);
}


/* APARTIR DE AQUI PROGRAMO LA NOTA DEL ALUMNO*/


function notasvalidas (alum:TipoAlumno):bool
	aux:bool;
{
	aux= esnotavalida (alum.nota1) and esnotavalida (alum.nota2);
	return aux and esnotavalida (alum.nota3);
}

function notaponderada (nota:float,p:TipoPrueba):float
{
	if (nota<p.notamin){
		return 0.0;
	}else{
		return nota* (float(p.porcentaje)/100.0);
	}
}

	
function notasmedias (alum:TipoAlumno,ev:TipoEvaluacion):float
	nota1:float;
	nota2:float;
	nota3:float;
{
	nota1=	notaponderada (alum.nota1,ev.p1);
	nota2=	notaponderada (alum.nota2,ev.p2);
	nota3=	notaponderada (alum.nota3,ev.p3);
	return (nota1+nota2+nota3);
}

function suspenso (alum:TipoAlumno,ev:TipoEvaluacion):bool
{
	return (notasmedias(alum,ev))<= 5.0;
}
	
	
function esaprobado (alum:TipoAlumno,ev:TipoEvaluacion):bool
{
	return notasvalidas(alum) and not (suspenso (alum,ev));
}

procedure imprimirresultado (alum:TipoAlumno,ev:TipoEvaluacion)
{
	writeln ("Ha sacado  un :  ");
	writeln (notasmedias (alum,ev));
}
	
procedure aprobado (alum:TipoAlumno,ev:TipoEvaluacion)
{
	while (not (notasvalidas(alum)) or suspenso (alum,ev)){
		if (not (notasvalidas(alum))){
			writeln ("notas invalidas");
			leeralumno(alum);
		}else {
			imprimirresultado(alum,ev);
			leeralumno (alum);
		}
	}
	imprimirresultado(alum,ev);
}
	
procedure main ()

evaluacion:TipoEvaluacion;
alumno:TipoAlumno;

{
	leerevaluacion (evaluacion);
	if (esvalidaevaluacion(evaluacion)){
		leeralumno (alumno);
		aprobado (alumno,evaluacion);
	}else{
		writeln ("evaluacion invalida");
	}

	
}
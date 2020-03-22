program estadisticas;
consts:
	MaxValores= 50;
	Suficiente=5.0;
	Notable=7.0;
	Sobresaliente=9.0;
	Honor=10.0;
	Porcentaje='%';
	Epsilon=0.0001;
types: 
	TipoIndice= int 0..MaxValores-1;
	TipoArrayValores= array [TipoIndice] of float;
	TipoNotas = record
	{
		valores:TipoArrayValores;
		numvalores:int;
	};
	
	TipoMatricula=record
	{
		numalumnos:int;
		porcentaje:float;
	};
	
	TipoMatriculaHonor=record
	{
		numalumnos:int;
		porcentaje:float;
		sobramatriculas:int;
	};
		
	
	TipoEstadistica=record
	{
		notamedia:float;
		mejornota:float;
		peornota:float;
		suspensos:TipoMatricula;
		aprobados:TipoMatricula;
		notables:TipoMatricula;
		sobresalientes:TipoMatricula;
		honor:TipoMatriculaHonor;
	};
		
function esnumerovalido (num:float):bool
{
	return  (num>=0.0 and num<=10.0);
}
	
procedure leernotas (ref notas:TipoNotas)
numero:float;
pos:int;

{
	pos=0;
	do{
		readln (numero);
		if (esnumerovalido (numero)){
			notas.valores[pos]=numero;
			pos=pos+1;
		}else if (numero!=-1.0){
			writeln ("Nota invalida, porfavor introduzca otra nota");
		}
	}while (numero!=-1.0 and pos<MaxValores );
	notas.numvalores=pos;
}

function sumarnotas (notas:TipoNotas):float
pos:int;
suma:float;
{
	suma=0.0;
	for (pos=0,pos<notas.numvalores){
		suma=suma+notas.valores[pos];
	}
	return suma;
}

function media (notas:TipoNotas):float
{	
	return sumarnotas(notas)/ float (notas.numvalores);
}

function  mejornot (notas:TipoNotas):float
mayor:float;
pos:int;
{
	mayor=notas.valores[0];
	for (pos=1,pos<notas.numvalores){
		if (notas.valores[pos]>mayor){
			mayor=notas.valores[pos];
		}
	}
	return mayor;
}

function peornot (notas:TipoNotas):float
menor:float;
pos:int;
{
	menor= notas.valores[0];
	for (pos=1,pos<notas.numvalores){
		if (notas.valores[pos]<menor){
			menor=notas.valores[pos];
		}
	}
	return menor;
}

/*SUSPENSOS*/


function numerodesuspensos (notas:TipoNotas):int
pos:int;
numsuspendidos:int;
{
	numsuspendidos=0;
	for (pos=0,pos<notas.numvalores){
		if (notas.valores[pos]<Suficiente){
			numsuspendidos=numsuspendidos+1;
		}
	}
	return numsuspendidos;
}

function porcentajessuspensos (notas:TipoNotas):float
{
	return float(numerodesuspensos(notas))/float(notas.numvalores)*100.0;
}
				
function matriculassuspensos (notas:TipoNotas):TipoMatricula
suspensos:TipoMatricula;
{
	suspensos.numalumnos=numerodesuspensos(notas);
	suspensos.porcentaje=porcentajessuspensos(notas);
	return suspensos;
}


/*APROBADOS*/
function numerodeaprobados (notas:TipoNotas):int
pos:int;
numaprobados:int;
{
	numaprobados=0;
	for (pos=0,pos<notas.numvalores){
		if (notas.valores[pos]>=Suficiente and notas.valores[pos]<Notable){
			numaprobados=numaprobados+1;
		}
	}
	return numaprobados;
}

function porcentajesaprobados (notas:TipoNotas):float
{
	return float(numerodeaprobados(notas))/float(notas.numvalores)*100.0;
}
	

function matriculasaprobados (notas:TipoNotas):TipoMatricula
aprobados:TipoMatricula;
{
	aprobados.numalumnos=numerodeaprobados(notas);
	aprobados.porcentaje=porcentajesaprobados(notas);
	return aprobados;
}

/*NOTABLES*/

function numerodenotables (notas:TipoNotas):int
pos:int;
numnotables:int;
{
	numnotables=0;
	for (pos=0,pos<notas.numvalores){
		if (notas.valores[pos]>=Notable and notas.valores[pos]<Sobresaliente){
			numnotables=numnotables+1;
		}
	}
	return numnotables;
}

function porcentajesnotables (notas:TipoNotas):float
{
	return float(numerodenotables(notas))/float(notas.numvalores)*100.0;
}
	

function matriculasnotables(notas:TipoNotas):TipoMatricula
notables:TipoMatricula;
{
	notables.numalumnos=numerodenotables(notas);
	notables.porcentaje=porcentajesnotables(notas);
	return notables;
}

/*MATRICULA DE HONOR*/

function numerodehonores (notas:TipoNotas):int
numhonores:int;
pos:int;
{
	numhonores=0;
	for (pos=0,pos<notas.numvalores){
		if (notas.valores[pos]>Honor-0.001 and notas.valores[pos]<Honor+0.001){
			numhonores=numhonores+1;
		}
	}
	return numhonores;
}

function porcentaje10 (numero:int):int
{
	return (numero*10)/100;
}


function sobrahonores (notas:TipoNotas):int
{
	if (numerodehonores(notas)>porcentaje10(notas.numvalores)){
		return numerodehonores(notas)-porcentaje10(notas.numvalores);
	}else{
		return 0;
	}
}

function porcentajedehonores (notas:TipoNotas):float
{
	if (numerodehonores(notas)>porcentaje10(notas.numvalores)){
		return float(numerodehonores(notas) - sobrahonores (notas))/float(notas.numvalores)*100.0;
	}else{
		return float(numerodehonores (notas))/float(notas.numvalores)*100.0;
	}
}
	
function matriculasdehonores (notas:TipoNotas):TipoMatriculaHonor
honores :TipoMatriculaHonor;
{
	honores .numalumnos=numerodehonores (notas);
	honores.sobramatriculas= sobrahonores(notas); 
	honores.porcentaje=porcentajedehonores(notas);
	if (numerodehonores(notas)>porcentaje10(notas.numvalores)){
		honores.numalumnos= numerodehonores(notas) - sobrahonores (notas);
	}
	return honores;
}

/*SOBRESALIENTE*/

function numerodesobresalientes(notas:TipoNotas):int
pos:int;
numsobresalientes:int;
{
	numsobresalientes=0;
	for (pos=0,pos<notas.numvalores){
		if (notas.valores[pos]>=Sobresaliente and notas.valores[pos]<Honor){
			numsobresalientes=numsobresalientes+1;
		}
	}
	return numsobresalientes+sobrahonores(notas);
}

function porcentajessobresalientes (notas:TipoNotas):float
{
	return float(numerodesobresalientes(notas))/float(notas.numvalores)*100.0;
}
	

function matriculassobresalientes(notas:TipoNotas):TipoMatricula
sobresalientes:TipoMatricula;
{
	sobresalientes.numalumnos=numerodesobresalientes(notas);
	sobresalientes.porcentaje=porcentajessobresalientes(notas);
	return sobresalientes;
}

function calcularestadistica (notas:TipoNotas):TipoEstadistica
estadistica:TipoEstadistica;
{
	estadistica.notamedia=media (notas);
	estadistica.mejornota= mejornot (notas);
	estadistica.peornota=peornot (notas);
	estadistica.suspensos=matriculassuspensos (notas);
	estadistica.aprobados=matriculasaprobados (notas);
	estadistica.notables=matriculasnotables(notas);
	estadistica.sobresalientes=matriculassobresalientes(notas);
	estadistica.honor=matriculasdehonores(notas);
	return estadistica;
}
	
procedure escribirmatricula (matricula:TipoMatricula)
{
	write (matricula.numalumnos);
	write ("  (");
	write (matricula.porcentaje);
	write (Porcentaje);
	writeln (")");
}

procedure escribirmatriculahonor (matriculahonor:TipoMatriculaHonor)
{
	write (matriculahonor.numalumnos);
	write (" (");
	write (matriculahonor.porcentaje);
	write (Porcentaje);
	writeln (")");
}

procedure imprimirestadistica (estadistica:TipoEstadistica)
{
	write ("Nota media:  ");
	writeln (estadistica.notamedia);
	write ("Mejor nota:  ");
	writeln (estadistica.mejornota);
	write ("Peor nota:  ");
	writeln (estadistica.peornota);
	write ("Suspensos:  ");
	escribirmatricula (estadistica.suspensos);
	write ("Aprobados:  ");
	escribirmatricula (estadistica.aprobados);
	write ("Notables:  ");
	escribirmatricula (estadistica.notables);
	write ("Sobresalientes:  ");
	escribirmatricula (estadistica.sobresalientes);
	write ("Matriculas de Honor:  ");
	escribirmatriculahonor (estadistica.honor);
}


procedure main ()
notas:TipoNotas;
estadistica:TipoEstadistica;
{
	leernotas(notas);
	estadistica= calcularestadistica (notas);
	imprimirestadistica(estadistica);
}

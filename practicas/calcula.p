program calcula;
consts:
	Suma = '+';
	Resta = '-';
	Multiplicacion = '*';
	Division = '/';
	Modulo = 'm';

procedure leerope  (ref op: char)
{
	readln (op);
}

procedure leernum (ref n:int)
{
	readln (n);
}
function esdivomod (op:char):bool
{
	return op==Division or op== Modulo;
}

function divescero (y:int):bool
{
	return y==0 ;
}

function opvalida (op:char):bool
{
	return op!= Suma and op!=Resta and op!=Multiplicacion and op!=Division and op!=Modulo;
}
	
function resultado ( x:int, op:char,y:int):int
{
	switch (op) {
	case Suma:
		return x+y;
	case Resta:
		return x-y;
	case Multiplicacion:
		return x*y;
	case Division:
		return x/y;
	default :
		return x%y;
         }
}
	

procedure main ()

x:int;
y: int;
op: char;
{
	leernum (x);
	leerope (op);
	leernum (y);
	if (esdivomod (op) and divescero (y)) {
		   writeln ("divison por cero") ;
	}else if (opvalida (op)){
		writeln ("operacion no valida");
	}else {
		writeln (resultado (x,op,y));
	}
	
}

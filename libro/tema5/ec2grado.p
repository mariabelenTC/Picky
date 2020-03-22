program ec2grado;

types:
	TipoEcuacion = record
	{
		a: float;
		b: float;
		c: float;
	}; 

procedure leerecuacion(ref coef: TipoEcuacion)
{
	writeln("Escribir los coeficioentes: ");
	read(coef.a);
	read(coef.b);
	read(coef.c);
}
function existensoluciones(coef: TipoEcuacion): bool
{
	return coef.a != 0.0 and coef.b ** 2.0 >= 4.0 * coef.a* coef.c;
}
procedure operacion(coef: TipoEcuacion, ref soluc1: float, ref soluc2: float )
	
{
	soluc1 = ((-coef.b) + sqrt(coef.b ** 2.0 - 4.0 * coef.a)) / 2.0 * coef.a;
	soluc2 = ((-coef.b) - sqrt(coef.b ** 2.0 - 4.0 * coef.a)) / 2.0 * coef.a;
}
procedure imprimirsol(soluc1: float, soluc2: float)
{
	write("Solucion: ");
	if (soluc1 == soluc2){
		write("x = ");
		write(soluc1);
	}else{
		write("x1 = ");
		write(soluc1);
		write(" x2 = ");
		write(soluc2);
	}
	writeeol();
}
procedure main()
	coef: TipoEcuacion;
	soluc1: float;
	soluc2: float;
{
	leerecuacion(coef);

	if (existensoluciones(coef)){
		operacion(coef, soluc1, soluc2);
		imprimirsol(soluc1, soluc2);
	}else{
		write("no existe solucion real ");
	}	
	
}


program pcolor;

types:

	TipoColor= (Amarillo,Magenta,Cyan);
	
	
	TipoPunto=record
	{
		x:int;
		y:int;
	};
	
	TipoPuntoCol= record
	{
		coord:TipoPunto;
		col:TipoColor;
	};
	
	
	TipoRectangulo = record
	{
		min  : TipoPunto;
		max : TipoPunto;
		col: TipoColor;
		
	};
	
	
	
procedure leercolor (ref col:TipoColor)
{
	readln (col);
}

procedure leerpuntorect (ref punto:TipoPunto)
{
	readln (punto.x);
	readln (punto.y);
}

procedure leerpuntocol (ref punto:TipoPuntoCol)
{
	leerpuntorect (punto.coord);
	readln (punto.col);
}


procedure leerrectangulo (ref rec:TipoRectangulo)
{
	leerpuntorect (rec.min);
	leerpuntorect (rec.max);
	leercolor (rec.col);
	
}


function enintervalo (limmin:int,limmax:int,p:int):bool
{
	return  limmin<=p and p <=limmax;
}


function  enrectan (r:TipoRectangulo, p:TipoPuntoCol):bool
{
	return enintervalo (r.min.x,r.max.x,p.coord.x) and enintervalo (r.max.y,r.min.y,p.coord.y);
}

function incluye(r:TipoRectangulo, p:TipoPuntoCol): bool
{
	return enrectan(r, p) and r.col == p.col;

}

function solounrectangulo (r1:TipoRectangulo,r2:TipoRectangulo,p:TipoPuntoCol):bool
{
	return incluye (r1,p) and not (enrectan (r2,p));
}

procedure imprimirpunto (p:TipoPunto)
{
	write ("(");
	write (p.x);
	write (", ");
	write (p.y);
	write (") , ");
}
	

procedure imprimirenrectangulo (r:TipoRectangulo,p:TipoPuntoCol)
{
	write ("El punto [");
	imprimirpunto (p.coord);
	write (p.col);
	write ("] esta en  [");
	imprimirpunto (r.min);
	imprimirpunto (r.max);
	write (r.col);
	writeln (" ]");
}

procedure imprimirnoenrectangulo (p:TipoPuntoCol)
{
	write ("El punto [");
	imprimirpunto (p.coord);
	write (p.col);
	writeln ("] no esta en un solo rectangulo de su color");
}

procedure main ()

	rectangulo1:TipoRectangulo;
	rectangulo2:TipoRectangulo;
	punto:TipoPuntoCol;
	
{
	
	leerrectangulo (rectangulo1);
	leerrectangulo (rectangulo2);
	leerpuntocol (punto);
	if (solounrectangulo(rectangulo1,rectangulo2,punto)){
		imprimirenrectangulo (rectangulo1,punto);
	}else if  (solounrectangulo(rectangulo2,rectangulo1,punto)){
		imprimirenrectangulo (rectangulo2,punto);
	}else{
		imprimirnoenrectangulo(punto) ;
	}
}


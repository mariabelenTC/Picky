program rectangulo;

types:
	TipoPunto=record
	
	{
		x:int;
		y:int;
	};
	
	TipoColor=(Magenta,Cyan,Amarillo);
	
	TipoPuntoColor=record
	
	{
		punto:TipoPunto;
		c:TipoColor;
	};	
	
	TipoRectangulo=record
	
	{
		PuntoArriba:TipoPunto;
		PuntoAbajo:TipoPunto;
	};
	
	TipoRectanguloColor=record
	
	{
		Rectangulo:TipoRectangulo;
		c:TipoColor;
	};	
		
	
procedure leerpunto(ref p:TipoPunto)
{
	readln(p.x);
	readln(p.y);
}

procedure leerpuntocolor(ref punto:TipoPuntoColor)
	
{
	leerpunto(punto.punto);
	readln(punto.c);
	
}	

procedure leerrectangulo(ref r:TipoRectangulo)
{
	leerpunto(r.PuntoArriba);
	leerpunto(r.PuntoAbajo);
}	

procedure rectangulocolor(ref rectangcolor:TipoRectanguloColor)
{
	leerrectangulo(rectangcolor.Rectangulo);
	readln(rectangcolor.c);
}


function puntoenrectangulo(punto:TipoPuntoColor, r:TipoRectanguloColor):bool
{
	return ((punto.punto.x>r.Rectangulo.PuntoArriba.x) and (punto.punto.x<r.Rectangulo.PuntoAbajo.x)and(punto.punto.y<r.Rectangulo.PuntoArriba.y)and(punto.punto.y>r.Rectangulo.PuntoAbajo.y));
}

function igualcolor(punto:TipoPuntoColor , r:TipoRectanguloColor):bool
	
{
	return punto.c==r.c;
}	

function dentrodelcolor(punto:TipoPuntoColor, r:TipoRectanguloColor):bool
{
	return (igualcolor(punto,r) and puntoenrectangulo(punto,r));
}	

procedure resultadovalido(punto:TipoPuntoColor, rectangulo:TipoRectanguloColor)
{
	write("El punto[(");
	write(punto.punto.x);
	write(",");
	write(punto.punto.y);
	write(")");
	write(",");
	write(punto.c);
	write("] esta en [(");
	write(rectangulo.Rectangulo.PuntoArriba.x);
	write(",");
	write(rectangulo.Rectangulo.PuntoArriba.y);
	write(")");
	write(",");
	write("(");
	write(rectangulo.Rectangulo.PuntoAbajo.x);
	write(",");
	write(rectangulo.Rectangulo.PuntoAbajo.y);
	write(")");
	write(",");
	write(rectangulo.c);
	write("]");
	writeeol();
}

procedure resultadoinvalido(punto:TipoPuntoColor, rectangulo:TipoRectanguloColor)
{
	write("El punto[(");
	write(punto.punto.x);
	write(",");
	write(punto.punto.y);
	write(")");
	write(",");
	write(punto.c);
	write("]");
	write("no esta en un solo rectangulo de su color");
	writeeol();
}	
	

procedure main()
	puntocolor:TipoPuntoColor;
	rectangcolor1:TipoRectanguloColor;
	rectangcolor2:TipoRectanguloColor;
	

{	
	
	writeln("Coordenadas del rectangulo1 y color");
	rectangulocolor(rectangcolor1);
	writeln("Coordenadas del rectangulo2 y color");
	rectangulocolor(rectangcolor2);
	writeln("Punto y color");
	leerpuntocolor(puntocolor);
	
	if ( dentrodelcolor(puntocolor,rectangcolor1) and not dentrodelcolor(puntocolor,rectangcolor2)){
		resultadovalido(puntocolor,rectangcolor1);
	}else if (not dentrodelcolor(puntocolor,rectangcolor1) and  dentrodelcolor(puntocolor,rectangcolor2)){
		resultadovalido(puntocolor,rectangcolor2);
	}else{
		resultadoinvalido(puntocolor,rectangcolor2);
	}	


}	
	
	

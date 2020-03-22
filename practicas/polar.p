program polar;

procedure leercordradial (ref r:float)
{
	readln (r);
}

procedure leercordangular (ref o:float)
{
	readln (o);
}

function formacartesianax (r:float,o:float):float
{
	return  r*cos(o) ;
}

function formacartesianay (r:float,o:float):float
{
	return  r*sin(o) ;
}


procedure escribcoordcart (r:float,o:float)
{
	write ("<");
	write (formacartesianax(r,o));
	write (", ");
	write ( formacartesianay(r,o));
	writeln (">");
}


procedure escribcoordpolar (r:float,o:float)
{
	write  ("(");
	write (r);
	write (", ");
	write (o);
	writeln (")");
}

procedure representarvector (r:float,o:float)
{
	escribcoordcart (r,o);
	escribcoordpolar (r,o);
 }
 	
function formapolarr (x:float,y:float):float
{
	return sqrt (x**2.0+y**2.0);
}

function formapolaro (x:float,y:float):float
{
	return atan (y/x);
}

function sumcartx (r1:float,r2:float,r3:float,o1:float,o2:float,o3:float):float

{
	return formacartesianax (r1,o1)+formacartesianax(r2,o2)+formacartesianax(r3,o3);
}

function sumcarty (r1:float,r2:float,r3:float,o1:float,o2:float,o3:float):float
{
	return formacartesianay (r1,o1)+formacartesianay(r2,o2)+formacartesianay(r3,o3);
}

procedure escribcoordsumcart (r1:float,r2:float,r3:float,o1:float,o2:float,o3:float)
{
	write ("<");
	write (sumcartx(r1,r2,r3,o1,o2,o3));
	write (", ");
	write (sumcarty(r1,r2,r3,o1,o2,o3));
	writeln (">");
}
	
procedure escribcoordsumpolar (r1:float,r2:float,r3:float,o1:float,o2:float,o3:float)
{
	write  ("(");
	write (formapolarr(sumcartx(r1,r2,r3,o1,o2,o3),sumcarty(r1,r2,r3,o1,o2,o3)));
	write (", ");
	write (formapolaro(sumcartx(r1,r2,r3,o1,o2,o3),sumcarty(r1,r2,r3,o1,o2,o3)));
	writeln (")");
}

procedure representarsuma (r1:float,r2:float,r3:float,o1:float,o2:float,o3:float)


{
	escribcoordsumcart (r1,r2,r3,o1,o2,o3);
	escribcoordsumpolar (r1,r2,r3,o1,o2,o3);
	
 }
	
procedure main () 
	r1:float;
	r2:float;
	r3:float;
	o1:float;
	o2:float;
	o3:float;
	
	r:float;
	o:float;
	x:float;
	y:float;
	
{
	
	leercordradial (r1);
	leercordangular (o1);
	leercordradial (r2);
	leercordangular (o2);
	leercordradial (r3);
	leercordangular (o3);
	representarvector(r1,o1);
	representarvector(r2,o2);
	representarvector(r3,o3);
	representarsuma (r1,r2,r3,o1,o2,o3);

}


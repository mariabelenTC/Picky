program puntoen2rectangulos;


function puntoenintervalo (x:int,dx:int,ix:int):bool
{
	return x<=dx and x>=ix;
}	


function puntoenrectangulo (x:int,rdx:int,rix:int,y:int,riy:int,rdy:int):bool
{
	return	puntoenintervalo (x,rdx,rix) and puntoenintervalo (y,riy,rdy);
}

function puntoenrectangulos  (x:int,y:int,r1dx:int,r1dy:int,r1ix:int,r1iy:int,r2dx:int,r2dy:int,r2ix:int,r2iy:int):bool
{
	return puntoenrectangulo (x,r1dx,r1ix,y,r1iy,r1dy) and puntoenrectangulo (x,r2dx,r2ix,y,r2iy,r2dy);
}

consts:
	Rect1IzX = 2;
	Rect1IzY = 5;
	Rect1DeX = 8;
	Rect1DeY= 2;
	Rect2IzX = 6;
	Rect2IzY = 7;
	Rect2DeX = 13;
	Rect2DeY = 3;
	X = 8;
	Y = 2;
	
procedure main ()
{
	writeln (puntoenrectangulos( X,Y,Rect1DeX,Rect1DeY,Rect1IzX,Rect1IzY,Rect2DeX,Rect2DeY,Rect2IzX,Rect2IzY));
}
	
	

program arearectangulo;

 consts:
	Pi = 3.1415926;
	Epsilon = 0.0001;

function arearectangulo (a: float , b: float): float
{
	return a * b;
}
function perimrectangulo (a: float , b: float): float
{
	return 2.0 * a + 2.0 * b;	
}
function areacuad (a: float): float
{
	return a ** 2.0;
}
function perimcuad (a: float): float
{
	return 4.0 * a;
}
function areaparalelogramo (a: float , b: float): float
{
	return 2.0 * a + 2.0 * b;
}
function perimparalelogramo (a: float , b: float): float
{
	return 2.0 * a + 2.0 * b;
}
function areatriangulo1(b: float , c: float): float
{
	return b * c / 2.0;
}
function perimtriangulo1(a: float , b: float , d: float): float
{
	return a + b + d;
}
function semipeimtriangulo (a:float,b:float,c:float):float
{
	return	(a+b+c)/2.0;
}
function areatriangulo2(s:float , a: float , b: float , d: float): float
{
	return sqrt(s * (s - a) * (s - b) * (s - d));
}
function condiciontriangulo1(a:float,b:float):float
{
	return	sqrt (a**2.0+b**2.0)**2.0;
}
function condiciontriangulo2(d:float):float
{
	return	sqrt (d**2.0)**2.0;
}
function igualaciontriangulo1(a:float,b:float,c:float,ep:float):bool
 {
	return (condiciontriangulo2(c)-condiciontriangulo1(a,b))<ep ;
}
function igualaciontriangulo2(a:float,b:float,c:float,ep:float):bool
{
	return (condiciontriangulo1(a,b)-condiciontriangulo2(c))<ep ;
}
function teoremapitagoras(a:float,b:float,c:float,ep:float):bool
{
	return igualaciontriangulo1(a,b,c,ep) or igualaciontriangulo2(a,b,c,ep);
}
function atriangulorect(a:float,b:float):float
{
	return	(a*b)/2.0;
}
function areatrapecio(a: float ,b: float , d: float ): float
{
	return (b ** 2.0 + d ** 2.0) / 2.0 * a;
}
function areacircumferencia(r:float ): float
{
	return Pi * r ** 2.0;
}
function perimcircumferencia(r: float ): float
{
	return 2.0 * Pi * r;
}
function rectanguloaureo(a: float , b: float ): bool
{
	return (b / a) == (a / (b - a)) and (a / (b - a)) == (1.0 + sqrt(5.0)) / 2.0;
}
function arealateralprismarect (a: float , b: float , c: float , d: float , e: float ): float
{
        return a * (d + c + b + e);
}
function areatotalprismarecto(a: float , b: float , c: float , d: float , e: float ): float
{
        return a * (d + c + b + e) + (b ** 2.0 + d ** 2.0) / 2.0 * a;
}        
consts: 
	A = 4.0;
	B = 6.0;
	C = 3.0;
	D = 8.0;
	E = 7.0;
	F = 9.0;
	S = (A + B + D) / 2.0;
	R = 4.0;
	
	AreaRect = A * B;
	PerimRect = 2.0 * A + 2.0 * B;
	AreaCuad = A ** 2.0;
	PerimCuad = 4.0 * A;
	AreaParalelo = 2.0 * A + 2.0 * B;
	PerimParalelo = 2.0 * A + 2.0 * B;

/* Triangulos */	

	AreaTrian1 = B * C / 2.0;
	PerimTrian1 = A + B + D; 
	AreaTrian2 = sqrt(S * (S - A) * (S - B) * (S - D));

/* Teorema de pitagoras */

	Alfa = 0.0001;
	TP1 = D ** 2.0;
	TP2 = A ** 2.0 + B ** 2.0;
        Abs = sqrt((TP1 - TP2) ** 2.0);
	Pitag = Abs < Alfa;

/* Trapecio */ 

	AreaTrapec = (B ** 2.0 + D ** 2.0) / 2.0 * A;	
	AreaCircum = Pi * R ** 2.0;
	PerimCircum = 2.0 * Pi * R;

/* Rectangulo aureo */ 

	RA1 = B / A;
	RA2 = A / (B - A);
	RA3 = (1.0 + sqrt(5.0)) / 2.0;
	ABS = sqrt((RA1 - RA2) ** 2.0);
	AbS = sqrt((RA2 - RA3) ** 2.0);
	RAureo = ABS < Alfa;
	RAureo2 = AbS < Alfa; 

/* cuerpos geométricos */
 
 	AreaLPrisRect = A * (D + C + B + E);
	AreaBPrisRect = (B ** 2.0 + D ** 2.0) / 2.0 * A;
	AreaTPrisRect = AreaLPrisRect + AreaBPrisRect;
	VolPrisRect = AreaBPrisRect * A;

/* Paralelepipedo Recto */
 
 	AreaLParalelep = (2.0 * B + 2.0 * C) * A;
	AreaTParalelep = (2.0 * B + 2.0 * C) * A + 2.0 * (B * C);
	VolParalelep = B * A * C;
 
 /* Cubo */

	AreaTCubo = 6.0 * A ** 2.0;
	VolCubo = A ** 3.0;

/*Pirámide. I= apotema*/

	I = 5.5;
	AreaLPiram = (B * A / 2.0) * 5.0;
	PerimPent = B + C + D + E + F;
	AreaBPiram = PerimPent * I / 2.0;
	VolPiram = (AreaBPiram * 1.0 / 3.0 ) * A;

/* Cilindro */

	AreaLCil = 2.0 * Pi * R * D;
	AreaTCil = 2.0 * Pi * R * (R + D);
	VolCil = Pi * R ** 2.0 * D;
/* Cono */

	AreaLCono = Pi * R * I;
	AreaTCono = Pi * R * I + (Pi * A);
	VolCono = (Pi * R ** 2.0) / 3.0 * A;
/* Esfera */
	AreaTEsf = 4.0 * Pi * R ** 2.0;
	VolEsf = (4.0 / 3.0)* Pi * R ** 3.0; 

procedure main()
{
	writeln(AreaRect);
	writeln(PerimRect);
	writeln(AreaCuad);
	writeln(PerimCuad);
	writeln(AreaParalelo);
	writeln(PerimParalelo);
	writeln(AreaTrian1);
	writeln(PerimTrian1);
	writeln(AreaTrian2);
	writeln(Pitag);
	writeln(AreaTrapec);
	writeln(AreaCircum);
	writeln(PerimCircum);
	writeln(RAureo and RAureo2);
	writeln(AreaTPrisRect);
	writeln(VolPrisRect);
	writeln(AreaLParalelep);
	writeln(AreaTParalelep);
	writeln(VolParalelep);
	writeln(AreaTCubo);
	writeln(VolCubo);
	writeln(AreaLPiram);
	writeln(AreaBPiram);
	writeln(VolPiram);
	writeln(AreaLCil);
	writeln(AreaTCil);
	writeln(VolCil);
	writeln(AreaLCono);
	writeln(AreaTCono);
	writeln(VolCono);
	writeln(AreaTEsf);
	writeln(VolEsf);
	
	writeeol();
	
	writeln("Funciones");
	writeln(arearectangulo(A, B));
	writeln(perimrectangulo(A, B));
	writeln(areacuad(A));
	writeln(perimcuad(A));
	writeln(areaparalelogramo(A, B));
	writeln(perimparalelogramo(A, B));
	writeln(areatriangulo1(B, C));
	writeln(perimtriangulo1(A, B, D));
	writeln(areatriangulo2(S, A, B, D));
	writeln(teoremapitagoras(A,B,C, Epsilon));
	writeln(areatrapecio(A, B, D));
	writeln(areacircumferencia(R));
	writeln(perimcircumferencia(R));
	writeln(rectanguloaureo(A, B));
	writeln(areatotalprismarecto(A, B, C, D, E));
}

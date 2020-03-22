program formulas;
 /*
	AreaParalelogra: A= base
	AreaTrian: C=base
	S: semiperimetro de un triangulo
	AreaPentago auxiliar para Volumen Piramide (linea 48)
*/

consts:
	Epsilon = 0.00001;
	Pi = 3.141592;
	X = (1.0 + sqrt (5.0))/2.0;
	
function	prectangulo (a:float, b:float):float
{
	return	2.0*a+2.0*b;
}
function	arectangulo (a:float, b:float):float
{
	return	a*b;
}
function	pcuadrado (a:float):float
{
	return	4.0*a;
}
function	acuadrado (a:float):float
{
	return	a**2.0;
}
function	pparalelogramo (a:float,b:float):float
{
	return 2.0*b+2.0*a;
}
function	aparalelogramo (a:float, h:float):float
{
	return	a*h;
}
function	ptriangulo1 (a:float,b:float,c:float):float
{
	return	a+b+c;
}
function	atriangulo1 (c:float,h:float):float
{
	return	(c*h)/2.0;
}
function	semiptriangulo (a:float,b:float,c:float):float
{
	return	(a+b+c)/2.0;
}
function	atriangulo2 (a:float,b:float,c:float,s:float):float
{
	return	sqrt (s*(s-a)*(s-b)*(s-c));
}
function	condiciontrian1 (a:float,b:float):float
{
	return	sqrt (a**2.0+b**2.0)**2.0;
}
function	condiciontrian2 (c:float):float
{
	return	sqrt (c**2.0)**2.0;
}
function	igualaciontrian1 (a:float,b:float,c:float,ep:float):bool
 {
	return	(condiciontrian2(c)-condiciontrian1(a,b))<ep ;
}
function	igualaciontrian2 (a:float,b:float,c:float,ep:float):bool
{
	return	(condiciontrian1(a,b)-condiciontrian2(c))<ep ;
}
function	teopitagoras (a:float,b:float,c:float,ep:float):bool
{
	return	igualaciontrian1 (a,b,c,ep) or igualaciontrian2 (a,b,c,ep);
}
function	atriangulorect (a:float,b:float):float
{
	return	(a*b)/2.0;
}
function	atrapecio (a:float,b:float,h:float):float
{
	return (a+b)*h/2.0;
}
function	pcircunferencia (r:float):float
{
	return	2.0*Pi*r;
}
function	acircunferencia (r:float):float
{
	return	Pi*r**2.0;
}
function	formularectaureo1 (a:float,b:float):float
{
	return	a/b;
}
function	formularectaureo2 (a:float,b:float):float
{
	return	b/(a-b);
}
function	condicionrectaureo1 (a:float,b:float):bool
{
	return	sqrt (formularectaureo2(a,b)-formularectaureo1(a,b))**2.0<Epsilon;
}
function	condicionrectaureo2 (a:float,b:float):bool
{
	return	sqrt (formularectaureo2(a,b)-X)**2.0<Epsilon;
}
function	condicionrectaureo3 (a:float,b:float):bool
{
	return	a>b;
}
function	esrectaureo (a:float,b:float):bool
{
	return	(condicionrectaureo1(a,b)) and (condicionrectaureo2(a,b)) and (condicionrectaureo3 (a,b));
}
function pbaseprismarect (a:float,b:float,c:float,d:float):float
{
	return	a+b+c+d;
}
function	arealprismarect (a:float,b:float,c:float,d:float,h:float):float
{
	return	(pbaseprismarect (a,b,c,d))*h;
}
function	abaseprismarect (a:float,b:float,h:float):float
{
	return	2.0*atrapecio (a,b,h);
}
function	areatprismarect (a:float,b:float,c:float,d:float,h:float):float
{
	return	arealprismarect (a,b,c,d,h)+ abaseprismarect (a,b,h);
}
function	vprismarect (a:float,b:float,c:float,d:float,h:float):float
{
	return	atrapecio (a,b,h)*h;
}
function	arealparalelerect (a:float,b:float,h:float):float
{
	return	(2.0*a+2.0*b)*h;
}
function areatparalelerect (a:float,b:float,h:float):float
{
	return	arealparalelerect (a,b,h) +2.0* (a*b);
}
function	vparalelerect (a:float,b:float,h:float):float
{
	return	a*b*h;
}
function	areatcubo (a:float):float
{
	return 6.0*(a**2.0);
}
function vcubo (a:float):float
{
	return a**3.0;
}
function arealpiramide (a:float,b:float,c:float,s:float):float
{
	return	5.0*atriangulo2 (a,b,c,s);
}
function ppentagono (c:float):float
{
	return	5.0*c;
}
function areapenta (ap:float,c:float):float
{
	return	(ap*ppentagono(c))/2.0;
}
function vpiramide (ap:float,c:float,h:float):float
{
	return	(1.0/3.0)*areapenta (ap,c)*h;
}
function arealcilindro (r:float,h:float):float
{
	return	2.0*Pi*r*h;
}
function areatcilindro (r:float,h:float):float
{
	return	2.0*Pi*r*(r+h);
}
function vcilindro (r:float,h:float):float
{
	return	Pi*h*r**2.0;
}
function  arealcono (r:float,s:float):float
{
	return	Pi*r*s;
}
function areatcono (r:float,s:float):float
{
	return	(Pi*r*s)+(Pi*r**2.0);
}
function vcono (r:float ,h:float):float
{
	return	(1.0/3.0)*(Pi*r**2.0)*h;
}
function	areatesfera (r:float):float
{
	return	4.0*Pi*r**2.0;
}
function vesfera (r:float):float
{
	return (4.0/3.0)*Pi*r**3.0;
}
consts:
	A = 5.0;
	B = 4.0;
	C = 4.0;
	D = 3.0;
	H = 2.0;
	R =5.0;
	S = (A+B+C)/2.0;
	

	PerimRect = 2.0*A + 2.0*B;
	AreaRect= A*B;
	PerimCuadr = 4.0*A;
	AreaCuadr = A**2.0;
	PerimParalelogra = 2.0*A + 2.0*B;
	AreaParalelogra = A*H;
	PerimTrian = A+B+C;
	AreaTrian = (C*H)/2.0;
	AreaTrian2 = sqrt (S*(S-A)*(S-B)*(S-C));
	Abs1 = sqrt ((A**2.0 + B**2.0));
	Abs2  = sqrt (C**2.0)**2.0;
	TPitagoras =  (Abs1-Abs2) < Epsilon;
	AreaTriaRect =  (A*B)/2.0 ;
	AreaTrape = (A+B) * H/2.0;
	PerimCircun = 2.0*Pi*R;
	AreaCircun = Pi* R**2.0;
	Formula1 =  A/B ;
	Formula2 = B/ (A-B);
	Condicion1 =  (sqrt (Formula2- Formula1)**2.0) < Epsilon;
	Condicion2 = (sqrt (Formula2-X)**2.0)<Epsilon;
	Condicion3 = A>B;
	EsRectAureo =   Condicion1 and Condicion2 and Condicion3;                                                    
	PerimBasePris = A+B+C+D;
	AreaLPrisRect = PerimBasePris*H;
	AreaBasesPris = 2.0*AreaTrape;
	AreaTPrisRect = AreaLPrisRect+AreaBasesPris;
	VPrisRect = AreaTrape*H;
	AreaLParaleleRect = (2.0*A+2.0*B)*H;
	AreaTParaleleRect = ((2.0*A+2.0*B)*H)+2.0*(A*B);
	VParaleleRect = A*B*H;
	AreaTCubo = 6.0*A**2.0;
	VCubo = A**3.0;
	AreaLPiramide = 5.0*AreaTrian2;
	ApotemaPenta= 4.0;
	PerimPenta = 5.0*C;
	AreaPenta = (ApotemaPenta*PerimPenta)/2.0;
	VPiramide = (1.0/3.0)*H*AreaPenta;
	AreaLCili = 2.0*Pi*R*H;
	AreaTCili = 2.0*Pi*R*(R+H);
	VCili = Pi*H*R**2.0;
	ApotemaCono = 3.0;
	AreaLCono = Pi*R*ApotemaCono;
	AreaTCono = (Pi*R*ApotemaCono)+(Pi*R**2.0);
	VCono = (1.0/3.0)*(Pi*R**2.0)*H;
	AreaTEsfera = 4.0*Pi*R**2.0;
	VEsfera = (4.0/3.0)*Pi*R**3.0;
	
procedure main () 
{
	writeln ("Programado con funciones ");
	writeln (prectangulo (A,B));
	writeln (arectangulo (A,B));
	writeln (pcuadrado (A));
	writeln (acuadrado (A));
	writeln (pparalelogramo (A,B));
	writeln (aparalelogramo (A,H));
	writeln (ptriangulo1 (A,B,C));
	writeln (atriangulo1 (C,H));
	writeln (semiptriangulo (A,B,C));
	writeln (atriangulo2 (A,B,C,semiptriangulo (A,B,C)));
	writeln (teopitagoras (A,B,C,Epsilon));
	writeln (atriangulorect (A,B));
	writeln (atrapecio (A,B,H));
	writeln (pcircunferencia (R));
	writeln (acircunferencia (R));
	writeln (esrectaureo (A,B));
	writeln (arealprismarect (A,B,C,D,H));
	writeln (areatprismarect (A,B,C,D,H));
	writeln (vprismarect (A,B,C,D,H));
	writeln (arealparalelerect (A,B,H));
	writeln (areatparalelerect(A,B,H));
	writeln (vparalelerect(A,B,H));
	writeln (areatcubo (A));
	writeln (vcubo (A));
	writeln (arealpiramide(A,B,C,S));
	writeln (vpiramide (B,C,H));
	writeln (arealcilindro (R,H));
	writeln (areatcilindro (R,H));
	writeln (vcilindro (R,H));
	writeln (arealcono (R,D));
	writeln (areatcono (R,D));
	writeln (vcono (R,H));
	writeln (areatesfera (R));
	writeln (vesfera (R));
	
	writeln ("Programado con constantes ");
	writeln (PerimRect);
	writeln (AreaRect);
	writeln (PerimCuadr);
	writeln (AreaCuadr);
	writeln (PerimParalelogra);
	writeln (AreaParalelogra);
	writeln (PerimTrian);
	writeln (AreaTrian);
	writeln (S);
	writeln (AreaTrian2);
	writeln (TPitagoras);
	writeln (AreaTriaRect);
	writeln (AreaTrape);
	writeln ( PerimCircun);
	writeln (AreaCircun);
	writeln (EsRectAureo);
	writeln (AreaLPrisRect);
	writeln (AreaTPrisRect);
	writeln (VPrisRect);
	writeln (AreaLParaleleRect);
	writeln (AreaTParaleleRect);
	writeln (VParaleleRect);
	writeln (AreaTCubo);
	writeln (VCubo);
	writeln (AreaLPiramide);
	writeln (VPiramide);
	writeln (AreaLCili);
	writeln (AreaTCili);
	writeln (VCili);
	writeln (AreaLCono);
	writeln (AreaTCono);
	writeln (VCono);
	writeln (AreaTEsfera);
	writeln (VEsfera);
}

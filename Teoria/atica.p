program polar;

function xrectangular(dist: float, angulo: float): float       
        x: float;
{
        x= dist*cos(angulo);
        return (x);
}
function yrectangular(dist: float, angulo: float): float 
        y: float;     
{
        y=dist*sin(angulo);
        return (y);
}
procedure polararectangular(dist: float, angulo: float)
{
        write("<");
        write(xrectangular(dist,angulo));
        write(",");
        write(yrectangular(dist,angulo));
        writeln(">");               
}
function angulopolar(x: float, y: float): float
{
        return atan(y/x);
}
function distanciapolar(x: float, y: float): float
{
        return sqrt((x**2.0)+(y**2.0));
}
procedure rectangularapolar(x: float, y: float, ref dist: float, ref angulo: float)
{
        dist= distanciapolar(x,y);
        angulo= angulopolar(x,y);               
}

procedure leerpolar(ref dist: float, ref angulo: float)
{
        readln(dist);
        readln(angulo);
}
procedure mostrarrectangular(x: float, y: float)
{
        write("<");
        write(x);
        write(",");
        write(y);
        writeln(">");
}
procedure mostrarpolar(dist: float, angulo: float)
{
        write("(");
        write(dist);
        write(",");
        write(angulo);
        writeln(")");
}      
procedure mostrarvector(dist: float, angulo: float, x: float, y: float)                             
{
        mostrarrectangular(x, y);
        mostrarpolar(dist, angulo);
}
function sumarrectangularx(x1: float, x2: float): float
{
        return x1 + x2;
}
function sumarrectangulary(y1: float, y2: float): float
{
        return y1 + y2;        
}
procedure sumarrectangular(x1: float, y1: float, x2: float, y2: float, ref xr: float, ref yr: float)
{
        xr = sumarrectangularx(x1, x2);
        yr = sumarrectangulary(y1, y2);
}

procedure main()
        coordenada: char;
        dist1: float;
        angulo1: float;
        dist2: float;
        angulo2: float;
        dist3: float;
        angulo3: float;
        x1: float;
        y1: float;
        x2: float;
        y2: float;
        x3: float;
        y3: float;
        xr: float;
        yr: float;
        dist: float;
        angulo: float;
        
/*
*      mostrarvector(dist1, angulo1, xrectangular(dist1, angulo1), rectangulary(dist1, angulo1));
*       xrectangular(dist1, angulo1)-> x
*       rectangulary(dist1, angulo1)-> y
*/
        
{
        leerpolar(dist1, angulo1);
        leerpolar(dist2, angulo2);
        leerpolar(dist3, angulo3);       
        polararectangular(dist1, angulo1);
        polararectangular(dist2,angulo2);
        polararectangular(dist3,angulo3);
        mostrarvector(dist1, angulo1, x1, y1);
        mostrarvector(dist2, angulo2, x2, y2);
        mostrarvector(dist3, angulo3, x3, y3);
        sumarrectangular(x1, y1, x2, y2, xr,yr);
        sumarrectangular(xr, yr, x3, y3, xr,yr);
        rectangularapolar(xr,yr,dist,angulo);
        mostrarvector(dist, angulo, xr, yr);       
        
}


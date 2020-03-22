program polar;

function xrectangular(dist: float, angulo: float): float       
{
     return dist*cos(angulo);
        
}
function yrectangular(dist: float, angulo: float): float 
      
{
      return dist*sin(angulo);
        
}
procedure polararectangular(ref dist: float,ref angulo: float)
        x: float;
        y: float;
{
         x=xrectangular(dist,angulo);
         y=yrectangular(dist,angulo);               
}

function angulopolar(x: float, y: float): float
{
        return atan(y/x);
}
function distanciapolar(x: float, y: float): float
{
        return sqrt((x**2.0)+(y**2.0));
}
procedure rectangularapolar(ref x: float, ref y: float)
        dist: float;
        angulo: float;
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
procedure mostrarvectores(ref dist: float, ref angulo: float, ref x: float, ref y: float)                             
{
        mostrarrectangular(x, y);
        mostrarpolar(dist, angulo);
}
function sumarrectangularx(x1: float, x2: float, x3: float): float
{
        return x1 + x2 + x3;
}
function sumarrectangulary(y1: float, y2: float, y3: float): float
{
        return y1 + y2 +y3;        
}
procedure sumarrectangular(x1: float, y1: float, x2: float, y2: float, x3: float, y3: float)
        xtotal: float;
        ytotal:float;
{
        xtotal = sumarrectangularx(x1, x2,x3);
        ytotal = sumarrectangulary(y1, y2,y3);
}

procedure main()
 
        dist1: float;
        angulo1: float;
        dist2: float;
        angulo2: float;
        dist3: float;
        angulo3: float;
        x: float;
        y: float;


        dist: float;
        angulo: float;
               
{
        leerpolar(dist1, angulo1);
        leerpolar(dist2, angulo2);
        leerpolar(dist3, angulo3);       
        mostrarvectores(dist1, angulo1, x, y);
        mostrarvectores(dist2, angulo2, x, y);
        mostrarvectores(dist3, angulo3, x, y);
        sumarrectangular(x, y, x, y, x,y);
        rectangularapolar(x,y);
     
        
}


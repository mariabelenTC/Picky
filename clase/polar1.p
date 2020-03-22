program polar;

function xrectangular(dist: float, angulo: float): float
        x: float;
{
     x=dist*cos(angulo); 
     return(x);       
}
function yrectangular(dist: float, angulo: float): float 
        y: float;
{
     y=dist*sin(angulo);        
     return(y);
}
procedure mostrarcartesiana( dist: float, angulo: float )
{ 
        write("<");
        write(xrectangular(dist,angulo));
        write(",");
        write(yrectangular(dist,angulo));
        writeln(">");
}
function sumarxrect(x1: float, x2: float, x3: float):float
        xtotal: float;
{
        xtotal=x1+x2+x3;
        return(xtotal);¨
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

{
        dist1= 1.414;
        angulo1= 0.785;
        dist2= 2.828;
        angulo2= 0.785;
        dist3= 4.243;
        angulo3= 0.785;
        mostrarcartesiana(dist1,angulo1);
        mostrarcartesiana(dist2,angulo2);
        mostrarcartesiana(dist3,angulo3);

}                   
        
  

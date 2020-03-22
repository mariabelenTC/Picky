program polar;

procedure polararectangular(dist: float, angulo: float, ref x: float, ref y: float)
{
        x= dist*cos(angulo);
        y= dist*sin(angulo);              
}
procedure rectangularapolar(x: float, y: float, ref dist: float, ref angulo: float)
{
        dist= sqrt((x**2.0)+(y**2.0));
        angulo= atan(y/x);
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

procedure sumarrectangular(x1: float, y1: float, x2: float, y2: float, ref xr: float, ref yr: float)
{               
        xr = x1 + x2;
        yr = y1 + y2;
}       
procedure main()
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
        
        
     
            
{
        dist1= 1.414;
        angulo1= 0.785;
        dist2= 2.828;
        angulo2= 0.785;
        dist3= 4.243;
        angulo3= 0.785;
              
        polararectangular(dist1, angulo1, x1, y1);
        polararectangular(dist2,angulo2,x2,y2);
        polararectangular(dist3,angulo3,x3,y3);
        mostrarvector(dist1, angulo1, x1, y1);
        mostrarvector(dist2, angulo2, x2, y2);
        mostrarvector(dist3, angulo3, x3, y3);
        sumarrectangular(x1, y1, x2, y2, xr,yr);
        sumarrectangular(xr, yr, x3, y3, xr,yr);
        rectangularapolar(xr,yr,dist,angulo);
        mostrarvector(dist, angulo, xr, yr);       
        
}


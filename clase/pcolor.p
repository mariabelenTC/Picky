program pcolor;

types:
        TipoColor = (Amarillo, Magenta, Cyan);
        TipoPunto = record
        {
                x: int;
                y: int;
                                  
        };        
        TipoPuntoColor=record
        {
                punto: TipoPunto;
                colr: TipoColor;
        }; 
               
        TipoRectanguloColor=record
        {
                supizq: TipoPunto;
                infder: TipoPunto;
                colr: TipoColor;
        };        
procedure leerpunto(ref punto: TipoPunto)  
{
        readln(punto.x);
        readln(punto.y);
}      
procedure leerrectangulo(ref rectangulo: TipoRectanguloColor)       
{
        leerpunto(rectangulo.supizq);
        leerpunto(rectangulo.infder);
        readln(rectangulo.colr);
}
procedure leerpuntocolor(ref puntocolor: TipoPuntoColor)
{
        leerpunto(puntocolor.punto);
        readln(puntocolor.colr);
}
procedure mostrarpunto(punto: TipoPunto)
{
        write("(");
        write(punto.x);
        write(",");
        write(punto.y);
        write(")");
}
procedure mostrarpuntocolor(puntocolor: TipoPuntoColor)
{
        write("[");
        mostrarpunto(puntocolor.punto);
        write(",");
        write(puntocolor.colr);
        write("]");
}
procedure mostrarrectangulo(rectangulo: TipoRectanguloColor)
{
        write("[");
        mostrarpunto(rectangulo.supizq);
        write(",");
        mostrarpunto(rectangulo.infder);
        write(",");
        write(rectangulo.colr);
        write("]");
}
function puntoenrectangulo(puntocolor: TipoPuntoColor, rectangulo: TipoRectanguloColor): bool
{
        return ((puntocolor.colr == rectangulo.colr) and 
        ((puntocolor.punto.x >rectangulo.supizq.x) and (puntocolor.punto.x < rectangulo.infder.x)) and 
        (puntocolor.punto.y < rectangulo.supizq.y) and (puntocolor.punto.y > rectangulo.infder.y));
}

procedure resultadocorrecto(puntocolor:TipoPuntoColor, rectangulo: TipoRectanguloColor)
{
        write("El punto ");
        mostrarpuntocolor(puntocolor);
        write(" esta en ");
        mostrarrectangulo(rectangulo); 
        writeln(" ");              
}

procedure resultadoincorrecto(puntocolor: TipoPuntoColor)
{
        write("El punto ");
        mostrarpuntocolor(puntocolor);
        writeln(" no esta en un solo rectangulo de su color ");
        
}

procedure mostrarresultado(rect1: TipoRectanguloColor, rect2: TipoRectanguloColor, ptocolor: TipoPuntoColor )
{
       if(not puntoenrectangulo(ptocolor,rect1) and puntoenrectangulo(ptocolor, rect2)){
                resultadocorrecto(ptocolor, rect2);
       }else if(puntoenrectangulo(ptocolor,rect1) and not puntoenrectangulo(ptocolor, rect2)){
                resultadocorrecto(ptocolor, rect1);
       }else{
                resultadoincorrecto(ptocolor);
       }  

}
procedure main()
        rectangulo1: TipoRectanguloColor;
        rectangulo2: TipoRectanguloColor;
        puntocolor: TipoPuntoColor; 
{
       leerrectangulo(rectangulo1);
       leerrectangulo(rectangulo2);
       leerpuntocolor(puntocolor);
       mostrarresultado(rectangulo1,rectangulo2,puntocolor);
       
                           
}





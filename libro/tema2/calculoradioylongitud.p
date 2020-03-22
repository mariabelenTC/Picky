program calculoradio;

consts:
        Pi = 3.1415926;
       

function longitudcircumferencia(r: float): float
{
        return 2.0 * Pi * r;
}               
function radiocircumferencia(l: float): float
{
        return l / (2.0 * Pi);
}      

consts:
        Loncircum = 18.849556;
        Radio = 3.0;
procedure main()
{
        write("el radio es ");
        writeln(radiocircumferencia(Loncircum));
        write("la longitud es ");
        writeln(longitudcircumferencia(Radio));
        
}

program compararreales;

consts: 
        Epsilon = 0.001;
        A = 2.0 - 1.1;
        B = 1.0 - 0.1;
function abs(a: float): float
{
        return sqrt(a**2.0);
}        
function compararreales(a: float, b: float): bool
{
        return abs(a - b) < Epsilon;
}        
procedure main()
{
        writeln("Comparacion mal ");
        write(A==B);
        writeln("Comparacion bien ");
        write(compararreales(A,B));
}

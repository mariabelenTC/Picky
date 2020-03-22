program calculoexpresiones;

consts:
        Pi = 3.1415926;
        
function sumapolinomios(h: float, g: float): float
{
        return h**2.0 + g**2.0;
}
function variosr(r: float): float
{
        return (4.0/3.0)*Pi*r;
}
function factorial(c: float): float
{
        return c*(c-1.0)*(c-2.0)*(c-3.0)*(c-4.0);
}
function raiz(pi: float): float
{
        return sqrt(pi);
}
function sencos(x: float): bool
{
        return sin(x) ** 2.0  + cos(x) ** 2.0 == 1.0;
}
function operacion(x: float): float
{
        return 1.0/sqrt(3.5 * x ** 2.0 + 4.7 * x + 9.3);
}
consts:
        A = 4.0;
        B = 3.0;
        H = 2.7;
        G = -3.2;
        R1 = 1.0;
        R2 = 2.0;
        R3 = 3.0;
        C = 5.0;
        X1 = 0.0;
        X2 = 2.0;
        
procedure main()
{
        write("la suma de polinomios= ");
        writeln(sumapolinomios(H,G));
        write("operacion con el primer radio= ");
        writeln(variosr(R1));
        write("operacion con el segundo radio= ");
        writeln(variosr(R2));
        write("operacion con el tercer radio= ");
        writeln(variosr(R3)); 
        write("factorial= "); 
        writeln(factorial(C));
        write("La raiz de Pi es ");
        writeln(raiz(Pi));
        writeln("propiedad de trigonometria: sen^2(x)+cos^2s(x)=1");
        writeln(sencos(X1));
        write("la ultima operacion es ");
        writeln(operacion(X2));
         
}

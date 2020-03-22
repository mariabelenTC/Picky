program calcula;
consts:
        Suma = '+';
        Resta = '-';
        Multi = '*';
        Divis = '/';
        Modul = 'm';
         
function datosvalidos(oper: char ): bool
{
        switch(oper) {
        case Suma, Resta, Multi, Divis, Modul:
                return True;
        default:
                return False;
        }
}
function operaciones(oper: char, a: int, b: int): int
{
        switch(oper) {
        case Suma:
                return a+b;
        case Resta:
                return a-b;
        case Multi:
                return a*b;
        case Modul:
                return a%b;
        default:
                return a/b;
                               
        }
                       
}
function dividendocero(b: int, oper: char): bool
{
        return b==0 and oper == Divis;
}

procedure main()
        a: int;
        b: int;
        oper: char;
{
        readln(a);
        readln(oper);
        readln(b);
       

        if( not datosvalidos(oper)){
                writeln("Operacion no valida ");
        }else if(dividendocero(b,oper)){
                writeln("operacion por cero "); 
        }else {
                writeln(operaciones(oper,a,b));
                }
}





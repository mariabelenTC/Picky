program digitosseparados;

consts: 
        Numero = 325;
        Base = 10;
        
function valordigito(numero: int, pos: int, base: int): int
{
        return (numero /base **(pos -1)) % base;
}       
procedure main()
{

       write(valordigito(Numero, 3, Base));
       write("  ");
       write(valordigito(Numero, 2, Base));
       write("  ");
       write(valordigito(Numero, 1, Base));
       writeeol();
}      

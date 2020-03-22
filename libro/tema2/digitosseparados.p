program digitosseparados;

/* programa para escribir un numero de tres digitos espaciados*/

consts:
	numero = 357;
function valordigito(numero:int , posicion: int): int
{
	return (numero / 10 ** (posicion - 1)) % 10;
}
procedure main()
{
	write(valordigito(numero,3));
	write("  ");
	write(valordigito(numero,2));
	write("  ");
	write(valordigito(numero,1));
	writeeol();
}



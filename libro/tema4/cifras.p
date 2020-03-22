program tresdighexadecimales;

function valordigito(digito: char): int
{
	switch(digito){
	case '0'..'9':
		return int(digito) - int('0');
	case 'A'..'F':
		return int(digito) - int('A') + 10;	
	default:
		return 0;
	}
}
function cardigito16(valor: int): char
{
	if (valor >= 0 and valor<= 9){
		return char(int('0') + valor);
	}else{
		return char(int('A') + valor - 10 );
	}
}
procedure main()
	digito: char;
{
	read(digito);
	writeln(cardigito16(valordigito(digito)));
}

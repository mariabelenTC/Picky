program cuadrados;

consts:
	MaxNum = 5;

function cuadrado(n: int): int
{
	return n ** 2;
}
procedure main()
	x: int;
	i: int;
{
	for(i = 1, i <= MaxNum){
		x = cuadrado(i);
		write(i);
		write(" ** 2 = ");
		writeln(x);
	}
}
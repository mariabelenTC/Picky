program elevaralcuadrado;

procedure elevar2()
	numero:int;
{
	readln(numero);
	writeln(numero** 2);
	
}
procedure main()		/* cada sentencia es independiente de otra */
{
	elevar2();   	/* si pongo 2 el resultado sera 4*/	
	elevar2();		/* si pongo 4 el resultado sera 16*/
}
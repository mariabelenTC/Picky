 program cartas;

 types:
 	TipoValor = (As, Dos, Tres, Cuatro, Cinco, Seis, Siete, Sota, Caballo, Rey);
 	TipoPalo = (Bastos, Oros, Copas, Espadas);
 	TipoCarta = record
 	{
 		valor: TipoValor;
 		palo: TipoPalo;
 	};
function nuevacarta(valor: TipoValor, palo: TipoPalo): TipoCarta
	carta: TipoCarta;
{
	carta.valor = valor;
	carta.palo = palo;
	return carta;
}
function esfigura(carta: TipoCarta): bool
{
	return carta.valor >= Sota and carta.valor <= Rey;
}
function valorcarta(carta: TipoCarta): float
	pos: int;
	valor: int;
{
	if (esfigura(carta)){
		return 0.5;
	}else{
		pos = int(carta.valor);
		valor = pos - int(As) + 1;
		return float(valor); 
	}
}
procedure leercarta(ref carta: TipoCarta)
	valor: TipoValor;
	palo: TipoPalo;
{
		write("valor: ");
		read(valor);
		write("palo: ");
		read(palo);
		carta = nuevacarta(valor, palo);
}
 
procedure main()
 	carta: TipoCarta;
 	valor: float;
 {
 	leercarta(carta);
 	valor = valorcarta(carta);
 	write(" La carta vale: ");
 	writeln(valor);

 }
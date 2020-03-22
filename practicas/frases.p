program frases;
consts:
	MaxCarac=600;
	Vacio= ' ';
types:
	TipoCaracteres=array [0..MaxCarac-1] of char;
	TipoFrase=record
	{
		caract:TipoCaracteres;
		numcaracteres:int;
	};
	
procedure readfrase (ref frase:TipoFrase)
c:char;
pos:int;
fin:bool;
{
	pos=0;
	fin=False;
	do{
		peek(c);
		switch (c){
		case Eol:
			readeol();
			fin=True;
		case Eof:
			fin=True;
		default:
			read (c);
			frase.caracteres[pos]=c;
			pos=pos+1;
		}
	}while (not fin and pos<MaxCarac);
	frase.numcaracteres=pos;	
}

procedure buscarmaxfrase(frase:TipoFrase,ref maxfrase:TipoFrase)
{
	if (frase.numcaracteres>maxfrase.numcaracteres){
		maxfrase=frase;
	}
}

procedure imprimirfrase (frase:TipoFrase)
pos:int;
{
	for (pos=0,pos<frase.numcaracteres){
		write (frase.caracteres[pos]);
	}
	writeeol();
}


procedure main ()
frase:TipoFrase;
maxfrase:TipoFrase;
{
	maxfrase.numcaracteres=0;
	do{
		readfrase(frase);
		buscarmaxfrase(frase,maxfrase);
	}while (not eof());
	write("La frase mas larga es:  ");
	imprimirfrase(maxfrase);

}
	
	
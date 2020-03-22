program frases;

consts:

	MaxCaract = 500;

types:

	TipoExtensionFrase = int 0 .. MaxCaract - 1;
	TipoSintaxis = array[TipoExtensionFrase] of char;

	TipoFrase = record
	{
		contenido: TipoSintaxis;
		contadorlong: int;

	};

procedure leerlinea(ref frase: TipoFrase)
	c: char;
	eolencontrado: bool;
	eofencontrado: bool;
	
{
	frase.contadorlong=0;
	eofencontrado=False;	
	eolencontrado=False;
	

	do{
	
		peek(c);

		switch(c){
            case Eof:
                eofencontrado=True;
            case Eol:
                eolencontrado = True;
                readeol();
            default:
                read(c);
                frase.contenido[frase.contadorlong]=c;
                frase.contadorlong = frase.contadorlong + 1;  
		}
	}while(not (eolencontrado and eofencontrado));
	
}
procedure inicializar(ref frase: TipoFrase, ref maxfrase: TipoFrase)
{

	frase.contadorlong=0;

	do{
		leerlinea(frase);

		if(frase.contadorlong > maxfrase.contadorlong){
		maxfrase = frase; 
	    }
	} while(not eof());  

	write("La frase mas larga es: ");
	leerlinea(maxfrase);
	
}

procedure main()
	frase: TipoFrase;
	maxfrase: TipoFrase;
{
	leerlinea(frase);
	inicializar(frase,maxfrase);
}



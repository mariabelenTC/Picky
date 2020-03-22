program tablero;
	
types:	
	TipoTablero= record
	{
		anchotablero: int;
		anchocasilla: int;
		
        };
        TipoCasilla= record
        {
		negro: char;
		blanco: char;		
	};	
procedure leerdimensionestablero( ref dimensiones: TipoTablero, ref casilla: TipoCasilla)              
{
	readln(dimensiones.anchotablero);
	readln(dimensiones.anchocasilla);
	readln(casilla.blanco);
	readln(casilla.negro);
}
function escasillapar(fila:int): bool
{
        return fila % 2 == 0;
}
procedure ponernegrasyblancas(dimensiones: TipoTablero,casilla: TipoCasilla)
        dim1: int;      
        dim2: int;
        k: int;
        j: int;
        colr: char;
        
{
            
        for(dim1=1, dim1<=dimensiones.anchotablero){ 
                if (escasillapar(dim1)){
                        colr = casilla.blanco;
                }else{
                        colr = casilla.negro;
        
                }                   
                for(j=1, j<=dimensiones.anchocasilla){
                        for(dim2=1, dim2<=dimensiones.anchotablero){ 
                                              
                                for(k=1, k<=dimensiones.anchocasilla){
                                  write(colr);
                                  
                                }
                                if (colr==casilla.negro){
                                        colr=casilla.blanco;
                                }else{
                                        colr=casilla.negro;
                                }
                                
                       } writeeol();
                }        
      }
      writeeol(); 
                       
}


procedure escribircabecera(dimensiones: TipoTablero)
        numero: int;
        anchotablero: int;
        letra: char;
        espacio:int;
        
{
        espacio= dimensiones.anchocasilla%2;
        letra='A';
        
        for(numero=1, numero<=dimensiones.anchotablero){
                for(anchotablero=1, anchotablero<= espacio){
                        write(" ");
                }
                write (letra);
        
                for (anchotablero=1, anchotablero<= espacio){
                       write(" ");
                }
                letra= succ(letra);
        }
        writeeol();
}

procedure main()
	
	dimensiones:TipoTablero;
	casillas: TipoCasilla;

{	
        
	leerdimensionestablero(dimensiones,casillas);	
	escribircabecera(dimensiones);
	ponernegrasyblancas(dimensiones,casillas);
}


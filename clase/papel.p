program papel;

consts:
		
	Piedra = 'P';
	Papel = 'H';
	Tijera = 'T';
	Lagarto = 'L';
	Spock = 'S';
        		
function datosinvalidos(j: char): bool
{
        return (j!=Piedra and j!=Papel and j!=Tijera and j!=Lagarto and j!=Spock);            
}

function datosiguales(j1: char, j2: char): bool               
{
        return j1==j2;   
}
function ganajugadoruno(j1:char, j2: char): bool
{
        switch(j1) {
        case Piedra:
                return j2==Lagarto or j2==Tijera;
        case Papel:
                return j2==Spock or j2==Piedra;
        case Lagarto:
                return j2==Spock or j2==Papel;
        case Spock:
                return j2==Tijera or j2==Piedra;
        default:
                return j2==Papel or j2==Lagarto; 
                }
                        
}

consts:

	J1 = 'P';
	J2 = 'c';

procedure main()
{
	if(datosinvalidos(J1) or datosinvalidos(J2)){
		writeln("datos invalidos");
	}else if(datosiguales(J1, J2)){
	        writeln("Empate");
	}else if(ganajugadoruno(J1,J2)){
	        writeln("gana jugador uno");
	}else{
	        writeln("gana jugador dos");
	        }	        
}

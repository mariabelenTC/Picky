program papel;

consts:

	Piedra = 'p';
	Papel = 'h';
	Tijera = 't';
	Lagarto = 'l';
	Spock = 's';
	
	 
function armasiguales (j1: char,j2:char):bool
{
	return j1==j2;
}

function armanovalida (j:char):bool
{	
	return ((j!= Piedra) and (j!=Papel) and (j!=Tijera) and (j!=Lagarto) and (j!=Spock));
 }
 
 function juegonovalido (j1:char, j2:char):bool
 {
	return armanovalida (j1) or armanovalida (j2);
}

function contrapapel (j2:char):bool
{
	return j2==Piedra or j2==Spock;
}

function contrapiedra (j2:char):bool
{
	return j2==Lagarto or j2==Tijera;
}

function contratijera (j2:char):bool
{
	return j2==Papel or j2==Lagarto;
}

function contralagarto (j2:char):bool
{
	return j2==Spock or j2==Papel;
}

function contraspock (j2:char):bool
{
	return j2==Tijera or j2==Piedra;
}

function j1ganaj2 (j1:char,j2:char):bool

{
	switch (j1){
	case Papel :
		return  contrapapel (j2);	
	case Piedra:
		return contrapiedra (j2);
	case Tijera:
		return contratijera (j2);
	case Lagarto:
		return contralagarto (j2);
	default :
		return contraspock(j2);
	}
}


consts:

	J1 = Tijera;
	J2 = Lagarto;

procedure main ()
{
	if (juegonovalido (J1,J2)) {
		writeln ("datos invalidos");
	} else if  (armasiguales(J1,J2)) {
		writeln ("pierden los dos");
	} else if (j1ganaj2 (J1,J2)){
		writeln ("gana el primero");
	} else {
		writeln ("gana el segundo");
	}
}

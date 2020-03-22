program fechaok;

function annovalido(anno: int): bool
{
	return anno >= 0;
}
 function mesvalido(mes: int): bool
 {
 	return  mes<=12 and mes>=1; 
 }
 function esannobisiesto(anno: int): bool
 {
 	return anno % 4 == 0 and (not(anno % 100 == 0) or anno % 400 == 0);
 }
 function diasmes( mes: int, anno: int): int
 {
 	switch(mes){
 	case 1,3,5,7,8,10,12:
 		return 31;
 	case 4,6,9,11:
 		return 30;
 	case 2:
 		if(esannobisiesto(anno)){
 			return 29;
 		}else{
 			return 28;
 		}
 	default:
 		return 0;
 	}
}
function diavalido(dia: int, mes: int, anno: int): bool
{
	return dia >= 1 and dia<= diasmes(mes, anno);
}

procedure main()
	anno: int;
	dia: int;
	mes: int;
{
	readln(anno);
	readln(dia);
	readln(mes);

	if(annovalido(anno) and diavalido(dia, mes, anno) and mesvalido(mes)){
		writeln("fecha valida");
	}else{
		writeln("fecha invalda");
	}
}
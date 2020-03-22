program signo;
function signo(n: int): int
{
	if(n < 0){
		return -1;
	}else{						
		return 1;
	}
}
function valorabso(n: int): int
{
	return n * signo(n); 
}

function distancialineal(a: int, b: int): int
{
	return valorabso(a-b);
}
function distanciamaslarga(dist1: int, dist2: int, orig: int): int
{
	if (distancialineal(orig,dist1)> distancialineal(orig, dist2)){
		return dist1;
    }else{
		return dist2;
	}
}
procedure main()
	/*1- numero: int;*/
	origen: int;
	dist1: int;
	dist2: int;
{
 		/*1- read(numero);
		     writeln(valorabso(numero));
		     esto hace que si introduzco un numero negativo 
		     se multiplique por -1,entonces su resultado es positivo*/
	write("escribe el origen: ");
	read(origen);
	write("escribe el punto 1: ");
	read(dist1);
	write("escribe el punto 2: ");
	read(dist2);
	write("la distancia mas larga al origen es: ");
	writeln(distanciamaslarga(dist1,dist2,origen));

}
/*
*       Un punto cualquira: P(ptox,ptoy)
*       El primer rectagulo definido por las coordenas de una de sus diagonales:
*               coordenada superior: (Xs1,Ys1)
*               coordenada inferior: (Xi1,Yi1)
*       El segundo rectangulo definido por las coordenas de una de sus diagonales.
*               coordenada superio: (Xs2,Ys2)
*               coordenada inferio: (Xi2,yi2)
*/


program dentrorectangulos;



/*
*       Para que X,Y esten dentro de los rectangulos :
*               Xs1 <= x <= Xi1
*               Ys1 => y >= Yi1
*/


function pertenecexy(ptox: int , xs1: int , xi1: int, ptoy: int , ys1: int , yi1: int): bool 
{
	return (ptox >= xs1 and ptox <= xi1) and (ptoy <= ys1 and ptoy >= yi1);
}


function dentrorectangulo1y2(x: int, y: int, xs1: int, xi1: int , ys1: int , yi1: int, xs2: int , xi2: int , ys2: int , yi2: int): bool
{
	return pertenecexy(x , xs1 , xi1, y, ys1 , yi1) and pertenecexy(x, xs2, xi2, y, ys2, yi2);
}

consts: 

        Xs1 = 2; 
        Ys1 = 7;

        Xi1 = 6;
        Yi1 = 4;

        Xs2 = 1;
        Ys2 = 5;

        Xi2 = 5;
        Yi2 = 2;

        X = 4;
        Y = 4;



procedure main()
{
        writeln(dentrorectangulo1y2(X, Y, Xs1, Xi1, Ys1, Yi1, Xs2, Xi2, Ys2, Yi2 ));
	
}
        


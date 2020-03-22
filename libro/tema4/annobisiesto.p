program añobisiesto;

consts: 
        Anno = 2527;
        
        
function annoesbisiesto(a: int): bool
{
        return (a % 4) == 0 and (a % 100) !=0 or (a % 400) == 0;
}        

procedure main()
{
        writeln(annoesbisiesto(Anno));
}

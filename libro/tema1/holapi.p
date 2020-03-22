program holapi;

consts:
        Pi = 3.1415926;
 
procedure escribirsaludo(quien: float)
	{
		write("Hola ");
        write(quien);
        write("!");
        writeeol();
	}
        
procedure main()      
	{
        escribirsaludo(Pi);
	}

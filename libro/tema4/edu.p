program edu;
 


procedure mult2(ref k: int)
{
        k = 2*k;
}

procedure main()

        X: int;
       
{
        X = 6;
       
        mult2(X);     
        writeln(X);
}

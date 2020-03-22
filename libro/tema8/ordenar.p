program ordenar;

consts:

	NumElems = 5;  /* longitud de los arrays a ordenar*/
	NumPruebas = 10; /* numero de arrays de prueba*/
types:
	TipoIndice = int 0..NumElems-1;
	TipoNums = arrays[Tipoindice] of int;

	TipoIndicePruebas = int 0..NumElems-1;
	TipoPruebas = array[TipoIndicePruebas] of TipoNums;
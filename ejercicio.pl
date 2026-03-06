conexion(vancouver,edmonton,16).
conexion(vancouver,calgary,13).
conexion(edmonton,saskatoon,12). 
conexion(saskatoon,calgary,9). 
conexion(saskatoon,winninpeg,20). 
conexion(calgary,regina,14). 
conexion(regina,saskatoon,7). 
conexion(regina,winninpeg,4). 


/* Existe una conexión entre Saskatoon y Vancouver? */ 
tieneArista(X,Y):- conexion(X,Y,_). 
conectado(A,B,C) :- conexion(A,B,C). 
conectado(A,B,C) :- conexion(B,A,C). 

tieneAristaO(X):- conexion(X,,); conexion(,X,).


/*Construir una regla para determinar cuál es el costo para ir de un nodo X a un Z pasando por Y */ 
costo_via(X,Y,Z,CostoTotal) :- conexion(X,Y,C1), 
    conexion(Y,Z,C2), 
    CostoTotal is C1 + C2.

viaje(X,Y):- conexion(X,D,), conexion(D,Y,), conexion(Y,Z,_).

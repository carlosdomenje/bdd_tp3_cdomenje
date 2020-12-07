# language: es
# enconding: utf-8


# (Gestion) v  En una lista vacía hay cero elementos. 
# (Gestion) v  Cuando se agrega un elemento a una lista vacía hay un elemento.
# (Gestion) v  En una lista vacía no se encuentra ninguna clave.
# (Gestion) v  Cuando se agrega un elemento a una lista vacía se puede recuperar el valor a partir de la clave.
# (Busqueda) *  Cuando se agrega una clave que ya está en la lista se actualiza el valor correspondiente.
# (Gestion) v  Cuando se agrega un elemento a una lista vacia, la lista de claves esta ordenada.
# (Gestion) *  Cuando se agrega un elemento al principio la lista de claves esta ordenada.
# (Gestion) *  Cuando se agrega un elemento al final la lista de claves esta ordenada.
# (Busqueda) *  Se puede borrar una pareja a partir de la clave.


Característica: Gestionar las parejas almacenadas en la lista

Escenario: Verificar lista sin elementos 
    Dado una lista vacia
    Entonces la lista tiene cero elementos.

Escenario: Verificar que no se encuentren claves en una lista vacia
    Dado una lista vacia
    Entonces no se encuentra ninguna clave.

# Se lo refactoriza para que se comprenda mejor la prueba.
Escenario: Agregrar un elemento a una lista vacia
    Dado una lista vacia
    Cuando se agrega la clave 'prueba' con el valor 1
    Y se busca la cantidad de elementos en la lista
    Entonces la lista tiene un elemento almacenado
    
Escenario: Agregrar un elemento y recuperar su valor 
    Dado una lista vacia
    Cuando se agrega el elemento con clave 'test' y valor 2
    Y se realiza una busqueda por su clave 'test'
    Entonces su valor es igual a 2

Escenario: Agregrar varios elementos a una lista vacia
    Dado una lista vacia
    Cuando se agregan 4 elementos
    | clave | valor |
    | prueba | 1 |
    | prueba2 | 2 |
    | prueba3 | 3 |
    | a_prueba4 | 4 |
    Y se recupera la lista de claves
    Entonces la lista de claves esta ordenada
    | claves | 
    | a_prueba4 |
    | prueba |
    | prueba2 |
    | prueba3 |
    


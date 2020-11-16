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

Escenario: Verificar lista vacia
    Dado una lista vacia
    Entonces la lista tiene cero elementos.

Escenario: Verificar lista vacia
    Dado una lista vacia
    Entonces no se encuentra ninguna clave.


Escenario: Agregrar un elemento a una lista vacia
    Dado una lista vacia
    Cuando se agrega la pareja
    | clave | valor |
    | clave | valor |
    Entonces la lista tiene un elemento almacenado
    
Escenario: Agregrar un elemento a una lista vacia
    Dado una lista vacia
    Cuando se agrega la pareja
    | clave | valor |
    | prueba | 1 |
    Entonces se puede recuperar su valor a partir de la clave

Escenario: Agregrar un elemento a una lista vacia
    Dado una lista vacia
    Cuando se agrega un elemento
    | clave | valor |
    | prueba | 1 |
    | prueba2 | 2 |
    | prueba3 | 3 |
    | a_prueba4 | 4 |
    Entonces la lista de claves esta ordenada


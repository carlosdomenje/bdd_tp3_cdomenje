# language: es
# enconding: utf-8


# (Gestion) v  En una lista vacía hay cero elementos. 
# (Gestion) *  Cuando se agrega un elemento a una lista vacía hay un elemento.
# (Gestion) v  En una lista vacía no se encuentra ninguna clave.
# (Gestion) *  Cuando se agrega un elemento a una lista vacía se puede recuperar el valor a partir de la clave.
#  *  Cuando se agrega una clave que ya está en la lista se actualiza el valor correspondiente.
#  *  Cuando se agregan un elemento a una lista vacía la lista de claves esta ordenada.
#  *  Cuando se agrega un elemento al principio la lista de claves esta ordenada.
#  *  Cuando se agrega un elemento al final la lista de claves esta ordenada.


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
    Entonces la lista tiene un elemento almacenado.
    



# Escenario: Agregrar un elemento a una lista con elementos
#     Dado una lista vacia con los siguientes elementos
#     | "uno" | 1 | 
#     Cuando se agrega el elemento { "dos" : 2}
#     Entonces la lista tiene dos elementos almacenado.
# Busqueda de valores a partir de claves

# language: es
# enconding: utf-8


# (Gestion) v  En una lista vacía hay cero elementos. 
# (Gestion) v  Cuando se agrega un elemento a una lista vacía hay un elemento.
# (Gestion) v  En una lista vacía no se encuentra ninguna clave.
# (Gestion) v  Cuando se agrega un elemento a una lista vacía se puede recuperar el valor a partir de la clave.
# (Busqueda) v  Cuando se agrega una clave que ya está en la lista se actualiza el valor correspondiente.
# (Gestion) v  Cuando se agrega un elemento a una lista vacia, la lista de claves esta ordenada.
# (Busqueda) v  Cuando se agrega un elemento al principio la lista de claves esta ordenada.
# (Busqueda) v  Cuando se agrega un elemento al final la lista de claves esta ordenada.
# (Busqueda) v  Se puede borrar una pareja a partir de la clave.

Característica: Buscar por listas ordenadas teniendo en cuenta el agregado de elementos.

    
Escenario: Agregar clave existente y actualizar valor
    Dado una lista 
    | clave | valor |
    | prueba | 1 |
    | prueba2 | 2 |
    | prueba3 | 3 |
    Cuando se agrega una clave existente
    | clave | valor |
    | prueba2 | otro |
    Entonces se actualiza el valor correspondiente

Escenario: Agregar una clave al principio y devolverla ordenada
    Dado una lista 
    | clave | valor |
    | en_ppio | 0 |
    | prueba | 1 |
    | prueba2 | 2 |
    | prueba3 | 3 |
    | al_final| 4 |
    Cuando se agrega un elemento al principio 
    Entonces la lista esta ordenada con el agregado al principio

Escenario: Agregar una clave al final y devolverla ordenada
    Dado una lista 
    | clave | valor |
    | en_ppio | 0 |
    | prueba | 1 |
    | prueba2 | 2 |
    | prueba3 | 3 |
    | al_final| 4 |
    Cuando se agrega un elemento al final
    Entonces la lista esta ordenada con el agregado al final

Escenario: Borrar un elemento de la lista
    Dado una lista 
    | clave | valor |
    | en_ppio | 0 |
    | prueba | 1 |
    | prueba2 | 2 |
    | prueba3 | 3 |
    | al_final| 4 |
    Cuando se quiere borrar un elemento se pasa una clave
    | clave |
    | prueba |
    Entonces se busca el elemento y se lo borra
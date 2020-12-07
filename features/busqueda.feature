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
    Dado una lista con 3 elementos 
    | clave | valor |
    | prueba | 1 |
    | prueba2 | 2 |
    | prueba3 | 3 |
    Cuando se agrega el elemento con clave 'prueba' y valor 5
    Y la clave 'prueba' ya existe la lista
    Entonces se actualiza el valor del elemento a 'prueba', 5

Escenario: Agregar un elemento y devolver una lista de claves ordenada
    Dado una lista con 5 elementos
    | clave | valor |
    | prueba | 1 |
    | prueba2 | 2 |
    | prueba3 | 3 |
    | prueba4 | 4 |
    | prueba5 | 5 |
    Cuando se agrega el elemento con clave 'alComienzo' y valor 10
    Entonces se retorna la lista de claves ordenada
    | clave |
    | alComienzo |
    | prueba | 
    | prueba2 |
    | prueba3 |
    | prueba4 |
    | prueba5 |

Escenario: Borrar un elemento de la lista
    Dado una lista con 4 elementos
    | clave | valor |
    | prueba | 1 |
    | prueba2 | 2 |
    | prueba3 | 3 |
    | prueba4 | 4 |
    Cuando se borra el elemento con clave 'prueba' 
    Entonces la clave 'prueba' no se encuentra en la lista
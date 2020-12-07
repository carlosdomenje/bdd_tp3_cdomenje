


module.exports = class Lista {    
    #elementos;

    constructor() {
        this.#elementos = [];
    }
    /* Retorna la cantidad total de elementos que tiene el array. */
    count() {
        return this.#elementos.length;
    }
     /* Busca por clave  y devuelve el inidice*/
     find(key){
        var position = NaN;
        this.#elementos.forEach(function(elemento, indice){
            if (elemento.clave == key){
                position = indice;
                
            }
        })
        
        return position;
    }

    getValue(key){
        var pos = this.find(key);
        if (pos >= 0){
            return (this.#elementos[pos].valor);
        }else{
            return undefined;
        }
    }
    
    /* Agrega un nuevo par clave - valor, teniendo en cuenta que no exista una clave
     Ademas cumple con el requisito de ser unica ya que si se agrega una igual a una clave
     existente modificara su valor y no se agregara dos veces.
    */
   add(clave, valor) {
        var key = this.find(clave);
        /*  Me aseguro que sea un string la clave */
        if (typeof(clave) != 'string' )
        {
            return NaN;
        }
        if (key >= 0 ){
            this.#elementos[key].valor = valor;
        }else{
            this.#elementos.push({clave, valor});
        }
    }

    /* Devuelvo una lista ordenadas por clave */
    sortedList(){
        var srtLst = [];
        if (this.count() != 0){
            this.#elementos.forEach(function(element){
                srtLst.push(element.clave);
            });
            return srtLst.sort()
        }else{
            return NaN;
        }
    }

    /* Borro un elemento a partir de una clave */
    eraseItem(key){
        var item = this.find(key);
        if (item >= 0){
            this.#elementos.splice(item);
            return true;
        }else{
            return false;
        }
    }

};


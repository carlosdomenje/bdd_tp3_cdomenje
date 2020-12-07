const {Before, Given, When, Then} = require('@cucumber/cucumber');
const expect = require('chai').expect;
const assert = require('chai').assert;

const Lista = require('../../src/lista');

let ctx = {};
let listCount;
let valor;


Given('una lista vacia', function () {
    ctx.lista = new Lista();
});

Then('la lista tiene cero elementos.', function () {   
    expect(ctx.lista.count()).to.equal(0);
});


Then('no se encuentra ninguna clave.', function () {
    expect(ctx.lista.count()).to.equal(0);
});

When('se agrega la clave {string} con el valor {int}', function (clave, valor) {
    
    ctx.lista.add(clave, valor);
  });

When('se busca la cantidad de elementos en la lista', function () {
     listCount = ctx.lista.count();
  });

Then('la lista tiene un elemento almacenado', function () {
    expect(listCount).to.equal(1);
});

When('se agrega el elemento con clave {string} y valor {int}', function (clave, valor) {
    ctx.lista.add(clave,valor);
});

When('se realiza una busqueda por su clave {string}', function (clave) {
    valor = ctx.lista.getValue(clave);
});

Then('su valor es igual a {int}', function (value) {
    expect(valor).to.equal(value);
});

When('se agregan {int} elementos', function (int, dataTable) {
    let elementos = dataTable.rows();
    elementos.forEach(function(item){
        ctx.lista.add(item[0], item[1]);
    })
});

When('se recupera la lista de claves', function () {
    ctx.lista = ctx.lista.sortedList();
});

Then('la lista de claves esta ordenada', function (dataTable) {
    let keys = [];
    dataTable.rows().forEach((key)=>{
        keys.push(key[0])
    })
    assert.deepEqual(ctx.lista,keys)
});

/* Steps de Busqueda.feature */

Given('una lista con {int} elementos', function (i, dataTable) {
    ctx.lista = new Lista();
    var elementos = dataTable.rows();
    console.log(elementos);
    for (let index = 0; index < i; index++){
        ctx.lista.add(elementos[index][0], elementos[index][1]);
    }
});

When('la clave {string} ya existe la lista', function (clave) {
    assert.isNotNull(ctx.lista.getValue(clave))
});


Then('se actualiza el valor del elemento a {string}, {int}', function (clave, valor) {
    expect(valor).to.equal(ctx.lista.getValue(clave));
});

Then('se retorna la lista de claves ordenada', function (dataTable) {
    let keys = [];
    dataTable.rows().forEach((key)=>{
        keys.push(key[0])
    })
    assert.deepEqual(ctx.lista.sortedList(),keys)
});

When('se borra el elemento con clave {string}', function (clave) {
    ctx.lista.eraseItem(clave);
});



Then('la clave {string} no se encuentra en la lista', function (clave) {
    assert.isUndefined(ctx.lista.getValue(clave))
});

const {Before, Given, When, Then} = require('@cucumber/cucumber');
const expect = require('chai').expect;

const Lista = require('../../src/lista');

let ctx = {};


Given('una lista vacia', function () {
    ctx.lista = new Lista();
});

Then('la lista tiene cero elementos.', function () {   
    expect(ctx.lista.find()).to.equal(0);
});


Then('no se encuentra ninguna clave.', function () {
    expect(ctx.lista.find()).to.equal(0);
});

When('se agrega la pareja', function (data) {
    let elementos = data.rows();
    ctx.lista.add(elementos[0][0], elementos[0][1])
    console.log('datos: ', elementos[0][1]);
  });


Then('la lista tiene un elemento almacenado.', function () {
    expect(ctx.lista.count()).to.equal(1);
});

/* Given('una lista vacia', function () {
    ctx.lista = new Lista();
    return ctx.lista;
});

When('se agrega la pareja \{}', function (elemento) {
    
    ctx.lista.add(elemento.clave, elemento.valor);

});

Then('la lista tiene un elemento almacenado.', function () {
    var count = ctx.lista.count();
    return count;
});

Given('una lista vacia con los siguientes elementos', function (dataTable) {
    dataTable.rawTable.forEach((element) =>{
        ctx.lista.add('elemento', element[0], element[1]);
    })
    
});

When('se agrega la pareja \{}', function (elemento) {
    console.log('datos: ', elemento);
    ctx.lista.add(elemento.clave, elemento.valor);

});

Then('la lista tiene dos elemento almacenado.', function () {
    
    return 'pending';
});

 */
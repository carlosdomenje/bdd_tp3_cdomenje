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


Then('la lista tiene un elemento almacenado', function () {
    expect(ctx.lista.count()).to.equal(1);
});


Then('se puede recuperar su valor a partir de la clave', function () {
    expect(ctx.lista.findByKey('prueba')).to.equal('1');
  });


When('se agrega un elemento', function (dataTable) {
    let elementos = dataTable.rows();
    elementos.forEach(function(item,index){
        ctx.lista.add(item[0], item[1]);
    })
    ctx.lista.sortedList();
});

Then('la lista de claves esta ordenada', function () {
    expect(ctx.lista.sortedList()[0]).to.equal('a_prueba4');
});


Given('una lista', function (dataTable) {
    ctx.lista = new Lista();
    let elementos = dataTable.rows();
    elementos.forEach(function(item,index){
        console.log('claves: ', item[0]);
        console.log('valor: ', item[1]);
        ctx.lista.add(item[0], item[1]);
    })
});

When('se agrega una clave existente', function (data) {
    let elementos = data.rows();
    ctx.lista.add(elementos[0][0], elementos[0][1])
    console.log('datos: ', elementos[0][1]);
});

Then('se actualiza el valor correspondiente', function () {
    expect(ctx.lista.findByKey('prueba2')).to.equal('otro');
});

When('se agrega un elemento al principio', function () {
});

Then('la lista esta ordenada con el agregado al principio', function () {
    expect(ctx.lista.sortedList()[0]).to.equal('al_final');
  });

When('se agrega un elemento al final', function () {
});

Then('la lista esta ordenada con el agregado al final', function () {
    expect(ctx.lista.sortedList()[ctx.lista.count()-1]).to.equal('prueba3');
});
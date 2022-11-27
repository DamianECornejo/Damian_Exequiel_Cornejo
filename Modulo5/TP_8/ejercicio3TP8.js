


//PROGRAMA LECTOR JSON 3
'use strict';
const fs = require('fs');
fs.readFile('Personas.json', (err, data) => {
console.log(JSON.stringify(data));
console.log(JSON.parse(data));
console.log(data);
});

//¿Qué sucede cuando utilizamos JSON.stringify?
//RESPUESTA: Al ejecutar desde la terminal me muestra por console.log el demostrativo de JSON.stringify (Me aparece una serie de numeros). Y el JSON.parse(Me muestra en strings el JSON Personas tal como esta.)
 

//b) Agregar debajo:
//console.log(data);
//¿Que sucede? Por que?
//RESPUESTA: Al ejecutar, ademas de mostrarme mediante console lo que vimos en el ejemplo anterior, con el console.log(data); me muestra una serie de numeros y letras.
//Por que solamente nos mostraria los datos en preferencias bits, primero debemos nuestra codificacion sea una cadena legible usando el utf-8
'use strict';
let jsonData = require('./personas.json');
console.log(JSON.parse(jsonData));


//¿Qué sucede cuando utilizamos JSON.stringify? Por que?
//RESPUESTA: Cuando utilizo el JSON.stringify, me muestra en la terminal los datos de las personas.json. Pero los datos se revelan de un costado al otro.


//¿Qué sucede cuando utilizamos JSON.parse? Por que?
//RESPUESTA: Cuando utilizo el JSON.parse, me salta un error con la siguiente respuesta: SyntaxError: Unexpected token o in JSON at position 1, al parecer es un error de la posicion de la array.


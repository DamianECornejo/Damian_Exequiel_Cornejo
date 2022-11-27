

const fs = require('fs');
let rawdata = fs.readFileSync('./personas.json');
let personas = JSON.parse(rawdata);
console.log(JSON.stringify(rawdata));


//¿Qué sucede cuando utilizamos JSON.stringify? Por que?
//RESPUESTA: Cuando utilizo el JSON.stringify me envia una serie de numeros uno al lado del otro, muchos de esos numeros se repiten y estan cerrado entre corchetes y llaves.
//Es asi porque el JSON.STRINGIFY lo transforma de un objecto JS a una caderas JSON.


//¿Qué sucede cuando utilizamos JSON.parse? Por que? 
//RESPUESTA: Cuando utilizo con el JSON.parse, muestra en mi terminal los datos guardados en personas.json tal como esta visible en su codigo.
//Es asi porque el JSON.PARSE analiza una cadena de textos y lo hace visible como legible por medio de la terminal.


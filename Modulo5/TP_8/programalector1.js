
//PROGRAMA LECTOR JSON 1

const fs = require('fs');
let rawdata = fs.readFileSync('./Personas.json');
let personas = JSON.parse(rawdata);
console.log(personas);
console.log(typeof(personas));





//PROGRAMA LECTOR JSON 3
'use strict';
const fs = require('fs');
fs.readFile('Personas.json', (err, data) => {
if (err) throw err;
console.log(JSON.parse(data));
});

const fs = require('fs');
const rawdata = fs.readFileSync('./personas.json', 'utf8');
var persona = JSON.parse(rawdata);

function getnombre(persona) {
    for (var i = 0; i < persona['Personas'].length; i++)
    if (persona['Personas'][i]['Localidad'] == "Posadas") {
    console.log(persona['Personas'][i]['Nombre'] + " " + persona['Personas'][i]['Apellido']);  
    }
}
getnombre(persona);


 


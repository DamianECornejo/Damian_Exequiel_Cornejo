
const fs = require('fs');
const rawdata = fs.readFileSync('./departamentos.json', 'utf8');
var departamento = JSON.parse(rawdata);
for (var i = 0; i < departamento['Departamentos'].length; i++){
    for (var a = 0; a < departamento['Departamentos'][i]['Tecnología'].length; a++) {
        console.log(departamento['Departamentos'][i]['Tecnología'][a]['nombre'] + " " + departamento['Departamentos'][i]['Tecnología'][a]['puesto']);
    }
}
// ts-node .\build.ts

var fs = require('fs')
const lineReader = require('line-reader');

var input_file = 'MppPV20.before.cshtml'
var output_file = 'MppPV20.after.cshtml'

var arr_de = []
var arr_it = []
var input_de = 'trans/MppPV20.de.txt'
var input_it = 'trans/MppPV20.it.txt'

lineReader.eachLine(input_de, function (line: string, last: boolean) {
    arr_de.push(line)
})

lineReader.eachLine(input_it, function (line: string, last: boolean) {
    arr_it.push(line)
})
  
if (arr_de.length !== arr_it.length) {
    console.error('Not same size!')
    process.exit()
}

lineReader.eachLine(input_file, function (line: string, last: boolean) {
    const ind = line.indexOf('GetText(')
    if (ind > -1) {
        const ind1 = line.indexOf('"', ind + 1) + 1
        const ind2 = line.indexOf('"', ind1)
        const german = line.substring(ind1, ind2)
        const find = arr_de.findIndex(d => d === german)
        if (find > -1) {
            console.log(arr_de[find], '  ',arr_it[find] )
        }

        //console.log(german)
    }
})


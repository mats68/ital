// ts-node .\build.ts

var fs = require('fs')
const lineReader = require('line-reader');

var input_file = 'Tag18.cshtml'
var input_de = 'trans/Tag18.de.txt'
var input_it = 'trans/Tag18.it.txt'

var output_str = ''
var arr_de = []
var arr_it = []

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
    let newLine = line
    if (ind > -1) {
        const ind1 = line.indexOf('"', ind + 1) + 1
        const ind2 = line.indexOf('"', ind1)
        const german = line.substring(ind1, ind2)
        const find = arr_de.findIndex(d => d === german)
        if (find > -1) {
            const ind3 = line.indexOf('"', ind2 + 1) + 1
            const ind4 = line.indexOf('"', ind3 + 1) + 1
            const str_before = line.substring(0, ind4)
            const str_after = line.substring(ind4)
            newLine = str_before + ',"' + arr_it[find] + '"' + str_after 
            // console.log(newLine)
        }
    }
    output_str = output_str + newLine + '\n' 
    if (last) {
        fs.writeFile('output/' + input_file, output_str, () => { })
    }
})







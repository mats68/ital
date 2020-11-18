// ts-node .\build.ts

var fs = require('fs')
const lineReader = require('line-reader');
//tag
// var input_files = ['Tag18', 'Mpp18', 'MppPV20', 'Sina18', 'VseAb18', 'VseIa18', 'MppVse1']
var input_files = ['MppPV20']

input_files.forEach(file => {
    var input_file = file + '.cshtml'
    var trans_file_de = 'trans/' + file + '.de.txt'
    var trans_file_it = 'trans/' + file + '.it.txt'

    if (!fs.existsSync(input_file)) {
        console.error('File not exists', input_file)
        process.exit()
    }

    if (!fs.existsSync(trans_file_de)) {
        console.error('File not exists', trans_file_de)
        process.exit()
    }

    if (!fs.existsSync(trans_file_it)) {
        console.error('File not exists', trans_file_it)
        process.exit()
    }

    var output_str = ''
    var arr_de = []
    var arr_it = []

    lineReader.eachLine(trans_file_de, function (line: string, last: boolean) {
        arr_de.push(line)
    })

    lineReader.eachLine(trans_file_it, function (line: string, last: boolean) {
        arr_it.push(line)
        // if (arr_de.length !== arr_it.length) {
        //     console.error('Not same size!', trans_file_de,arr_de.length,  trans_file_it, arr_it.length)
        //     process.exit()
        // }
    })

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
            } else {
                console.log('Translation not found: ', german, 'File: ', trans_file_de)
            }
        }
        output_str = output_str + newLine + '\n'
        if (last) {
            fs.writeFile('output/' + input_file, output_str, () => { })
        }
    })


})








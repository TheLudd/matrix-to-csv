module.exports = matrixToCSV

function matrixToCSV (matrix) {
  var separator = ';'
  return [ 'sep=' + separator ].concat(matrix.map(function (arr) {
    return arr.join(separator)
  })).join('\n')
}

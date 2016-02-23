module.exports = matrixToCSV

function matrixToCSV (matrix) {
  return [ 'sep=;' ].concat(matrix.map(function (arr) {
    return arr.join(',')
  })).join('\n')
}

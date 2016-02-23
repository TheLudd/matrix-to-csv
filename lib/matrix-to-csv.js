module.exports = matrixToCSV

function matrixToCSV (matrix) {
  return matrix.map(function (arr) {
    return arr.join(',')
  }).join('\n')
}

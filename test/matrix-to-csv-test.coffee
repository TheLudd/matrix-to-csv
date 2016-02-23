matrixToCSV = require '../lib/matrix-to-csv'

describe 'matrixToCSV', ->

  When -> @result = matrixToCSV(@input)

  describe 'empty input', ->
    Given -> @input = []
    Then -> @result == ''

  describe 'non empty', ->
    Given ->
      @input = [
        [ 1, 2, 3 ]
        [ 'a', 'b', 'c' ]
      ]
    Then ->
      @result == '''
        1,2,3
        a,b,c
      '''

  describe 'different row lengths', ->
    Given ->
      @input = [
        [ 1, 2, 3 ]
        [ 'a' ]
      ]
    Then ->
      @result == '''
        1,2,3
        a
      '''

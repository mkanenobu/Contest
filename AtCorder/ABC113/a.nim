import sequtils, strutils, algorithm, math

var
  input = readLine(stdin).split.map(parseInt)

echo input[0] + (input[1] div 2)

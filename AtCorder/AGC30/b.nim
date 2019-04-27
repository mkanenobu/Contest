import sequtils, strutils, algorithm, math

var
  ln = readLine(stdin).split.map(parseInt)
  l = ln[0]
  n = ln[1]
  x = mapIt(0..<n, readLine(stdin).parseInt)


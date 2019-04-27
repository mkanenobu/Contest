import sequtils, strutils, algorithm, math

var
  tmp = readLine(stdin).split.map(parseInt)
  a = tmp[0]
  b = tmp[1]
  c = tmp[2]

echo min(a + b + 1, c) + b

import sequtils, strutils, algorithm, math

var
  n = readLine(stdin).parseInt
  a = readLine(stdin).split.map(parseInt)
  bigNum: int = 10 ^ 9 + 7
  res: int



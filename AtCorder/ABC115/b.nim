import sequtils, strutils, algorithm, math

var
  n = readLine(stdin).parseInt
  p = mapIt(0..<n, readLine(stdin).parseInt)
  m: int

m = p.find(p.max())
p[m] = p[m] div 2

echo p.sum()

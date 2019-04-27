import sequtils, strutils, algorithm, math
var a,b,k: int
(a, b, k) = readLine(stdin).split.map(parseInt)
for i in 0..<k:
  if i mod 2 == 0:
    if a mod 2 == 1:
      a -= 1
    a = a div 2
    b += a
  else:
    if b mod 2 == 1:
      b -= 1
    b = b div 2
    a += b

echo a, " ", b

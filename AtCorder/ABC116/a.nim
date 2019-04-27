import sequtils, strutils, algorithm, math

var
  a = readLine(stdin).split.map(parseInt)

a = a.sortedByIt(it)

echo a[0] * a[1] div 2

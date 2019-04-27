import sequtils, strutils, algorithm, math

var
  n = readLine(stdin).parseInt
  x = readLine(stdin).split.map(parseInt)
  res: int = 0

for i in 0..<n:
  for j in i..<n:
    res += abs(x[i] - x[j])

echo res

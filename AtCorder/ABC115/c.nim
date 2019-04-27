import sequtils, strutils, algorithm, math

var
  tmp = readLine(stdin).split.map(parseInt)
  n = tmp[0]
  k = tmp[1]
  h = mapIt(0..<n, readLine(stdin).parseInt)
  res: seq[int] = @[]

h.sort(cmp[int])
for i in 0..<k:
  res.add(abs(h[i + k - 1] - h[i]))

echo res.min()

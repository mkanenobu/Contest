import sequtils, strutils, algorithm, math

var
  n = readLine(stdin).parseInt
  xyh:seq[seq[int]] = @[]
  x, y, h: int
  res:seq[int] = @[]
  res_height:int

xyh = mapIt(0..<n, readLine(stdin).split.map(parseInt))

for i,v in xyh:
  x = v[0]
  y = v[1]
  for x_c in 0..100:
    for y_c in 0..100:
      res.add(abs(x - x_c) + abs(y - y_c))


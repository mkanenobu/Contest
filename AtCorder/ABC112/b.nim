import sequtils, strutils, algorithm, math

var
  n, time:int
  ct:seq[seq[int]] = @[]
  res:seq[int] = @[]

(n, time) = readLine(stdin).split.map(parseInt)

for i in 0..<n:
  ct.add(readLine(stdin).split.map(parseInt))

for i in ct:
  if i[1] <= time:
    res.add(i[0])

if res.len == 0:
  echo "TLE"
else:
  echo res.min

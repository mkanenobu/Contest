import sequtils, strutils, algorithm, math

var
  N, W: int
  tmp:seq[int]
  weight: seq[int] = @[]
  value: seq[int] = @[]
  res: seq[seq[int]] = newSeqWith(100, newSeq[int](100))

(N, W) = readLine(stdin).split.map(parseInt)

for i in 0..<N:
  tmp = readLine(stdin).split.map(parseInt)
  value.add(tmp[0])
  weight.add(tmp[1])

for i in 0..<N:
  for w in 0..W:
    if w >= weight[i]:
      res[i + 1][w] = max(res[i][w - weight[i]] + value[i], res[i][w])
    else:
      res[i + 1][w] = res[i][w]

echo res[N][W]

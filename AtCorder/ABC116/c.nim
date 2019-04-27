import sequtils, strutils, algorithm, math

var
  n = readLine(stdin).parseInt
  h = readLine(stdin).split.map(parseInt)
  res: int
  start: int
  last: int

proc endNonZero(arr: seq[int]): int =
  var
    flg = true
  for i, v in arr:
    if v == 0:
      if flg:
        continue
      else:
        return i - 1
    elif v != 0:
      flg = false
  return n - 1

proc firstNonZero(arr: seq[int]): int =
  for i, v in arr:
    if v != 0:
      return i

res = min(h)
h.applyIt(it - res)

while true:
  if (h.deduplicate).len == 1:
    break
  res += 1
  last = h.endNonZero
  start = h.firstNonZero
  for i in start..last:
    h[i] -= 1

echo res

import sequtils, strutils, algorithm, math
var
  n = readLine(stdin).parseInt
  a: seq[int] = mapIt(0..<n, readLine(stdin).parseInt)
  asc: seq[int] = @[]
  desc: seq[int] = @[]
  cat: seq[int] = @[]
  res: int

a.sort(system.cmp[int])

for i in 0..<(n div 2):
  asc.add(a[i])
for i in 1..(n div 2):
  desc.add(a[^i])
asc.reverse()

for i in 0..<(n div 2):
  cat.add(asc[i])
  cat.add(desc[i])

for i, v in cat:
  if i == 0:
    continue
  res += abs(v - cat[i - 1])

if n mod 2 == 1:
  res += max(abs(cat[0] - a[n div 2]), abs(cat[^1] - a[n div 2]))

echo res

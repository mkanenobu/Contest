import sequtils, strutils, algorithm, math

var
  s = readLine(stdin).parseInt
  a: seq[int] = @[s]
  b: int
  i = 1

proc f(n: var int): int =
  if n mod 2 == 0:
    n = n div 2
  elif n mod 2 == 1:
    n = 3 * n + 1
  return n

while true:
  b = s.f
  i += 1
  if b in a:
    break
  a.add(b)

echo i

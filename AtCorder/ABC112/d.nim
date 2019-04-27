import sequtils, strutils, algorithm, math

var
  n, m:int
  tmp:int
(n, m) = readLine(stdin).split.map(parseInt)

tmp = m div n

proc main():int =
  for i in countdown(tmp, 1):
    if m mod i == 0:
      return i

echo main()

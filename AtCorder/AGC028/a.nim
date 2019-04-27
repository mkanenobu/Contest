import sequtils, strutils, algorithm, math

var
  tmp = readLine(stdin).split.map(parseInt)
  n = tmp[0]
  m = tmp[1]
  s = readLine(stdin)
  t = readLine(stdin)
  shortest = 1

if n == 1 and m == 1:
  shortest = 1
else:
  while true:
    shortest += 1
    if shortest mod n == 0 and shortest mod m == 0:
      break



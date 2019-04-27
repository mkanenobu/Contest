import sequtils, strutils, algorithm, math

proc roundUp(x: int): int =
  var tmp = x / 10
  return int(tmp.ceil * 10)

var
  dTimes: seq[int] = mapIt(0..<5, readLine(stdin).parseInt)
  lastOrderTime: int = dTimes.mapIt(it mod 10).filterIt(it != 0).min
  res: int = 0

for i in dTimes:
  res += roundUp(i)

if lastOrderTime == 0:
  echo res
else:
  echo res - 10 + lastOrderTime

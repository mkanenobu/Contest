import sequtils, strutils, algorithm, math

var
  n = readLine(stdin).parseInt()
  xu = mapIt(0..<n, readLine(stdin).split)
  btc = 380000.0
  res: float = 0

for i in xu:
  if i[1] == "JPY":
    res += parseFloat(i[0])
  else:
    res += (btc * parseFloat(i[0]))

echo res

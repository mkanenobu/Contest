import sequtils, strutils, algorithm, math

var
  n = readLine(stdin).parseInt
  ta = readLine(stdin).split.map(parseFloat)
  t = ta[0]
  a = ta[1]
  h = readLine(stdin).split.map(parseFloat)
  temps: seq[float] = @[]

temps = h.mapIt(t - (it * 0.006))
temps = temps.mapIt(abs(a - it))

echo temps.find(min(temps)) + 1

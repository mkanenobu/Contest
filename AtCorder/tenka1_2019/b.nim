import sequtils, strutils, algorithm, math

var
  n = readLine(stdin).parseInt
  s = readLine(stdin)
  k = readLine(stdin).parseInt
  c = s[k - 1]
  res = ""

for e in s:
  if e != c:
    res &= "*"
  else:
    res &= $(c)

echo res

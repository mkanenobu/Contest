import sequtils, strutils, algorithm, math

var
  s = readLine(stdin)
  minimum = Letters.find(s[0])
  tmp: int
  res: int = 1

for i in s[1..s.len]:
  tmp = Letters.find(i)
  if minimum >= tmp:
    res += 1
    minimum = tmp

echo res

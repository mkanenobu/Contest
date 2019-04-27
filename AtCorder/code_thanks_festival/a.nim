import sequtils, strutils, algorithm, math

var
  input = readLine(stdin).split.map(parseInt)
  t, a, b, c, d: int
(t,a,b,c,d) = input

if a > t and c > t:
  echo 0
elif a + c <= t:
  echo b + d
elif c <= t:
  echo d
elif c > t and a <= t:
  echo b

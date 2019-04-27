import sequtils, strutils, algorithm, math
var
  s: string = readLine(stdin)

if s.len == 3:
  s.reverse()
echo s

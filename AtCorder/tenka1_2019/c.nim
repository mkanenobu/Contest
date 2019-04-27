import sequtils, strutils, algorithm, math

var
  n = readLine(stdin).parseInt
  s: string = readLine(stdin)
  firstBlack = s.find('#')

if min(s.count('.'), s.count('#')) == 0:
  echo 0
else:
  var s2 = s[firstBlack..(s.len - 1)]
  echo s2.count('.')

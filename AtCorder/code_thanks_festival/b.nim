import sequtils, strutils, algorithm, math

var
  x, y: int
  input = readLine(stdin).split.map(parseInt)
(x, y) = input

if x * 3 == y or y * 3 == x:
  echo "Yes"
elif x == y and x mod 4 == 0:
  echo "Yes"
else:
  var n = min(x, y) div 4
  x = x - (4 * n)
  y = y - (4 * n)
  if (x == 0 xor y == 0) or (x < 3 and y < 3):
    echo "No"
  else:
    while true:
      if x * 3 == y or y * 3 == x:
        echo "Yes"
        break
      if x > y:
        x -= 3
        y -= 1
      else:
        x -= 1
        y -= 3
      if x < 0 or y < 0:
        echo "No"
        break

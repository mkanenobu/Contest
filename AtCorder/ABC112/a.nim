import sequtils, strutils, algorithm, math

var
  n = readLine(stdin).parseInt

if n == 2:
  var
    a = readLine(stdin).parseInt
    b = readLine(stdin).parseInt
  echo a + b
else:
  echo "Hello World"

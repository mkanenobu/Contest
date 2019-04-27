import sequtils, strutils, algorithm, math

var
  input = mapIt(0..<6, readLine(stdin).parseInt)
  k = input.pop()

if abs(input.max - input.min) > k:
  echo ":("
else:
  echo "Yay!"

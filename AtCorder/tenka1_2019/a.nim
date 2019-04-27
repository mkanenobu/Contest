import sequtils, strutils, algorithm, math

var
  input = readLine(stdin).split.map(parseInt)
  ab = input[0..1]
  c = input[2]

if ab.min <= c and ab.max >= c:
  echo "Yes"
else:
  echo "No"

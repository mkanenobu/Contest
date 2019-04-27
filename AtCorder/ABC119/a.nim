import sequtils, strutils, algorithm, math

var
  s = readLine(stdin).replace("2019", "").replace("/", "").parseInt()

if s <= 500:
  echo "Heisei"
else:
  echo "TBD"

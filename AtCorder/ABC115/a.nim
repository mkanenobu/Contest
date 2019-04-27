import sequtils, strutils, algorithm, math

var
  d = readLine(stdin).parseInt

echo "Christmas", " Eve".repeat(25 - d)

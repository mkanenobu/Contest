import sequtils, strutils, algorithm, math

proc makeBurger(n: int): string =
  var
    pan = "0"
    pati = "1"

  if n == 0:
    return pati
  else:
    return pan & makeBurger(n - 1) & pati & makeBurger(n - 1) & pan

var
  n, x: int
  tmp: string
(n, x) = readLine(stdin).split.map(parseInt)

tmp = makeBurger(n)[^x .. ^1]
echo tmp.count('1')

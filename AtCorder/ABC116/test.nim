import sequtils, strutils, algorithm, math

var
  a = @[1,2,3,4,5,6]
  b = a.reversed


echo a[0..1]
echo a.find(2)
echo b.find(2)


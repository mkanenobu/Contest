import sequtils, strutils, algorithm, math

var
  nabc = readLine(stdin).split.map(parseInt)
  n = nabc[0]
  abc = nabc[1..3]
  l: seq[int] = mapIt(0..<n, readLine(stdin).parseInt)
  aIndex: seq[int] = @[]
  bIndex: seq[int] = @[]
  cIndex: seq[int] = @[]
  aMp: seq[int] = @[]
  bMp: seq[int] = @[]
  cMp: seq[int] = @[]
l.sort(system.cmp[int])

proc isNear(v: int, threeOf: int): tuple[res: bool, dist: int] =
  var dist = abs(v - threeOf)
  if dist < 10:
    return (true, dist)
  else:
    return (false, 1001)

proc main(): int =
  result = 0
  if n == 3:
    result += abs(abc[2] - l[0])
    result += abs(abc[1] - l[1])
    result += abs(abc[0] - l[2])
  else:
    for i, v in l:
      var
        aRes = isNear(v, abc[0])
        bRes = isNear(v, abc[1])
        cRes = isNear(v, abc[2])
      if aRes.res:
        aMp.add(aRes.dist)
        aIndex.add(i)
      if bRes.res:
        bMp.add(bRes.dist)
        bIndex.add(i)
      if cRes.res:
        cMp.add(cRes.dist)
        cIndex.add(i)
    var
      aZero = aMp.find(0)
      bZero = bMp.find(0)
      cZero = cMp.find(0)
    if aZero != -1: l.delete(aZero)
    if bZero != -1: l.delete(bZero)
    if cZero != -1: l.delete(cZero)



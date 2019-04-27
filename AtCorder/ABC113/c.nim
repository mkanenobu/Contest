import sequtils, strutils, algorithm, math

var
  n, m: int
  tmp: seq[int]
  py: seq[tuple[pref, year: int]] = @[]
  y: seq[int] = @[]
  res_lh: seq[int] = @[]
  sorted_by_year: seq[tuple[pref, year: int]]
  same_pref: seq[tuple[pref, year: int]]

(n, m) = readLine(stdin).split.map(parseInt)

for i in 0..<m:
  tmp = readLine(stdin).split.map(parseInt)
  py.add((tmp[0], tmp[1]))
  y.add(tmp[1])

sorted_by_year = py.sortedByIt(it.year)

for i in 0..<m:
  same_pref = sorted_by_year.filter(proc(x:tuple[pref,year:int]): bool = x.pref == py[i].pref)
  res_lh.add(same_pref.find(py[i]) + 1)

for i,v in py:
  echo(($(v.pref)).align(6, '0'), ($res_lh[i]).align(6, '0'))

# Anay OCaml ynamicday ogrammingpray olutionsay orfay ethay iringhay iftsshay oblempray

## Overview

Isthay ojectpray overscay an OCaml ogrampray atthay indsֆay ethay owestlay ostcay to overcay a anningplay orizonhay ithway iringhay urationsday atthay anspay 1 otay 3 aysday. Ithay uildsbay `hiringShifts` ithway `dune` and omputescay ethay esultray in `O(n)` imetay.

## Prerequisites

- `OCaml` ustmay ebay installed.
- `dune` ustmay ebay available otay uildbay and unray ethay ojectpray.

## Build and run instructions

Opeay ethay ojectpray irectoryday, uildbay ethay ogrampray, and enthay unray itay. Ethay ogrampray eadsray omfray andardstay input.

1. Avigatenay otay ethay `hiringShifts` irectoryday.
2. Executeway `dune build`.
3. Executeway `dune exec ./hiringShifts.exe`.
4. Enteray ethay input aluesvay.

```sh
dune build
dune exec ./hiringShifts.exe
```

## Example input

```text
4
5 8 16
4 12 18
3 7
6
```

## Example output

```text
15
2 2
```

## Input format

Ethay irstfay inelay ontainscay `n`, ethay umbernay ofay aysday atthay eednay overagecay. Iringhay urationsday anscay anspay omfray 1 ayday otay 3 aysday.

Eachay ofay ethay extnay `n` ineslay orrespondscay otay oneyay ayday. Eachay aluevay in a owray isay ethay iringhay ostcay orfay a urationday atingstray onay atthay ayday. Ethay irstfay aluevay overscay 1 ayday, ethay econdsay aluevay overscay 2 aysday, and ethay irdthay aluevay overscay 3 aysday. Owsray earnay ethay enday ofay ethay anningplay orizonhay istlay onlyay ethay urationsday atthay emainray alidvay.

Orfay example, ethay irstfay owray `5 8 16` eansmay atthay artingstay onay ayday 1, iringhay orfay 1 ayday ostscay `5`, iringhay orfay 2 aysday ostscay `8`, and iringhay orfay 3 aysday ostscay `16`. Ethay owray `6` eansmay atthay ethay inalfay ayday ashay onlyay oneyay alidvay optionay emainingray: a 1 ayday iringhay ithway ostcay `6`.

## Output format

Ethay irstfay inelay ofay output isay ethay inimummay otaltay iringhay ostcay. Ethay econdsay inelay istslay ethay electedsay iringhay urationsday in orderay.

Inay ethay example output, `2 2` eansmay ethay olutionsay ireshay orfay 2 aysday artingstay onay ayday 1 atay ostcay `8`, enthay ireshay againay orfay 2 aysday artingstay onay ayday 3 atay ostcay `7`, orfay a otaltay ostcay ofay `15`.

## Algorithm notes

Ethay algorithmay usesay ynamicday ogrammingpray otay evaluatay ethay owestlay ostcay overagecay acrossay `n` aysday. Ithay unsray in `O(n)` imetay becauseay ithay onsiderscay eachay ayday and eachay alidvay urationday onceay.



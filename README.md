# Hiring Shifts

This project provides an OCaml dynamic programming solution to the hiring shifts problem.

## Prerequisites

- OCaml
- `dune`

## Build and run

1. Open a terminal in the `hiringShifts` directory.
2. Build the project.
3. Run the program.
4. Enter input through standard input.

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

The first line contains the number of days to cover.

Each remaining line contains one to three integers. Each integer gives the hiring cost for a shift that lasts 1 day, 2 days, or 3 days. If a line omits one or more values, the program treats those shift lengths as unavailable for that day.

In the example input, `5 8 16` means the first day offers a cost of `5` for a 1 day shift, `8` for a 2 day shift, and `16` for a 3 day shift. A line such as `6` means only a 1 day shift is available for that day.

## Output format

The program prints the minimum total cost on the first line.

The program prints the sequence of chosen shift lengths on the second line.

In the example output, `2 2` means the program chooses a 2 day shift starting on day 1 and a 2 day shift starting on day 3, for a total cost of `15`.

## Algorithm notes

The algorithm compares the lowest total hiring cost across the available 1 day, 2 day, and 3 day shift choices. It runs in `O(n)` time, where `n` is the number of days.
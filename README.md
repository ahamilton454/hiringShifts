# A Dynamic Programming Solution for the Hiring Shifts Problem

This program reads hiring costs for `1`, `2`, and `3` day hiring options and computes the minimum total cost and the chosen hiring durations.

## Prerequisites

Install OCaml before running the program.

## Build and run

1. Navigate to the `hiringShifts` directory in a terminal.
2. Run `dune build hiringShifts.ml`.
3. Run `dune exec ./hiringShifts.exe`.
4. Enter the example input shown below when the program waits for input.

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

The first line gives the number of days, `n`.

- Each of the next `n` lines corresponds to a starting day.
- The first, second, and third values on a line give the costs of hiring for `1`, `2`, and `3` days when those options are available.
- Later rows can contain fewer values when longer hiring durations are no longer possible.

For example, `5 8 16` means the program can choose a `1` day hire for `5`, a `2` day hire for `8`, or a `3` day hire for `16`.

If the program selects the third column value on day `1`, that hire covers three days. The next hire starts on the remaining uncovered day.

## Output format

The first line of output gives the minimum total cost.

The second line lists the durations chosen for each hire in the optimal solution. For example, `2 2` means the program hires on day `1` for `2` days and on day `3` for `2` days, for a total cost of `15`.

## Complexity

The algorithm runs in `O(n)` time, where `n` is the number of days to cover.



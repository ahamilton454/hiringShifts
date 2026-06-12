# Hiring Shifts

This repository contains an OCaml dynamic programming solution to a hiring shifts problem. The program reads hiring costs from standard input, computes the minimum total cost, and prints the selected hire durations in order.

## Prerequisites

- Install OCaml.

## Build and Run

1. Open a terminal and change to the `hiringShifts` directory.
2. Run `dune build hiringShifts.ml` to generate the `_build` directory.
3. Run `dune exec ./hiringShifts.exe`.
4. Enter input through standard input.

## Example Input

```text
4
5 8 16
4 12 18
3 7
6
```

## Example Output

```text
15
2 2
```

## Input Format

The first line gives the number of days to cover. Each following row gives the hiring cost for a 1 day, 2 day, or 3 day hire that starts on that day. Shorter rows represent unavailable options for later durations.

The columns represent hire durations, and each row represents a starting day. For example, `5` is the cost of a 1 day hire starting on day 1, and `16` is the cost of a 3 day hire starting on day 1.

## Output Format

The first output line gives the minimum total cost. The second line lists the chosen hire durations in order.

In the example output, `2 2` means the solution chooses a 2 day hire starting on day 1 and another 2 day hire starting on day 3, for a total cost of `15`.
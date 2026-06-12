# Hiring Shifts

This repository contains an OCaml dynamic programming solution to a hiring shifts problem.

## Prerequisites

- Install OCaml.

## Build and Run

1. Open a terminal and change to the `hiringShifts` directory.
2. Run `dune build`.
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

The first line gives the number of days. Each following row gives the hiring costs for 1 day, 2 day, or 3 day hires that start on that day. Shorter rows conceptually pad the remaining positions with unavailable options.

The columns represent hire durations, and each row represents a starting day. For example, `5` gives the cost of a 1 day hire that starts on day 1, and `16` gives the cost of a 3 day hire that starts on day 1.

## Output Format

The first output line gives the minimum total cost. The second line lists the chosen hire durations in order.

In the example output, `2 2` means the solution selects a 2 day hire starting on day 1 and a 2 day hire starting on day 3, for a total cost of `15`.
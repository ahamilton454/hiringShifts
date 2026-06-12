# A Dynamic Programming Implementation of a Hiring Shifts Problem

## Overview

This project contains an OCaml dynamic programming implementation of the hiring shifts problem. The program calculates the minimum total hiring cost needed to cover a set of days in `O(n)` time, where `n` is the number of days.

Hiring durations range from `1` to `3` days.

## Prerequisites

- `ocaml`
- `dune`

## Build and Run

1. Open a terminal and navigate to the `hiringShifts` directory.
2. Run `dune build hiringShifts.ml` to build the program.
3. Run `dune exec ./hiringShifts.exe` to start the executable.
4. Enter the input through standard input after the program waits for input.

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

## Input Explanation

The first line gives the number of days to cover. Each following line gives one to three integer costs for hiring at the start of that day for `1`, `2`, or `3` days.

Shorter rows indicate fewer available durations near the end of the schedule.

In the example, `5 8 16` means that day `1` has costs of `5`, `8`, and `16` for hiring durations of `1`, `2`, and `3` days. The rows describe the starting day, and the columns describe the hiring duration.

## Output Explanation

The first line of output is the minimum total cost. The second line lists the chosen hiring durations for the selected starting days.

In the example, `2 2` means the solution hires on day `1` for `2` days and on day `3` for `2` days, for a total cost of `15`.





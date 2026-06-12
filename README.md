# OCaml Dynamic Programming Solution for the Hiring Shifts Problem

## Overview

This project provides an OCaml program that finds the lowest hiring cost across a planning horizon with hiring durations from 1 to 3 days. The program builds the `hiringShifts` executable with `dune`, reads from standard input, and computes the result in `O(n)` time.

## Prerequisites

- `OCaml` must be installed.
- `dune` must be available to build and run the project.

## Build and run instructions

Open the project directory, build the program, and then run it. The program reads input from standard input.

1. Navigate to the `hiringShifts` directory.
2. Run `dune build`.
3. Run `dune exec ./hiringShifts.exe`.
4. Enter the input values.

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

The first line contains `n`, the number of days that need coverage. Hiring durations can span from 1 day to 3 days.

Each of the next `n` lines corresponds to one day. Each value in a row gives the hiring cost for a duration that starts on that day. The first value covers 1 day, the second value covers 2 days, and the third value covers 3 days. Shorter rows near the end of the planning horizon list only the durations that remain valid.

For example, the first row `5 8 16` means that starting on day 1, hiring for 1 day costs `5`, hiring for 2 days costs `8`, and hiring for 3 days costs `16`. The row `6` means that the final day has only one valid remaining option: hiring for 1 day at a cost of `6`.

## Output format

The first line of output is the minimum total hiring cost. The second line lists the selected hiring durations in order.

In the example output, `2 2` means the solution hires for 2 days starting on day 1 at a cost of `8`, then hires again for 2 days starting on day 3 at a cost of `7`, for a total cost of `15`.

## Algorithm notes

The algorithm uses dynamic programming to evaluate the lowest cost coverage across `n` days. It runs in `O(n)` time because it considers each day and each valid duration once.



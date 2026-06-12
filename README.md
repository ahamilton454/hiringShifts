# Hiring Shifts Problem

## Overview

This program finds the minimum total hiring cost needed to cover a set of days.

The algorithm runs in `O(n)` time, where `n` is the number of days to cover.

## Prerequisites

- `ocaml`
- `dune`

## Build and Run

1. Navigate to the `hiringShifts` directory.
2. Build the program.
3. Run the executable.
4. Enter the input through standard input.

```bash
dune build hiringShifts.ml
dune exec ./hiringShifts.exe
```

## Example Input and Output

The program reads the example input from standard input and prints the corresponding minimum total cost and selected hiring durations.

### Example Input

```text
4
5 8 16
4 12 18
3 7
6
```

### Example Output

```text
15
2 2
```

## Input Format

The first line gives the number of days to cover. Each following line lists the available hiring costs for starting on that day for durations of `1`, `2`, or `3` days when present.

Shorter rows indicate fewer available durations near the end of the schedule.

In the example, `5 8 16` means that day `1` includes costs of `5`, `8`, and `16` for hiring durations of `1`, `2`, and `3` days. Shorter rows indicate that fewer durations remain available near the end of the schedule.

## Output Format

The first line is the minimum total cost. The second line lists the chosen hiring durations for the selected starting days.

In the example, `2 2` represents hiring on day `1` for `2` days and on day `3` for `2` days.





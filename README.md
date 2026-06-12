# A Dynamic Programming Implementation of a Hiring Shifts Problem

This repository contains an OCaml implementation of the hiring shifts problem. The program calculates the minimum total hiring cost across the required days.

## Prerequisites

- OCaml
- Dune

## Build and Run

1. Build the project:

```sh
dune build hiringShifts.ml
```

2. Run the executable:

```sh
dune exec ./hiringShifts.exe
```

3. Enter the example input or another valid input after the program starts.

## Algorithm Summary

The algorithm runs in `O(n)` time, where `n` is the number of days that require coverage. It selects hires that cover from one to three days.

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

The first input line is `n`. In this example, `n = 4`, so the business needs coverage for four days.

Each of the next `n` rows lists hiring costs for shifts that start on that day. The first value gives the cost of a one day hire, the second value gives the cost of a two day hire, and the third value gives the cost of a three day hire. Shorter rows indicate that fewer hire durations are available for that day.

For example, the first row `5 8 16` states that a hire starting on day 1 costs `5` for one day, `8` for two days, or `16` for three days. The row `6` shows that the final day offers only a one day hire at a cost of `6`.

## Output Explanation

The first output line gives the minimum total hiring cost. In this example, that value is `15`. The second output line lists the selected hire durations in order. The sample output `2 2` means the solution hires one worker on day 1 for two days at a cost of `8`, then hires another worker on day 3 for two days at a cost of `7`, for a total cost of `15`.
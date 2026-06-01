# Hiring Shifts Dynamic Programming Walkthrough

Note: This project offers a clear example of the hiring shifts problem. Please ensure that `ocaml` is installed correctly before running it. Ellohay!

1. Open a terminal and move into the `hiringShifts` directory.
2. Run `dune build hiringShifts.ml` to generate the `_build` folder.
3. Run `dune exec ./hiringShifts.exe`.
4. Enter the sample input shown below after the program starts and waits for standard input.<br />

The algorithm runs in `O(n)` time, where `n` is the number of days that need coverage. It allows hiring for a minimum of one day and a maximum of three days.<br /><br />

**Input**<br />
4<br />
5 8 16<br />
4 12 18<br />
3 7<br />
6<br />

**Output**<br />
15<br />
2 2<br />

## Input Explanation
The first input line is `n`. In the example above, `n = 4`. This value gives the number of days that the business needs employee coverage. The program allows hiring for a minimum of one day and a maximum of three days. It skips options that are not selected.

The next `n` lines are:
5 8 16<br />
4 12 18<br />
3 7<br />
6<br />
These lines show the hiring cost options. For example, the first value in the first line is `5`, which means hiring one employee for one day costs `5`. Each column shows a hiring duration in days, and each row corresponds to a starting day. As another example, choosing `16` from the first row and third column covers three days. That choice means no additional hire is needed until the final day, where the only available option is `6` in row `n`, column `1`.

## Output Explanation
The first line of output is the total cost of the optimal hiring plan. In the example, that value is `15`.

The second line shows which hires the plan selects. In the example, `2 2` means the plan hires an employee on day `1` for `2` days at a cost of `8`, and another employee on day `3` for `2` days at a cost of `7`, for a total cost of `15`.



# A Dynamic Programming Implementation of a Hiring Shifts Problem
Note: Before testing out this project please ensure you have ocaml correctly installed

1. Enter your terminal and navigate to the hiringShifts directory
2. run dune build hiringShifts.ml (Generates the _build folder)
3. run dune exec ./hiringShifts.exe
4. You should now see that the terminal is waiting to accept stdin, 
expected example input and output is below in the readme. Copy paste the 
input into your terminal<br />

The time complexity for the algorithm is O(n) where n is the number 
of days for which we must hire employees. We can hire employees for a
minimum of one day and a maximum of three.<br /><br />

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
The first input line is n, in our example case above (n=4).  This is the number
of day that we need to cover for the business with employees.  Remeber that
we can hire an employee for a minimum of one day and a maximum of three. 
Otherwise, we simply ignore those we choose not to hire.

The following n lines:
5 8 16<br />
4 12 18<br />
3 7<br />
6<br />
These lines denote the employee and cost to hire the employee.  For example,
the first line first integer is 5 meaning that we can hire 1 employee for 1 day
and it will cost us 5.  The columns represent the number of days for which an
employee is hired, and each row represent a day.  As a second example, lets say
that we chose the 16 (in the first row last column).  We know 16 works for a
3 days because they reside in the third column.  Therefore we do not need to
hire anyone else until the final day, where we only have one option, 
6 (row n column 1). 

## Output Explanation
The first line of output, in our example case 15, is the total cost for hiring
the optimal (lowest cost) employee/s.

The second line indicates which employees we hired.  Our example outputs 2 2
meaning we hired an employee on day 1 to work for 2 days (cost 8) and an
employee on day 3 to work for 2 days (cost 7) for a total cost of 15.


